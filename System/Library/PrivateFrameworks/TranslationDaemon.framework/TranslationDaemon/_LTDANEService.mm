@interface _LTDANEService
+ (int64_t)capability;
+ (int64_t)capabilityForSubType:(id)type error:(id *)error;
+ (void)initialize;
@end

@implementation _LTDANEService

+ (void)initialize
{
  _dataProvider = objc_opt_class();
  if (_LTIsInternalInstall())
  {
    v2 = _dataProvider;

    [v2 logCapabilities];
  }
}

+ (int64_t)capability
{
  if (![objc_msgSend(self "dataProvider")])
  {
    return 0;
  }

  v3 = [objc_msgSend(self "dataProvider")];
  v7 = 0;
  v4 = [self capabilityForSubType:v3 error:&v7];
  v5 = v7;

  if (v5)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

+ (int64_t)capabilityForSubType:(id)type error:(id *)error
{
  typeCopy = type;
  if ([typeCopy length])
  {
    v6 = [_LTDConfigurationService aneConfigurationWithError:0];
    v7 = [v6 capabilityForSubType:typeCopy];
    if (v7)
    {
      v8 = v7;
LABEL_4:
      v9 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v12 = [typeCopy substringToIndex:1];
    subTypes = [v6 subTypes];
    v14 = [subTypes count];
    if (v14 - 1 < 0)
    {
LABEL_12:
    }

    else
    {
      v15 = v14;
      while (1)
      {
        v16 = [subTypes objectAtIndex:--v15];
        if ([v16 hasPrefix:v12])
        {
          break;
        }

        if (v15 <= 0)
        {
          goto LABEL_12;
        }
      }

      v8 = [v6 capabilityForSubType:v16];

      if (v8)
      {
        goto LABEL_4;
      }
    }

    v9 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:1 description:@"Unhandled ANE subtype" userInfo:0];
    v17 = _LTOSLogAssets();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[_LTDANEService capabilityForSubType:error:];
      if (error)
      {
        goto LABEL_15;
      }
    }

    else if (error)
    {
LABEL_15:
      v18 = v9;
      v8 = 0;
      *error = v9;
      goto LABEL_22;
    }

    v8 = 0;
    goto LABEL_22;
  }

  v9 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:1 description:@"Unhandled ANE subtype" userInfo:0];
  v10 = _LTOSLogAssets();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    +[_LTDANEService capabilityForSubType:error:];
    if (error)
    {
      goto LABEL_7;
    }

LABEL_19:
    v8 = 0;
    goto LABEL_23;
  }

  if (!error)
  {
    goto LABEL_19;
  }

LABEL_7:
  v11 = v9;
  v8 = 0;
  *error = v9;
LABEL_23:

  return v8;
}

+ (void)capabilityForSubType:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Unhandled ANE subtype, assuming none for %{public}@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)capabilityForSubType:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Invalid ANE subtype, assuming none for %{public}@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end