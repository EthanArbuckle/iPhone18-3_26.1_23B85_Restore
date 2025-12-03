@interface ATXSuggestionRequestResponse
- (ATXSuggestionRequestResponse)initWithCoder:(id)coder;
- (ATXSuggestionRequestResponse)initWithProto:(id)proto;
- (ATXSuggestionRequestResponse)initWithProtoData:(id)data;
- (ATXSuggestionRequestResponse)initWithSuggestions:(id)suggestions feedbackMetadata:(id)metadata originalRequest:(id)request responseCode:(int)code error:(id)error uuid:(id)uuid;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)dataFromNSError:(id)error;
- (id)encodeAsProto;
- (id)proto;
- (id)unarchivedNSErrorFromData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXSuggestionRequestResponse

- (id)encodeAsProto
{
  proto = [(ATXSuggestionRequestResponse *)self proto];
  data = [proto data];

  return data;
}

- (id)proto
{
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [v3 setUuidString:uUIDString];

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
    proto = [(ATXSuggestionRequest *)self->_originalRequest proto];
    [v3 setInteractionSuggestionRequest:proto];
  }

  else
  {
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    v16 = self->_originalRequest;
    if (v15)
    {
      proto = [(ATXSuggestionRequest *)self->_originalRequest proto];
      [v3 setContextualActionSuggestionRequest:proto];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_26;
      }

      proto = [(ATXSuggestionRequest *)self->_originalRequest proto];
      [v3 setIntentSuggestionRequest:proto];
    }
  }

LABEL_26:

  return v3;
}

- (ATXSuggestionRequestResponse)initWithSuggestions:(id)suggestions feedbackMetadata:(id)metadata originalRequest:(id)request responseCode:(int)code error:(id)error uuid:(id)uuid
{
  suggestionsCopy = suggestions;
  metadataCopy = metadata;
  requestCopy = request;
  errorCopy = error;
  v23.receiver = self;
  v23.super_class = ATXSuggestionRequestResponse;
  v18 = [(ATXSuggestionRequestResponse *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_suggestions, suggestions);
    objc_storeStrong(&v19->_feedbackMetadata, metadata);
    objc_storeStrong(&v19->_originalRequest, request);
    v19->_responseCode = code;
    objc_storeStrong(&v19->_error, error);
    v20 = objc_opt_new();
    uuid = v19->_uuid;
    v19->_uuid = v20;
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(NSArray *)self->_suggestions count])
      {
        suggestions = [(ATXSuggestionRequestResponse *)v5 suggestions];
        v7 = [suggestions count];

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
  encodeAsProto = [(ATXSuggestionRequestResponse *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXSuggestionRequestResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXSuggestionRequestResponse *)self initWithProtoData:v5];
  return v6;
}

- (ATXSuggestionRequestResponse)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBResponseForRequestForSuggestions alloc] initWithData:dataCopy];

    self = [(ATXSuggestionRequestResponse *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXSuggestionRequestResponse)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXSuggestionRequestResponse *)self initWithProto:v5];
      }

      selfCopy = 0;
      goto LABEL_38;
    }

    v5 = protoCopy;
    uuidString = [v5 uuidString];
    suggestions = [v5 suggestions];
    v8 = [suggestions _pas_mappedArrayWithTransform:&__block_literal_global];

    feedbackMetadata = [v5 feedbackMetadata];
    responseCode = [v5 responseCode];
    if (responseCode >= 6)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", responseCode];
    }

    else
    {
      v11 = off_1E86A3D70[responseCode];
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
      errorData = [v5 errorData];
      v16 = [(ATXSuggestionRequestResponse *)self unarchivedNSErrorFromData:errorData];
    }

    else
    {
      v16 = 0;
    }

    if ([v5 hasInteractionSuggestionRequest])
    {
      v17 = [ATXInteractionSuggestionRequest alloc];
      interactionSuggestionRequest = [v5 interactionSuggestionRequest];
    }

    else if ([v5 hasContextualActionSuggestionRequest])
    {
      v17 = [ATXContextualActionSuggestionRequest alloc];
      interactionSuggestionRequest = [v5 contextualActionSuggestionRequest];
    }

    else
    {
      if (![v5 hasIntentSuggestionRequest])
      {
        goto LABEL_34;
      }

      v17 = [ATXIntentSuggestionRequest alloc];
      interactionSuggestionRequest = [v5 intentSuggestionRequest];
    }

    v19 = interactionSuggestionRequest;
    v20 = [(ATXInteractionSuggestionRequest *)v17 initWithProto:interactionSuggestionRequest];

    if (v20)
    {
      v21 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:uuidString];
      self = [(ATXSuggestionRequestResponse *)self initWithSuggestions:v8 feedbackMetadata:feedbackMetadata originalRequest:v20 responseCode:v14 error:v16 uuid:v21];

      selfCopy = self;
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

    selfCopy = 0;
    goto LABEL_37;
  }

  selfCopy = 0;
LABEL_39:

  return selfCopy;
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

- (id)unarchivedNSErrorFromData:(id)data
{
  dataCopy = data;
  v4 = objc_autoreleasePoolPush();
  v10 = 0;
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v10];
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

- (id)dataFromNSError:(id)error
{
  errorCopy = error;
  v4 = objc_autoreleasePoolPush();
  v10 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:&v10];
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