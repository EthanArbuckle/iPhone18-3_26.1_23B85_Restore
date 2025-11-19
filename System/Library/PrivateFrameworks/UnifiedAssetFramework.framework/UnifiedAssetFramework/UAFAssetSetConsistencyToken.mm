@interface UAFAssetSetConsistencyToken
- (BOOL)exlock:(id *)a3;
- (BOOL)hasIdenticalAssets:(id)a3 includeBootUUID:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)lock:(id *)a3;
- (BOOL)nolock:(id *)a3;
- (BOOL)processIdIsLockingToken:(int)a3 statBuffer:(stat *)a4 error:(id *)a5;
- (BOOL)unlock:(id *)a3;
- (UAFAssetSetConsistencyToken)initWithCoder:(id)a3;
- (UAFAssetSetConsistencyToken)initWithUUID:(id)a3 assetSetName:(id)a4 atomicInstance:(id)a5 experiment:(id)a6 preinstalledAssetsSummary:(id)a7 bootUUID:(id)a8 experimentActivated:(BOOL)a9;
- (id)bootUUIDError;
- (id)description;
- (id)experimentId;
- (id)jsonDictionary;
- (id)lockURL;
- (id)processIdsLockingToken:(id *)a3;
- (id)unlockableTokenError;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate:(id)a3 completion:(id)a4;
@end

@implementation UAFAssetSetConsistencyToken

- (void)dealloc
{
  if (self->_locked)
  {
    if (self->_refCount >= 2)
    {
      do
      {
        [(UAFAssetSetConsistencyToken *)self unlock:0];
      }

      while (self->_refCount > 1);
    }

    [(UAFAssetSetConsistencyToken *)self unlock:0];
  }

  v3.receiver = self;
  v3.super_class = UAFAssetSetConsistencyToken;
  [(UAFAssetSetConsistencyToken *)&v3 dealloc];
}

- (id)description
{
  v16 = MEMORY[0x1E696AEC0];
  v15 = [(UAFAssetSetConsistencyToken *)self uuid];
  v3 = [(UAFAssetSetConsistencyToken *)self assetSetName];
  v4 = [(UAFAssetSetConsistencyToken *)self atomicInstance];
  if (self->_locked)
  {
    v5 = @"locked";
  }

  else
  {
    v5 = @"unlocked";
  }

  refCount = self->_refCount;
  if ([(UAFAssetSetConsistencyToken *)self experimentActivated])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(UAFAssetSetConsistencyToken *)self bootUUID];
  v9 = [(UAFAssetSetConsistencyToken *)self isBootUUIDCurrent];
  v10 = [(UAFAssetSetConsistencyToken *)self instanceUUID];
  v11 = [(UAFAssetSetConsistencyToken *)self experiment];
  v12 = [(UAFAssetSetConsistencyToken *)self preinstalledAssetsSummary];
  v13 = [v16 stringWithFormat:@"Asset Set Consistency Token %@ for assetSet %@ with atomic instance %@ (%@ with ref count %lld) experimentActivated %@ bootUUID %@ isBootUUIDCurrent %d object instance %@ experiment %@ preinstalledAssetsSummary %@", v15, v3, v4, v5, refCount, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (UAFAssetSetConsistencyToken)initWithUUID:(id)a3 assetSetName:(id)a4 atomicInstance:(id)a5 experiment:(id)a6 preinstalledAssetsSummary:(id)a7 bootUUID:(id)a8 experimentActivated:(BOOL)a9
{
  v45 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v39 = a4;
  v38 = a5;
  v37 = a6;
  v17 = a7;
  v18 = a8;
  v40.receiver = self;
  v40.super_class = UAFAssetSetConsistencyToken;
  v19 = [(UAFAssetSetConsistencyToken *)&v40 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_uuid, a3);
    if (!v16)
    {
      v21 = [MEMORY[0x1E696AFB0] UUID];
      uuid = v20->_uuid;
      v20->_uuid = v21;
    }

    v23 = [MEMORY[0x1E696AFB0] UUID];
    instanceUUID = v20->_instanceUUID;
    v20->_instanceUUID = v23;

    objc_storeStrong(&v20->_assetSetName, a4);
    objc_storeStrong(&v20->_atomicInstance, a5);
    objc_storeStrong(&v20->_experiment, a6);
    objc_storeStrong(&v20->_preinstalledAssetsSummary, a7);
    *&v20->_fd = 0xFFFFFFFFLL;
    v20->_locked = 0;
    v20->_experimentActivated = a9;
    v25 = +[UAFCommonUtilities copyBootSessionUUID];
    if ([v25 isEqualToString:&stru_1F3B6B510])
    {
      v26 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v42 = "[UAFAssetSetConsistencyToken initWithUUID:assetSetName:atomicInstance:experiment:preinstalledAssetsSummary:bootUUID:experimentActivated:]";
        v43 = 2114;
        v44 = v39;
        _os_log_error_impl(&dword_1BCF2C000, v26, OS_LOG_TYPE_ERROR, "%s Current boot UUID is empty when creating consistency token for asset set %{public}@", buf, 0x16u);
      }
    }

    if (v18)
    {
      v27 = v18;
    }

    else
    {
      v27 = v25;
    }

    v28 = v27;
    bootUUID = v20->_bootUUID;
    v20->_bootUUID = v28;

    if (-[NSString isEqualToString:](v20->_bootUUID, "isEqualToString:", &stru_1F3B6B510) || [v25 isEqualToString:&stru_1F3B6B510])
    {
      v30 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v42 = "[UAFAssetSetConsistencyToken initWithUUID:assetSetName:atomicInstance:experiment:preinstalledAssetsSummary:bootUUID:experimentActivated:]";
        v43 = 2114;
        v44 = v39;
        _os_log_error_impl(&dword_1BCF2C000, v30, OS_LOG_TYPE_ERROR, "%s Treating empty boot UUID as current when creating consistency token for asset set %{public}@", buf, 0x16u);
      }
    }

    else if (![(NSString *)v20->_bootUUID isEqualToString:v25])
    {
      v20->_isBootUUIDCurrent = 0;
      goto LABEL_17;
    }

    v20->_isBootUUIDCurrent = 1;
