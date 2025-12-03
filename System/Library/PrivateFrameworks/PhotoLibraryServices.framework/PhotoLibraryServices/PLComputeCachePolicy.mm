@interface PLComputeCachePolicy
- (BOOL)_isLastSnapshotDateWithinPolicy;
- (BOOL)snapshotRequired;
- (PLComputeCachePolicy)initWithPolicyData:(id)data configuration:(id)configuration;
- (int64_t)_deriveAllowPolicy;
- (int64_t)_deriveDenyPolicy;
- (void)_checkAllowPolicy;
- (void)_checkDenyPolicy;
@end

@implementation PLComputeCachePolicy

- (BOOL)_isLastSnapshotDateWithinPolicy
{
  lastSnapshotDate = [(PLComputeCachePolicyDataSource *)self->_data lastSnapshotDate];
  if (lastSnapshotDate)
  {
    v4 = [MEMORY[0x1E695DF00] now];
    [v4 timeIntervalSinceDate:lastSnapshotDate];
    v6 = v5;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [standardUserDefaults integerForKey:@"PLComputeCachePolicyMinSnapshotTimeInMinutes"];

    if (v8 < 1)
    {
      [(PLComputeCachePolicyConfiguration *)self->_configuration minSnapshotTimeInterval];
    }

    else
    {
      v9 = (60 * v8);
    }

    v10 = v6 < v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)_deriveAllowPolicy
{
  if (![(PLComputeCachePolicy *)self _isLastSnapshotDateWithinPolicy])
  {
    return 1;
  }

  if ([(PLComputeCachePolicyDataSource *)self->_data hasAtLeastExpungedAssetCount:[(PLComputeCachePolicyConfiguration *)self->_configuration minExpungedAssetCount]])
  {
    return 2;
  }

  return 0;
}

- (int64_t)_deriveDenyPolicy
{
  if (![(PLComputeCachePolicyDataSource *)self->_data isEnabled])
  {
    return 1;
  }

  if (![(PLComputeCachePolicyConfiguration *)self->_configuration isBackupEnabled])
  {
    return 2;
  }

  if (([(PLComputeCachePolicyDataSource *)self->_data restoreState]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 5;
  }

  lastSnapshotDate = [(PLComputeCachePolicyDataSource *)self->_data lastSnapshotDate];

  if (!lastSnapshotDate && ![(PLComputeCachePolicy *)self _isAssetCountWithinPolicy])
  {
    return 3;
  }

  if ([(PLComputeCachePolicy *)self _isiCloudTierWithinPolicy])
  {
    return 0;
  }

  return 4;
}

- (void)_checkAllowPolicy
{
  v25 = *MEMORY[0x1E69E9840];
  _deriveAllowPolicy = [(PLComputeCachePolicy *)self _deriveAllowPolicy];
  self->_allowPolicy = _deriveAllowPolicy;
  if ((_deriveAllowPolicy - 1) < 2)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = PLStringFromPLComputeCacheSnapshotAllowPolicyShort(_deriveAllowPolicy);
    v6 = v5;
    allowPolicy = self->_allowPolicy;
    v8 = @"Snapshot disabled. Snapshot is current";
    if (allowPolicy == 1)
    {
      v8 = @"Snapshot required. Snapshot is out of date";
    }

    if (allowPolicy == 2)
    {
      v9 = @"Snapshot required. Snapshot has deleted asset records";
    }

    else
    {
      v9 = v8;
    }

    v10 = [v4 stringWithFormat:@"Snapshot required. Policy: %@ (%@)", v5, v9];
    reason = self->_reason;
    self->_reason = v10;

    v12 = PLMigrationGetLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    v13 = self->_reason;
    *buf = 138543362;
    v24 = v13;
    goto LABEL_17;
  }

  if (_deriveAllowPolicy)
  {
    return;
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = PLStringFromPLComputeCacheSnapshotAllowPolicyShort(0);
  v16 = v15;
  v17 = self->_allowPolicy;
  v18 = @"Snapshot disabled. Snapshot is current";
  if (v17 == 1)
  {
    v18 = @"Snapshot required. Snapshot is out of date";
  }

  if (v17 == 2)
  {
    v19 = @"Snapshot required. Snapshot has deleted asset records";
  }

  else
  {
    v19 = v18;
  }

  v20 = [v14 stringWithFormat:@"Snapshot is current. Update not required. Policy: %@ (%@)", v15, v19];
  v21 = self->_reason;
  self->_reason = v20;

  v12 = PLMigrationGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v22 = self->_reason;
    *buf = 138543362;
    v24 = v22;
LABEL_17:
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "ComputeCachePolicy: %{public}@", buf, 0xCu);
  }

LABEL_18:
}

- (void)_checkDenyPolicy
{
  v15 = *MEMORY[0x1E69E9840];
  _deriveDenyPolicy = [(PLComputeCachePolicy *)self _deriveDenyPolicy];
  self->_denyPolicy = _deriveDenyPolicy;
  if ((_deriveDenyPolicy - 1) <= 4)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = PLStringFromPLComputeCacheSnapshotDenyPolicyShort(_deriveDenyPolicy);
    v6 = v5;
    v7 = self->_denyPolicy - 1;
    if (v7 > 4)
    {
      v8 = @"Snapshot enabled. Check allow policy";
    }

    else
    {
      v8 = off_1E7572BA8[v7];
    }

    v9 = [v4 stringWithFormat:@"Snapshot deny policy triggered. Policy: %@ (%@)", v5, v8];
    reason = self->_reason;
    self->_reason = v9;

    v11 = PLMigrationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = self->_reason;
      *buf = 138543362;
      v14 = v12;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "ComputeCachePolicy: %{public}@", buf, 0xCu);
    }
  }
}

- (BOOL)snapshotRequired
{
  snapshotAllowed = [(PLComputeCachePolicy *)self snapshotAllowed];
  if (snapshotAllowed)
  {
    LOBYTE(snapshotAllowed) = self->_allowPolicy != 0;
  }

  return snapshotAllowed;
}

- (PLComputeCachePolicy)initWithPolicyData:(id)data configuration:(id)configuration
{
  dataCopy = data;
  configurationCopy = configuration;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLComputeCachePolicy.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v14.receiver = self;
  v14.super_class = PLComputeCachePolicy;
  v10 = [(PLComputeCachePolicy *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_data, data);
    objc_storeStrong(&v11->_configuration, configuration);
    [(PLComputeCachePolicy *)v11 _checkDenyPolicy];
    if ([(PLComputeCachePolicy *)v11 snapshotAllowed])
    {
      [(PLComputeCachePolicy *)v11 _checkAllowPolicy];
    }
  }

  return v11;
}

@end