@interface ATXClientModelCacheUpdate
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXClientModelCacheUpdate)initWithClientModelId:(id)a3 suggestions:(id)a4 feedbackMetadata:(id)a5 responseForRealTimeRequest:(id)a6;
- (ATXClientModelCacheUpdate)initWithClientModelId:(id)a3 suggestions:(id)a4 feedbackMetadata:(id)a5 responseForRealTimeRequest:(id)a6 uuid:(id)a7 cacheCreationDate:(id)a8;
- (ATXClientModelCacheUpdate)initWithCoder:(id)a3;
- (ATXClientModelCacheUpdate)initWithProto:(id)a3;
- (ATXClientModelCacheUpdate)initWithProtoData:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXClientModelCacheUpdate:(id)a3;
- (NSDate)cacheCreationDate;
- (id)_clientModelFromClientModelId:(id)a3 suggestions:(id)a4;
- (id)encodeAsProto;
- (id)json;
- (id)jsonRawData;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
- (void)proto;
@end

@implementation ATXClientModelCacheUpdate

- (id)encodeAsProto
{
  v2 = [(ATXClientModelCacheUpdate *)self proto];
  v3 = [v2 data];

  return v3;
}

- (id)proto
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(NSUUID *)self->_uuid UUIDString];
  [v3 setUuidString:v4];

  if (([v3 hasUuidString] & 1) == 0)
  {
    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXClientModelCacheUpdate *)v3 proto];
    }
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_suggestions, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = self->_suggestions;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 proto];
        if (v13)
        {
          v14 = [v12 proto];
          [v6 addObject:v14];
        }

        else
        {
          v14 = __atxlog_handle_blending();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            [(ATXClientModelCacheUpdate *)&v18 proto];
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  [v3 setSuggestions:v6];
  [v3 setFeedbackMetadata:self->_feedbackMetadata];
  [v3 setClientModelId:self->_clientModelId];
  [v3 setCacheCreationDate:self->_absoluteCacheCreationDate];
  v15 = [(ATXSuggestionRequestResponse *)self->_suggestionRequestResponse proto];
  [v3 setResponseForRequestForSuggestions:v15];

  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSDate)cacheCreationDate
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:self->_absoluteCacheCreationDate];

  return v2;
}

- (ATXClientModelCacheUpdate)initWithClientModelId:(id)a3 suggestions:(id)a4 feedbackMetadata:(id)a5 responseForRealTimeRequest:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = [(ATXClientModelCacheUpdate *)self initWithClientModelId:v13 suggestions:v12 feedbackMetadata:v11 responseForRealTimeRequest:v10 uuid:v14 cacheCreationDate:v15];

  return v16;
}

