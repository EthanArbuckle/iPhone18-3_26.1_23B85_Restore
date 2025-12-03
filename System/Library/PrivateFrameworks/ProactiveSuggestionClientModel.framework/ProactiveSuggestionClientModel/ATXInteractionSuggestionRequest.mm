@interface ATXInteractionSuggestionRequest
- (ATXInteractionSuggestionRequest)initWithCoder:(id)coder;
- (ATXInteractionSuggestionRequest)initWithProto:(id)proto;
- (ATXInteractionSuggestionRequest)initWithProtoData:(id)data;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)archivePredictionContext;
- (id)encodeAsProto;
- (id)proto;
- (void)archivePredictionContext;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInteractionSuggestionRequest

- (id)encodeAsProto
{
  proto = [(ATXInteractionSuggestionRequest *)self proto];
  data = [proto data];

  return data;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:{-[ATXSuggestionRequest consumerSubType](self, "consumerSubType")}];
  [v3 setConsumerSubTypeString:v4];

  originatorId = [(ATXSuggestionRequest *)self originatorId];
  [v3 setOriginatorId:originatorId];

  requestUUID = [(ATXSuggestionRequest *)self requestUUID];
  uUIDString = [requestUUID UUIDString];
  [v3 setUuidString:uUIDString];

  archivePredictionContext = [(ATXInteractionSuggestionRequest *)self archivePredictionContext];
  [v3 setPsPredictionContext:archivePredictionContext];

  [(ATXSuggestionRequest *)self timeout];
  [v3 setTimeout:?];

  return v3;
}

- (id)archivePredictionContext
{
  if (self->_psPredictionContext)
  {
    v3 = objc_autoreleasePoolPush();
    psPredictionContext = self->_psPredictionContext;
    v10 = 0;
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:psPredictionContext requiringSecureCoding:1 error:&v10];
    v6 = v10;
    objc_autoreleasePoolPop(v3);
    if (v6)
    {
      v7 = __atxlog_handle_blending();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(ATXInteractionSuggestionRequest *)v6 archivePredictionContext];
      }

      v8 = 0;
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requestUUID = [(ATXSuggestionRequest *)self requestUUID];
      requestUUID2 = [(ATXSuggestionRequest *)v5 requestUUID];
      v8 = [requestUUID isEqual:requestUUID2];

      if (v8 && (-[ATXSuggestionRequest originatorId](self, "originatorId"), v9 = objc_claimAutoreleasedReturnValue(), -[ATXSuggestionRequest originatorId](v5, "originatorId"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqualToString:v10], v10, v9, v11))
      {
        v12 = self->_psPredictionContext;
        v13 = v12;
        if (v12 == v5->_psPredictionContext)
        {
          v14 = 1;
        }

        else
        {
          v14 = [(ATXSuggestionExecutableProtocol *)v12 isEqual:?];
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
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
  encodeAsProto = [(ATXInteractionSuggestionRequest *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXInteractionSuggestionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXInteractionSuggestionRequest *)self initWithProtoData:v5];
  return v6;
}

- (ATXInteractionSuggestionRequest)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBRequestForInteractionSuggestions alloc] initWithData:dataCopy];

    self = [(ATXInteractionSuggestionRequest *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXInteractionSuggestionRequest)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      consumerSubTypeString = [v5 consumerSubTypeString];
      v27 = 0;
      v7 = [MEMORY[0x1E698B028] consumerSubtypeForString:consumerSubTypeString found:&v27];
      if (v27 == 1)
      {
        v8 = v7;
        selfCopy = 0;
        if (v7 && v7 != 50)
        {
          uuidString = [v5 uuidString];
          originatorId = [v5 originatorId];
          if ([v5 hasPsPredictionContext])
          {
            psPredictionContext = [v5 psPredictionContext];
            v13 = NSClassFromString(&cfstr_Pspredictionco_0.isa);
            if (v13)
            {
              v14 = objc_autoreleasePoolPush();
              v23 = MEMORY[0x1E696ACD0];
              v24 = v14;
              v15 = objc_autoreleasePoolPush();
              v25 = uuidString;
              v16 = psPredictionContext;
              v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v13, 0}];
              objc_autoreleasePoolPop(v15);
              v26 = 0;
              v13 = [v23 unarchivedObjectOfClasses:v17 fromData:v16 error:&v26];
              v18 = v26;

              psPredictionContext = v16;
              uuidString = v25;
              objc_autoreleasePoolPop(v24);
            }
          }

          else
          {
            v13 = 0;
          }

          v19 = 0.5;
          if ([v5 hasTimeout])
          {
            [v5 timeout];
            v19 = v20;
          }

          v21 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:uuidString];
          self = [(ATXInteractionSuggestionRequest *)self initWithUUID:v21 originatorId:originatorId consumerSubType:v8 psPredictionContext:v13 timeout:v19];

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

- (void)archivePredictionContext
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "Error when archiving psPredictionContext in ATXInteractionSuggestionRequest. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end