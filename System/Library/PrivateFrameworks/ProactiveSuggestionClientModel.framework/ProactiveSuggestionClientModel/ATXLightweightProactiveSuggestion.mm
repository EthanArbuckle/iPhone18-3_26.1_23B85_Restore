@interface ATXLightweightProactiveSuggestion
+ (id)lightWeightSuggestionDescriptionsFromLightWeightSuggestions:(id)a3;
+ (id)lightWeightSuggestionsFromProtoLightWeightSuggestions:(id)a3;
+ (id)lightWeightSuggestionsFromSuggestions:(id)a3;
+ (id)protoLightWeightSuggestionsFromLightWeightSuggestions:(id)a3;
- (ATXLightweightProactiveSuggestion)initWithExecutableIdentifier:(id)a3 executableType:(int64_t)a4 scoreSpecification:(id)a5 predictionReasons:(unint64_t)a6;
- (ATXLightweightProactiveSuggestion)initWithProactiveSuggestion:(id)a3;
- (ATXLightweightProactiveSuggestion)initWithProto:(id)a3;
- (ATXLightweightProactiveSuggestion)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXLightweightProactiveSuggestion:(id)a3;
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

  v6 = [(ATXProactiveSuggestionScoreSpecification *)self->_scoreSpecification proto];
  [v3 setScoreSpecification:v6];

  [v3 setPredictionReasons:self->_predictionReasons];

  return v3;
}

- (ATXLightweightProactiveSuggestion)initWithProactiveSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 executableSpecification];
  v6 = [v5 executableIdentifier];
  v7 = [v4 executableSpecification];
  v8 = [v7 executableType];
  v9 = [v4 scoreSpecification];
  v10 = [v4 uiSpecification];

  v11 = -[ATXLightweightProactiveSuggestion initWithExecutableIdentifier:executableType:scoreSpecification:predictionReasons:](self, "initWithExecutableIdentifier:executableType:scoreSpecification:predictionReasons:", v6, v8, v9, [v10 predictionReasons]);
  return v11;
}

- (ATXLightweightProactiveSuggestion)initWithExecutableIdentifier:(id)a3 executableType:(int64_t)a4 scoreSpecification:(id)a5 predictionReasons:(unint64_t)a6
{
  v11 = a3;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = ATXLightweightProactiveSuggestion;
  v13 = [(ATXLightweightProactiveSuggestion *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_executableIdentifier, a3);
    v14->_executableType = a4;
    objc_storeStrong(&v14->_scoreSpecification, a5);
    v14->_predictionReasons = a6;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXLightweightProactiveSuggestion *)self isEqualToATXLightweightProactiveSuggestion:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXLightweightProactiveSuggestion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_executableType != v4[3] || self->_predictionReasons != v4[5])
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

- (ATXLightweightProactiveSuggestion)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBLightweightProactiveSuggestion alloc] initWithData:v4];

    self = [(ATXLightweightProactiveSuggestion *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXLightweightProactiveSuggestion *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXLightweightProactiveSuggestion)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_blending();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXLightweightClientModelCacheUpdate *)self initWithProto:v5];
      }

      v14 = 0;
      goto LABEL_44;
    }

    v5 = v4;
    v6 = [v5 executableIdentifier];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 executableType];

      if (v8)
      {
        v9 = [v5 hasScoreSpecification];
        v10 = [ATXProactiveSuggestionScoreSpecification alloc];
        v11 = v10;
        if (v9)
        {
          v12 = [v5 scoreSpecification];
          v13 = [(ATXProactiveSuggestionScoreSpecification *)v11 initWithProto:v12];

          if (!v13)
          {
            v13 = __atxlog_handle_blending();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [ATXLightweightProactiveSuggestion initWithProto:v5];
            }

LABEL_15:
            v14 = 0;
LABEL_43:

LABEL_44:
            goto LABEL_45;
          }
        }

        else
        {
          v13 = [(ATXProactiveSuggestionScoreSpecification *)v10 initWithRawScore:0 suggestedConfidenceCategory:0.0];
        }

        v15 = [v5 executableIdentifier];
        v16 = [v5 executableType];
        if ([v16 isEqualToString:@"Unknown"])
        {
          v17 = 0;
        }

        else if ([v16 isEqualToString:@"App"])
        {
          v17 = 1;
        }

        else if ([v16 isEqualToString:@"Action"])
        {
          v17 = 2;
        }

        else if ([v16 isEqualToString:@"Widget"])
        {
          v17 = 3;
        }

        else if ([v16 isEqualToString:@"Tip"])
        {
          v17 = 4;
        }

        else if ([v16 isEqualToString:@"AppClip"])
        {
          v17 = 5;
        }

        else if ([v16 isEqualToString:@"Interaction"])
        {
          v17 = 6;
        }

        else if ([v16 isEqualToString:@"ContextualAction"])
        {
          v17 = 7;
        }

        else if ([v16 isEqualToString:@"SpotlightAction"])
        {
          v17 = 8;
        }

        else if ([v16 isEqualToString:@"ShortcutsAction"])
        {
          v17 = 9;
        }

        else if ([v16 isEqualToString:@"LinkAction"])
        {
          v17 = 10;
        }

        else if ([v16 isEqualToString:@"Max"])
        {
          v17 = 11;
        }

        else
        {
          v17 = 0;
        }

        self = [(ATXLightweightProactiveSuggestion *)self initWithExecutableIdentifier:v15 executableType:v17 scoreSpecification:v13 predictionReasons:[v5 predictionReasons]];
        v14 = self;
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

  v14 = 0;
LABEL_45:

  return v14;
}

+ (id)lightWeightSuggestionDescriptionsFromLightWeightSuggestions:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

+ (id)lightWeightSuggestionsFromProtoLightWeightSuggestions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
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

+ (id)protoLightWeightSuggestionsFromLightWeightSuggestions:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
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
        v12 = [v11 proto];
        if (v12)
        {
          [v4 addObject:v12];
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

+ (id)lightWeightSuggestionsFromSuggestions:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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