@interface ATXSuggestionRequestResponse
- (ATXSuggestionRequestResponse)initWithCoder:(id)a3;
- (ATXSuggestionRequestResponse)initWithProto:(id)a3;
- (ATXSuggestionRequestResponse)initWithProtoData:(id)a3;
- (ATXSuggestionRequestResponse)initWithSuggestions:(id)a3 feedbackMetadata:(id)a4 originalRequest:(id)a5 responseCode:(int)a6 error:(id)a7 uuid:(id)a8;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)dataFromNSError:(id)a3;
- (id)encodeAsProto;
- (id)proto;
- (id)unarchivedNSErrorFromData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXSuggestionRequestResponse

- (id)encodeAsProto
{
  v2 = [(ATXSuggestionRequestResponse *)self proto];
  v3 = [v2 data];

  return v3;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(NSUUID *)self->_uuid UUIDString];
  [v3 setUuidString:v4];

  v5 = [(NSArray *)self->_suggestions _pas_mappedArrayWithTransform:&__block_literal_global_29];
  v6 = [v5 mutableCopy];
  [v3 setSuggestions:v6];

  [v3 setFeedbackMetadata:self->_feedbackMetadata];
  v7 = self->_responseCode - 1;
  if (v7 > 4)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1E86A3DA0[v7];
  }

  if (([(__CFString *)v8 isEqualToString:@"Unknown"]& 1) != 0)
  {
    v9 = 0;
  }

  else if (([(__CFString *)v8 isEqualToString:@"FallbackToCache"]& 1) != 0)
  {
    v9 = 1;
  }

  else if (([(__CFString *)v8 isEqualToString:@"Success"]& 1) != 0)
  {
    v9 = 2;
  }

  else if (([(__CFString *)v8 isEqualToString:@"Error"]& 1) != 0)
  {
    v9 = 3;
  }

  else if (([(__CFString *)v8 isEqualToString:@"SuccessAndReplaceCache"]& 1) != 0)
  {
    v9 = 4;
  }

  else if ([(__CFString *)v8 isEqualToString:@"Max"])
  {
    v9 = 5;
  }

  else
  {
    v9 = 0;
  }

  [v3 setResponseCode:v9];
  if (self->_error)
  {
    v10 = [(ATXSuggestionRequestResponse *)self dataFromNSError:?];
    [v3 setErrorData:v10];
  }

  originalRequest = self->_originalRequest;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = self->_originalRequest;
  if (isKindOfClass)
  {
    v14 = [(ATXSuggestionRequest *)self->_originalRequest proto];
    [v3 setInteractionSuggestionRequest:v14];
  }

  else
  {
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    v16 = self->_originalRequest;
    if (v15)
    {
      v14 = [(ATXSuggestionRequest *)self->_originalRequest proto];
      [v3 setContextualActionSuggestionRequest:v14];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_26;
      }

      v14 = [(ATXSuggestionRequest *)self->_originalRequest proto];
      [v3 setIntentSuggestionRequest:v14];
    }
  }

LABEL_26:

  return v3;
}

