@interface ATXBiomeProactiveSuggestionUIFeedbackResult
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithProactiveSuggestionUIFeedbackResult:(id)result;
- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithProto:(id)proto;
- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithProtoData:(id)data;
- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithSessionId:(id)id blendingUICacheUpdateUUID:(id)d clientModelId:(id)modelId clientModelCacheCreationDate:(id)date consumerSubType:(unsigned __int8)type sessionStartDate:(id)startDate sessionEndDate:(id)endDate shownSuggestions:(id)self0 engagedSuggestions:(id)self1 rejectedSuggestions:(id)self2;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXBiomeProactiveSuggestionUIFeedbackResult:(id)result;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation ATXBiomeProactiveSuggestionUIFeedbackResult

- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithProactiveSuggestionUIFeedbackResult:(id)result
{
  resultCopy = result;
  session = [resultCopy session];
  blendingUICacheUpdateUUID = [session blendingUICacheUpdateUUID];
  if (blendingUICacheUpdateUUID)
  {
    sessionIdentifier = blendingUICacheUpdateUUID;
    session2 = [resultCopy session];
    sessionStartDate = [session2 sessionStartDate];
    if (sessionStartDate)
    {
      blendingUICacheUpdateUUID2 = sessionStartDate;
      session3 = [resultCopy session];
      selfCopy = [session3 sessionEndDate];
      if (selfCopy)
      {
        shownSuggestions = [resultCopy shownSuggestions];
        v14 = [shownSuggestions count];

        if (!v14)
        {
          selfCopy = 0;
          goto LABEL_11;
        }

        session = [resultCopy session];
        sessionIdentifier = [session sessionIdentifier];
        session2 = [resultCopy session];
        blendingUICacheUpdateUUID2 = [session2 blendingUICacheUpdateUUID];
        session3 = [resultCopy clientCacheUpdate];
        clientModelId = [session3 clientModelId];
        clientCacheUpdate = [resultCopy clientCacheUpdate];
        cacheCreationDate = [clientCacheUpdate cacheCreationDate];
        consumerSubType = [resultCopy consumerSubType];
        session4 = [resultCopy session];
        sessionStartDate2 = [session4 sessionStartDate];
        session5 = [resultCopy session];
        sessionEndDate = [session5 sessionEndDate];
        shownSuggestions2 = [resultCopy shownSuggestions];
        v19 = [ATXLightweightProactiveSuggestion lightWeightSuggestionsFromSuggestions:shownSuggestions2];
        engagedSuggestions = [resultCopy engagedSuggestions];
        v15 = [ATXLightweightProactiveSuggestion lightWeightSuggestionsFromSuggestions:engagedSuggestions];
        rejectedSuggestions = [resultCopy rejectedSuggestions];
        v17 = [ATXLightweightProactiveSuggestion lightWeightSuggestionsFromSuggestions:rejectedSuggestions];
        self = [(ATXBiomeProactiveSuggestionUIFeedbackResult *)self initWithSessionId:sessionIdentifier blendingUICacheUpdateUUID:blendingUICacheUpdateUUID2 clientModelId:clientModelId clientModelCacheCreationDate:cacheCreationDate consumerSubType:consumerSubType sessionStartDate:sessionStartDate2 sessionEndDate:sessionEndDate shownSuggestions:v19 engagedSuggestions:v15 rejectedSuggestions:v17];

        selfCopy = self;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

LABEL_11:
  return selfCopy;
}

- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithSessionId:(id)id blendingUICacheUpdateUUID:(id)d clientModelId:(id)modelId clientModelCacheCreationDate:(id)date consumerSubType:(unsigned __int8)type sessionStartDate:(id)startDate sessionEndDate:(id)endDate shownSuggestions:(id)self0 engagedSuggestions:(id)self1 rejectedSuggestions:(id)self2
{
  idCopy = id;
  dCopy = d;
  modelIdCopy = modelId;
  dateCopy = date;
  startDateCopy = startDate;
  endDateCopy = endDate;
  suggestionsCopy = suggestions;
  engagedSuggestionsCopy = engagedSuggestions;
  rejectedSuggestionsCopy = rejectedSuggestions;
  v31.receiver = self;
  v31.super_class = ATXBiomeProactiveSuggestionUIFeedbackResult;
  v19 = [(ATXBiomeProactiveSuggestionUIFeedbackResult *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_sessionId, id);
    objc_storeStrong(&v20->_blendingUICacheUpdateUUID, d);
    objc_storeStrong(&v20->_clientModelId, modelId);
    objc_storeStrong(&v20->_clientModelCacheCreationDate, date);
    v20->_consumerSubType = type;
    objc_storeStrong(&v20->_sessionStartDate, startDate);
    objc_storeStrong(&v20->_sessionEndDate, endDate);
    objc_storeStrong(&v20->_shownSuggestions, suggestions);
    objc_storeStrong(&v20->_engagedSuggestions, engagedSuggestions);
    objc_storeStrong(&v20->_rejectedSuggestions, rejectedSuggestions);
  }

  return v20;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    dataCopy = data;
    v6 = [[self alloc] initWithProtoData:dataCopy];
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
  uUIDString = [(NSUUID *)self->_blendingUICacheUpdateUUID UUIDString];
  [v3 appendFormat:@"blendingUICacheUpdateUUID: %@\n", uUIDString];

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
  uUIDString = [(NSUUID *)blendingUICacheUpdateUUID UUIDString];
  v6 = uUIDString;
  if (uUIDString)
  {
    v7 = uUIDString;
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
  jsonDict = [(ATXBiomeProactiveSuggestionUIFeedbackResult *)self jsonDict];
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:0];

  return v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXBiomeProactiveSuggestionUIFeedbackResult *)self isEqualToATXBiomeProactiveSuggestionUIFeedbackResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXBiomeProactiveSuggestionUIFeedbackResult:(id)result
{
  resultCopy = result;
  v5 = self->_sessionId;
  v6 = v5;
  if (v5 == resultCopy[2])
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
  if (v8 == resultCopy[3])
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
  if (v11 == resultCopy[4])
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
  if (v14 == resultCopy[5])
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

  if (self->_consumerSubType != *(resultCopy + 8))
  {
LABEL_32:
    v29 = 0;
    goto LABEL_33;
  }

  v17 = self->_sessionStartDate;
  v18 = v17;
  if (v17 == resultCopy[6])
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
  if (v20 == resultCopy[7])
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
  if (v23 == resultCopy[8])
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
  if (v26 == resultCopy[9])
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
  if (v31 == resultCopy[10])
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

- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBBiomeProactiveSuggestionUIFeedbackResult alloc] initWithData:dataCopy];

    self = [(ATXBiomeProactiveSuggestionUIFeedbackResult *)self initWithProto:v5];
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
  proto = [(ATXBiomeProactiveSuggestionUIFeedbackResult *)self proto];
  data = [proto data];

  return data;
}

- (ATXBiomeProactiveSuggestionUIFeedbackResult)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
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

  v5 = protoCopy;
  sessionId = [v5 sessionId];
  v6 = objc_alloc(MEMORY[0x1E696AFB0]);
  blendingUICacheUpdateUUID = [v5 blendingUICacheUpdateUUID];
  v25 = [v6 initWithUUIDString:blendingUICacheUpdateUUID];
  clientModelId = [v5 clientModelId];
  v7 = MEMORY[0x1E695DF00];
  [v5 clientModelCacheCreationDate];
  v23 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
  v8 = MEMORY[0x1E698B028];
  consumerSubType = [v5 consumerSubType];
  v22 = [v8 consumerSubtypeForString:consumerSubType found:0];
  v9 = MEMORY[0x1E695DF00];
  [v5 sessionStartDate];
  v20 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = MEMORY[0x1E695DF00];
  [v5 sessionEndDate];
  v19 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
  shownSuggestions = [v5 shownSuggestions];
  v18 = [ATXLightweightProactiveSuggestion lightWeightSuggestionsFromProtoLightWeightSuggestions:shownSuggestions];
  engagedSuggestions = [v5 engagedSuggestions];
  v12 = [ATXLightweightProactiveSuggestion lightWeightSuggestionsFromProtoLightWeightSuggestions:engagedSuggestions];
  rejectedSuggestions = [v5 rejectedSuggestions];

  v14 = [ATXLightweightProactiveSuggestion lightWeightSuggestionsFromProtoLightWeightSuggestions:rejectedSuggestions];
  self = [(ATXBiomeProactiveSuggestionUIFeedbackResult *)self initWithSessionId:sessionId blendingUICacheUpdateUUID:v25 clientModelId:clientModelId clientModelCacheCreationDate:v23 consumerSubType:v22 sessionStartDate:v20 sessionEndDate:v19 shownSuggestions:v18 engagedSuggestions:v12 rejectedSuggestions:v14];

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setSessionId:self->_sessionId];
  uUIDString = [(NSUUID *)self->_blendingUICacheUpdateUUID UUIDString];
  [v3 setBlendingUICacheUpdateUUID:uUIDString];

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