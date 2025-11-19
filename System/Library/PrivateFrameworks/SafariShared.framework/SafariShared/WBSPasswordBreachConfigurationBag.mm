@interface WBSPasswordBreachConfigurationBag
- (WBSPasswordBreachConfigurationBag)initWithBagDictionary:(id)a3;
- (WBSPasswordBreachConfigurationBag)initWithSnapshotData:(id)a3 error:(id *)a4;
- (id)firstConfigurationForSupportedProtocolVersion:(unint64_t)a3 rampIdentifier:(unint64_t)a4 allowValuesForTesting:(BOOL)a5;
@end

@implementation WBSPasswordBreachConfigurationBag

- (WBSPasswordBreachConfigurationBag)initWithSnapshotData:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E695DF20] safari_dictionaryWithJSONOrPropertyListData:a3];
  if (!v6)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachConfigurationBag initWithSnapshotData:v8 error:?];
      if (a4)
      {
        goto LABEL_5;
      }
    }

    else if (a4)
    {
LABEL_5:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
      *a4 = v7 = 0;
      goto LABEL_8;
    }

    v7 = 0;
    goto LABEL_8;
  }

  self = [(WBSPasswordBreachConfigurationBag *)self initWithBagDictionary:v6];
  v7 = self;
LABEL_8:

  return v7;
}

- (WBSPasswordBreachConfigurationBag)initWithBagDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WBSPasswordBreachConfigurationBag;
  v5 = [(WBSPasswordBreachConfigurationBag *)&v14 init];
  if (v5)
  {
    v6 = [v4 safari_numberForKey:@"BagVersion"];
    v7 = v6;
    if (v6)
    {
      if ([v6 unsignedIntegerValue] < 2)
      {
        v11 = [v4 copy];
        bag = v5->_bag;
        v5->_bag = v11;

        v9 = v5;
        goto LABEL_11;
      }

      v8 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(WBSPasswordBreachConfigurationBag *)v7 initWithBagDictionary:v8];
      }
    }

    else
    {
      v10 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachConfigurationBag initWithBagDictionary:v10];
      }
    }

    v9 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (id)firstConfigurationForSupportedProtocolVersion:(unint64_t)a3 rampIdentifier:(unint64_t)a4 allowValuesForTesting:(BOOL)a5
{
  v25 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v7 = [(NSDictionary *)self->_bag safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:@"Configurations"];
  v8 = v7;
  if (v7)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = v7;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = [objc_alloc(MEMORY[0x1E69C8908]) initWithDictionary:v14];
          [v15 unsignedIntegerForKey:@"ProtocolVersion" minimumValue:1 maximumValue:a3];
          if ([v15 errorOccurred])
          {
            v16 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              [WBSPasswordBreachConfigurationBag firstConfigurationForSupportedProtocolVersion:v33 rampIdentifier:&v33[1] allowValuesForTesting:v16];
            }
          }

          else
          {
            [v15 unsignedIntegerForKey:@"MaximumRampIdentifier" minimumValue:a4 maximumValue:-1];
            if ([v15 errorOccurred])
            {
              v17 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                [WBSPasswordBreachConfigurationBag firstConfigurationForSupportedProtocolVersion:v28 rampIdentifier:v17 allowValuesForTesting:?];
              }
            }

            else
            {
              v18 = objc_alloc(MEMORY[0x1E69C8900]);
              v19 = [v18 initWithDictionary:v14 protocolClasses:MEMORY[0x1E695E0F0] allowValuesForTesting:v25];
              if (v19)
              {
                v21 = v19;

                goto LABEL_23;
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v20 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v20, OS_LOG_TYPE_INFO, "No valid configuration available in the bag.", buf, 2u);
    }

    v21 = 0;
LABEL_23:
    v8 = v24;
  }

  else
  {
    v22 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *v33 = 0;
      _os_log_impl(&dword_1BB6F3000, v22, OS_LOG_TYPE_INFO, "No configurations were found in the bag.", v33, 2u);
    }

    v21 = 0;
  }

  return v21;
}

- (void)initWithBagDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Unsupported bag version %@", &v2, 0xCu);
}

- (void)firstConfigurationForSupportedProtocolVersion:(uint8_t *)buf rampIdentifier:(_BYTE *)a2 allowValuesForTesting:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Skipping configuration with ineligible maximum ramp identifier.", buf, 2u);
}

- (void)firstConfigurationForSupportedProtocolVersion:(uint8_t *)buf rampIdentifier:(_BYTE *)a2 allowValuesForTesting:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Skipping configuration with ineligible protocol version.", buf, 2u);
}

@end