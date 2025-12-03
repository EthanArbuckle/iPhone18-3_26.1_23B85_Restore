@interface ATXLightweightProactiveSuggestion
+ (id)lightWeightSuggestionDescriptionsFromLightWeightSuggestions:(id)suggestions;
+ (id)lightWeightSuggestionsFromProtoLightWeightSuggestions:(id)suggestions;
+ (id)lightWeightSuggestionsFromSuggestions:(id)suggestions;
+ (id)protoLightWeightSuggestionsFromLightWeightSuggestions:(id)suggestions;
- (ATXLightweightProactiveSuggestion)initWithExecutableIdentifier:(id)identifier executableType:(int64_t)type scoreSpecification:(id)specification predictionReasons:(unint64_t)reasons;
- (ATXLightweightProactiveSuggestion)initWithProactiveSuggestion:(id)suggestion;
- (ATXLightweightProactiveSuggestion)initWithProto:(id)proto;
- (ATXLightweightProactiveSuggestion)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXLightweightProactiveSuggestion:(id)suggestion;
- (id)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation ATXLightweightProactiveSuggestion

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setExecutableIdentifier:self->_executableIdentifier];
  executableType = self->_executableType;
  if (executableType >= 0xC)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %li)", self->_executableType];
  }

  else
  {
    v5 = off_1E86A4C38[executableType];
  }

  [v3 setExecutableType:v5];

  proto = [(ATXProactiveSuggestionScoreSpecification *)self->_scoreSpecification proto];
  [v3 setScoreSpecification:proto];

  [v3 setPredictionReasons:self->_predictionReasons];

  return v3;
}

- (ATXLightweightProactiveSuggestion)initWithProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableIdentifier = [executableSpecification executableIdentifier];
  executableSpecification2 = [suggestionCopy executableSpecification];
  executableType = [executableSpecification2 executableType];
  scoreSpecification = [suggestionCopy scoreSpecification];
  uiSpecification = [suggestionCopy uiSpecification];

  v11 = -[ATXLightweightProactiveSuggestion initWithExecutableIdentifier:executableType:scoreSpecification:predictionReasons:](self, "initWithExecutableIdentifier:executableType:scoreSpecification:predictionReasons:", executableIdentifier, executableType, scoreSpecification, [uiSpecification predictionReasons]);
  return v11;
}

- (ATXLightweightProactiveSuggestion)initWithExecutableIdentifier:(id)identifier executableType:(int64_t)type scoreSpecification:(id)specification predictionReasons:(unint64_t)reasons
{
  identifierCopy = identifier;
  specificationCopy = specification;
  v16.receiver = self;
  v16.super_class = ATXLightweightProactiveSuggestion;
  v13 = [(ATXLightweightProactiveSuggestion *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_executableIdentifier, identifier);
    v14->_executableType = type;
    objc_storeStrong(&v14->_scoreSpecification, specification);
    v14->_predictionReasons = reasons;
  }

  return v14;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  executableIdentifier = self->_executableIdentifier;
  executableType = self->_executableType;
  if (executableType >= 0xC)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %li)", self->_executableType];
  }

  else
  {
    v5 = off_1E86A4C38[executableType];
  }

  v6 = [v2 stringWithFormat:@"%@ (%@)", executableIdentifier, v5];

  return v6;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXLightweightProactiveSuggestion *)self isEqualToATXLightweightProactiveSuggestion:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXLightweightProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = suggestionCopy;
  if (self->_executableType != suggestionCopy[3] || self->_predictionReasons != suggestionCopy[5])
  {
    goto LABEL_5;
  }

  v6 = self->_scoreSpecification;
  v7 = v6;
  if (v6 == v5[4])
  {
  }

  else
  {
    v8 = [(ATXProactiveSuggestionScoreSpecification *)v6 isEqual:?];

    if (!v8)
    {
LABEL_5:
      v9 = 0;
      goto LABEL_6;
    }
  }

  v11 = self->_executableIdentifier;
  v12 = v11;
  if (v11 == v5[2])
  {
    v9 = 1;
  }

  else
  {
    v9 = [(NSString *)v11 isEqual:?];
  }

LABEL_6:
  return v9;
}

- (ATXLightweightProactiveSuggestion)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBLightweightProactiveSuggestion alloc] initWithData:dataCopy];

    self = [(ATXLightweightProactiveSuggestion *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXLightweightProactiveSuggestion *)self proto];
  data = [proto data];

  return data;
}

