@interface CaseDampeningExceptions
+ (BOOL)allowDampeningExceptionFor:(id)a3;
+ (BOOL)isException:(id)a3 containedInString:(id)a4;
+ (BOOL)isString:(id)a3 inExceptionList:(id)a4;
@end

@implementation CaseDampeningExceptions

+ (BOOL)isString:(id)a3 inExceptionList:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v6, "count"))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if ([v12 length] >= 2 && objc_msgSend(v12, "containsString:", @"*") && +[CaseDampeningExceptions isException:containedInString:](CaseDampeningExceptions, "isException:containedInString:", v12, v5))
          {
            v13 = 1;
            goto LABEL_16;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_16:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)isException:(id)a3 containedInString:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    if ([v5 length] >= 3 && objc_msgSend(v5, "hasPrefix:", @"*") && objc_msgSend(v5, "hasSuffix:", @"*"))
    {
      v7 = 1;
      v8 = [v5 substringWithRange:{1, objc_msgSend(v5, "length") - 2}];
      if ([v6 rangeOfString:v8] != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_19;
      }
    }

    else if ([v5 length] >= 2 && objc_msgSend(v5, "hasPrefix:", @"*"))
    {
      v7 = 1;
      v8 = [v5 substringWithRange:{1, objc_msgSend(v5, "length") - 1}];
      if ([v6 hasSuffix:v8])
      {
        goto LABEL_19;
      }
    }

    else if ([v5 length] >= 2 && objc_msgSend(v5, "hasSuffix:", @"*"))
    {
      v8 = [v5 substringWithRange:{0, objc_msgSend(v5, "length") - 1}];
      if ([v6 hasPrefix:v8])
      {
        v7 = 1;
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v8 = 0;
    }

    v7 = 0;
    goto LABEL_19;
  }

  v7 = 0;
LABEL_20:

  return v7;
}

