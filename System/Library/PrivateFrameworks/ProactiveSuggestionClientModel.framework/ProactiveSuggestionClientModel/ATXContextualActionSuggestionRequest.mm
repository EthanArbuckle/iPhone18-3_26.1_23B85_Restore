@interface ATXContextualActionSuggestionRequest
- (ATXContextualActionSuggestionRequest)initWithCoder:(id)coder;
- (ATXContextualActionSuggestionRequest)initWithProto:(id)proto;
- (ATXContextualActionSuggestionRequest)initWithProtoData:(id)data;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)archivePredictionContext;
- (id)encodeAsProto;
- (id)proto;
- (void)archivePredictionContext;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXContextualActionSuggestionRequest

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
        v12 = self->_caxPredictionContext;
        v13 = v12;
        if (v12 == v5->_caxPredictionContext)
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
  encodeAsProto = [(ATXContextualActionSuggestionRequest *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXContextualActionSuggestionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXContextualActionSuggestionRequest *)self initWithProtoData:v5];
  return v6;
}

- (ATXContextualActionSuggestionRequest)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBRequestForContextualActionSuggestions alloc] initWithData:dataCopy];

    self = [(ATXContextualActionSuggestionRequest *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXContextualActionSuggestionRequest)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_contextual_actions();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXSuggestionRequestResponse *)self initWithProto:v5];
      }

      selfCopy = 0;
      goto LABEL_25;
    }

    v5 = protoCopy;
    consumerSubTypeString = [v5 consumerSubTypeString];
    v31 = 0;
    v7 = [MEMORY[0x1E698B028] consumerSubtypeForString:consumerSubTypeString found:&v31];
    if (v31 != 1)
    {
      selfCopy = 0;
LABEL_24:

LABEL_25:
      goto LABEL_26;
    }

    v8 = v7;
    selfCopy = 0;
    if (!v7 || v7 == 50)
    {
      goto LABEL_24;
    }

    uuidString = [v5 uuidString];
    originatorId = [v5 originatorId];
    if (![v5 hasCaxPredictionContext])
    {
      v19 = 0;
LABEL_23:
      maxSuggestions = [v5 maxSuggestions];
      [v5 timeout];
      v24 = v23;
      v25 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:uuidString];
      self = [(ATXContextualActionSuggestionRequest *)self initWithUUID:v25 originatorId:originatorId consumerSubType:v8 caxPredictionContext:v19 maxSuggestions:maxSuggestions timeout:v24];

      selfCopy = self;
      goto LABEL_24;
    }

    v29 = uuidString;
    caxPredictionContext = [v5 caxPredictionContext];
    v13 = NSClassFromString(&cfstr_Caxpredictionc_0.isa);
    if (v13)
    {
      v14 = v13;
      context = objc_autoreleasePoolPush();
      v15 = MEMORY[0x1E696ACD0];
      v28 = caxPredictionContext;
      v16 = objc_autoreleasePoolPush();
      v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v14, 0}];
      v18 = v16;
      caxPredictionContext = v28;
      objc_autoreleasePoolPop(v18);
      v30 = 0;
      v19 = [v15 unarchivedObjectOfClasses:v17 fromData:v28 error:&v30];
      v20 = v30;

      objc_autoreleasePoolPop(context);
      if (!v20)
      {
LABEL_22:

        uuidString = v29;
        goto LABEL_23;
      }

      v21 = __atxlog_handle_contextual_actions();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(ATXContextualActionSuggestionRequest *)v20 initWithProto:v21];
      }

      caxPredictionContext = v28;
    }

    else
    {
      v20 = __atxlog_handle_contextual_actions();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [ATXContextualActionSuggestionRequest initWithProto:v20];
      }

      v19 = 0;
    }

    goto LABEL_22;
  }

  selfCopy = 0;
LABEL_26:

  return selfCopy;
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

  archivePredictionContext = [(ATXContextualActionSuggestionRequest *)self archivePredictionContext];
  [v3 setCaxPredictionContext:archivePredictionContext];

  [v3 setMaxSuggestions:LODWORD(self->_maxSuggestions)];
  [(ATXSuggestionRequest *)self timeout];
  [v3 setTimeout:?];

  return v3;
}

- (id)archivePredictionContext
{
  if (self->_caxPredictionContext)
  {
    v3 = objc_autoreleasePoolPush();
    caxPredictionContext = self->_caxPredictionContext;
    v10 = 0;
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:caxPredictionContext requiringSecureCoding:1 error:&v10];
    v6 = v10;
    objc_autoreleasePoolPop(v3);
    if (v6)
    {
      v7 = __atxlog_handle_contextual_actions();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(ATXContextualActionSuggestionRequest *)v6 archivePredictionContext];
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

- (id)encodeAsProto
{
  proto = [(ATXContextualActionSuggestionRequest *)self proto];
  data = [proto data];

  return data;
}

- (void)initWithProto:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "Error when deserializing CAXPredictionContext: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)archivePredictionContext
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "Error when archiving caxPredictionContext in ATXContextualActionSuggestionRequest. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end