- (ATXLightweightProactiveSuggestion)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_blending();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXLightweightClientModelCacheUpdate *)self initWithProto:v5];
      }

      selfCopy = 0;
      goto LABEL_44;
    }

    v5 = protoCopy;
    executableIdentifier = [v5 executableIdentifier];
    if (executableIdentifier)
    {
      v7 = executableIdentifier;
      executableType = [v5 executableType];

      if (executableType)
      {
        hasScoreSpecification = [v5 hasScoreSpecification];
        v10 = [ATXProactiveSuggestionScoreSpecification alloc];
        v11 = v10;
        if (hasScoreSpecification)
        {
          scoreSpecification = [v5 scoreSpecification];
          v13 = [(ATXProactiveSuggestionScoreSpecification *)v11 initWithProto:scoreSpecification];

          if (!v13)
          {
            v13 = __atxlog_handle_blending();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [ATXLightweightProactiveSuggestion initWithProto:v5];
            }

LABEL_15:
            selfCopy = 0;
LABEL_43:

LABEL_44:
            goto LABEL_45;
          }
        }

        else
        {
          v13 = [(ATXProactiveSuggestionScoreSpecification *)v10 initWithRawScore:0 suggestedConfidenceCategory:0.0];
        }

        executableIdentifier2 = [v5 executableIdentifier];
        executableType2 = [v5 executableType];
        if ([executableType2 isEqualToString:@"Unknown"])
        {
          v17 = 0;
        }

        else if ([executableType2 isEqualToString:@"App"])
        {
          v17 = 1;
        }

        else if ([executableType2 isEqualToString:@"Action"])
        {
          v17 = 2;
        }

        else if ([executableType2 isEqualToString:@"Widget"])
        {
          v17 = 3;
        }

        else if ([executableType2 isEqualToString:@"Tip"])
        {
          v17 = 4;
        }

        else if ([executableType2 isEqualToString:@"AppClip"])
        {
          v17 = 5;
        }

        else if ([executableType2 isEqualToString:@"Interaction"])
        {
          v17 = 6;
        }

        else if ([executableType2 isEqualToString:@"ContextualAction"])
        {
          v17 = 7;
        }

        else if ([executableType2 isEqualToString:@"SpotlightAction"])
        {
          v17 = 8;
        }

        else if ([executableType2 isEqualToString:@"ShortcutsAction"])
        {
          v17 = 9;
        }

        else if ([executableType2 isEqualToString:@"LinkAction"])
        {
          v17 = 10;
        }

        else if ([executableType2 isEqualToString:@"Max"])
        {
          v17 = 11;
        }

        else
        {
          v17 = 0;
        }

        self = [(ATXLightweightProactiveSuggestion *)self initWithExecutableIdentifier:executableIdentifier2 executableType:v17 scoreSpecification:v13 predictionReasons:[v5 predictionReasons]];
        selfCopy = self;
        goto LABEL_43;
      }
    }

    v13 = __atxlog_handle_blending();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXLightweightProactiveSuggestion initWithProto:v5];
    }

    goto LABEL_15;
  }

  selfCopy = 0;
LABEL_45:

  return selfCopy;
}

+ (id)lightWeightSuggestionDescriptionsFromLightWeightSuggestions:(id)suggestions
{
  v18 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = suggestionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) description];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)lightWeightSuggestionsFromProtoLightWeightSuggestions:(id)suggestions
{
  v21 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = suggestionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[ATXLightweightProactiveSuggestion alloc] initWithProto:*(*(&v16 + 1) + 8 * v9)];
        if (v10)
        {
          [v4 addObject:v10];
        }

        else
        {
          v11 = __atxlog_handle_blending();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            [(ATXLightweightProactiveSuggestion(ArrayHelpers) *)&v14 lightWeightSuggestionsFromProtoLightWeightSuggestions:v15, v11];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)protoLightWeightSuggestionsFromLightWeightSuggestions:(id)suggestions
{
  v24 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = suggestionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138412290;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        proto = [v11 proto];
        if (proto)
        {
          [v4 addObject:proto];
        }

        else
        {
          v13 = __atxlog_handle_blending();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = v16;
            v22 = v11;
            _os_log_fault_impl(&dword_1DEFC4000, v13, OS_LOG_TYPE_FAULT, "Unable to generate proto for ATXLightweightProactiveSuggestion: %@", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)lightWeightSuggestionsFromSuggestions:(id)suggestions
{
  v20 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = suggestionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [ATXLightweightProactiveSuggestion alloc];
        v12 = [(ATXLightweightProactiveSuggestion *)v11 initWithProactiveSuggestion:v10, v15];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)initWithProto:(void *)a1 .cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a1 executableIdentifier];
  v3 = [a1 executableType];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_5(&dword_1DEFC4000, v4, v5, "%s: Returning nil because scoreSpecification initialization from proto returned nil. (exeId %@, type %@)", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)initWithProto:(void *)a1 .cold.3(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a1 executableIdentifier];
  v3 = [a1 executableType];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_5(&dword_1DEFC4000, v4, v5, "%s: Returning nil because proto is missing exeId and/or exeType. (exeID %@, type %@)", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

@end