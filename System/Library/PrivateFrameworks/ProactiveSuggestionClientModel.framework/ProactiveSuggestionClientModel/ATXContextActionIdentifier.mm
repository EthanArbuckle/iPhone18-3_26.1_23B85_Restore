@interface ATXContextActionIdentifier
+ (id)_actionTypeFromShortcutsActionSuggestion:(id)a3;
+ (id)_stringsWithPredictionReasons:(unint64_t)a3;
+ (id)actionTypeFromSpotlightActionType:(id)a3;
+ (unint64_t)_instanceIdentifierFromShortcutsActionSuggestion:(id)a3;
- (ATXContextActionIdentifier)initWithCoder:(id)a3;
- (ATXContextActionIdentifier)initWithContext:(id)a3 subType:(id)a4 instanceIdentifierInteger:(unint64_t)a5;
- (ATXContextActionIdentifier)initWithContext:(id)a3 subtype:(id)a4 instanceIdentifier:(id)a5;
- (ATXContextActionIdentifier)initWithProactiveSuggestion:(id)a3;
- (ATXContextActionIdentifier)initWithUniqueIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXContextActionIdentifier:(id)a3;
- (NSString)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXContextActionIdentifier

- (NSString)uniqueIdentifier
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@:%@", self->_context, self->_subtype, self->_instanceId];

  return v2;
}

- (ATXContextActionIdentifier)initWithContext:(id)a3 subtype:(id)a4 instanceIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ATXContextActionIdentifier;
  v12 = [(ATXContextActionIdentifier *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, a3);
    objc_storeStrong(&v13->_subtype, a4);
    objc_storeStrong(&v13->_instanceId, a5);
  }

  return v13;
}

- (ATXContextActionIdentifier)initWithContext:(id)a3 subType:(id)a4 instanceIdentifierInteger:(unint64_t)a5
{
  v8 = MEMORY[0x1E696AEC0];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithFormat:@"%lu", a5];
  v12 = [(ATXContextActionIdentifier *)self initWithContext:v10 subtype:v9 instanceIdentifier:v11];

  return v12;
}

