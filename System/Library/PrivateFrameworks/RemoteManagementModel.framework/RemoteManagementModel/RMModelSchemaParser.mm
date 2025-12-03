@interface RMModelSchemaParser
+ (id)_parseEnrollmentTypes:(id)types;
+ (id)_parseScopes:(id)scopes;
+ (id)_parseVariants:(id)variants;
+ (id)loadSupportedOSFromDictionary:(id)dictionary;
+ (int64_t)_enrollmentTypeFromString:(id)string;
+ (int64_t)_platformFromString:(id)string;
+ (int64_t)_scopeFromString:(id)string;
+ (int64_t)_variantFromString:(id)string;
@end

@implementation RMModelSchemaParser

+ (id)loadSupportedOSFromDictionary:(id)dictionary
{
  v38 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = dictionaryCopy;
    v30 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v30)
    {
      v29 = *v33;
      v25 = dictionaryCopy;
      selfCopy = self;
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
        v8 = [self _platformFromString:v7];
        if (v8 != -1)
        {
          v9 = v8;
          v10 = [v5 objectForKeyedSubscript:v7];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            dictionaryCopy = v25;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              +[RMModelSchemaParser loadSupportedOSFromDictionary:];
            }

            goto LABEL_27;
          }

          v11 = [v10 objectForKeyedSubscript:@"allowed-enrollments"];
          v12 = [self _parseEnrollmentTypes:v11];

          if (!v12)
          {
            dictionaryCopy = v25;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              +[RMModelSchemaParser loadSupportedOSFromDictionary:];
            }

            goto LABEL_27;
          }

          v13 = [v10 objectForKeyedSubscript:@"allowed-scopes"];
          v14 = [self _parseScopes:v13];

          if (!v14)
          {
            dictionaryCopy = v25;
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
          v18 = [self _parseVariants:v17];

          if (v18)
          {
            v28 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
            v19 = [v31 objectForKeyedSubscript:v28];
            v20 = [v19 arrayByAddingObject:v18];
            v21 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
            [v31 setObject:v20 forKeyedSubscript:v21];

            v5 = v27;
            self = selfCopy;
          }
        }

        if (v30 == ++v6)
        {
          dictionaryCopy = v25;
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

+ (id)_parseEnrollmentTypes:(id)types
{
  v22 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = typesCopy;
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

          v12 = [self _enrollmentTypeFromString:{v11, v17}];
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

+ (id)_parseScopes:(id)scopes
{
  v22 = *MEMORY[0x277D85DE8];
  scopesCopy = scopes;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = scopesCopy;
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

          v12 = [self _scopeFromString:{v11, v17}];
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

+ (id)_parseVariants:(id)variants
{
  v22 = *MEMORY[0x277D85DE8];
  variantsCopy = variants;
  if (!variantsCopy)
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
  v6 = variantsCopy;
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

        v12 = [self _variantFromString:{v11, v17}];
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

+ (int64_t)_platformFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"macOS"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"iOS"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"SharediPad"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"tvOS"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"visionOS"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"watchOS"])
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

+ (int64_t)_enrollmentTypeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"user"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"device"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"local"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"supervised"])
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

+ (int64_t)_scopeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"user"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"system"])
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

+ (int64_t)_variantFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"any"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"internal"])
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