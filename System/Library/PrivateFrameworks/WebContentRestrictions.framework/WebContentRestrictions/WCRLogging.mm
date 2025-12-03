@interface WCRLogging
+ (void)log:(id)log withType:(unint64_t)type;
@end

@implementation WCRLogging

+ (void)log:(id)log withType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  logCopy = log;
  v6 = __WCRDefaultLog();
  v7 = v6;
  if (type <= 2)
  {
    if (type != 1)
    {
      if (type == 2)
      {
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          goto LABEL_20;
        }

        v11 = 138543362;
        v12 = logCopy;
        v8 = v7;
        v9 = OS_LOG_TYPE_INFO;
LABEL_19:
        _os_log_impl(&dword_272D8F000, v8, v9, "%{public}@", &v11, 0xCu);
        goto LABEL_20;
      }

LABEL_17:
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v11 = 138543362;
      v12 = logCopy;
      v8 = v7;
      v9 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_19;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[WCRLogging log:withType:];
    }
  }

  else
  {
    switch(type)
    {
      case 3uLL:
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          +[WCRLogging log:withType:];
        }

        break;
      case 4uLL:
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          +[WCRLogging log:withType:];
        }

        break;
      case 5uLL:
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          +[WCRLogging log:withType:];
        }

        break;
      default:
        goto LABEL_17;
    }
  }

LABEL_20:

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)log:withType:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_272D8F000, v0, OS_LOG_TYPE_FAULT, "%{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)log:withType:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_272D8F000, v0, OS_LOG_TYPE_DEBUG, "%{private}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)log:withType:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_272D8F000, v0, OS_LOG_TYPE_DEBUG, "%{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)log:withType:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_272D8F000, v0, OS_LOG_TYPE_ERROR, "%{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end