LABEL_17:
    v31 = objc_autoreleasePoolPush();
    v32 = [objc_alloc(MEMORY[0x1E69B1938]) init:@"com.apple.UnifiedAssetFramework" assetSetIdentifier:v20->_assetSetName assetSetAtomicInstance:v20->_atomicInstance];
    objc_autoreleasePoolPop(v31);
    rapidLock = v20->_rapidLock;
    v20->_rapidLock = v32;

    v34 = v20;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:@"1.0.0" forKey:@"version"];
  [v4 encodeObject:self->_uuid forKey:@"uuid"];
  [v4 encodeObject:self->_assetSetName forKey:@"assetSetName"];
  [v4 encodeObject:self->_atomicInstance forKey:@"atomicInstance"];
  [v4 encodeObject:self->_experiment forKey:@"experiment"];
  [v4 encodeObject:self->_preinstalledAssetsSummary forKey:@"preinstalledAssetsSummary"];
  [v4 encodeObject:self->_bootUUID forKey:@"bootUUID"];
  [v4 encodeBool:self->_experimentActivated forKey:@"experimentActivated"];
}

- (UAFAssetSetConsistencyToken)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  if (([@"1.0.0" isEqualToString:v5] & 1) == 0)
  {
    v6 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[UAFAssetSetConsistencyToken initWithCoder:]";
      v24 = 2114;
      v25 = v5;
      _os_log_error_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_ERROR, "%s Decoding of asset set consistency token failed: unsupported version %{public}@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetName"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[UAFAssetSetConsistencyToken initWithCoder:]";
      _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Decoding of asset set consistency token failed", buf, 0xCu);
    }

LABEL_12:
    v18 = 0;
    goto LABEL_13;
  }

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"atomicInstance"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experiment"];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"preinstalledAssetsSummary"];

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bootUUID"];
  LOBYTE(v21) = [v4 decodeBoolForKey:@"experimentActivated"];
  self = [(UAFAssetSetConsistencyToken *)self initWithUUID:v6 assetSetName:v8 atomicInstance:v11 experiment:v12 preinstalledAssetsSummary:v16 bootUUID:v17 experimentActivated:v21];

  v18 = self;
LABEL_13:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(UAFAssetSetConsistencyToken *)self hasIdenticalAssets:v4];
  LOBYTE(v6) = 0;
  if (v4 && v5)
  {
    if (self == v4)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v4;
        v8 = [(UAFAssetSetConsistencyToken *)v7 uuid];
        v9 = [(UAFAssetSetConsistencyToken *)self uuid];
        if ([v8 isEqual:v9])
        {
          v10 = [(UAFAssetSetConsistencyToken *)v7 experimentActivated];
          v6 = v10 ^ [(UAFAssetSetConsistencyToken *)self experimentActivated]^ 1;
        }

        else
        {
          LOBYTE(v6) = 0;
        }
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }
  }

  return v6;
}

