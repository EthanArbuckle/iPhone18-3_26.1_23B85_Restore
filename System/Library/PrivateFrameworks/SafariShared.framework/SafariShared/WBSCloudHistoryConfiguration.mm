@interface WBSCloudHistoryConfiguration
- (WBSCloudHistoryConfiguration)init;
- (WBSCloudHistoryConfiguration)initWithDictionary:(id)a3;
- (id)_builtInConfiguration;
- (id)_sharedBuiltInConfiguration;
- (id)dictionaryRepresentation;
- (void)_applyBuiltInConfiguration:(id)a3;
- (void)_applyConfiguration:(id)a3 withTolerance:(int64_t)a4;
- (void)applyRemoteConfiguration:(id)a3;
@end

@implementation WBSCloudHistoryConfiguration

- (WBSCloudHistoryConfiguration)init
{
  v11.receiver = self;
  v11.super_class = WBSCloudHistoryConfiguration;
  v2 = [(WBSCloudHistoryConfiguration *)&v11 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_shouldBatchSaveRecords = 1;
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Applying built-in configuration", v10, 2u);
    }

    v5 = [(WBSCloudHistoryConfiguration *)v3 _builtInConfiguration];
    [(WBSCloudHistoryConfiguration *)v3 _applyBuiltInConfiguration:v5];

    v6 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Applying remote configuration", v10, 2u);
    }

    v7 = [(WBSCloudHistoryConfiguration *)v3 remoteConfiguration];
    [(WBSCloudHistoryConfiguration *)v3 applyRemoteConfiguration:v7];

    v8 = v3;
  }

  return v3;
}

- (WBSCloudHistoryConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WBSCloudHistoryConfiguration;
  v5 = [(WBSCloudHistoryConfiguration *)&v8 init];
  if (v5)
  {
    v5->_shouldBatchSaveRecords = [v4 safari_BOOLForKey:@"ShouldBatchSaveRecords"];
    v5->_shouldUseLongLivedOperationsToSaveRecords = [v4 safari_BOOLForKey:@"ShouldUseLongLivedOperationsToSaveRecords"];
    [(WBSCloudHistoryConfiguration *)v5 _applyConfiguration:v4 withTolerance:0];
    v6 = v5;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  v12[0] = @"ShouldBatchSaveRecords";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[WBSCloudHistoryConfiguration shouldBatchSaveRecords](self, "shouldBatchSaveRecords")}];
  v13[0] = v3;
  v12[1] = @"ShouldUseLongLivedOperationsToSaveRecords";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[WBSCloudHistoryConfiguration shouldUseLongLivedOperationsToSaveRecords](self, "shouldUseLongLivedOperationsToSaveRecords")}];
  singleDeviceSaveChangesThrottlingPolicyString = self->_singleDeviceSaveChangesThrottlingPolicyString;
  multipleDeviceSaveChangesThrottlingPolicyString = self->_multipleDeviceSaveChangesThrottlingPolicyString;
  v13[1] = v4;
  v13[2] = singleDeviceSaveChangesThrottlingPolicyString;
  v12[2] = @"SingleDeviceSaveChangesThrottlingPolicy";
  v12[3] = @"MultipleDeviceSaveChangesThrottlingPolicy";
  v13[3] = multipleDeviceSaveChangesThrottlingPolicyString;
  v14 = *&self->_singleDeviceFetchChangesThrottlingPolicyString;
  v12[4] = @"SingleDeviceFetchChangesThrottlingPolicy";
  v12[5] = @"MultipleDeviceFetchChangesThrottlingPolicy";
  maximumRequestCharacterCount = self->_maximumRequestCharacterCount;
  syncCircleSizeRetrievalThrottlingPolicyString = self->_syncCircleSizeRetrievalThrottlingPolicyString;
  v12[6] = @"SyncCircleSizeRetrievalThrottlingPolicy";
  v12[7] = @"MaximumRequestLimitCharacterCount";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:maximumRequestCharacterCount];
  v16 = v8;
  v12[8] = @"SyncWindow";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_syncWindow];
  v17 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:9];

  return v10;
}

