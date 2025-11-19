@interface ATXProactiveSuggestion
+ (BOOL)suggestionsHaveChangedFromPreviousSuggestions:(id)a3 newSuggestions:(id)a4;
+ (id)protoSuggestionsFromSuggestions:(id)a3;
+ (id)suggestionsFromProtoSuggestions:(id)a3;
- (ATXProactiveSuggestion)initWithClientModelSpecification:(id)a3 executableSpecification:(id)a4 uiSpecification:(id)a5 scoreSpecification:(id)a6;
- (ATXProactiveSuggestion)initWithClientModelSpecification:(id)a3 executableSpecification:(id)a4 uiSpecification:(id)a5 scoreSpecification:(id)a6 uuid:(id)a7;
- (ATXProactiveSuggestion)initWithCoder:(id)a3;
- (ATXProactiveSuggestion)initWithProto:(id)a3;
- (ATXProactiveSuggestion)initWithProtoData:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)fuzzyIsEqualToProactiveSuggestion:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidForSuggestionsWidget;
- (INIntent)intent;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSDictionary)metadata;
- (NSString)appBundleIdentifier;
- (NSString)criterion;
- (NSString)suggestionIdentifier;
- (NSString)widgetBundleIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodeAsProto;
- (id)infoSuggestion;
- (id)jsonRawData;
- (id)proto;
- (unint64_t)applicableLayouts;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)proto;
@end

@implementation ATXProactiveSuggestion

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  clientModelSpecification = self->_clientModelSpecification;
  v5 = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableIdentifier];
  v6 = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableDescription];
  v7 = [v3 initWithFormat:@"Client Model Spec: %@   Executable ID: %@   Executable Description: %@   UI Spec: %@   Score Spec: %@", clientModelSpecification, v5, v6, self->_uiSpecification, self->_scoreSpecification];

  return v7;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(ATXProactiveSuggestionClientModelSpecification *)self->_clientModelSpecification proto];
  [(ATXPBProactiveSuggestion *)v3 setClientModelSpecification:v4];

  v5 = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification proto];
  [(ATXPBProactiveSuggestion *)v3 setExecutableSpecification:v5];

  v6 = [(ATXProactiveSuggestionScoreSpecification *)self->_scoreSpecification proto];
  [(ATXPBProactiveSuggestion *)v3 setScoreSpecification:v6];

  v7 = [(ATXProactiveSuggestionUISpecification *)self->_uiSpecification proto];
  [(ATXPBProactiveSuggestion *)v3 setUiSpecification:v7];

  v8 = [(NSUUID *)self->_uuid UUIDString];
  [(ATXPBProactiveSuggestion *)v3 setUuidString:v8];

  v9 = [(ATXPBProactiveSuggestion *)v3 uuidString];

  if (!v9)
  {
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXProactiveSuggestion *)&self->_uuid proto];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [(ATXProactiveSuggestionClientModelSpecification *)self->_clientModelSpecification hash];
    v5 = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification hash]- v4 + 32 * v4;
    v6 = [(ATXProactiveSuggestionUISpecification *)self->_uiSpecification hash]- v5 + 32 * v5;
    result = [(ATXProactiveSuggestionScoreSpecification *)self->_scoreSpecification hash]- v6 + 32 * v6;
    self->_hash = result;
  }

  return result;
}

- (id)infoSuggestion
{
  v2 = [(ATXProactiveSuggestion *)self executableSpecification];
  v3 = [v2 executableObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXProactiveSuggestion(ATXProactiveCardSuggestionClient) *)v5 infoSuggestion];
    }

    v4 = 0;
  }

  return v4;
}

- (NSString)appBundleIdentifier
{
  v2 = [(ATXProactiveSuggestion *)self infoSuggestion];
  v3 = [v2 appBundleIdentifier];

  return v3;
}

- (NSString)widgetBundleIdentifier
{
  v2 = [(ATXProactiveSuggestion *)self infoSuggestion];
  v3 = [v2 widgetBundleIdentifier];

  return v3;
}

- (NSString)criterion
{
  v2 = [(ATXProactiveSuggestion *)self infoSuggestion];
  v3 = [v2 criterion];

  return v3;
}

- (unint64_t)applicableLayouts
{
  v2 = [(ATXProactiveSuggestion *)self infoSuggestion];
  v3 = [v2 layouts];

  return v3;
}

