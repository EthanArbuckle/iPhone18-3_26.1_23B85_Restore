@interface ATXContextActionIdentifier
+ (id)_actionTypeFromShortcutsActionSuggestion:(id)suggestion;
+ (id)_stringsWithPredictionReasons:(unint64_t)reasons;
+ (id)actionTypeFromSpotlightActionType:(id)type;
+ (unint64_t)_instanceIdentifierFromShortcutsActionSuggestion:(id)suggestion;
- (ATXContextActionIdentifier)initWithCoder:(id)coder;
- (ATXContextActionIdentifier)initWithContext:(id)context subType:(id)type instanceIdentifierInteger:(unint64_t)integer;
- (ATXContextActionIdentifier)initWithContext:(id)context subtype:(id)subtype instanceIdentifier:(id)identifier;
- (ATXContextActionIdentifier)initWithProactiveSuggestion:(id)suggestion;
- (ATXContextActionIdentifier)initWithUniqueIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXContextActionIdentifier:(id)identifier;
- (NSString)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXContextActionIdentifier

- (NSString)uniqueIdentifier
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@:%@", self->_context, self->_subtype, self->_instanceId];

  return v2;
}

- (ATXContextActionIdentifier)initWithContext:(id)context subtype:(id)subtype instanceIdentifier:(id)identifier
{
  contextCopy = context;
  subtypeCopy = subtype;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = ATXContextActionIdentifier;
  v12 = [(ATXContextActionIdentifier *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    objc_storeStrong(&v13->_subtype, subtype);
    objc_storeStrong(&v13->_instanceId, identifier);
  }

  return v13;
}

- (ATXContextActionIdentifier)initWithContext:(id)context subType:(id)type instanceIdentifierInteger:(unint64_t)integer
{
  v8 = MEMORY[0x1E696AEC0];
  typeCopy = type;
  contextCopy = context;
  integer = [[v8 alloc] initWithFormat:@"%lu", integer];
  v12 = [(ATXContextActionIdentifier *)self initWithContext:contextCopy subtype:typeCopy instanceIdentifier:integer];

  return v12;
}

- (ATXContextActionIdentifier)initWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    v6 = [identifierCopy componentsSeparatedByString:@":"];
    if ([v6 count] == 3)
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = [v6 objectAtIndexedSubscript:1];
      v9 = [v6 objectAtIndexedSubscript:2];
      if (-[NSObject length](v7, "length") && [v8 length] && objc_msgSend(v9, "length"))
      {
        self = [(ATXContextActionIdentifier *)self initWithContext:v7 subtype:v8 instanceIdentifier:v9];
        selfCopy = self;
      }

      else
      {
        v11 = __atxlog_handle_blending();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [ATXContextActionIdentifier initWithUniqueIdentifier:];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v7 = __atxlog_handle_blending();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [ATXContextActionIdentifier initWithUniqueIdentifier:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXContextActionIdentifier)initWithProactiveSuggestion:(id)suggestion
{
  v58 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v5 = suggestionCopy;
  if (!suggestionCopy)
  {
    firstObject = __atxlog_handle_blending();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEFC4000, firstObject, OS_LOG_TYPE_DEFAULT, "ATXContextActionIdentifier suggestion is nil", buf, 2u);
    }

    goto LABEL_33;
  }

  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  v8 = 0;
  if (executableType > 4)
  {
    if (executableType <= 0xB)
    {
      if (((1 << executableType) & 0xCC0) != 0)
      {
        goto LABEL_14;
      }

      if (executableType == 8)
      {
        v28 = objc_opt_class();
        uiSpecification = [v5 uiSpecification];
        v30 = [v28 _stringsWithPredictionReasons:{objc_msgSend(uiSpecification, "predictionReasons")}];
        firstObject = [v30 firstObject];

        v31 = objc_opt_class();
        executableSpecification2 = [v5 executableSpecification];
        executableIdentifier = [executableSpecification2 executableIdentifier];
        executableSpecification4 = [v31 actionTypeFromSpotlightActionType:executableIdentifier];

LABEL_24:
        executableSpecification3 = [v5 executableSpecification];
        executableIdentifier2 = [executableSpecification3 executableIdentifier];
        v8 = [executableIdentifier2 hash];

        goto LABEL_25;
      }

      if (executableType == 9)
      {
        uiSpecification2 = [v5 uiSpecification];
        predictionReasons = [uiSpecification2 predictionReasons];

        if (!predictionReasons)
        {
          firstObject = __atxlog_handle_blending();
          if (!os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          executableSpecification4 = [v5 executableSpecification];
          executableIdentifier3 = [(__CFString *)executableSpecification4 executableIdentifier];
          *buf = 138412290;
          v47 = executableIdentifier3;
          _os_log_impl(&dword_1DEFC4000, firstObject, OS_LOG_TYPE_DEFAULT, "ATXContextActionIdentifier: App Shortcut skipped: %@", buf, 0xCu);

LABEL_32:
LABEL_33:
          selfCopy = 0;
          goto LABEL_34;
        }

        v20 = objc_opt_class();
        uiSpecification3 = [v5 uiSpecification];
        v22 = [v20 _stringsWithPredictionReasons:{objc_msgSend(uiSpecification3, "predictionReasons")}];
        firstObject = [v22 firstObject];

        executableSpecification4 = [objc_opt_class() _actionTypeFromShortcutsActionSuggestion:v5];
        v8 = [objc_opt_class() _instanceIdentifierFromShortcutsActionSuggestion:v5];
        goto LABEL_25;
      }
    }

    executableSpecification4 = 0;
    firstObject = 0;
    if (executableType == 5)
    {
      v23 = objc_opt_class();
      uiSpecification4 = [v5 uiSpecification];
      v25 = [v23 _stringsWithPredictionReasons:{objc_msgSend(uiSpecification4, "predictionReasons")}];
      firstObject = [v25 firstObject];

      executableSpecification5 = [v5 executableSpecification];
      executableIdentifier4 = [executableSpecification5 executableIdentifier];
      v8 = [executableIdentifier4 hash];

      executableSpecification4 = @"AppClip";
    }

    goto LABEL_25;
  }

  if (executableType < 2 || (executableType - 3) < 2)
  {
LABEL_14:
    firstObject = __atxlog_handle_blending();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_FAULT))
    {
      [(ATXContextActionIdentifier *)v5 initWithProactiveSuggestion:firstObject];
    }

    goto LABEL_33;
  }

  executableSpecification4 = 0;
  firstObject = 0;
  if (executableType == 2)
  {
    v11 = objc_opt_class();
    uiSpecification5 = [v5 uiSpecification];
    v13 = [v11 _stringsWithPredictionReasons:{objc_msgSend(uiSpecification5, "predictionReasons")}];
    firstObject = [v13 firstObject];

    atxActionExecutableObject = [v5 atxActionExecutableObject];
    actionType = [atxActionExecutableObject actionType];

    if (actionType)
    {
      atxActionExecutableObject2 = [v5 atxActionExecutableObject];
      actionType2 = [atxActionExecutableObject2 actionType];

      if (actionType2 == 1)
      {
        executableSpecification4 = @"NSUA";
      }

      else
      {
        executableSpecification4 = 0;
      }
    }

    else
    {
      executableSpecification4 = @"Intent";
    }

    goto LABEL_24;
  }