- (ATXContextActionIdentifier)initWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 componentsSeparatedByString:@":"];
    if ([v6 count] == 3)
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = [v6 objectAtIndexedSubscript:1];
      v9 = [v6 objectAtIndexedSubscript:2];
      if (-[NSObject length](v7, "length") && [v8 length] && objc_msgSend(v9, "length"))
      {
        self = [(ATXContextActionIdentifier *)self initWithContext:v7 subtype:v8 instanceIdentifier:v9];
        v10 = self;
      }

      else
      {
        v11 = __atxlog_handle_blending();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [ATXContextActionIdentifier initWithUniqueIdentifier:];
        }

        v10 = 0;
      }
    }

    else
    {
      v7 = __atxlog_handle_blending();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [ATXContextActionIdentifier initWithUniqueIdentifier:];
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (ATXContextActionIdentifier)initWithProactiveSuggestion:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, "ATXContextActionIdentifier suggestion is nil", buf, 2u);
    }

    goto LABEL_33;
  }

  v6 = [v4 executableSpecification];
  v7 = [v6 executableType];

  v8 = 0;
  if (v7 > 4)
  {
    if (v7 <= 0xB)
    {
      if (((1 << v7) & 0xCC0) != 0)
      {
        goto LABEL_14;
      }

      if (v7 == 8)
      {
        v28 = objc_opt_class();
        v29 = [v5 uiSpecification];
        v30 = [v28 _stringsWithPredictionReasons:{objc_msgSend(v29, "predictionReasons")}];
        v10 = [v30 firstObject];

        v31 = objc_opt_class();
        v32 = [v5 executableSpecification];
        v33 = [v32 executableIdentifier];
        v9 = [v31 actionTypeFromSpotlightActionType:v33];

LABEL_24:
        v34 = [v5 executableSpecification];
        v35 = [v34 executableIdentifier];
        v8 = [v35 hash];

        goto LABEL_25;
      }

      if (v7 == 9)
      {
        v18 = [v5 uiSpecification];
        v19 = [v18 predictionReasons];

        if (!v19)
        {
          v10 = __atxlog_handle_blending();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          v9 = [v5 executableSpecification];
          v40 = [(__CFString *)v9 executableIdentifier];
          *buf = 138412290;
          v47 = v40;
          _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, "ATXContextActionIdentifier: App Shortcut skipped: %@", buf, 0xCu);

LABEL_32:
LABEL_33:
          v36 = 0;
          goto LABEL_34;
        }

        v20 = objc_opt_class();
        v21 = [v5 uiSpecification];
        v22 = [v20 _stringsWithPredictionReasons:{objc_msgSend(v21, "predictionReasons")}];
        v10 = [v22 firstObject];

        v9 = [objc_opt_class() _actionTypeFromShortcutsActionSuggestion:v5];
        v8 = [objc_opt_class() _instanceIdentifierFromShortcutsActionSuggestion:v5];
        goto LABEL_25;
      }
    }

    v9 = 0;
    v10 = 0;
    if (v7 == 5)
    {
      v23 = objc_opt_class();
      v24 = [v5 uiSpecification];
      v25 = [v23 _stringsWithPredictionReasons:{objc_msgSend(v24, "predictionReasons")}];
      v10 = [v25 firstObject];

      v26 = [v5 executableSpecification];
      v27 = [v26 executableIdentifier];
      v8 = [v27 hash];

      v9 = @"AppClip";
    }

    goto LABEL_25;
  }

  if (v7 < 2 || (v7 - 3) < 2)
  {
LABEL_14:
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXContextActionIdentifier *)v5 initWithProactiveSuggestion:v10];
    }

    goto LABEL_33;
  }

  v9 = 0;
  v10 = 0;
  if (v7 == 2)
  {
    v11 = objc_opt_class();
    v12 = [v5 uiSpecification];
    v13 = [v11 _stringsWithPredictionReasons:{objc_msgSend(v12, "predictionReasons")}];
    v10 = [v13 firstObject];

    v14 = [v5 atxActionExecutableObject];
    v15 = [v14 actionType];

    if (v15)
    {
      v16 = [v5 atxActionExecutableObject];
      v17 = [v16 actionType];

      if (v17 == 1)
      {
        v9 = @"NSUA";
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = @"Intent";
    }

    goto LABEL_24;
  }

LABEL_25:
  if (![v10 length]|| ![(__CFString *)v9 length]|| !v8)
  {
    v37 = __atxlog_handle_blending();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      v45 = [v5 executableSpecification];
      v41 = [v45 executableClassString];
      v42 = [v5 executableSpecification];
      v43 = [v42 executableIdentifier];
      v44 = [v5 uiSpecification];
      *buf = 138413570;
      v47 = v41;
      v48 = 2112;
      v49 = v10;
      v50 = 2112;
      v51 = v9;
      v52 = 2048;
      v53 = v8;
      v54 = 2112;
      v55 = v43;
      v56 = 2048;
      v57 = [v44 predictionReasons];
      _os_log_fault_impl(&dword_1DEFC4000, v37, OS_LOG_TYPE_FAULT, "ATXContextActionIdentifier suggestion unhandled: %@: %@, %@, %lu, %@, %llu", buf, 0x3Eu);
    }

    goto LABEL_32;
  }

  self = [(ATXContextActionIdentifier *)self initWithContext:v10 subType:v9 instanceIdentifierInteger:v8];

  v36 = self;
LABEL_34:

  v38 = *MEMORY[0x1E69E9840];
  return v36;
}

+ (id)actionTypeFromSpotlightActionType:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [&unk_1F5A41350 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      if ([v3 hasPrefix:v9])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = [&unk_1F5A41350 objectForKeyedSubscript:v9];

    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  v11 = __atxlog_handle_blending();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    +[ATXContextActionIdentifier actionTypeFromSpotlightActionType:];
  }

  v10 = 0;