- (BOOL)hasIdenticalAssets:(id)a3 includeBootUUID:(BOOL)a4
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  if (self == v8)
  {
    LOBYTE(v14) = 1;
    goto LABEL_52;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:
    LOBYTE(v14) = 0;
    goto LABEL_52;
  }

  v10 = v9;
  v11 = v10;
  if (v6)
  {
    v12 = [(UAFAssetSetConsistencyToken *)v10 bootUUID];
    if (v12 || ([(UAFAssetSetConsistencyToken *)self bootUUID], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = [(UAFAssetSetConsistencyToken *)v11 bootUUID];
      v5 = [(UAFAssetSetConsistencyToken *)self bootUUID];
      v14 = [v13 isEqualToString:v5];

      if (v12)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v14 = 1;
    }

    goto LABEL_14;
  }

  v14 = 1;
LABEL_15:
  v15 = [(UAFAssetSetConsistencyToken *)v11 assetSetName];
  if (v15 || ([(UAFAssetSetConsistencyToken *)self assetSetName], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(UAFAssetSetConsistencyToken *)v11 assetSetName];
    v5 = [(UAFAssetSetConsistencyToken *)self assetSetName];
    if (![v4 isEqualToString:v5])
    {
      LOBYTE(v14) = 0;
LABEL_48:

      goto LABEL_49;
    }

    v16 = 1;
  }

  else
  {
    v38 = 0;
    v16 = 0;
  }

  v17 = [(UAFAssetSetConsistencyToken *)v11 atomicInstance];
  if (v17 || ([(UAFAssetSetConsistencyToken *)self atomicInstance], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = [(UAFAssetSetConsistencyToken *)v11 atomicInstance];
    v39 = [(UAFAssetSetConsistencyToken *)self atomicInstance];
    v40 = v18;
    if (![v18 isEqualToString:v39])
    {
      LOBYTE(v14) = 0;
      goto LABEL_46;
    }

    v36 = 1;
    v37 = v16;
  }

  else
  {
    v36 = 0;
    v37 = v16;
    v33 = 0;
  }

  v19 = [(UAFAssetSetConsistencyToken *)v11 experiment];
  if (!v19)
  {
    v30 = [(UAFAssetSetConsistencyToken *)self experiment];
    if (!v30)
    {
      v32 = v4;
      v30 = 0;
      v31 = 0;
      goto LABEL_33;
    }
  }

  v20 = v17;
  v21 = v19;
  v22 = v5;
  v23 = [(UAFAssetSetConsistencyToken *)v11 experiment];
  v34 = [(UAFAssetSetConsistencyToken *)self experiment];
  v35 = v23;
  if ([v23 isEqual:v34])
  {
    v32 = v4;
    v31 = 1;
    v5 = v22;
    v19 = v21;
    v17 = v20;
LABEL_33:
    v24 = [(UAFAssetSetConsistencyToken *)v11 preinstalledAssetsSummary];
    if (v24 || ([(UAFAssetSetConsistencyToken *)self preinstalledAssetsSummary], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = [(UAFAssetSetConsistencyToken *)v11 preinstalledAssetsSummary];
      v26 = [(UAFAssetSetConsistencyToken *)self preinstalledAssetsSummary];
      v14 &= [v25 isEqualToSet:v26];

      if (v24)
      {

        if (!v31)
        {
          v4 = v32;
          goto LABEL_43;
        }

        v4 = v32;
        goto LABEL_42;
      }

      v27 = v29;
    }

    else
    {
      v27 = 0;
    }

    v4 = v32;
    if ((v31 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  LOBYTE(v14) = 0;
  v5 = v22;
  v19 = v21;
  v17 = v20;
LABEL_42:

LABEL_43:
  if (v19)
  {

    if (v36)
    {
LABEL_45:
      v16 = v37;
LABEL_46:

      if (v17)
      {
        goto LABEL_47;
      }

LABEL_55:

      if ((v16 & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  else
  {

    if (v36)
    {
      goto LABEL_45;
    }
  }

  v16 = v37;
  if (!v17)
  {
    goto LABEL_55;
  }

LABEL_47:

  if (v16)
  {
    goto LABEL_48;
  }

LABEL_49:
  if (!v15)
  {
  }

LABEL_52:
  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_uuid hash];
  v4 = [(NSString *)self->_assetSetName hash]^ v3;
  v5 = [(NSString *)self->_atomicInstance hash];
  v6 = v4 ^ v5 ^ [(UAFAssetSetExperiment *)self->_experiment hash];
  v7 = [(NSSet *)self->_preinstalledAssetsSummary hash];
  return v6 ^ v7 ^ [(NSString *)self->_bootUUID hash]^ self->_experimentActivated;
}

- (id)experimentId
{
  if (self->_experimentActivated)
  {
    experiment = self->_experiment;
    if (experiment)
    {
      experiment = [experiment experimentId];
    }
  }

  else
  {
    experiment = 0;
  }

  return experiment;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  [v3 setObject:@"1.0.0" forKeyedSubscript:@"version"];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", self->_uuid];
  [v3 setObject:v4 forKeyedSubscript:@"uuid"];

  [v3 setObject:self->_assetSetName forKeyedSubscript:@"assetSetName"];
  atomicInstance = self->_atomicInstance;
  if (atomicInstance)
  {
    [v3 setObject:atomicInstance forKeyedSubscript:@"atomicInstance"];
  }

  experiment = self->_experiment;
  if (experiment)
  {
    v7 = [(UAFAssetSetExperiment *)experiment jsonDictionary];
    [v3 setObject:v7 forKeyedSubscript:@"experiment"];
  }

  preinstalledAssetsSummary = self->_preinstalledAssetsSummary;
  if (preinstalledAssetsSummary)
  {
    v9 = [(NSSet *)preinstalledAssetsSummary allObjects];
    [v3 setObject:v9 forKeyedSubscript:@"preinstalledAssetsSummary"];
  }

  bootUUID = self->_bootUUID;
  if (bootUUID)
  {
    [v3 setObject:bootUUID forKeyedSubscript:@"bootUUID"];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_experimentActivated];
  [v3 setObject:v11 forKeyedSubscript:@"experimentActivated"];

  return v3;
}

- (void)invalidate:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[UAFAssetSetConsistencyToken invalidate:completion:]";
    v27 = 2114;
    v28 = self;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s invalidate request for %{public}@", buf, 0x16u);
  }

  if (!v6)
  {
    v6 = +[UAFAutoAssetManager getConcurrentQueue];
  }

  if (self->_isBootUUIDCurrent)
  {
    if (self->_atomicInstance)
    {
      v9 = [(UAFAssetSetConsistencyToken *)self description];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __53__UAFAssetSetConsistencyToken_invalidate_completion___block_invoke_2;
      v20[3] = &unk_1E7FFD5F8;
      v21 = v9;
      v22 = v7;
      v10 = v9;
      v11 = MEMORY[0x1BFB33950](v20);
      [UAFAutoAssetManager invalidateAtomicInstance:self->_atomicInstance assetSetName:self->_assetSetName queue:v6 completion:v11];
    }

    else
    {
      preinstalledAssetsSummary = self->_preinstalledAssetsSummary;
      if (preinstalledAssetsSummary && [(NSSet *)preinstalledAssetsSummary count])
      {
        v14 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "[UAFAssetSetConsistencyToken invalidate:completion:]";
          v27 = 2114;
          v28 = self;
          _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s Cannot invalidate token with no atomic instance and roots installed: '%{public}@'", buf, 0x16u);
        }

        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __53__UAFAssetSetConsistencyToken_invalidate_completion___block_invoke_342;
        v16[3] = &unk_1E7FFD940;
        v16[4] = self;
        v17 = v7;
        dispatch_async(v6, v16);
        v10 = v17;
      }

      else
      {
        v15 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "[UAFAssetSetConsistencyToken invalidate:completion:]";
          v27 = 2114;
          v28 = self;
          _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s Successfully invalidating empty token: '%{public}@'", buf, 0x16u);
        }

        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __53__UAFAssetSetConsistencyToken_invalidate_completion___block_invoke_341;
        v18[3] = &unk_1E7FFD4E8;
        v19 = v7;
        dispatch_async(v6, v18);
        v10 = v19;
      }
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__UAFAssetSetConsistencyToken_invalidate_completion___block_invoke;
    block[3] = &unk_1E7FFD4E8;
    v24 = v7;
    dispatch_async(v6, block);
    v10 = v24;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __53__UAFAssetSetConsistencyToken_invalidate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v6 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v14 = 136315394;
      v15 = "[UAFAssetSetConsistencyToken invalidate:completion:]_block_invoke";
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s Token '%{public}@' invalidated successfully", &v14, 0x16u);
    }

    goto LABEL_14;
  }

  v4 = v3;
  v5 = [v3 domain];
  if ([v5 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
  {
    if ([v4 code]== 6551)
    {

LABEL_11:
      v10 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v14 = 136315650;
        v15 = "[UAFAssetSetConsistencyToken invalidate:completion:]_block_invoke_2";
        v16 = 2114;
        v17 = v11;
        v18 = 2114;
        v19 = v4;
        _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Received maskable error from invalidate, suppressing error for token '%{public}@'.  Suppressed error: '%{public}@'", &v14, 0x20u);
      }

      v6 = v4;
LABEL_14:
      v4 = 0;
      goto LABEL_15;
    }

    v9 = [v4 code];

    if (v9 == 6501)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v6 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v14 = 136315650;
    v15 = "[UAFAssetSetConsistencyToken invalidate:completion:]_block_invoke";
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s Token '%{public}@' invalidated with: %{public}@", &v14, 0x20u);
  }

LABEL_15:

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v4);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __53__UAFAssetSetConsistencyToken_invalidate_completion___block_invoke_342(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) unlockableTokenError];
  (*(v1 + 16))(v1, v2);
}

- (id)lockURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [(MAAutoAssetSetRapidLock *)self->_rapidLock shortTermLockFileName];
  v4 = [v2 fileURLWithPath:v3];

  return v4;
}

- (id)bootUUIDError
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A588];
  v8[0] = @"The bootUUID doesn't match the current bootUUID";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)unlockableTokenError
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(UAFAssetSetConsistencyToken *)self assetSetName];
  v4 = [v2 stringWithFormat:@"There are no underlying assets (neither atomic instance nor asset roots) for consistency token for asset set %@", v3];

  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A588];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)lock:(id *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_locked)
  {
    ++v4->_refCount;
    v5 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      refCount = v4->_refCount;
      v17 = 136315650;
      v18 = "[UAFAssetSetConsistencyToken lock:]";
      v19 = 2114;
      v20 = v4;
      v21 = 2048;
      v22 = refCount;
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s Not actually locking %{public}@ and instead incrementing ref count to %lld", &v17, 0x20u);
    }

