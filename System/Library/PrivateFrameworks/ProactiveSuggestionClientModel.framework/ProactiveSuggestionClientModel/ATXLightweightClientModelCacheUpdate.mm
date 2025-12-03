@interface ATXLightweightClientModelCacheUpdate
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXLightweightClientModelCacheUpdate)initWithClientModelCacheUpdate:(id)update;
- (ATXLightweightClientModelCacheUpdate)initWithClientModelId:(id)id suggestions:(id)suggestions uuid:(id)uuid cacheCreationDate:(id)date;
- (ATXLightweightClientModelCacheUpdate)initWithProto:(id)proto;
- (ATXLightweightClientModelCacheUpdate)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXLightweightClientModelCacheUpdate:(id)update;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation ATXLightweightClientModelCacheUpdate

- (id)encodeAsProto
{
  proto = [(ATXLightweightClientModelCacheUpdate *)self proto];
  data = [proto data];

  return data;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setClientModelId:self->_clientModelId];
  v4 = [ATXLightweightProactiveSuggestion protoLightWeightSuggestionsFromLightWeightSuggestions:self->_suggestions];
  v5 = [v4 copy];
  [v3 setSuggestions:v5];

  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [v3 setUuidString:uUIDString];

  [(NSDate *)self->_cacheCreationDate timeIntervalSinceReferenceDate];
  [v3 setCacheCreationDate:?];

  return v3;
}

- (ATXLightweightClientModelCacheUpdate)initWithClientModelCacheUpdate:(id)update
{
  updateCopy = update;
  clientModelId = [updateCopy clientModelId];
  suggestions = [updateCopy suggestions];
  v7 = [ATXLightweightProactiveSuggestion lightWeightSuggestionsFromSuggestions:suggestions];
  uuid = [updateCopy uuid];
  cacheCreationDate = [updateCopy cacheCreationDate];

  v10 = [(ATXLightweightClientModelCacheUpdate *)self initWithClientModelId:clientModelId suggestions:v7 uuid:uuid cacheCreationDate:cacheCreationDate];
  return v10;
}

- (ATXLightweightClientModelCacheUpdate)initWithClientModelId:(id)id suggestions:(id)suggestions uuid:(id)uuid cacheCreationDate:(id)date
{
  idCopy = id;
  suggestionsCopy = suggestions;
  uuidCopy = uuid;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = ATXLightweightClientModelCacheUpdate;
  v15 = [(ATXLightweightClientModelCacheUpdate *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_clientModelId, id);
    objc_storeStrong(&v16->_suggestions, suggestions);
    objc_storeStrong(&v16->_uuid, uuid);
    objc_storeStrong(&v16->_cacheCreationDate, date);
  }

  return v16;
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
  [v3 appendFormat:@"clientModelId: %@\n", self->_clientModelId];
  v4 = [ATXLightweightProactiveSuggestion lightWeightSuggestionDescriptionsFromLightWeightSuggestions:self->_suggestions];
  [v3 appendFormat:@"suggestions: %@\n", v4];

  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [v3 appendFormat:@"uuid: %@\n", uUIDString];

  v6 = [(NSDate *)self->_cacheCreationDate description];
  [v3 appendFormat:@"cacheCreationDate: %@\n", v6];

  v7 = [v3 copy];

  return v7;
}

- (id)jsonDict
{
  v16[5] = *MEMORY[0x1E69E9840];
  clientModelId = self->_clientModelId;
  if (!clientModelId)
  {
    clientModelId = @"nil";
  }

  v16[0] = clientModelId;
  v15[0] = @"clientModelId";
  v15[1] = @"uuid";
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v5 = uUIDString;
  if (uUIDString)
  {
    v6 = uUIDString;
  }

  else
  {
    v6 = @"nil";
  }

  v16[1] = v6;
  v15[2] = @"suggestions";
  v7 = [ATXLightweightProactiveSuggestion lightWeightSuggestionDescriptionsFromLightWeightSuggestions:self->_suggestions];
  v16[2] = v7;
  v15[3] = @"suggestionCount";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_suggestions, "count")}];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"nil";
  }

  v16[3] = v10;
  v15[4] = @"cacheCreationDate";
  v11 = [(NSDate *)self->_cacheCreationDate description];
  v16[4] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(ATXLightweightClientModelCacheUpdate *)self jsonDict];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXLightweightClientModelCacheUpdate *)self isEqualToATXLightweightClientModelCacheUpdate:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXLightweightClientModelCacheUpdate:(id)update
{
  updateCopy = update;
  v5 = self->_clientModelId;
  v6 = v5;
  if (v5 == updateCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v8 = self->_suggestions;
  v9 = v8;
  if (v8 == updateCopy[2])
  {
  }

  else
  {
    v10 = [(NSArray *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v11 = self->_uuid;
  v12 = v11;
  if (v11 == updateCopy[3])
  {
  }

  else
  {
    v13 = [(NSUUID *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_17;
    }
  }

  v15 = self->_cacheCreationDate;
  v16 = v15;
  if (v15 == updateCopy[4])
  {
    v14 = 1;
  }

  else
  {
    v14 = [(NSDate *)v15 isEqual:?];
  }

LABEL_17:
  return v14;
}

- (ATXLightweightClientModelCacheUpdate)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBLightweightClientModelCacheUpdate alloc] initWithData:dataCopy];

    self = [(ATXLightweightClientModelCacheUpdate *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXLightweightClientModelCacheUpdate)initWithProto:(id)proto
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
    v17 = __atxlog_handle_blending();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [(ATXLightweightClientModelCacheUpdate *)self initWithProto:v17];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  clientModelId = [v5 clientModelId];
  suggestions = [v5 suggestions];
  v8 = [ATXLightweightProactiveSuggestion lightWeightSuggestionsFromProtoLightWeightSuggestions:suggestions];
  v9 = objc_alloc(MEMORY[0x1E696AFB0]);
  uuidString = [v5 uuidString];
  v11 = [v9 initWithUUIDString:uuidString];
  v12 = objc_alloc(MEMORY[0x1E695DF00]);
  [v5 cacheCreationDate];
  v14 = v13;

  v15 = [v12 initWithTimeIntervalSinceReferenceDate:v14];
  self = [(ATXLightweightClientModelCacheUpdate *)self initWithClientModelId:clientModelId suggestions:v8 uuid:v11 cacheCreationDate:v15];

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "Unable to construct class %@ from ProtoBuf object", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end