- (NSString)suggestionIdentifier
{
  v2 = [(ATXProactiveSuggestion *)self infoSuggestion];
  v3 = [v2 suggestionIdentifier];

  return v3;
}

- (NSDate)startDate
{
  v2 = [(ATXProactiveSuggestion *)self infoSuggestion];
  v3 = [v2 startDate];

  return v3;
}

- (NSDate)endDate
{
  v2 = [(ATXProactiveSuggestion *)self infoSuggestion];
  v3 = [v2 endDate];

  return v3;
}

- (INIntent)intent
{
  v2 = [(ATXProactiveSuggestion *)self infoSuggestion];
  v3 = [v2 intent];

  return v3;
}

- (NSDictionary)metadata
{
  v2 = [(ATXProactiveSuggestion *)self infoSuggestion];
  v3 = [v2 metadata];

  return v3;
}

- (ATXProactiveSuggestion)initWithClientModelSpecification:(id)a3 executableSpecification:(id)a4 uiSpecification:(id)a5 scoreSpecification:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  v15 = [(ATXProactiveSuggestion *)self initWithClientModelSpecification:v13 executableSpecification:v12 uiSpecification:v11 scoreSpecification:v10 uuid:v14];

  return v15;
}

- (ATXProactiveSuggestion)initWithClientModelSpecification:(id)a3 executableSpecification:(id)a4 uiSpecification:(id)a5 scoreSpecification:(id)a6 uuid:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ATXProactiveSuggestion;
  v17 = [(ATXProactiveSuggestion *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientModelSpecification, a3);
    objc_storeStrong(&v18->_executableSpecification, a4);
    objc_storeStrong(&v18->_uiSpecification, a5);
    objc_storeStrong(&v18->_scoreSpecification, a6);
    objc_storeStrong(&v18->_uuid, a7);
  }

  return v18;
}

- (BOOL)isValidForSuggestionsWidget
{
  v3 = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableType];
  if (v3)
  {
    LOBYTE(v3) = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableType]!= 3 && [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableType]!= 4 && [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableType]!= 11;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXProactiveSuggestion allocWithZone:a3];
  v5 = [(ATXProactiveSuggestionClientModelSpecification *)self->_clientModelSpecification copy];
  v6 = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification copy];
  v7 = [(ATXProactiveSuggestionUISpecification *)self->_uiSpecification copy];
  v8 = [(ATXProactiveSuggestionScoreSpecification *)self->_scoreSpecification copy];
  v9 = [(NSUUID *)self->_uuid copy];
  v10 = [(ATXProactiveSuggestion *)v4 initWithClientModelSpecification:v5 executableSpecification:v6 uiSpecification:v7 scoreSpecification:v8 uuid:v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_clientModelSpecification;
      v7 = v6;
      if (v6 == v5->_clientModelSpecification)
      {
      }

      else
      {
        v8 = [(ATXProactiveSuggestionClientModelSpecification *)v6 isEqual:?];

        if (!v8)
        {
          goto LABEL_19;
        }
      }

      v10 = self->_executableSpecification;
      v11 = v10;
      if (v10 == v5->_executableSpecification)
      {
      }

      else
      {
        v12 = [(ATXProactiveSuggestionExecutableSpecification *)v10 isEqual:?];

        if (!v12)
        {
          goto LABEL_19;
        }
      }

      v13 = self->_uiSpecification;
      v14 = v13;
      if (v13 == v5->_uiSpecification)
      {
      }

      else
      {
        v15 = [(ATXProactiveSuggestionUISpecification *)v13 isEqual:?];

        if (!v15)
        {
          goto LABEL_19;
        }
      }

      v16 = self->_scoreSpecification;
      v17 = v16;
      if (v16 == v5->_scoreSpecification)
      {
      }

      else
      {
        v18 = [(ATXProactiveSuggestionScoreSpecification *)v16 isEqual:?];

        if (!v18)
        {
LABEL_19:
          v9 = 0;
LABEL_25:

          goto LABEL_26;
        }
      }

      v19 = self->_uuid;
      v20 = v19;
      if (v19 == v5->_uuid)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSUUID *)v19 isEqual:?];
      }

      goto LABEL_25;
    }

    v9 = 0;
  }