LABEL_26:
    v13 = 1;
    goto LABEL_27;
  }

  if (!v4->_isBootUUIDCurrent)
  {
    v5 = [(UAFAssetSetConsistencyToken *)v4 bootUUIDError];
    v8 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = "[UAFAssetSetConsistencyToken lock:]";
      v19 = 2114;
      v20 = v4;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to lock %{public}@: %{public}@", &v17, 0x20u);
    }

    if (a3)
    {
      goto LABEL_21;
    }

LABEL_22:
    v13 = 0;
    goto LABEL_27;
  }

  if (v4->_atomicInstance)
  {
    v7 = [(MAAutoAssetSetRapidLock *)v4->_rapidLock acquireShortTermLockSync];
  }

  else
  {
    preinstalledAssetsSummary = v4->_preinstalledAssetsSummary;
    if (preinstalledAssetsSummary && [(NSSet *)preinstalledAssetsSummary count])
    {
      v10 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315394;
        v18 = "[UAFAssetSetConsistencyToken lock:]";
        v19 = 2114;
        v20 = v4;
        _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Not actually locking %{public}@ as there is no atomic instance but roots are present", &v17, 0x16u);
      }

      goto LABEL_23;
    }

    v7 = [(UAFAssetSetConsistencyToken *)v4 unlockableTokenError];
  }

  v5 = v7;
  if (!v7)
  {
LABEL_23:
    v4->_locked = 1;
    ++v4->_refCount;
    v14 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "[UAFAssetSetConsistencyToken lock:]";
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s Locked %{public}@", &v17, 0x16u);
    }

    v5 = 0;
    goto LABEL_26;
  }

  v11 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315650;
    v18 = "[UAFAssetSetConsistencyToken lock:]";
    v19 = 2114;
    v20 = v4;
    v21 = 2114;
    v22 = v5;
    _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s Failed to lock %{public}@: %{public}@", &v17, 0x20u);
  }

  if (!a3)
  {
    goto LABEL_22;
  }

