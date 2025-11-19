@interface PETConfig
- (BOOL)isAggregatedForMessageName:(id)a3;
- (BOOL)isChinaEnabledForMessageName:(id)a3 messageGroup:(id)a4;
- (BOOL)isTVOSEnabledForMessageName:(id)a3 messageGroup:(id)a4;
- (BOOL)shouldUploadToFBFv2;
- (BOOL)shouldUploadToFBFv2ForCarryAndSeed;
- (BOOL)shouldUploadToParsec;
- (PETConfig)initWithDictionary:(id)a3;
- (PETConfig)initWithFile:(id)a3;
- (double)deviceSamplingForMessageName:(id)a3 isSeed:(BOOL)a4;
- (double)messageSamplingForMessageName:(id)a3 isSeed:(BOOL)a4;
- (id)_configForMessageName:(id)a3;
- (id)_groupConfigForMessageName:(id)a3;
- (id)_nestedFieldsHelper:(id)a3;
- (id)_whitelistHelper:(id)a3;
- (id)bucketsForMessageName:(id)a3;
- (id)groupForMessageName:(id)a3;
- (unint64_t)samplingLimitForMessageGroup:(id)a3;
- (unint64_t)sigFigsForMessageName:(id)a3;
- (void)_enumerateGroupConfigsWithBlock:(id)a3;
@end

@implementation PETConfig

- (BOOL)shouldUploadToFBFv2ForCarryAndSeed
{
  v2 = [(PETConfig *)self configDictionary];
  v3 = [v2 pet_numForKey:@"upload_to_fbfv2_carry_seed"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)shouldUploadToFBFv2
{
  v2 = [(PETConfig *)self configDictionary];
  v3 = [v2 pet_numForKey:@"upload_to_fbfv2"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)shouldUploadToParsec
{
  v2 = [(PETConfig *)self configDictionary];
  v3 = [v2 pet_numForKey:@"upload_to_parsec"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isChinaEnabledForMessageName:(id)a3 messageGroup:(id)a4
{
  v6 = a3;
  v7 = [(NSDictionary *)self->_messageGroups objectForKeyedSubscript:a4];
  if (!v7)
  {
    v7 = [(PETConfig *)self _groupConfigForMessageName:v6];
    if (!v7)
    {
      v14 = 0;
      goto LABEL_8;
    }
  }

  v8 = v7;
  v9 = [v7 pet_numForKey:@"china_enabled"];
  v10 = [(PETConfig *)self _configForMessageName:v6];
  v11 = [v10 pet_numForKey:@"china_enabled"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;

    v9 = v13;
  }

  else if (!v9)
  {
    v14 = 0;
    goto LABEL_7;
  }

  v14 = [v9 BOOLValue];
LABEL_7:

LABEL_8:
  return v14;
}

- (BOOL)isTVOSEnabledForMessageName:(id)a3 messageGroup:(id)a4
{
  v6 = a3;
  v7 = [(NSDictionary *)self->_messageGroups objectForKeyedSubscript:a4];
  if (!v7)
  {
    v7 = [(PETConfig *)self _groupConfigForMessageName:v6];
    if (!v7)
    {
      v14 = 0;
      goto LABEL_8;
    }
  }

  v8 = v7;
  v9 = [v7 pet_numForKey:@"tvos_enabled"];
  v10 = [(PETConfig *)self _configForMessageName:v6];
  v11 = [v10 pet_numForKey:@"tvos_enabled"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;

    v9 = v13;
  }

  else if (!v9)
  {
    v14 = 0;
    goto LABEL_7;
  }

  v14 = [v9 BOOLValue];
LABEL_7:

LABEL_8:
  return v14;
}

- (BOOL)isAggregatedForMessageName:(id)a3
{
  v4 = a3;
  v5 = [(PETConfig *)self _groupConfigForMessageName:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 pet_numForKey:@"aggregated"];
    v8 = [(PETConfig *)self _configForMessageName:v4];
    v9 = [v8 pet_numForKey:@"aggregated"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;

      v7 = v11;
    }

    else if (!v7)
    {
      v12 = 1;
      goto LABEL_7;
    }

    v12 = [v7 BOOLValue];
LABEL_7:

    goto LABEL_8;
  }

  v12 = 1;
LABEL_8:

  return v12;
}

- (unint64_t)sigFigsForMessageName:(id)a3
{
  v4 = a3;
  v5 = [(PETConfig *)self _groupConfigForMessageName:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 pet_numForKey:@"sig_figs"];
    v8 = [(PETConfig *)self _configForMessageName:v4];
    v9 = [v8 pet_numForKey:@"sig_figs"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;

      v7 = v11;
    }

    else if (!v7)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_7;
    }

    v12 = [v7 unsignedIntegerValue];
LABEL_7:

    goto LABEL_8;
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_8:

  return v12;
}

- (id)bucketsForMessageName:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PETConfig *)self _configForMessageName:a3];
  [v3 pet_arrayForKey:@"hist_buckets"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v10 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = v4;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (double)messageSamplingForMessageName:(id)a3 isSeed:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PETConfig *)self _groupConfigForMessageName:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 pet_numForKey:@"message_sampling"];
    v10 = [(PETConfig *)self _configForMessageName:v6];
    v11 = [v10 pet_numForKey:@"message_sampling"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;

      v9 = v13;
    }

    if (v4)
    {
      v14 = [v8 pet_numForKey:@"message_sampling_seed"];
      v15 = v14;
      if (v14)
      {
        v16 = v14;

        v9 = v16;
      }

      v17 = [v10 pet_numForKey:@"message_sampling_seed"];
      v18 = v17;
      if (v17)
      {
        v19 = v17;

        v9 = v19;
      }
    }

    if (v9)
    {
      [v9 doubleValue];
      v21 = v20;
    }

    else
    {
      v21 = 1.0;
    }
  }

  else
  {
    v21 = 1.0;
  }

  return v21;
}

