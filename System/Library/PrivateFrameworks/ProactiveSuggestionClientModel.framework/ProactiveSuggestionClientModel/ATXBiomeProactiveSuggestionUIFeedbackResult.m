@interface ATXBiomeProactiveSuggestionUIFeedbackResult
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithProactiveSuggestionUIFeedbackResult:(id)a3;
- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithProto:(id)a3;
- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithProtoData:(id)a3;
- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithSessionId:(id)a3 blendingUICacheUpdateUUID:(id)a4 clientModelId:(id)a5 clientModelCacheCreationDate:(id)a6 consumerSubType:(unsigned __int8)a7 sessionStartDate:(id)a8 sessionEndDate:(id)a9 shownSuggestions:(id)a10 engagedSuggestions:(id)a11 rejectedSuggestions:(id)a12;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXBiomeProactiveSuggestionUIFeedbackResult:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation ATXBiomeProactiveSuggestionUIFeedbackResult

- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithProactiveSuggestionUIFeedbackResult:(id)a3
{
  v4 = a3;
  v5 = [v4 session];
  v6 = [v5 blendingUICacheUpdateUUID];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 session];
    v9 = [v8 sessionStartDate];
    if (v9)
    {
      v10 = v9;
      v11 = [v4 session];
      v12 = [v11 sessionEndDate];
      if (v12)
      {
        v13 = [v4 shownSuggestions];
        v14 = [v13 count];

        if (!v14)
        {
          v12 = 0;
          goto LABEL_11;
        }

        v5 = [v4 session];
        v7 = [v5 sessionIdentifier];
        v8 = [v4 session];
        v10 = [v8 blendingUICacheUpdateUUID];
        v11 = [v4 clientCacheUpdate];
        v29 = [v11 clientModelId];
        v25 = [v4 clientCacheUpdate];
        v28 = [v25 cacheCreationDate];
        v21 = [v4 consumerSubType];
        v24 = [v4 session];
        v27 = [v24 sessionStartDate];
        v23 = [v4 session];
        v26 = [v23 sessionEndDate];
        v22 = [v4 shownSuggestions];
        v19 = [ATXLightweightProactiveSuggestion lightWeightSuggestionsFromSuggestions:v22];
        v20 = [v4 engagedSuggestions];
        v15 = [ATXLightweightProactiveSuggestion lightWeightSuggestionsFromSuggestions:v20];
        v16 = [v4 rejectedSuggestions];
        v17 = [ATXLightweightProactiveSuggestion lightWeightSuggestionsFromSuggestions:v16];
        self = [(ATXBiomeProactiveSuggestionUIFeedbackResult *)self initWithSessionId:v7 blendingUICacheUpdateUUID:v10 clientModelId:v29 clientModelCacheCreationDate:v28 consumerSubType:v21 sessionStartDate:v27 sessionEndDate:v26 shownSuggestions:v19 engagedSuggestions:v15 rejectedSuggestions:v17];

        v12 = self;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_11:
  return v12;
}

- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithSessionId:(id)a3 blendingUICacheUpdateUUID:(id)a4 clientModelId:(id)a5 clientModelCacheCreationDate:(id)a6 consumerSubType:(unsigned __int8)a7 sessionStartDate:(id)a8 sessionEndDate:(id)a9 shownSuggestions:(id)a10 engagedSuggestions:(id)a11 rejectedSuggestions:(id)a12
{
  v30 = a3;
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v26 = a8;
  v25 = a9;
  v24 = a10;
  v23 = a11;
  v18 = a12;
  v31.receiver = self;
  v31.super_class = ATXBiomeProactiveSuggestionUIFeedbackResult;
  v19 = [(ATXBiomeProactiveSuggestionUIFeedbackResult *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_sessionId, a3);
    objc_storeStrong(&v20->_blendingUICacheUpdateUUID, a4);
    objc_storeStrong(&v20->_clientModelId, a5);
    objc_storeStrong(&v20->_clientModelCacheCreationDate, a6);
    v20->_consumerSubType = a7;
    objc_storeStrong(&v20->_sessionStartDate, a8);
    objc_storeStrong(&v20->_sessionEndDate, a9);
    objc_storeStrong(&v20->_shownSuggestions, a10);
    objc_storeStrong(&v20->_engagedSuggestions, a11);
    objc_storeStrong(&v20->_rejectedSuggestions, a12);
  }

  return v20;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v5 = a3;
    v6 = [[a1 alloc] initWithProtoData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"sessionId: %@\n", self->_sessionId];
  v4 = [(NSUUID *)self->_blendingUICacheUpdateUUID UUIDString];
  [v3 appendFormat:@"blendingUICacheUpdateUUID: %@\n", v4];

  [v3 appendFormat:@"clientModelId: %@\n", self->_clientModelId];
  [v3 appendFormat:@"clientModelCacheCreationDate: %@\n", self->_clientModelCacheCreationDate];
  v5 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  [v3 appendFormat:@"consumerSubType: %@\n", v5];

  [v3 appendFormat:@"sessionStartDate: %@\n", self->_sessionStartDate];
  [v3 appendFormat:@"sessionEndDate: %@\n", self->_sessionEndDate];
  [v3 appendFormat:@"shownSuggestions: %@\n", self->_shownSuggestions];
  [v3 appendFormat:@"engagedSuggestions: %@\n", self->_engagedSuggestions];
  [v3 appendFormat:@"rejectedSuggestions: %@\n", self->_rejectedSuggestions];
  v6 = [v3 copy];

  return v6;
}

- (id)jsonDict
{
  v27[10] = *MEMORY[0x1E69E9840];
  sessionId = self->_sessionId;
  blendingUICacheUpdateUUID = self->_blendingUICacheUpdateUUID;
  if (!sessionId)
  {
    sessionId = @"nil";
  }

  v27[0] = sessionId;
  v26[0] = @"sessionId";
  v26[1] = @"blendingUICacheUpdateUUID";
  v5 = [(NSUUID *)blendingUICacheUpdateUUID UUIDString];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"nil";
  }

  clientModelId = self->_clientModelId;
  clientModelCacheCreationDate = self->_clientModelCacheCreationDate;
  if (!clientModelId)
  {
    clientModelId = @"nil";
  }

  v27[1] = v7;
  v27[2] = clientModelId;
  v26[2] = @"clientModelId";
  v26[3] = @"clientModelCacheCreationDate";
  v10 = [(NSDate *)clientModelCacheCreationDate description];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"nil";
  }

  v27[3] = v12;
  v26[4] = @"consumerSubType";
  v13 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  v27[4] = v13;
  v26[5] = @"sessionStartDate";
  v14 = [(NSDate *)self->_sessionStartDate description];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"nil";
  }

  v27[5] = v16;
  v26[6] = @"sessionEndDate";
  v17 = [(NSDate *)self->_sessionEndDate description];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"nil";
  }

  v27[6] = v19;
  v26[7] = @"shownSuggestions";
  v20 = [ATXLightweightProactiveSuggestion lightWeightSuggestionDescriptionsFromLightWeightSuggestions:self->_shownSuggestions];
  v27[7] = v20;
  v26[8] = @"engagedSuggestions";
  v21 = [ATXLightweightProactiveSuggestion lightWeightSuggestionDescriptionsFromLightWeightSuggestions:self->_engagedSuggestions];
  v27[8] = v21;
  v26[9] = @"rejectedSuggestions";
  v22 = [ATXLightweightProactiveSuggestion lightWeightSuggestionDescriptionsFromLightWeightSuggestions:self->_rejectedSuggestions];
  v27[9] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:10];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXBiomeProactiveSuggestionUIFeedbackResult *)self jsonDict];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXBiomeProactiveSuggestionUIFeedbackResult *)self isEqualToATXBiomeProactiveSuggestionUIFeedbackResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXBiomeProactiveSuggestionUIFeedbackResult:(id)a3
{
  v4 = a3;
  v5 = self->_sessionId;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v8 = self->_blendingUICacheUpdateUUID;
  v9 = v8;
  if (v8 == v4[3])
  {
  }

  else
  {
    v10 = [(NSUUID *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v11 = self->_clientModelId;
  v12 = v11;
  if (v11 == v4[4])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v14 = self->_clientModelCacheCreationDate;
  v15 = v14;
  if (v14 == v4[5])
  {
  }

  else
  {
    v16 = [(NSDate *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (self->_consumerSubType != *(v4 + 8))
  {
LABEL_32:
    v29 = 0;
    goto LABEL_33;
  }

  v17 = self->_sessionStartDate;
  v18 = v17;
  if (v17 == v4[6])
  {
  }

  else
  {
    v19 = [(NSDate *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v20 = self->_sessionEndDate;
  v21 = v20;
  if (v20 == v4[7])
  {
  }

  else
  {
    v22 = [(NSDate *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v23 = self->_shownSuggestions;
  v24 = v23;
  if (v23 == v4[8])
  {
  }

  else
  {
    v25 = [(NSArray *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v26 = self->_engagedSuggestions;
  v27 = v26;
  if (v26 == v4[9])
  {
  }

  else
  {
    v28 = [(NSArray *)v26 isEqual:?];

    if ((v28 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v31 = self->_rejectedSuggestions;
  v32 = v31;
  if (v31 == v4[10])
  {
    v29 = 1;
  }

  else
  {
    v29 = [(NSArray *)v31 isEqual:?];
  }

LABEL_33:
  return v29;
}

- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBBiomeProactiveSuggestionUIFeedbackResult alloc] initWithData:v4];

    self = [(ATXBiomeProactiveSuggestionUIFeedbackResult *)self initWithProto:v5];
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
  v2 = [(ATXBiomeProactiveSuggestionUIFeedbackResult *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = __atxlog_handle_blending();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(ATXLightweightClientModelCacheUpdate *)self initWithProto:v16];
    }

    goto LABEL_7;
  }

  v5 = v4;
  v28 = [v5 sessionId];
  v6 = objc_alloc(MEMORY[0x1E696AFB0]);
  v27 = [v5 blendingUICacheUpdateUUID];
  v25 = [v6 initWithUUIDString:v27];
  v24 = [v5 clientModelId];
  v7 = MEMORY[0x1E695DF00];
  [v5 clientModelCacheCreationDate];
  v23 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
  v8 = MEMORY[0x1E698B028];
  v26 = [v5 consumerSubType];
  v22 = [v8 consumerSubtypeForString:v26 found:0];
  v9 = MEMORY[0x1E695DF00];
  [v5 sessionStartDate];
  v20 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = MEMORY[0x1E695DF00];
  [v5 sessionEndDate];
  v19 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
  v21 = [v5 shownSuggestions];
  v18 = [ATXLightweightProactiveSuggestion lightWeightSuggestionsFromProtoLightWeightSuggestions:v21];
  v11 = [v5 engagedSuggestions];
  v12 = [ATXLightweightProactiveSuggestion lightWeightSuggestionsFromProtoLightWeightSuggestions:v11];
  v13 = [v5 rejectedSuggestions];

  v14 = [ATXLightweightProactiveSuggestion lightWeightSuggestionsFromProtoLightWeightSuggestions:v13];
  self = [(ATXBiomeProactiveSuggestionUIFeedbackResult *)self initWithSessionId:v28 blendingUICacheUpdateUUID:v25 clientModelId:v24 clientModelCacheCreationDate:v23 consumerSubType:v22 sessionStartDate:v20 sessionEndDate:v19 shownSuggestions:v18 engagedSuggestions:v12 rejectedSuggestions:v14];

  v15 = self;
LABEL_8:

  return v15;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setSessionId:self->_sessionId];
  v4 = [(NSUUID *)self->_blendingUICacheUpdateUUID UUIDString];
  [v3 setBlendingUICacheUpdateUUID:v4];

  [v3 setClientModelId:self->_clientModelId];
  [(NSDate *)self->_clientModelCacheCreationDate timeIntervalSinceReferenceDate];
  [v3 setClientModelCacheCreationDate:?];
  v5 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  [v3 setConsumerSubType:v5];

  [(NSDate *)self->_sessionStartDate timeIntervalSinceReferenceDate];
  [v3 setSessionStartDate:?];
  [(NSDate *)self->_sessionEndDate timeIntervalSinceReferenceDate];
  [v3 setSessionEndDate:?];
  v6 = [ATXLightweightProactiveSuggestion protoLightWeightSuggestionsFromLightWeightSuggestions:self->_shownSuggestions];
  v7 = [v6 copy];
  [v3 setShownSuggestions:v7];

  v8 = [ATXLightweightProactiveSuggestion protoLightWeightSuggestionsFromLightWeightSuggestions:self->_engagedSuggestions];
  v9 = [v8 copy];
  [v3 setEngagedSuggestions:v9];

  v10 = [ATXLightweightProactiveSuggestion protoLightWeightSuggestionsFromLightWeightSuggestions:self->_rejectedSuggestions];
  v11 = [v10 copy];
  [v3 setRejectedSuggestions:v11];

  return v3;
}

@end