LABEL_21:
  v12 = v5;
  v13 = 0;
  *a3 = v5;
LABEL_27:

  objc_sync_exit(v4);
  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)unlock:(id *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  if (!v4->_locked)
  {
    v6 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[UAFAssetSetConsistencyToken unlock:]";
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_ERROR, "%s Can't unlock %{public}@: already unlocked", &v17, 0x16u);
    }

    goto LABEL_19;
  }

  refCount = v4->_refCount;
  if (refCount >= 2)
  {
    v4->_refCount = refCount - 1;
    v6 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v4->_refCount;
      v17 = 136315650;
      v18 = "[UAFAssetSetConsistencyToken unlock:]";
      v19 = 2114;
      v20 = v4;
      v21 = 2048;
      v22 = v7;
      v8 = "%s Not actually unlocking %{public}@ and instead decrementing ref count to %lld";
      v9 = v6;
      v10 = 32;
LABEL_18:
      _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, v8, &v17, v10);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (!v4->_atomicInstance)
  {
    v14 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "[UAFAssetSetConsistencyToken unlock:]";
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s Not actually unlocking %{public}@ as there is no atomic instance", &v17, 0x16u);
    }

LABEL_16:
    v4->_locked = 0;
    v4->_refCount = 0;
    v6 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "[UAFAssetSetConsistencyToken unlock:]";
      v19 = 2114;
      v20 = v4;
      v8 = "%s Unlocked %{public}@";
      v9 = v6;
      v10 = 22;
      goto LABEL_18;
    }

