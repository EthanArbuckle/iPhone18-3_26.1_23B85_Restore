@interface ATXProactiveSuggestion
+ (BOOL)suggestionsHaveChangedFromPreviousSuggestions:(id)suggestions newSuggestions:(id)newSuggestions;
+ (id)protoSuggestionsFromSuggestions:(id)suggestions;
+ (id)suggestionsFromProtoSuggestions:(id)suggestions;
- (ATXProactiveSuggestion)initWithClientModelSpecification:(id)specification executableSpecification:(id)executableSpecification uiSpecification:(id)uiSpecification scoreSpecification:(id)scoreSpecification;
- (ATXProactiveSuggestion)initWithClientModelSpecification:(id)specification executableSpecification:(id)executableSpecification uiSpecification:(id)uiSpecification scoreSpecification:(id)scoreSpecification uuid:(id)uuid;
- (ATXProactiveSuggestion)initWithCoder:(id)coder;
- (ATXProactiveSuggestion)initWithProto:(id)proto;
- (ATXProactiveSuggestion)initWithProtoData:(id)data;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)fuzzyIsEqualToProactiveSuggestion:(id)suggestion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidForSuggestionsWidget;
- (INIntent)intent;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSDictionary)metadata;
- (NSString)appBundleIdentifier;
- (NSString)criterion;
- (NSString)suggestionIdentifier;
- (NSString)widgetBundleIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodeAsProto;
- (id)infoSuggestion;
- (id)jsonRawData;
- (id)proto;
- (unint64_t)applicableLayouts;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)proto;
@end

@implementation ATXProactiveSuggestion

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  clientModelSpecification = self->_clientModelSpecification;
  executableIdentifier = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableIdentifier];
  executableDescription = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableDescription];
  v7 = [v3 initWithFormat:@"Client Model Spec: %@   Executable ID: %@   Executable Description: %@   UI Spec: %@   Score Spec: %@", clientModelSpecification, executableIdentifier, executableDescription, self->_uiSpecification, self->_scoreSpecification];

  return v7;
}

- (id)proto
{
  v3 = objc_opt_new();
  proto = [(ATXProactiveSuggestionClientModelSpecification *)self->_clientModelSpecification proto];
  [(ATXPBProactiveSuggestion *)v3 setClientModelSpecification:proto];

  proto2 = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification proto];
  [(ATXPBProactiveSuggestion *)v3 setExecutableSpecification:proto2];

  proto3 = [(ATXProactiveSuggestionScoreSpecification *)self->_scoreSpecification proto];
  [(ATXPBProactiveSuggestion *)v3 setScoreSpecification:proto3];

  proto4 = [(ATXProactiveSuggestionUISpecification *)self->_uiSpecification proto];
  [(ATXPBProactiveSuggestion *)v3 setUiSpecification:proto4];

  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [(ATXPBProactiveSuggestion *)v3 setUuidString:uUIDString];

  uuidString = [(ATXPBProactiveSuggestion *)v3 uuidString];

  if (!uuidString)
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
  executableSpecification = [(ATXProactiveSuggestion *)self executableSpecification];
  executableObject = [executableSpecification executableObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = executableObject;
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
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  appBundleIdentifier = [infoSuggestion appBundleIdentifier];

  return appBundleIdentifier;
}

- (NSString)widgetBundleIdentifier
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  widgetBundleIdentifier = [infoSuggestion widgetBundleIdentifier];

  return widgetBundleIdentifier;
}

- (NSString)criterion
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  criterion = [infoSuggestion criterion];

  return criterion;
}

- (unint64_t)applicableLayouts
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  layouts = [infoSuggestion layouts];

  return layouts;
}

- (NSString)suggestionIdentifier
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  suggestionIdentifier = [infoSuggestion suggestionIdentifier];

  return suggestionIdentifier;
}

- (NSDate)startDate
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  startDate = [infoSuggestion startDate];

  return startDate;
}

- (NSDate)endDate
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  endDate = [infoSuggestion endDate];

  return endDate;
}

- (INIntent)intent
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  intent = [infoSuggestion intent];

  return intent;
}

- (NSDictionary)metadata
{
  infoSuggestion = [(ATXProactiveSuggestion *)self infoSuggestion];
  metadata = [infoSuggestion metadata];

  return metadata;
}

