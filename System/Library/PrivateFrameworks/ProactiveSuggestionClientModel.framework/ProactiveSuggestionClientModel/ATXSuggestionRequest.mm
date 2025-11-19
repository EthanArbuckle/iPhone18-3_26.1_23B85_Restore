@interface ATXSuggestionRequest
- (ATXSuggestionRequest)initWithCoder:(id)a3;
- (ATXSuggestionRequest)initWithProto:(id)a3;
- (ATXSuggestionRequest)initWithProtoData:(id)a3;
- (ATXSuggestionRequest)initWithUUID:(id)a3 originatorId:(id)a4 consumerSubType:(unsigned __int8)a5 timeout:(double)a6;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXSuggestionRequest

- (ATXSuggestionRequest)initWithUUID:(id)a3 originatorId:(id)a4 consumerSubType:(unsigned __int8)a5 timeout:(double)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = ATXSuggestionRequest;
  v13 = [(ATXSuggestionRequest *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_requestUUID, a3);
    v15 = [v12 copy];
    originatorId = v14->_originatorId;
    v14->_originatorId = v15;

    v14->_consumerSubType = a5;
    v14->_timeout = a6;
  }

  return v14;
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
  v5 = [(ATXSuggestionRequest *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXSuggestionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXSuggestionRequest *)self initWithProtoData:v5];
  return v6;
}

- (ATXSuggestionRequest)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBRequestForSuggestions alloc] initWithData:v4];

    self = [(ATXSuggestionRequest *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXSuggestionRequest)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 consumerSubTypeString];
      v16 = 0;
      v7 = [MEMORY[0x1E698B028] consumerSubtypeForString:v6 found:&v16];
      if (v16 == 1)
      {
        v8 = v7;
        v9 = 0;
        if (v7 && v7 != 50)
        {
          v10 = [v5 uuidString];
          v11 = [v5 originatorId];
          v12 = 0.5;
          if ([v5 hasTimeout])
          {
            [v5 timeout];
            v12 = v13;
          }

          v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
          self = [(ATXSuggestionRequest *)self initWithUUID:v14 originatorId:v11 consumerSubType:v8 timeout:v12];

          v9 = self;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXSuggestionRequestResponse *)self initWithProto:v5];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  [v3 setConsumerSubTypeString:v4];

  [v3 setOriginatorId:self->_originatorId];
  v5 = [(NSUUID *)self->_requestUUID UUIDString];
  [v3 setUuidString:v5];

  [v3 setTimeout:self->_timeout];

  return v3;
}

- (id)encodeAsProto
{
  v2 = [(ATXSuggestionRequest *)self proto];
  v3 = [v2 data];

  return v3;
}

@end