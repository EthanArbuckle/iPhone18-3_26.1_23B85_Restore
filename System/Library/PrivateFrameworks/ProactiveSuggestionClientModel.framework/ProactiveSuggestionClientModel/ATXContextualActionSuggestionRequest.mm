@interface ATXContextualActionSuggestionRequest
- (ATXContextualActionSuggestionRequest)initWithCoder:(id)a3;
- (ATXContextualActionSuggestionRequest)initWithProto:(id)a3;
- (ATXContextualActionSuggestionRequest)initWithProtoData:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)archivePredictionContext;
- (id)encodeAsProto;
- (id)proto;
- (void)archivePredictionContext;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXContextualActionSuggestionRequest

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ATXSuggestionRequest *)self requestUUID];
      v7 = [(ATXSuggestionRequest *)v5 requestUUID];
      v8 = [v6 isEqual:v7];

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
  v5 = [(ATXContextualActionSuggestionRequest *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXContextualActionSuggestionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXContextualActionSuggestionRequest *)self initWithProtoData:v5];
  return v6;
}

- (ATXContextualActionSuggestionRequest)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBRequestForContextualActionSuggestions alloc] initWithData:v4];

    self = [(ATXContextualActionSuggestionRequest *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXContextualActionSuggestionRequest)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_contextual_actions();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXSuggestionRequestResponse *)self initWithProto:v5];
      }

      v9 = 0;
      goto LABEL_25;
    }

    v5 = v4;
    v6 = [v5 consumerSubTypeString];
    v31 = 0;
    v7 = [MEMORY[0x1E698B028] consumerSubtypeForString:v6 found:&v31];
    if (v31 != 1)
    {
      v9 = 0;
LABEL_24:

LABEL_25:
      goto LABEL_26;
    }

    v8 = v7;
    v9 = 0;
    if (!v7 || v7 == 50)
    {
      goto LABEL_24;
    }

    v10 = [v5 uuidString];
    v11 = [v5 originatorId];
    if (![v5 hasCaxPredictionContext])
    {
      v19 = 0;
LABEL_23:
      v22 = [v5 maxSuggestions];
      [v5 timeout];
      v24 = v23;
      v25 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
      self = [(ATXContextualActionSuggestionRequest *)self initWithUUID:v25 originatorId:v11 consumerSubType:v8 caxPredictionContext:v19 maxSuggestions:v22 timeout:v24];

      v9 = self;
      goto LABEL_24;
    }

    v29 = v10;
    v12 = [v5 caxPredictionContext];
    v13 = NSClassFromString(&cfstr_Caxpredictionc_0.isa);
    if (v13)
    {
      v14 = v13;
      context = objc_autoreleasePoolPush();
      v15 = MEMORY[0x1E696ACD0];
      v28 = v12;
      v16 = objc_autoreleasePoolPush();
      v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v14, 0}];
      v18 = v16;
      v12 = v28;
      objc_autoreleasePoolPop(v18);
      v30 = 0;
      v19 = [v15 unarchivedObjectOfClasses:v17 fromData:v28 error:&v30];
      v20 = v30;

      objc_autoreleasePoolPop(context);
      if (!v20)
      {
LABEL_22:

        v10 = v29;
        goto LABEL_23;
      }

      v21 = __atxlog_handle_contextual_actions();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(ATXContextualActionSuggestionRequest *)v20 initWithProto:v21];
      }

      v12 = v28;
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

  v9 = 0;
LABEL_26:

  return v9;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:{-[ATXSuggestionRequest consumerSubType](self, "consumerSubType")}];
  [v3 setConsumerSubTypeString:v4];

  v5 = [(ATXSuggestionRequest *)self originatorId];
  [v3 setOriginatorId:v5];

  v6 = [(ATXSuggestionRequest *)self requestUUID];
  v7 = [v6 UUIDString];
  [v3 setUuidString:v7];

  v8 = [(ATXContextualActionSuggestionRequest *)self archivePredictionContext];
  [v3 setCaxPredictionContext:v8];

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
  v2 = [(ATXContextualActionSuggestionRequest *)self proto];
  v3 = [v2 data];

  return v3;
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
  v4 = a1;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "Error when archiving caxPredictionContext in ATXContextualActionSuggestionRequest. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end