- (ATXProactiveSuggestion)initWithClientModelSpecification:(id)specification executableSpecification:(id)executableSpecification uiSpecification:(id)uiSpecification scoreSpecification:(id)scoreSpecification
{
  scoreSpecificationCopy = scoreSpecification;
  uiSpecificationCopy = uiSpecification;
  executableSpecificationCopy = executableSpecification;
  specificationCopy = specification;
  v14 = objc_opt_new();
  v15 = [(ATXProactiveSuggestion *)self initWithClientModelSpecification:specificationCopy executableSpecification:executableSpecificationCopy uiSpecification:uiSpecificationCopy scoreSpecification:scoreSpecificationCopy uuid:v14];

  return v15;
}

- (ATXProactiveSuggestion)initWithClientModelSpecification:(id)specification executableSpecification:(id)executableSpecification uiSpecification:(id)uiSpecification scoreSpecification:(id)scoreSpecification uuid:(id)uuid
{
  specificationCopy = specification;
  executableSpecificationCopy = executableSpecification;
  uiSpecificationCopy = uiSpecification;
  scoreSpecificationCopy = scoreSpecification;
  uuidCopy = uuid;
  v21.receiver = self;
  v21.super_class = ATXProactiveSuggestion;
  v17 = [(ATXProactiveSuggestion *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientModelSpecification, specification);
    objc_storeStrong(&v18->_executableSpecification, executableSpecification);
    objc_storeStrong(&v18->_uiSpecification, uiSpecification);
    objc_storeStrong(&v18->_scoreSpecification, scoreSpecification);
    objc_storeStrong(&v18->_uuid, uuid);
  }

  return v18;
}

- (BOOL)isValidForSuggestionsWidget
{
  executableType = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableType];
  if (executableType)
  {
    LOBYTE(executableType) = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableType]!= 3 && [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableType]!= 4 && [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification executableType]!= 11;
  }

  return executableType;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXProactiveSuggestion allocWithZone:zone];
  v5 = [(ATXProactiveSuggestionClientModelSpecification *)self->_clientModelSpecification copy];
  v6 = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification copy];
  v7 = [(ATXProactiveSuggestionUISpecification *)self->_uiSpecification copy];
  v8 = [(ATXProactiveSuggestionScoreSpecification *)self->_scoreSpecification copy];
  v9 = [(NSUUID *)self->_uuid copy];
  v10 = [(ATXProactiveSuggestion *)v4 initWithClientModelSpecification:v5 executableSpecification:v6 uiSpecification:v7 scoreSpecification:v8 uuid:v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (BOOL)fuzzyIsEqualToProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if (self == suggestionCopy)
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

    clientModelSpecification = [(ATXProactiveSuggestion *)self clientModelSpecification];
    clientModelSpecification2 = [(ATXProactiveSuggestion *)suggestionCopy clientModelSpecification];
    v7 = [clientModelSpecification fuzzyIsEqualToClientModelSpecification:clientModelSpecification2];

    if (!v7)
    {
      goto LABEL_7;
    }

    executableSpecification = [(ATXProactiveSuggestion *)self executableSpecification];
    executableSpecification2 = [(ATXProactiveSuggestion *)suggestionCopy executableSpecification];
    v10 = [executableSpecification fuzzyIsEqualToExecutableSpecification:executableSpecification2];

    if (!v10)
    {
      goto LABEL_7;
    }

    uiSpecification = [(ATXProactiveSuggestion *)self uiSpecification];
    uiSpecification2 = [(ATXProactiveSuggestion *)suggestionCopy uiSpecification];
    v13 = [uiSpecification fuzzyIsEqualToUISpecification:uiSpecification2];

    if (v13)
    {
      scoreSpecification = [(ATXProactiveSuggestion *)self scoreSpecification];
      scoreSpecification2 = [(ATXProactiveSuggestion *)suggestionCopy scoreSpecification];
      v16 = [scoreSpecification fuzzyIsEqualToScoreSpecification:scoreSpecification2];
    }

    else
    {
LABEL_7:
      v16 = 0;
    }
  }

  return v16;
}