LABEL_14:

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)_actionTypeFromShortcutsActionSuggestion:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a3 executableSpecification];
  v4 = [v3 executableIdentifier];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [&unk_1F5A41378 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      if ([v4 hasPrefix:v10])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = [&unk_1F5A41378 objectForKeyedSubscript:v10];

    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  v12 = __atxlog_handle_blending();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    +[ATXContextActionIdentifier _actionTypeFromShortcutsActionSuggestion:];
  }

  v11 = 0;
LABEL_14:

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (unint64_t)_instanceIdentifierFromShortcutsActionSuggestion:(id)a3
{
  v3 = a3;
  v4 = [v3 executableSpecification];
  v5 = [v4 executableIdentifier];
  v6 = [v5 hash];

  v7 = [v3 uiSpecification];
  v8 = [v7 contextStartDate];

  if (v8)
  {
    v9 = [v3 uiSpecification];
    v10 = [v9 contextStartDate];
    v6 = [v10 hash] - v6 + 32 * v6;
  }

  return v6;
}

+ (id)_stringsWithPredictionReasons:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = objc_opt_new();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__ATXContextActionIdentifier__stringsWithPredictionReasons___block_invoke;
  v6[3] = &unk_1E86A3DD0;
  v6[4] = &v7;
  ATXSuggestionPredictionReasonEnumerateReasonCodes(a3, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __60__ATXContextActionIdentifier__stringsWithPredictionReasons___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = stringForATXSuggestionPredictionReasonCode(a2);
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXContextActionIdentifier *)self isEqualToATXContextActionIdentifier:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXContextActionIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_context;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = self->_subtype;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
LABEL_7:
      v11 = 0;
      goto LABEL_13;
    }
  }

  v12 = self->_instanceId;
  v13 = v12;
  if (v12 == v4[3])
  {
    v11 = 1;
  }

  else
  {
    v11 = [(NSString *)v12 isEqual:?];
  }

LABEL_13:
  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_context hash];
  v4 = [(NSString *)self->_subtype hash]- v3 + 32 * v3;
  return [(NSString *)self->_instanceId hash]- v4 + 32 * v4;
}

- (void)encodeWithCoder:(id)a3
{
  context = self->_context;
  v5 = a3;
  [v5 encodeObject:context forKey:@"context"];
  [v5 encodeObject:self->_subtype forKey:@"subtype"];
  [v5 encodeObject:self->_instanceId forKey:@"instanceId"];
}

- (ATXContextActionIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_blending();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"context" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXContextActionIdentifier" errorCode:-1 logHandle:v7];

  v9 = [v4 error];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_blending();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"subtype" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXContextActionIdentifier" errorCode:-1 logHandle:v13];

    v15 = [v4 error];

    if (v15)
    {
      v10 = 0;
    }

    else
    {
      v16 = MEMORY[0x1E69C5D78];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_blending();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"instanceId" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXContextActionIdentifier" errorCode:-1 logHandle:v18];

      v20 = [v4 error];

      if (v20)
      {
        v10 = 0;
      }

      else
      {
        self = [(ATXContextActionIdentifier *)self initWithContext:v8 subtype:v14 instanceIdentifier:v19];
        v10 = self;
      }
    }
  }

  return v10;
}

- (void)initWithUniqueIdentifier:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_DEBUG, "ATXContextActionIdentifier: unsupported uniqueId format: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithUniqueIdentifier:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_DEBUG, "ATXContextActionIdentifier: expected component missing: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithProactiveSuggestion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a1 executableSpecification];
  v5 = [v4 executableType];
  v6 = [a1 executableSpecification];
  v7 = [v6 executableClassString];
  v9 = 134218242;
  v10 = v5;
  v11 = 2112;
  v12 = v7;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "ATXContextActionIdentifier unsupported type: %lu, %@", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)actionTypeFromSpotlightActionType:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_FAULT, "ATXContextActionIdentifier: unsupported Spotlight action id: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)_actionTypeFromShortcutsActionSuggestion:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_FAULT, "ATXContextActionIdentifier: unsupported Shortcuts action id: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end