LABEL_26:

  return v9;
}

- (BOOL)fuzzyIsEqualToProactiveSuggestion:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v5 = [(ATXProactiveSuggestion *)self clientModelSpecification];
    v6 = [(ATXProactiveSuggestion *)v4 clientModelSpecification];
    v7 = [v5 fuzzyIsEqualToClientModelSpecification:v6];

    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = [(ATXProactiveSuggestion *)self executableSpecification];
    v9 = [(ATXProactiveSuggestion *)v4 executableSpecification];
    v10 = [v8 fuzzyIsEqualToExecutableSpecification:v9];

    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = [(ATXProactiveSuggestion *)self uiSpecification];
    v12 = [(ATXProactiveSuggestion *)v4 uiSpecification];
    v13 = [v11 fuzzyIsEqualToUISpecification:v12];

    if (v13)
    {
      v14 = [(ATXProactiveSuggestion *)self scoreSpecification];
      v15 = [(ATXProactiveSuggestion *)v4 scoreSpecification];
      v16 = [v14 fuzzyIsEqualToScoreSpecification:v15];
    }

    else
    {
LABEL_7:
      v16 = 0;
    }
  }

  return v16;
}

+ (BOOL)suggestionsHaveChangedFromPreviousSuggestions:(id)a3 newSuggestions:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count] || objc_msgSend(v5, "count"))
  {
    v7 = [v6 count];
    if (v7 == [v5 count])
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __87__ATXProactiveSuggestion_suggestionsHaveChangedFromPreviousSuggestions_newSuggestions___block_invoke;
      v13[3] = &unk_1E86A4830;
      v14 = v5;
      v15 = &v16;
      [v6 enumerateObjectsUsingBlock:v13];
      v8 = *(v17 + 24);
      if ((v8 & 1) == 0)
      {
        v9 = __atxlog_handle_blending();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          +[ATXProactiveSuggestion suggestionsHaveChangedFromPreviousSuggestions:newSuggestions:];
        }
      }

      _Block_object_dispose(&v16, 8);
    }

    else
    {
      v10 = __atxlog_handle_blending();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        +[ATXProactiveSuggestion suggestionsHaveChangedFromPreviousSuggestions:newSuggestions:];
      }

      v8 = 1;
    }
  }

  else
  {
    v11 = __atxlog_handle_blending();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[ATXProactiveSuggestion suggestionsHaveChangedFromPreviousSuggestions:newSuggestions:];
    }

    v8 = 0;
  }

  return v8;
}

void __87__ATXProactiveSuggestion_suggestionsHaveChangedFromPreviousSuggestions_newSuggestions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 hash];
  v9 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  if (v8 == [v9 hash])
  {
    v10 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v11 = [v7 fuzzyIsEqualToProactiveSuggestion:v10];

    if (v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = __atxlog_handle_blending();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __87__ATXProactiveSuggestion_suggestionsHaveChangedFromPreviousSuggestions_newSuggestions___block_invoke_cold_1();
  }

  v13 = __atxlog_handle_blending();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v7 uiSpecification];
    v16 = [v15 title];
    v17 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v18 = [v17 uiSpecification];
    v19 = [v18 title];
    v20 = 138412546;
    v21 = v16;
    v22 = 2112;
    v23 = v19;
    _os_log_debug_impl(&dword_1DEFC4000, v13, OS_LOG_TYPE_DEBUG, "Blending: New suggestion title: %@, Previous suggestion title: %@.", &v20, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  *a4 = 1;
LABEL_10:

  v14 = *MEMORY[0x1E69E9840];
}