- (double)deviceSamplingForMessageName:(id)a3 isSeed:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PETConfig *)self _groupConfigForMessageName:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 pet_numForKey:@"device_sampling"];
    v10 = [(PETConfig *)self _configForMessageName:v6];
    v11 = [v10 pet_numForKey:@"device_sampling"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;

      v9 = v13;
    }

    if (v4)
    {
      v14 = [v8 pet_numForKey:@"device_sampling_seed"];
      v15 = v14;
      if (v14)
      {
        v16 = v14;

        v9 = v16;
      }

      v17 = [v10 pet_numForKey:@"device_sampling_seed"];
      v18 = v17;
      if (v17)
      {
        v19 = v17;

        v9 = v19;
      }
    }

    if (v9)
    {
      [v9 doubleValue];
      v21 = v20;
    }

    else
    {
      v21 = 1.0;
    }
  }

  else
  {
    v21 = 1.0;
  }

  return v21;
}

- (id)_nestedFieldsHelper:(id)a3
{
  v4 = [(PETConfig *)self _configForMessageName:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 pet_dictForKey:@"nested_fields"];
    v7 = objc_opt_new();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33__PETConfig__nestedFieldsHelper___block_invoke;
    v11[3] = &unk_1E86C28E0;
    v8 = v7;
    v12 = v8;
    v13 = self;
    [v6 enumerateKeysAndObjectsUsingBlock:v11];
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  return v9;
}

void __33__PETConfig__nestedFieldsHelper___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a3;
  v8 = [v5 numberWithInteger:{objc_msgSend(a2, "integerValue")}];
  v7 = [*(a1 + 40) _nestedFieldsHelper:v6];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
}

- (id)_whitelistHelper:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(PETConfig *)self _configForMessageName:v4];

  if (v6)
  {
    v7 = [v6 pet_arrayForKey:@"field_whitelist"];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __30__PETConfig__whitelistHelper___block_invoke;
    v16[3] = &unk_1E86C28B8;
    v8 = v5;
    v17 = v8;
    [v7 enumerateObjectsUsingBlock:v16];
    v9 = [v6 pet_dictForKey:@"nested_fields"];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __30__PETConfig__whitelistHelper___block_invoke_2;
    v13[3] = &unk_1E86C28E0;
    v10 = v8;
    v14 = v10;
    v15 = self;
    [v9 enumerateKeysAndObjectsUsingBlock:v13];
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __30__PETConfig__whitelistHelper___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a2, "integerValue")}];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [*(a1 + 40) _whitelistHelper:v8];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
  }
}