LABEL_19:
    v13 = 1;
    goto LABEL_20;
  }

  v6 = [(MAAutoAssetSetRapidLock *)v4->_rapidLock endShortTermLockSync];
  if (!v6)
  {
    goto LABEL_16;
  }

  v11 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315650;
    v18 = "[UAFAssetSetConsistencyToken unlock:]";
    v19 = 2114;
    v20 = v4;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s Failed to unlock %{public}@: %{public}@", &v17, 0x20u);
  }

  if (a3)
  {
    v12 = v6;
    v13 = 0;
    *a3 = v6;
  }

  else
  {
    v13 = 0;
  }

LABEL_20:

  objc_sync_exit(v4);
  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)processIdIsLockingToken:(int)a3 statBuffer:(stat *)a4 error:(id *)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = proc_pidinfo(a3, 1, 0, 0, 0);
  if (v7 < 0)
  {
    if (a5)
    {
      v24 = a5;
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
      *v24 = LOBYTE(a5) = 0;
    }

    goto LABEL_33;
  }

  v8 = v7 + 80;
  v39 = malloc_type_malloc(v7 + 80, 0x100004000313F17uLL);
  v9 = proc_pidinfo(a3, 1, 0, v39, v8);
  if ((v9 & 0x80000000) != 0)
  {
    if (a5)
    {
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
      v25 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v28 = [(UAFAssetSetConsistencyToken *)self lockURL];
        v29 = *a5;
        LODWORD(buffer[0]) = 136315906;
        *(buffer + 4) = "[UAFAssetSetConsistencyToken processIdIsLockingToken:statBuffer:error:]";
        WORD6(buffer[0]) = 2048;
        *(buffer + 14) = a3;
        WORD3(buffer[1]) = 2114;
        *(&buffer[1] + 1) = v28;
        LOWORD(v51) = 2114;
        *(&v51 + 2) = v29;
        _os_log_error_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_ERROR, "%s proc_pidinfo for pid %lld for file %{public}@ failed: %{public}@", buffer, 0x2Au);
      }

      LOBYTE(a5) = 0;
    }

    goto LABEL_32;
  }

  if (v9 < 8)
  {
    v15 = 0;
    goto LABEL_31;
  }

  v36 = a5;
  v11 = v9 >> 3;
  v35 = *MEMORY[0x1E696A798];
  v12 = v39 + 1;
  v13 = 1;
  v14 = v11;
  v15 = 1;
  while (1)
  {
    if (*v12 != 1)
    {
      goto LABEL_18;
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    memset(buffer, 0, sizeof(buffer));
    v16 = proc_pidfdinfo(a3, *(v12 - 1), 1, buffer, 176);
    if (v16 < 0)
    {
      break;
    }

    if (DWORD2(buffer[1]) == a4->st_dev && v51 == a4->st_ino && (BYTE1(buffer[0]) & 0x40) != 0)
    {
      v17 = [(UAFAssetSetConsistencyToken *)self lockURL];
      v18 = [v17 path];
      v19 = v18;
      v37 = open([v18 UTF8String], 0);

      if (v37 < 0)
      {
        v30 = [MEMORY[0x1E696ABC0] errorWithDomain:v35 code:*__error() userInfo:0];
        UAFGetLogCategory(&UAFLogContextClient);
        v32 = v31 = v36;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v34 = [(UAFAssetSetConsistencyToken *)self lockURL];
          *buf = 136315650;
          v45 = "[UAFAssetSetConsistencyToken processIdIsLockingToken:statBuffer:error:]";
          v46 = 2114;
          v47 = v34;
          v48 = 2114;
          v49 = v30;
          _os_log_error_impl(&dword_1BCF2C000, v32, OS_LOG_TYPE_ERROR, "%s Failed to open %{public}@ to check nature of lock: %{public}@", buf, 0x20u);

          v31 = v36;
        }

        if (v31)
        {
          v33 = v30;
          *v36 = v30;
        }

        goto LABEL_30;
      }

      v41[1] = 0;
      v41[0] = 0;
      v42 = a3;
      v43 = 3;
      if (fcntl(v37, 66, v41) < 0)
      {
        v20 = [MEMORY[0x1E696ABC0] errorWithDomain:v35 code:*__error() userInfo:0];
        v21 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v23 = [(UAFAssetSetConsistencyToken *)self lockURL];
          *buf = 136315650;
          v45 = "[UAFAssetSetConsistencyToken processIdIsLockingToken:statBuffer:error:]";
          v46 = 2114;
          v47 = v23;
          v48 = 2114;
          v49 = v20;
          _os_log_error_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_ERROR, "%s Failed fcntl %{public}@ to check nature of lock: %{public}@", buf, 0x20u);
        }

        if (v36)
        {
          v22 = v20;
          *v36 = v20;
        }
      }

      close(v37);
      if (v43 != 3)
      {
LABEL_27:
        v10 = 1;
        goto LABEL_31;
      }
    }