- (ATXClientModelCacheUpdate)initWithClientModelId:(id)a3 suggestions:(id)a4 feedbackMetadata:(id)a5 responseForRealTimeRequest:(id)a6 uuid:(id)a7 cacheCreationDate:(id)a8
{
  v24 = a3;
  v23 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = ATXClientModelCacheUpdate;
  v19 = [(ATXClientModelCacheUpdate *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_suggestions, a4);
    objc_storeStrong(&v20->_feedbackMetadata, a5);
    objc_storeStrong(&v20->_uuid, a7);
    objc_storeStrong(&v20->_clientModelId, a3);
    [v18 timeIntervalSince1970];
    v20->_absoluteCacheCreationDate = v21;
    objc_storeStrong(&v20->_suggestionRequestResponse, a6);
  }

  return v20;
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
  v5 = [(ATXClientModelCacheUpdate *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXClientModelCacheUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXClientModelCacheUpdate *)self initWithProtoData:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXClientModelCacheUpdate *)self isEqualToATXClientModelCacheUpdate:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXClientModelCacheUpdate:(id)a3
{
  v4 = a3;
  v5 = self->_uuid;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSUUID *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v8 = self->_suggestions;
  v9 = v8;
  if (v8 == v4[4])
  {
  }

  else
  {
    v10 = [(NSArray *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v11 = self->_feedbackMetadata;
  v12 = v11;
  if (v11 == v4[5])
  {
  }

  else
  {
    v13 = [(NSData *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v14 = self->_clientModelId;
  v15 = v14;
  if (v14 == v4[3])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v17 = self->_suggestionRequestResponse;
  v18 = v17;
  if (v17 == v4[6])
  {

    goto LABEL_22;
  }

  v19 = [(ATXSuggestionRequestResponse *)v17 isEqual:?];

  if (v19)
  {
LABEL_22:
    v20 = self->_absoluteCacheCreationDate == *(v4 + 1);
    goto LABEL_20;
  }

LABEL_19:
  v20 = 0;
LABEL_20:

  return v20;
}

- (ATXClientModelCacheUpdate)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBClientModelCacheUpdate alloc] initWithData:v4];

    self = [(ATXClientModelCacheUpdate *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXClientModelCacheUpdate)initWithProto:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_blending();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXLightweightClientModelCacheUpdate *)self initWithProto:v5];
      }

      v26 = 0;
      goto LABEL_29;
    }

    v5 = v4;
    if (([v5 hasUuidString]& 1) != 0)
    {
      v6 = objc_alloc(MEMORY[0x1E696AFB0]);
      v7 = [v5 uuidString];
      v8 = [v6 initWithUUIDString:v7];

      if (v8)
      {
        v29 = v8;
        v9 = objc_alloc(MEMORY[0x1E695DF70]);
        v10 = [v5 suggestions];
        v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v12 = [v5 suggestions];
        v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v31;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v31 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [[ATXProactiveSuggestion alloc] initWithProto:*(*(&v30 + 1) + 8 * i)];
              if (!v17)
              {
                v20 = __atxlog_handle_blending();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
                {
                  [ATXClientModelCacheUpdate initWithProto:v20];
                }

                v26 = 0;
                v8 = v29;
                goto LABEL_27;
              }

              v18 = v17;
              [v11 addObject:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v12 = [v5 feedbackMetadata];
        v19 = [v5 clientModelId];
        v20 = [(ATXClientModelCacheUpdate *)self _clientModelFromClientModelId:v19 suggestions:v11];

        v21 = objc_alloc(MEMORY[0x1E695DF00]);
        [v5 cacheCreationDate];
        v22 = [v21 initWithTimeIntervalSince1970:?];
        if ([v5 hasResponseForRequestForSuggestions])
        {
          v23 = [ATXSuggestionRequestResponse alloc];
          v24 = [v5 responseForRequestForSuggestions];
          v25 = [(ATXSuggestionRequestResponse *)v23 initWithProto:v24];
        }

        else
        {
          v25 = 0;
        }

        v8 = v29;
        self = [(ATXClientModelCacheUpdate *)self initWithClientModelId:v20 suggestions:v11 feedbackMetadata:v12 responseForRealTimeRequest:v25 uuid:v29 cacheCreationDate:v22];

        v26 = self;
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      v8 = __atxlog_handle_blending();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [ATXClientModelCacheUpdate initWithProto:v8];
      }
    }

    v26 = 0;
LABEL_28:

LABEL_29:
    goto LABEL_30;
  }

  v26 = 0;
LABEL_30:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = objc_autoreleasePoolPush();
    v12 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:a1 fromData:v6 error:&v12];
    v9 = v12;
    objc_autoreleasePoolPop(v7);
    v10 = 0;
    if (!v9)
    {
      v10 = v8;
    }
  }

  else
  {
    v10 = [[a1 alloc] initWithProtoData:v6];
  }

  return v10;
}

- (id)jsonRawData
{
  v32[6] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v31[0] = @"clientModelId";
  v4 = [(ATXClientModelCacheUpdate *)self clientModelId];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"nil";
  }

  v32[0] = v6;
  v31[1] = @"uuid";
  v7 = [(NSUUID *)self->_uuid description];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"nil";
  }

  v32[1] = v9;
  v32[2] = v3;
  v31[2] = @"suggestions";
  v31[3] = @"suggestion_count";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_suggestions, "count")}];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"nil";
  }

  v32[3] = v12;
  v31[4] = @"cacheCreationDate";
  v13 = [(ATXClientModelCacheUpdate *)self cacheCreationDate];
  v14 = [v13 description];
  v15 = v14;
  v31[5] = @"responseForRequest";
  if (self->_suggestionRequestResponse)
  {
    v16 = @"Was in response to a request";
  }

  else
  {
    v16 = @"Not a real-time response";
  }

  v32[4] = v14;
  v32[5] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:6];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = self->_suggestions;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v26 + 1) + 8 * i) jsonRawData];
        [v3 addObject:v23];
      }

      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXClientModelCacheUpdate *)self jsonRawData];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (id)_clientModelFromClientModelId:(id)a3 suggestions:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [a4 firstObject];
    v9 = [v8 clientModelSpecification];
    v7 = [v9 clientModelId];
  }

  return v7;
}

- (void)proto
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_FAULT, "Unable to generate inner ProtoBuf class for ATXProactiveSuggestion", buf, 2u);
}

@end