- (id)_groupConfigForMessageName:(id)a3
{
  v4 = [(PETConfig *)self groupForMessageName:a3];
  if ([v4 isEqualToString:@"default"])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSDictionary *)self->_messageGroups pet_dictForKey:v4];
  }

  return v5;
}

- (id)_configForMessageName:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__604;
  v15 = __Block_byref_object_dispose__605;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__PETConfig__configForMessageName___block_invoke;
  v8[3] = &unk_1E86C2890;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(PETConfig *)self _enumerateGroupConfigsWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __35__PETConfig__configForMessageName___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = [a3 pet_dictForKey:@"message_whitelist"];
  v6 = [v7 pet_dictForKey:*(a1 + 32)];
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
    *a4 = 1;
  }
}

- (id)groupForMessageName:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__604;
  v15 = __Block_byref_object_dispose__605;
  v16 = @"default";
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__PETConfig_groupForMessageName___block_invoke;
  v8[3] = &unk_1E86C2890;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(PETConfig *)self _enumerateGroupConfigsWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __33__PETConfig_groupForMessageName___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [a3 pet_dictForKey:@"message_whitelist"];
  v9 = [v8 pet_dictForKey:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_enumerateGroupConfigsWithBlock:(id)a3
{
  v4 = a3;
  messageGroups = self->_messageGroups;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PETConfig__enumerateGroupConfigsWithBlock___block_invoke;
  v7[3] = &unk_1E86C2868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSDictionary *)messageGroups enumerateKeysAndObjectsUsingBlock:v7];
}

void __45__PETConfig__enumerateGroupConfigsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(*(a1 + 32) + 16);
    v4 = v6;
    v5 = [v3 pet_dictForKey:v4];
    (*(*(a1 + 40) + 16))();
  }
}

- (unint64_t)samplingLimitForMessageGroup:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"default"])
  {
    v5 = 40960;
  }

  else
  {
    v6 = [(NSDictionary *)self->_messageGroups pet_dictForKey:v4];
    v7 = [v6 pet_numForKey:@"sampling_limit"];
    if ([v7 longValue] < 1 || objc_msgSend(v7, "longValue") > 4294967294)
    {
      v5 = 4096;
    }

    else
    {
      v5 = [v7 unsignedIntegerValue];
    }
  }

  return v5;
}

- (PETConfig)initWithDictionary:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PETConfig;
  v6 = [(PETConfig *)&v13 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  if ([PETConfigValidator configIsValid:v5])
  {
    objc_storeStrong(&v6->_configDictionary, a3);
    v7 = [(NSDictionary *)v6->_configDictionary pet_numForKey:@"version"];
    v6->_version = [v7 unsignedIntegerValue];

    v8 = [(NSDictionary *)v6->_configDictionary pet_dictForKey:@"message_groups"];
    messageGroups = v6->_messageGroups;
    v6->_messageGroups = v8;

LABEL_4:
    v10 = v6;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Configuration format is not valid", v12, 2u);
  }

  AnalyticsSendEvent();
  v10 = 0;
LABEL_8:

  return v10;
}

- (PETConfig)initWithFile:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PETConfig;
  v5 = [(PETConfig *)&v16 init];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 pathExtension];
    v8 = [v7 isEqualToString:@"bin"];

    if (v8)
    {
      v15 = 0;
      v9 = [MEMORY[0x1E69C5D40] propertyListWithPath:v4 error:&v15];
      v10 = v15;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v11;
          _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error loading pet config lazy plist: %@", buf, 0xCu);
        }

        AnalyticsSendEvent();

        goto LABEL_14;
      }
    }

    else
    {
      v9 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
    }

    if (v9)
    {
      v6 = [(PETConfig *)v6 initWithDictionary:v9];

      v12 = v6;
LABEL_15:

      goto LABEL_16;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error loading pet config. File is missing or corrupted: %@", buf, 0xCu);
    }

    AnalyticsSendEvent();
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

@end