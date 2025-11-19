@interface _LTDANEService
+ (int64_t)capability;
+ (int64_t)capabilityForSubType:(id)a3 error:(id *)a4;
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
  if (![objc_msgSend(a1 "dataProvider")])
  {
    return 0;
  }

  v3 = [objc_msgSend(a1 "dataProvider")];
  v7 = 0;
  v4 = [a1 capabilityForSubType:v3 error:&v7];
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

+ (int64_t)capabilityForSubType:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = [_LTDConfigurationService aneConfigurationWithError:0];
    v7 = [v6 capabilityForSubType:v5];
    if (v7)
    {
      v8 = v7;
LABEL_4:
      v9 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v12 = [v5 substringToIndex:1];
    v13 = [v6 subTypes];
    v14 = [v13 count];
    if (v14 - 1 < 0)
    {
LABEL_12:
    }

    else
    {
      v15 = v14;
      while (1)
      {
        v16 = [v13 objectAtIndex:--v15];
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
      if (a4)
      {
        goto LABEL_15;
      }
    }

    else if (a4)
    {
LABEL_15:
      v18 = v9;
      v8 = 0;
      *a4 = v9;
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
    if (a4)
    {
      goto LABEL_7;
    }

LABEL_19:
    v8 = 0;
    goto LABEL_23;
  }

  if (!a4)
  {
    goto LABEL_19;
  }

LABEL_7:
  v11 = v9;
  v8 = 0;
  *a4 = v9;
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