+ (BOOL)suggestionsHaveChangedFromPreviousSuggestions:(id)suggestions newSuggestions:(id)newSuggestions
{
  suggestionsCopy = suggestions;
  newSuggestionsCopy = newSuggestions;
  if ([newSuggestionsCopy count] || objc_msgSend(suggestionsCopy, "count"))
  {
    v7 = [newSuggestionsCopy count];
    if (v7 == [suggestionsCopy count])
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __87__ATXProactiveSuggestion_suggestionsHaveChangedFromPreviousSuggestions_newSuggestions___block_invoke;
      v13[3] = &unk_1E86A4830;
      v14 = suggestionsCopy;
      v15 = &v16;
      [newSuggestionsCopy enumerateObjectsUsingBlock:v13];
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
  proto = [(ATXProactiveSuggestion *)self proto];
  data = [proto data];

  return data;
}

- (ATXProactiveSuggestion)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBProactiveSuggestion alloc] initWithData:dataCopy];

    self = [(ATXProactiveSuggestion *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXProactiveSuggestion)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }

      selfCopy = 0;
      goto LABEL_37;
    }

    v5 = protoCopy;
    if (![(ATXPBProactiveSuggestion *)v5 hasUuidString])
    {
      v8 = __atxlog_handle_blending();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }

      selfCopy = 0;
      goto LABEL_36;
    }

    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    uuidString = [(ATXPBProactiveSuggestion *)v5 uuidString];
    v8 = [v6 initWithUUIDString:uuidString];

    if (!v8)
    {
      v11 = __atxlog_handle_blending();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }

      selfCopy = 0;
      goto LABEL_35;
    }

    v9 = [ATXProactiveSuggestionClientModelSpecification alloc];
    clientModelSpecification = [(ATXPBProactiveSuggestion *)v5 clientModelSpecification];
    v11 = [(ATXProactiveSuggestionClientModelSpecification *)v9 initWithProto:clientModelSpecification];

    if (!v11)
    {
      v14 = __atxlog_handle_blending();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }

      selfCopy = 0;
      goto LABEL_34;
    }

    v12 = [ATXProactiveSuggestionExecutableSpecification alloc];
    executableSpecification = [(ATXPBProactiveSuggestion *)v5 executableSpecification];
    v14 = [(ATXProactiveSuggestionExecutableSpecification *)v12 initWithProto:executableSpecification];

    if (!v14)
    {
      v17 = __atxlog_handle_blending();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestion initWithProto:];
      }

      selfCopy = 0;
      goto LABEL_33;
    }

    v15 = [ATXProactiveSuggestionUISpecification alloc];
    uiSpecification = [(ATXPBProactiveSuggestion *)v5 uiSpecification];
    v17 = [(ATXProactiveSuggestionUISpecification *)v15 initWithProto:uiSpecification];

    if (v17)
    {
      v18 = [ATXProactiveSuggestionScoreSpecification alloc];
      scoreSpecification = [(ATXPBProactiveSuggestion *)v5 scoreSpecification];
      v20 = [(ATXProactiveSuggestionScoreSpecification *)v18 initWithProto:scoreSpecification];

      if (v20)
      {
        self = [(ATXProactiveSuggestion *)self initWithClientModelSpecification:v11 executableSpecification:v14 uiSpecification:v17 scoreSpecification:v20 uuid:v8];
        selfCopy = self;
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

    selfCopy = 0;
    goto LABEL_32;
  }

  selfCopy = 0;
LABEL_38:

  return selfCopy;
}

+ (id)suggestionsFromProtoSuggestions:(id)suggestions
{
  v21 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  if (suggestionsCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
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

+ (id)protoSuggestionsFromSuggestions:(id)suggestions
{
  v21 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  if (suggestionsCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
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
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          proto = [*(*(&v16 + 1) + 8 * i) proto];
          if (proto)
          {
            [v4 addObject:proto];
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

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXProactiveSuggestion *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXProactiveSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXProactiveSuggestion *)self initWithProtoData:v5];
  return v6;
}

- (id)jsonRawData
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"uuid";
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v12[0] = uUIDString;
  v11[1] = @"clientModelSpecification";
  jsonRawData = [(ATXProactiveSuggestionClientModelSpecification *)self->_clientModelSpecification jsonRawData];
  v12[1] = jsonRawData;
  v11[2] = @"uiSpecification";
  jsonRawData2 = [(ATXProactiveSuggestionUISpecification *)self->_uiSpecification jsonRawData];
  v12[2] = jsonRawData2;
  v11[3] = @"scoreSpecification";
  jsonRawData3 = [(ATXProactiveSuggestionScoreSpecification *)self->_scoreSpecification jsonRawData];
  v12[3] = jsonRawData3;
  v11[4] = @"executableSpecification";
  jsonRawData4 = [(ATXProactiveSuggestionExecutableSpecification *)self->_executableSpecification jsonRawData];
  v12[4] = jsonRawData4;
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
  v3 = *self;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_fault_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_FAULT, "Proto uuidString not set for Proactive Suggestion with UUID: %@. Suggestion: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end