LABEL_25:
  if (![firstObject length]|| ![(__CFString *)executableSpecification4 length]|| !v8)
  {
    v37 = __atxlog_handle_blending();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      executableSpecification6 = [v5 executableSpecification];
      executableClassString = [executableSpecification6 executableClassString];
      executableSpecification7 = [v5 executableSpecification];
      executableIdentifier5 = [executableSpecification7 executableIdentifier];
      uiSpecification6 = [v5 uiSpecification];
      *buf = 138413570;
      v47 = executableClassString;
      v48 = 2112;
      v49 = firstObject;
      v50 = 2112;
      v51 = executableSpecification4;
      v52 = 2048;
      v53 = v8;
      v54 = 2112;
      v55 = executableIdentifier5;
      v56 = 2048;
      predictionReasons2 = [uiSpecification6 predictionReasons];
      _os_log_fault_impl(&dword_1DEFC4000, v37, OS_LOG_TYPE_FAULT, "ATXContextActionIdentifier suggestion unhandled: %@: %@, %@, %lu, %@, %llu", buf, 0x3Eu);
    }

    goto LABEL_32;
  }

  self = [(ATXContextActionIdentifier *)self initWithContext:firstObject subType:executableSpecification4 instanceIdentifierInteger:v8];

  selfCopy = self;
LABEL_34:

  v38 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

+ (id)actionTypeFromSpotlightActionType:(id)type
{
  v19 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [&unk_1F5A41350 allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(allKeys);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      if ([typeCopy hasPrefix:v9])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (id)_actionTypeFromShortcutsActionSuggestion:(id)suggestion
{
  v20 = *MEMORY[0x1E69E9840];
  executableSpecification = [suggestion executableSpecification];
  executableIdentifier = [executableSpecification executableIdentifier];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [&unk_1F5A41378 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(allKeys);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      if ([executableIdentifier hasPrefix:v10])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
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

+ (unint64_t)_instanceIdentifierFromShortcutsActionSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableIdentifier = [executableSpecification executableIdentifier];
  v6 = [executableIdentifier hash];

  uiSpecification = [suggestionCopy uiSpecification];
  contextStartDate = [uiSpecification contextStartDate];

  if (contextStartDate)
  {
    uiSpecification2 = [suggestionCopy uiSpecification];
    contextStartDate2 = [uiSpecification2 contextStartDate];
    v6 = [contextStartDate2 hash] - v6 + 32 * v6;
  }

  return v6;
}

+ (id)_stringsWithPredictionReasons:(unint64_t)reasons
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
  ATXSuggestionPredictionReasonEnumerateReasonCodes(reasons, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __60__ATXContextActionIdentifier__stringsWithPredictionReasons___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = stringForATXSuggestionPredictionReasonCode(a2);
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXContextActionIdentifier *)self isEqualToATXContextActionIdentifier:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXContextActionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_context;
  v6 = v5;
  if (v5 == identifierCopy[1])
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
  if (v8 == identifierCopy[2])
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
  if (v12 == identifierCopy[3])
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

- (void)encodeWithCoder:(id)coder
{
  context = self->_context;
  coderCopy = coder;
  [coderCopy encodeObject:context forKey:@"context"];
  [coderCopy encodeObject:self->_subtype forKey:@"subtype"];
  [coderCopy encodeObject:self->_instanceId forKey:@"instanceId"];
}

- (ATXContextActionIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_blending();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"context" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXContextActionIdentifier" errorCode:-1 logHandle:v7];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_blending();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"subtype" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXContextActionIdentifier" errorCode:-1 logHandle:v13];

    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
    }

    else
    {
      v16 = MEMORY[0x1E69C5D78];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_blending();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"instanceId" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXContextActionIdentifier" errorCode:-1 logHandle:v18];

      error3 = [coderCopy error];

      if (error3)
      {
        selfCopy = 0;
      }

      else
      {
        self = [(ATXContextActionIdentifier *)self initWithContext:v8 subtype:v14 instanceIdentifier:v19];
        selfCopy = self;
      }
    }
  }

  return selfCopy;
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