- (ATXSuggestionRequestResponse)initWithSuggestions:(id)a3 feedbackMetadata:(id)a4 originalRequest:(id)a5 responseCode:(int)a6 error:(id)a7 uuid:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = ATXSuggestionRequestResponse;
  v18 = [(ATXSuggestionRequestResponse *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_suggestions, a3);
    objc_storeStrong(&v19->_feedbackMetadata, a4);
    objc_storeStrong(&v19->_originalRequest, a5);
    v19->_responseCode = a6;
    objc_storeStrong(&v19->_error, a7);
    v20 = objc_opt_new();
    uuid = v19->_uuid;
    v19->_uuid = v20;
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(NSArray *)self->_suggestions count])
      {
        v6 = [(ATXSuggestionRequestResponse *)v5 suggestions];
        v7 = [v6 count];

        if (v7)
        {
          v8 = self->_suggestions;
          v9 = v8;
          if (v8 == v5->_suggestions)
          {
          }

          else
          {
            v10 = [(NSArray *)v8 isEqual:?];

            if ((v10 & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }
      }

      v12 = self->_feedbackMetadata;
      v13 = v12;
      if (v12 == v5->_feedbackMetadata)
      {
      }

      else
      {
        v14 = [(NSData *)v12 isEqual:?];

        if ((v14 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v15 = self->_originalRequest;
      v16 = v15;
      if (v15 == v5->_originalRequest)
      {
      }

      else
      {
        v17 = [(ATXSuggestionRequest *)v15 isEqual:?];

        if (!v17)
        {
          goto LABEL_22;
        }
      }

      if ([(ATXSuggestionRequestResponse *)v5 responseCode]== self->_responseCode)
      {
        v18 = self->_error;
        v19 = v18;
        if (v18 == v5->_error)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSError *)v18 isEqual:?];
        }

        goto LABEL_25;
      }

LABEL_22:
      v11 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v11 = 0;
  }

LABEL_26:

  return v11;
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
  v5 = [(ATXSuggestionRequestResponse *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXSuggestionRequestResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXSuggestionRequestResponse *)self initWithProtoData:v5];
  return v6;
}

- (ATXSuggestionRequestResponse)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBResponseForRequestForSuggestions alloc] initWithData:v4];

    self = [(ATXSuggestionRequestResponse *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXSuggestionRequestResponse)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXSuggestionRequestResponse *)self initWithProto:v5];
      }

      v12 = 0;
      goto LABEL_38;
    }

    v5 = v4;
    v6 = [v5 uuidString];
    v7 = [v5 suggestions];
    v8 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global];

    v9 = [v5 feedbackMetadata];
    v10 = [v5 responseCode];
    if (v10 >= 6)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v11 = off_1E86A3D70[v10];
    }

    v13 = v11;
    if (([(__CFString *)v13 isEqualToString:@"Unknown"]& 1) != 0)
    {
      v14 = 0;
    }

    else if (([(__CFString *)v13 isEqualToString:@"FallbackToCache"]& 1) != 0)
    {
      v14 = 1;
    }

    else if (([(__CFString *)v13 isEqualToString:@"Success"]& 1) != 0)
    {
      v14 = 2;
    }

    else if (([(__CFString *)v13 isEqualToString:@"Error"]& 1) != 0)
    {
      v14 = 3;
    }

    else if (([(__CFString *)v13 isEqualToString:@"SuccessAndReplaceCache"]& 1) != 0)
    {
      v14 = 4;
    }

    else if ([(__CFString *)v13 isEqualToString:@"Max"])
    {
      v14 = 5;
    }

    else
    {
      v14 = 0;
    }

    if ([v5 hasErrorData])
    {
      v15 = [v5 errorData];
      v16 = [(ATXSuggestionRequestResponse *)self unarchivedNSErrorFromData:v15];
    }

    else
    {
      v16 = 0;
    }

    if ([v5 hasInteractionSuggestionRequest])
    {
      v17 = [ATXInteractionSuggestionRequest alloc];
      v18 = [v5 interactionSuggestionRequest];
    }

    else if ([v5 hasContextualActionSuggestionRequest])
    {
      v17 = [ATXContextualActionSuggestionRequest alloc];
      v18 = [v5 contextualActionSuggestionRequest];
    }

    else
    {
      if (![v5 hasIntentSuggestionRequest])
      {
        goto LABEL_34;
      }

      v17 = [ATXIntentSuggestionRequest alloc];
      v18 = [v5 intentSuggestionRequest];
    }

    v19 = v18;
    v20 = [(ATXInteractionSuggestionRequest *)v17 initWithProto:v18];

    if (v20)
    {
      v21 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
      self = [(ATXSuggestionRequestResponse *)self initWithSuggestions:v8 feedbackMetadata:v9 originalRequest:v20 responseCode:v14 error:v16 uuid:v21];

      v12 = self;
LABEL_37:

LABEL_38:
      goto LABEL_39;
    }

LABEL_34:
    v20 = __atxlog_handle_blending();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [ATXSuggestionRequestResponse initWithProto:];
    }

    v12 = 0;
    goto LABEL_37;
  }

  v12 = 0;
LABEL_39:

  return v12;
}

ATXProactiveSuggestion *__46__ATXSuggestionRequestResponse_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXProactiveSuggestion alloc] initWithProto:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __46__ATXSuggestionRequestResponse_initWithProto___block_invoke_cold_1();
    }
  }

  return v3;
}

id __37__ATXSuggestionRequestResponse_proto__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 proto];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __37__ATXSuggestionRequestResponse_proto__block_invoke_cold_1();
    }
  }

  return v3;
}

- (id)unarchivedNSErrorFromData:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v10 = 0;
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v10];
  v6 = v10;
  objc_autoreleasePoolPop(v4);
  if (v6)
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXSuggestionRequestResponse unarchivedNSErrorFromData:];
    }

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)dataFromNSError:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v10 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v10];
  v6 = v10;
  objc_autoreleasePoolPop(v4);
  if (v6)
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXSuggestionRequestResponse dataFromNSError:];
    }

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBUIEvent proto", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)unarchivedNSErrorFromData:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)dataFromNSError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end