LABEL_18:
    v15 = v13++ < v11;
    v12 += 2;
    if (!--v14)
    {
      goto LABEL_27;
    }
  }

  if (v36)
  {
    *v36 = [MEMORY[0x1E696ABC0] errorWithDomain:v35 code:*__error() userInfo:0];
  }

LABEL_30:
  v10 = v16 >= 0;
LABEL_31:
  LOBYTE(a5) = v15 && v10;
LABEL_32:
  free(v39);
LABEL_33:
  v26 = *MEMORY[0x1E69E9840];
  return a5 & 1;
}

- (id)processIdsLockingToken:(id *)a3
{
  v49 = *MEMORY[0x1E69E9840];
  memset(&v42, 0, sizeof(v42));
  v5 = [(UAFAssetSetConsistencyToken *)self lockURL];
  v6 = [v5 path];
  v7 = stat([v6 UTF8String], &v42);

  if (v7 < 0)
  {
    v29 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    v30 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v38 = [(UAFAssetSetConsistencyToken *)self lockURL];
      *buf = 136315650;
      v44 = "[UAFAssetSetConsistencyToken processIdsLockingToken:]";
      v45 = 2114;
      v46 = v38;
      v47 = 2114;
      v48 = v29;
      _os_log_error_impl(&dword_1BCF2C000, v30, OS_LOG_TYPE_ERROR, "%s stat of %{public}@ failed: %{public}@", buf, 0x20u);
    }

    if (a3)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v8 = [(UAFAssetSetConsistencyToken *)self lockURL];
  v9 = [v8 path];
  v10 = v9;
  v11 = proc_listpidspath(1u, 0, [v9 UTF8String], 2u, 0, 0);

  if (v11 < 0)
  {
    v29 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    v31 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v39 = [(UAFAssetSetConsistencyToken *)self lockURL];
      *buf = 136315650;
      v44 = "[UAFAssetSetConsistencyToken processIdsLockingToken:]";
      v45 = 2114;
      v46 = v39;
      v47 = 2114;
      v48 = v29;
      _os_log_error_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_ERROR, "%s proc_listpidspath of %{public}@ failed: %{public}@", buf, 0x20u);
    }

    if (a3)
    {
LABEL_21:
      v32 = v29;
      v28 = 0;
      *a3 = v29;
      goto LABEL_29;
    }