- (id)_builtInConfiguration
{
  v3 = [(WBSCloudHistoryConfiguration *)self _sharedBuiltInConfiguration];
  v4 = [(WBSCloudHistoryConfiguration *)self platformBuiltInConfiguration];
  if (v4)
  {
    v5 = [v3 mutableCopy];
    [v5 addEntriesFromDictionary:v4];
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (void)_applyBuiltInConfiguration:(id)a3
{
  v4 = a3;
  [WBSCloudHistoryConfiguration applyPlatformConfiguration:"applyPlatformConfiguration:withTolerance:" withTolerance:?];
  [(WBSCloudHistoryConfiguration *)self _applyConfiguration:v4 withTolerance:0];
}

- (void)_applyConfiguration:(id)a3 withTolerance:(int64_t)a4
{
  v6 = a3;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke;
  v23[3] = &unk_1E7FB80C8;
  v7 = v6;
  v24 = v7;
  v25 = a4;
  v8 = MEMORY[0x1BFB13CE0](v23);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_31;
  v20[3] = &unk_1E7FB80F0;
  v9 = v7;
  v21 = v9;
  v22 = a4;
  v10 = MEMORY[0x1BFB13CE0](v20);
  v19[2] = __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_33;
  v19[3] = &unk_1E7FB8118;
  v19[4] = self;
  v11 = v8[2];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v11(v8, @"SingleDeviceSaveChangesThrottlingPolicy", v19);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_35;
  v18[3] = &unk_1E7FB8118;
  v18[4] = self;
  (v8[2])(v8, @"MultipleDeviceSaveChangesThrottlingPolicy", v18);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_36;
  v17[3] = &unk_1E7FB8118;
  v17[4] = self;
  (v8[2])(v8, @"SingleDeviceFetchChangesThrottlingPolicy", v17);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_37;
  v16[3] = &unk_1E7FB8118;
  v16[4] = self;
  (v8[2])(v8, @"MultipleDeviceFetchChangesThrottlingPolicy", v16);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_38;
  v15[3] = &unk_1E7FB8118;
  v15[4] = self;
  (v8[2])(v8, @"SyncCircleSizeRetrievalThrottlingPolicy", v15);
  v14[2] = __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_39;
  v14[3] = &unk_1E7FB8140;
  v14[4] = self;
  v12 = v10[2];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v12(v10, @"MaximumRequestLimitCharacterCount", v14);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_41;
  v13[3] = &unk_1E7FB8140;
  v13[4] = self;
  (v10[2])(v10, @"SyncWindow", v13);
}

void __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (v7)
  {
    v8 = [*(a1 + 32) safari_stringForKey:v5];
    if (v8)
    {
      if ([MEMORY[0x1E69C8838] policyStringRepresentsValidPolicy:v8])
      {
        v9 = [v8 copy];
        v6[2](v6, v9);
      }
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_cold_1();
      }
    }
  }

  else if (*(a1 + 40))
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Configuration did not contain key: %{public}@", &v13, 0xCu);
    }
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_cold_2();
    }
  }
}

void __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (v7)
  {
    v8 = [*(a1 + 32) safari_numberForKey:v5];
    v9 = [v8 unsignedIntegerValue];

    if (v9)
    {
      v6[2](v6, v9);
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_31_cold_1();
      }
    }
  }

  else if (*(a1 + 40))
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Configuration did not contain key: %{public}@", &v13, 0xCu);
    }
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_cold_2();
    }
  }
}

void __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_33(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = @"SingleDeviceSaveChangesThrottlingPolicy";
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Retrieved value: %{public}@ for key: %{public}@", &v5, 0x16u);
  }

  [*(a1 + 32) setSingleDeviceSaveChangesThrottlingPolicyString:v3];
}

void __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_35(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = @"MultipleDeviceSaveChangesThrottlingPolicy";
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Retrieved value: %{public}@ for key: %{public}@", &v5, 0x16u);
  }

  [*(a1 + 32) setMultipleDeviceSaveChangesThrottlingPolicyString:v3];
}

void __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_36(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = @"SingleDeviceFetchChangesThrottlingPolicy";
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Retrieved value: %{public}@ for key: %{public}@", &v5, 0x16u);
  }

  [*(a1 + 32) setSingleDeviceFetchChangesThrottlingPolicyString:v3];
}

void __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_37(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = @"MultipleDeviceFetchChangesThrottlingPolicy";
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Retrieved value: %{public}@ for key: %{public}@", &v5, 0x16u);
  }

  [*(a1 + 32) setMultipleDeviceFetchChangesThrottlingPolicyString:v3];
}

void __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_38(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = @"SyncCircleSizeRetrievalThrottlingPolicy";
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Retrieved value: %{public}@ for key: %{public}@", &v5, 0x16u);
  }

  [*(a1 + 32) setSyncCircleSizeRetrievalThrottlingPolicyString:v3];
}

uint64_t __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_39(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134218242;
    v7 = a2;
    v8 = 2114;
    v9 = @"MaximumRequestLimitCharacterCount";
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Retrieved value: %lu for key: %{public}@", &v6, 0x16u);
  }

  return [*(a1 + 32) setMaximumRequestCharacterCount:a2];
}

uint64_t __66__WBSCloudHistoryConfiguration__applyConfiguration_withTolerance___block_invoke_41(uint64_t a1, unint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134218242;
    v7 = a2;
    v8 = 2114;
    v9 = @"SyncWindow";
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Retrieved value: %lu for key: %{public}@", &v6, 0x16u);
  }

  return [*(a1 + 32) setSyncWindow:a2];
}

- (id)_sharedBuiltInConfiguration
{
  v5[5] = *MEMORY[0x1E69E9840];
  v4[0] = @"SingleDeviceFetchChangesThrottlingPolicy";
  v4[1] = @"MultipleDeviceFetchChangesThrottlingPolicy";
  v5[0] = @"11:15 | 1:1275";
  v5[1] = @"50:1 | 50:3 | 20:4 | 20:5 | 20:15 | 20:18 | 20:20";
  v4[2] = @"SyncCircleSizeRetrievalThrottlingPolicy";
  v4[3] = @"MaximumRequestLimitCharacterCount";
  v5[2] = @"1:1440";
  v5[3] = &unk_1F3A9AA78;
  v4[4] = @"SyncWindow";
  v5[4] = &unk_1F3A9B500;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

- (void)applyRemoteConfiguration:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(WBSCloudHistoryConfiguration *)self applyPlatformConfiguration:v5 withTolerance:1];
    [(WBSCloudHistoryConfiguration *)self _applyConfiguration:v5 withTolerance:1];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"WBSCloudHistoryConfigurationChangedNotification" object:self userInfo:0];
  }
}

@end