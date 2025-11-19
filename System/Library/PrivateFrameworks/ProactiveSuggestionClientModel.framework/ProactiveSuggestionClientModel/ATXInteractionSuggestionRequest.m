@interface ATXInteractionSuggestionRequest
- (ATXInteractionSuggestionRequest)initWithCoder:(id)a3;
- (ATXInteractionSuggestionRequest)initWithProto:(id)a3;
- (ATXInteractionSuggestionRequest)initWithProtoData:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)archivePredictionContext;
- (id)encodeAsProto;
- (id)proto;
- (void)archivePredictionContext;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXInteractionSuggestionRequest

- (id)encodeAsProto
{
  v2 = [(ATXInteractionSuggestionRequest *)self proto];
  v3 = [v2 data];

  return v3;
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

  v8 = [(ATXInteractionSuggestionRequest *)self archivePredictionContext];
  [v3 setPsPredictionContext:v8];

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
  v5 = [(ATXInteractionSuggestionRequest *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXInteractionSuggestionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXInteractionSuggestionRequest *)self initWithProtoData:v5];
  return v6;
}

- (ATXInteractionSuggestionRequest)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBRequestForInteractionSuggestions alloc] initWithData:v4];

    self = [(ATXInteractionSuggestionRequest *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXInteractionSuggestionRequest)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 consumerSubTypeString];
      v27 = 0;
      v7 = [MEMORY[0x1E698B028] consumerSubtypeForString:v6 found:&v27];
      if (v27 == 1)
      {
        v8 = v7;
        v9 = 0;
        if (v7 && v7 != 50)
        {
          v10 = [v5 uuidString];
          v11 = [v5 originatorId];
          if ([v5 hasPsPredictionContext])
          {
            v12 = [v5 psPredictionContext];
            v13 = NSClassFromString(&cfstr_Pspredictionco_0.isa);
            if (v13)
            {
              v14 = objc_autoreleasePoolPush();
              v23 = MEMORY[0x1E696ACD0];
              v24 = v14;
              v15 = objc_autoreleasePoolPush();
              v25 = v10;
              v16 = v12;
              v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v13, 0}];
              objc_autoreleasePoolPop(v15);
              v26 = 0;
              v13 = [v23 unarchivedObjectOfClasses:v17 fromData:v16 error:&v26];
              v18 = v26;

              v12 = v16;
              v10 = v25;
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

          v21 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
          self = [(ATXInteractionSuggestionRequest *)self initWithUUID:v21 originatorId:v11 consumerSubType:v8 psPredictionContext:v13 timeout:v19];

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

- (void)archivePredictionContext
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "Error when archiving psPredictionContext in ATXInteractionSuggestionRequest. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end