LABEL_22:
    v28 = 0;
    goto LABEL_29;
  }

  v12 = v11 + 40;
  v13 = malloc_type_malloc(v11 + 40, 0xECF2521FuLL);
  v14 = [(UAFAssetSetConsistencyToken *)self lockURL];
  v15 = [v14 path];
  v16 = v15;
  v17 = proc_listpidspath(1u, 0, [v15 UTF8String], 2u, v13, v12);

  if ((v17 & 0x80000000) != 0)
  {
    v29 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    v33 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v40 = [(UAFAssetSetConsistencyToken *)self lockURL];
      *buf = 136315650;
      v44 = "[UAFAssetSetConsistencyToken processIdsLockingToken:]";
      v45 = 2114;
      v46 = v40;
      v47 = 2114;
      v48 = v29;
      _os_log_error_impl(&dword_1BCF2C000, v33, OS_LOG_TYPE_ERROR, "%s proc_listpidspath of %{public}@ failed: %{public}@", buf, 0x20u);
    }

    if (a3)
    {
      v34 = v29;
      v28 = 0;
      *a3 = v29;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_28;
  }

  v18 = v17 >> 2;
  v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:v18];
  if (v17 < 4)
  {
LABEL_10:
    v26 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(UAFAssetSetConsistencyToken *)self lockURL];
      *buf = 136315650;
      v44 = "[UAFAssetSetConsistencyToken processIdsLockingToken:]";
      v45 = 2114;
      v46 = v19;
      v47 = 2114;
      v48 = v27;
      _os_log_impl(&dword_1BCF2C000, v26, OS_LOG_TYPE_DEFAULT, "%s Found pids %{public}@ locking %{public}@", buf, 0x20u);
    }

    v28 = v19;
    goto LABEL_13;
  }

  v20 = v13;
  while (1)
  {
    v21 = *v20;
    v41 = 0;
    v22 = [(UAFAssetSetConsistencyToken *)self processIdIsLockingToken:v21 statBuffer:&v42 error:&v41];
    v23 = v41;
    v24 = v23;
    if (!v22)
    {
      break;
    }

    v25 = [MEMORY[0x1E696AD98] numberWithInt:*v20];
    [v19 addObject:v25];

LABEL_9:
    ++v20;
    if (!--v18)
    {
      goto LABEL_10;
    }
  }

  if (!v23)
  {
    goto LABEL_9;
  }

  if (a3)
  {
    v37 = v23;
    *a3 = v24;
  }

  v28 = 0;
LABEL_13:

  v29 = 0;
LABEL_28:
  free(v13);
LABEL_29:

  v35 = *MEMORY[0x1E69E9840];

  return v28;
}

- (BOOL)exlock:(id *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_isBootUUIDCurrent)
  {
    v8 = [(UAFAssetSetConsistencyToken *)self bootUUIDError];
    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "[UAFAssetSetConsistencyToken exlock:]";
      v23 = 2114;
      v24 = self;
      v25 = 2114;
      v26 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Failed to lock %{public}@: %{public}@", buf, 0x20u);
    }

    if (a3)
    {
      v10 = v8;
      v7 = 0;
      *a3 = v8;
      goto LABEL_15;
    }

LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  v5 = [(UAFAssetSetConsistencyToken *)self lockURL];
  v6 = [v5 path];
  self->_fd = open([v6 UTF8String], 36);

  if (self->_fd < 0)
  {
    v11 = __error();
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", strerror(*v11)];
    v12 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A588];
    v20 = v8;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v13];

    v15 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "[UAFAssetSetConsistencyToken exlock:]";
      v23 = 2114;
      v24 = self;
      v25 = 2114;
      v26 = v14;
      _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, "%s Failed to lock %{public}@: %{public}@", buf, 0x20u);
    }

    if (a3)
    {
      v16 = v14;
      *a3 = v14;
    }

    goto LABEL_14;
  }

  v7 = 1;
  self->_locked = 1;
  v8 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[UAFAssetSetConsistencyToken exlock:]";
    v23 = 2114;
    v24 = self;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s Exlocked %{public}@", buf, 0x16u);
  }

LABEL_15:

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)nolock:(id *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_isBootUUIDCurrent)
  {
    v8 = [(UAFAssetSetConsistencyToken *)self bootUUIDError];
    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "[UAFAssetSetConsistencyToken nolock:]";
      v23 = 2114;
      v24 = self;
      v25 = 2114;
      v26 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Failed to lock %{public}@: %{public}@", buf, 0x20u);
    }

    if (a3)
    {
      v10 = v8;
      v7 = 0;
      *a3 = v8;
      goto LABEL_15;
    }

LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  v5 = [(UAFAssetSetConsistencyToken *)self lockURL];
  v6 = [v5 path];
  self->_fd = open([v6 UTF8String], 4);

  if (self->_fd < 0)
  {
    v11 = __error();
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", strerror(*v11)];
    v12 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A588];
    v20 = v8;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v13];

    v15 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "[UAFAssetSetConsistencyToken nolock:]";
      v23 = 2114;
      v24 = self;
      v25 = 2114;
      v26 = v14;
      _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, "%s Failed to open %{public}@: %{public}@", buf, 0x20u);
    }

    if (a3)
    {
      v16 = v14;
      *a3 = v14;
    }

    goto LABEL_14;
  }

  v7 = 1;
  self->_locked = 1;
  v8 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[UAFAssetSetConsistencyToken nolock:]";
    v23 = 2114;
    v24 = self;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s Opened %{public}@", buf, 0x16u);
  }

LABEL_15:

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

@end