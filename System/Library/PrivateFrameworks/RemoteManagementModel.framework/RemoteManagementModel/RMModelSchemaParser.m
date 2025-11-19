@interface RMModelSchemaParser
+ (id)_parseEnrollmentTypes:(id)a3;
+ (id)_parseScopes:(id)a3;
+ (id)_parseVariants:(id)a3;
+ (id)loadSupportedOSFromDictionary:(id)a3;
+ (int64_t)_enrollmentTypeFromString:(id)a3;
+ (int64_t)_platformFromString:(id)a3;
+ (int64_t)_scopeFromString:(id)a3;
+ (int64_t)_variantFromString:(id)a3;
@end

@implementation RMModelSchemaParser

+ (id)loadSupportedOSFromDictionary:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = v4;
    v30 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v30)
    {
      v29 = *v33;
      v25 = v4;
      v26 = a1;
      v27 = v5;
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v5);
        }

        v7 = *(*(&v32 + 1) + 8 * v6);
        v8 = [a1 _platformFromString:v7];
        if (v8 != -1)
        {
          v9 = v8;
          v10 = [v5 objectForKeyedSubscript:v7];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v4 = v25;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              +[RMModelSchemaParser loadSupportedOSFromDictionary:];
            }

            goto LABEL_27;
          }

          v11 = [v10 objectForKeyedSubscript:@"allowed-enrollments"];
          v12 = [a1 _parseEnrollmentTypes:v11];

          if (!v12)
          {
            v4 = v25;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              +[RMModelSchemaParser loadSupportedOSFromDictionary:];
            }

            goto LABEL_27;
          }

          v13 = [v10 objectForKeyedSubscript:@"allowed-scopes"];
          v14 = [a1 _parseScopes:v13];

          if (!v14)
          {
            v4 = v25;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              +[RMModelSchemaParser loadSupportedOSFromDictionary:];
            }

LABEL_27:
            v22 = 0;
            goto LABEL_28;
          }

          v36[0] = v14;
          v36[1] = v12;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
          v16 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
          [v31 setObject:v15 forKeyedSubscript:v16];

          v17 = [v10 objectForKeyedSubscript:@"variant"];
          v18 = [a1 _parseVariants:v17];

          if (v18)
          {
            v28 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
            v19 = [v31 objectForKeyedSubscript:v28];
            v20 = [v19 arrayByAddingObject:v18];
            v21 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
            [v31 setObject:v20 forKeyedSubscript:v21];

            v5 = v27;
            a1 = v26;
          }
        }

        if (v30 == ++v6)
        {
          v4 = v25;
          v30 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v30)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v22 = [v31 copy];
LABEL_28:
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelSchemaParser loadSupportedOSFromDictionary:];
    }

    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)_parseEnrollmentTypes:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              +[RMModelSchemaParser _parseEnrollmentTypes:];
            }

            v14 = 0;
            goto LABEL_19;
          }

          v12 = [a1 _enrollmentTypeFromString:{v11, v17}];
          if (v12 != -1)
          {
            v13 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = [v5 copy];
LABEL_19:
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelSchemaParser _parseEnrollmentTypes:];
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_parseScopes:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              +[RMModelSchemaParser _parseScopes:];
            }

            v14 = 0;
            goto LABEL_19;
          }

          v12 = [a1 _scopeFromString:{v11, v17}];
          if (v12 != -1)
          {
            v13 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = [v5 copy];
LABEL_19:
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelSchemaParser _parseScopes:];
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_parseVariants:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
LABEL_16:
    v14 = 0;
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelSchemaParser _parseVariants:];
    }

    goto LABEL_16;
  }

  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            +[RMModelSchemaParser _parseVariants:];
          }

          v14 = 0;
          goto LABEL_20;
        }

        v12 = [a1 _variantFromString:{v11, v17}];
        if (v12 != -1)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = [v5 copy];
LABEL_20:

LABEL_21:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (int64_t)_platformFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"macOS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"iOS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SharediPad"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"tvOS"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"visionOS"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"watchOS"])
  {
    v4 = 4;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelSchemaParser _platformFromString:];
    }

    v4 = -1;
  }

  return v4;
}

+ (int64_t)_enrollmentTypeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"user"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"device"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"local"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"supervised"])
  {
    v4 = 3;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelSchemaParser _enrollmentTypeFromString:];
    }

    v4 = -1;
  }

  return v4;
}

+ (int64_t)_scopeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"user"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"system"])
  {
    v4 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelSchemaParser _scopeFromString:];
    }

    v4 = -1;
  }

  return v4;
}

+ (int64_t)_variantFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"any"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"internal"])
  {
    v4 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelSchemaParser _variantFromString:];
    }

    v4 = -1;
  }

  return v4;
}

+ (void)loadSupportedOSFromDictionary:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)loadSupportedOSFromDictionary:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)loadSupportedOSFromDictionary:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_platformFromString:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_enrollmentTypeFromString:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_scopeFromString:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_variantFromString:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end