- (id)encodeAsProto
{
  v2 = [(ATXProactiveSuggestion *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXProactiveSuggestion)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBProactiveSuggestion alloc] initWithData:v4];

    self = [(ATXProactiveSuggestion *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXProactiveSuggestion)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }

      v21 = 0;
      goto LABEL_37;
    }

    v5 = v4;
    if (![(ATXPBProactiveSuggestion *)v5 hasUuidString])
    {
      v8 = __atxlog_handle_blending();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }

      v21 = 0;
      goto LABEL_36;
    }

    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = [(ATXPBProactiveSuggestion *)v5 uuidString];
    v8 = [v6 initWithUUIDString:v7];

    if (!v8)
    {
      v11 = __atxlog_handle_blending();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }

      v21 = 0;
      goto LABEL_35;
    }

    v9 = [ATXProactiveSuggestionClientModelSpecification alloc];
    v10 = [(ATXPBProactiveSuggestion *)v5 clientModelSpecification];
    v11 = [(ATXProactiveSuggestionClientModelSpecification *)v9 initWithProto:v10];

    if (!v11)
    {
      v14 = __atxlog_handle_blending();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }

      v21 = 0;
      goto LABEL_34;
    }

    v12 = [ATXProactiveSuggestionExecutableSpecification alloc];
    v13 = [(ATXPBProactiveSuggestion *)v5 executableSpecification];
    v14 = [(ATXProactiveSuggestionExecutableSpecification *)v12 initWithProto:v13];

    if (!v14)
    {
      v17 = __atxlog_handle_blending();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }

      v21 = 0;
      goto LABEL_33;
    }

    v15 = [ATXProactiveSuggestionUISpecification alloc];
    v16 = [(ATXPBProactiveSuggestion *)v5 uiSpecification];
    v17 = [(ATXProactiveSuggestionUISpecification *)v15 initWithProto:v16];

    if (v17)
    {
      v18 = [ATXProactiveSuggestionScoreSpecification alloc];
      v19 = [(ATXPBProactiveSuggestion *)v5 scoreSpecification];
      v20 = [(ATXProactiveSuggestionScoreSpecification *)v18 initWithProto:v19];

      if (v20)
      {
        self = [(ATXProactiveSuggestion *)self initWithClientModelSpecification:v11 executableSpecification:v14 uiSpecification:v17 scoreSpecification:v20 uuid:v8];
        v21 = self;
LABEL_32:

LABEL_33:
LABEL_34:

LABEL_35:
LABEL_36:

LABEL_37:
        goto LABEL_38;
      }

      v22 = __atxlog_handle_blending();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }
    }

    else
    {
      v20 = __atxlog_handle_blending();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }
    }

    v21 = 0;
    goto LABEL_32;
  }

  v21 = 0;
LABEL_38:

  return v21;
}

+ (id)suggestionsFromProtoSuggestions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
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
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [[ATXProactiveSuggestion alloc] initWithProto:*(*(&v16 + 1) + 8 * i)];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = __atxlog_handle_default();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
            {
              [(ATXProactiveSuggestion *)&v14 suggestionsFromProtoSuggestions:v15];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)protoSuggestionsFromSuggestions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
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
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) proto];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = __atxlog_handle_default();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
            {
              [(ATXProactiveSuggestion *)&v14 protoSuggestionsFromSuggestions:v15];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXProactiveSuggestion *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXProactiveSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXProactiveSuggestion *)self initWithProtoData:v5];
  return v6;
}

- (id)jsonRawData
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"uuid";
  v3 = [(NSUUID *)self->_uuid UUIDString];
  v12[0] = v3;
  v11[1] = @"clientModelSpecification";
  v4 = [(ATXProactiveSuggestionClientModelSpecification *)self->_clientModelSpecification jsonRawData];
  v12[1] = v4;
  v11[2] = @"uiSpecification";
  v5 = [(ATXProactiveSuggestionUISpecification *)self->_uiSpecification jsonRawData];
  v12[2] = v5;
  v11[3] = @"scoreSpecification";
  v6 = [(ATXProactiveSuggestionScoreSpecification *)self->_scoreSpecification jsonRawData];
  v12[3] = v6;
  v11[4] = @"executableSpecification";
  v7 = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification jsonRawData];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (void)suggestionsHaveChangedFromPreviousSuggestions:newSuggestions:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  v8 = *MEMORY[0x1E69E9840];
  [v2 count];
  v4 = 134218240;
  v5 = v1;
  v6 = 2048;
  v7 = [OUTLINED_FUNCTION_5_1() count];
  _os_log_debug_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_DEBUG, "Blending: New suggestions and previous suggestions have different counts. New %lu, Previous %lu.", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)initWithProto:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  v12 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_1();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1(&dword_1DEFC4000, v4, v5, "Unable to construct class %@ from ProtoBuf object. Protobuf object was of class: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)proto
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_fault_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_FAULT, "Proto uuidString not set for Proactive Suggestion with UUID: %@. Suggestion: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end