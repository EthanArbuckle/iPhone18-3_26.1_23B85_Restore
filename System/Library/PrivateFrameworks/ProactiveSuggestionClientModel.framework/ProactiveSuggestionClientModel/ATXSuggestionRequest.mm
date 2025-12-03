@interface ATXSuggestionRequest
- (ATXSuggestionRequest)initWithCoder:(id)coder;
- (ATXSuggestionRequest)initWithProto:(id)proto;
- (ATXSuggestionRequest)initWithProtoData:(id)data;
- (ATXSuggestionRequest)initWithUUID:(id)d originatorId:(id)id consumerSubType:(unsigned __int8)type timeout:(double)timeout;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXSuggestionRequest

- (ATXSuggestionRequest)initWithUUID:(id)d originatorId:(id)id consumerSubType:(unsigned __int8)type timeout:(double)timeout
{
  dCopy = d;
  idCopy = id;
  v18.receiver = self;
  v18.super_class = ATXSuggestionRequest;
  v13 = [(ATXSuggestionRequest *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_requestUUID, d);
    v15 = [idCopy copy];
    originatorId = v14->_originatorId;
    v14->_originatorId = v15;

    v14->_consumerSubType = type;
    v14->_timeout = timeout;
  }

  return v14;
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
      v6 = self->_requestUUID;
      v7 = v6;
      if (v6 == v5->_requestUUID)
      {
      }

      else
      {
        v8 = [(NSUUID *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v10 = self->_originatorId;
      v11 = v10;
      if (v10 == v5->_originatorId)
      {
      }

      else
      {
        v12 = [(NSString *)v10 isEqual:?];

        if ((v12 & 1) == 0)
        {
LABEL_11:
          v9 = 0;
LABEL_14:

          goto LABEL_15;
        }
      }

      consumerSubType = self->_consumerSubType;
      v9 = consumerSubType == [(ATXSuggestionRequest *)v5 consumerSubType];
      goto LABEL_14;
    }

    v9 = 0;
  }

LABEL_15:

  return v9;
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
  encodeAsProto = [(ATXSuggestionRequest *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXSuggestionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXSuggestionRequest *)self initWithProtoData:v5];
  return v6;
}

- (ATXSuggestionRequest)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBRequestForSuggestions alloc] initWithData:dataCopy];

    self = [(ATXSuggestionRequest *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXSuggestionRequest)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      consumerSubTypeString = [v5 consumerSubTypeString];
      v16 = 0;
      v7 = [MEMORY[0x1E698B028] consumerSubtypeForString:consumerSubTypeString found:&v16];
      if (v16 == 1)
      {
        v8 = v7;
        selfCopy = 0;
        if (v7 && v7 != 50)
        {
          uuidString = [v5 uuidString];
          originatorId = [v5 originatorId];
          v12 = 0.5;
          if ([v5 hasTimeout])
          {
            [v5 timeout];
            v12 = v13;
          }

          v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:uuidString];
          self = [(ATXSuggestionRequest *)self initWithUUID:v14 originatorId:originatorId consumerSubType:v8 timeout:v12];

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
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXSuggestionRequestResponse *)self initWithProto:v5];
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

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  [v3 setConsumerSubTypeString:v4];

  [v3 setOriginatorId:self->_originatorId];
  uUIDString = [(NSUUID *)self->_requestUUID UUIDString];
  [v3 setUuidString:uUIDString];

  [v3 setTimeout:self->_timeout];

  return v3;
}

- (id)encodeAsProto
{
  proto = [(ATXSuggestionRequest *)self proto];
  data = [proto data];

  return data;
}

@end