+ (BOOL)allowDampeningExceptionFor:(id)a3
{
  v43[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 objectForKeyedSubscript:@"domain"];
    v5 = [v3 objectForKeyedSubscript:@"type"];
    v6 = [v3 objectForKeyedSubscript:@"subtype"];
    v7 = [v3 objectForKeyedSubscript:@"additional"];
    if (![v4 length] || !objc_msgSend(v5, "length") || !objc_msgSend(v6, "length"))
    {
      v20 = 0;
LABEL_72:

      goto LABEL_73;
    }

    v42[0] = @"Functional";
    v42[1] = @"Operational";
    v43[0] = &unk_287CEAE98;
    v43[1] = &unk_287CEAEB0;
    v42[2] = @"Performance";
    v43[2] = &unk_287CEAEC8;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:&unk_287CEB428];
    if (_isNPIDevice == 1)
    {
      v10 = _logHandle;
      if (_logHandle && os_log_type_enabled(_logHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26C35F000, v10, OS_LOG_TYPE_INFO, "Modifying Cellular exceptions list for NPI devices", buf, 2u);
      }

      [v9 setObject:&unk_287CEB0D8 forKeyedSubscript:@"Baseband Stability"];
      [v9 setObject:&unk_287CEB0F0 forKeyedSubscript:@"IMS Call KPI"];
    }

    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:&unk_287CEB680];
    if ([_wifiChipset isEqualToString:@"proxima"])
    {
      [v11 setObject:&unk_287CEB258 forKeyedSubscript:@"WiFi Watchdog"];
    }

    v40[0] = @"Networking";
    v40[1] = @"Cellular";
    v40[2] = @"Bluetooth";
    v40[3] = @"ReminderKit";
    v41[2] = &unk_287CEB298;
    v41[3] = &unk_287CEB2C0;
    v40[4] = @"Location";
    v40[5] = @"PrivacyTransparency";
    v41[4] = &unk_287CEB360;
    v41[5] = &unk_287CEB310;
    v40[6] = @"MediaPlayer";
    v40[7] = @"iCloudDrive";
    v41[6] = &unk_287CEB478;
    v41[7] = &unk_287CEB4C8;
    v40[8] = @"AVConference";
    v40[9] = @"SiriAssistant";
    v41[8] = &unk_287CEB540;
    v41[9] = &unk_287CEB590;
    v37 = v11;
    v38 = v8;
    v41[0] = v8;
    v41[1] = v9;
    v40[10] = @"FaceTime";
    v40[11] = @"CoreSpeech";
    v41[10] = &unk_287CEB5E0;
    v41[11] = &unk_287CEB630;
    v40[12] = @"WiFi";
    v41[12] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:13];
    v13 = _logHandle;
    if (_logHandle && os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [(CaseDampeningExceptions *)v3 allowDampeningExceptionFor:v13];
    }

    v14 = [v12 objectForKeyedSubscript:v4];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = 0;
      if (v14)
      {
        v21 = _logHandle;
        if (_logHandle)
        {
          if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
          {
            [(CaseDampeningExceptions *)v14 allowDampeningExceptionFor:v21];
          }

          v20 = 0;
        }
      }

      goto LABEL_71;
    }

    v36 = v14;
    v15 = [v36 objectForKeyedSubscript:v5];
    objc_opt_class();
    v35 = v15;
    if (objc_opt_isKindOfClass())
    {
      v34 = v15;
      v16 = [v34 objectForKeyedSubscript:v6];
      objc_opt_class();
      v33 = v16;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = 0;
        if (v16)
        {
          v25 = _logHandle;
          if (_logHandle)
          {
            if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
            {
              [(CaseDampeningExceptions *)v36 allowDampeningExceptionFor:v25];
            }

            v20 = 0;
          }
        }

        goto LABEL_69;
      }

      v32 = v12;
      v17 = v16;
      if ([v7 length] && objc_msgSend(v17, "containsObject:", v7))
      {
        v18 = _logHandle;
        if (!_logHandle || !os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        *buf = 0;
        v19 = "Case signature matches allowed exception.";
      }

      else
      {
        if (![v17 containsObject:@"*"] || objc_msgSend(v17, "count") != 1)
        {
          if ([CaseDampeningExceptions isString:v7 inExceptionList:v17, v17])
          {
            v28 = _logHandle;
            if (_logHandle && os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_26C35F000, v28, OS_LOG_TYPE_DEFAULT, "Case signature contains allowed exception.", buf, 2u);
            }

            v20 = 1;
          }

          else
          {
            v20 = 0;
          }

          v17 = v31;
          goto LABEL_68;
        }

        v18 = _logHandle;
        if (!_logHandle || !os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEFAULT))
        {
LABEL_53:
          v20 = 1;
LABEL_68:

          v12 = v32;
LABEL_69:

          goto LABEL_70;
        }

        *buf = 0;
        v19 = "Case signature matches allowed exception (subtypeContext allowed as a wildcard).";
      }

      _os_log_impl(&dword_26C35F000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
      goto LABEL_53;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = v15;
      v20 = 0;
      if (v26)
      {
        v27 = _logHandle;
        if (_logHandle)
        {
          if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
          {
            [(CaseDampeningExceptions *)v35 allowDampeningExceptionFor:v27];
          }

          v20 = 0;
        }
      }

      goto LABEL_70;
    }

    v22 = v15;
    if ([v22 containsObject:v6])
    {
      v23 = _logHandle;
      if (!_logHandle || !os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *buf = 0;
      v24 = "Case signature matches allowed exception.";
    }

    else
    {
      if (![v22 containsObject:@"*"] || objc_msgSend(v22, "count") != 1)
      {
        v20 = 0;
        goto LABEL_65;
      }

      v23 = _logHandle;
      if (!_logHandle || !os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEFAULT))
      {
LABEL_36:
        v20 = 1;
LABEL_65:

LABEL_70:
LABEL_71:

        goto LABEL_72;
      }

      *buf = 0;
      v24 = "Case signature matches allowed exception (subtype allowed as a wildcard).";
    }

    _os_log_impl(&dword_26C35F000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
    goto LABEL_36;
  }

  v20 = 0;
LABEL_73:

  v29 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (void)allowDampeningExceptionFor:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_26C35F000, a2, OS_LOG_TYPE_DEBUG, "Comparing case signature %@ against allowed exceptions list.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)allowDampeningExceptionFor:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_26C35F000, v5, v6, "Found unexpected object %@ of class %@ as exception for domain %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)allowDampeningExceptionFor:(uint64_t)a1 .cold.3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_26C35F000, v5, v6, "Found unexpected object %@ of class %@ as exception for type %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)allowDampeningExceptionFor:(uint64_t)a1 .cold.4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_26C35F000, v5, v6, "Found unexpected object %@ of class %@ as exception for subtype %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end