@interface ATXIntentSuggestionRequest
- (ATXIntentSuggestionRequest)initWithCoder:(id)coder;
- (ATXIntentSuggestionRequest)initWithProto:(id)proto;
- (ATXIntentSuggestionRequest)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)proto;
@end

@implementation ATXIntentSuggestionRequest

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = ATXIntentSuggestionRequest;
    if ([(ATXSuggestionRequest *)&v16 isEqual:equalCopy])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = equalCopy;
        v6 = self->_limit;
        v7 = v6;
        if (v6 == v5->_limit)
        {
        }

        else
        {
          v8 = [(NSNumber *)v6 isEqual:?];

          if ((v8 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v10 = self->_bundleIds;
        v11 = v10;
        if (v10 == v5->_bundleIds)
        {
        }

        else
        {
          v12 = [(NSArray *)v10 isEqual:?];

          if ((v12 & 1) == 0)
          {
LABEL_12:
            v9 = 0;
LABEL_18:

            goto LABEL_19;
          }
        }

        v13 = self->_intentClassNames;
        v14 = v13;
        if (v13 == v5->_intentClassNames)
        {
          v9 = 1;
        }

        else
        {
          v9 = [(NSArray *)v13 isEqual:?];
        }

        goto LABEL_18;
      }
    }

    v9 = 0;
  }

LABEL_19:

  return v9;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = ATXIntentSuggestionRequest;
  v3 = [(ATXSuggestionRequest *)&v7 hash];
  v4 = [(NSArray *)self->_bundleIds hash]- v3 + 32 * v3;
  v5 = [(NSArray *)self->_intentClassNames hash]- v4 + 32 * v4;
  return [(NSNumber *)self->_limit hash]- v5 + 32 * v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXIntentSuggestionRequest *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXIntentSuggestionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXIntentSuggestionRequest *)self initWithProtoData:v5];
  return v6;
}

- (ATXIntentSuggestionRequest)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBRequestForIntentSuggestions alloc] initWithData:dataCopy];

    self = [(ATXIntentSuggestionRequest *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXIntentSuggestionRequest *)self proto];
  data = [proto data];

  return data;
}

- (ATXIntentSuggestionRequest)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = __atxlog_handle_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [ATXIntentSuggestionRequest initWithProto:];
    }

    goto LABEL_8;
  }

  v5 = protoCopy;
  v6 = [ATXSuggestionRequest alloc];
  base = [v5 base];
  v8 = [(ATXSuggestionRequest *)v6 initWithProto:base];

  requestUUID = [(ATXSuggestionRequest *)v8 requestUUID];
  originatorId = [(ATXSuggestionRequest *)v8 originatorId];
  consumerSubType = [(ATXSuggestionRequest *)v8 consumerSubType];
  bundleIds = [v5 bundleIds];
  intentClassNames = [v5 intentClassNames];
  hasLimit = [v5 hasLimit];
  if (hasLimit)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "limit")}];
  }

  else
  {
    v14 = 0;
  }

  [(ATXSuggestionRequest *)v8 timeout];
  self = [(ATXIntentSuggestionRequest *)self initWithUUID:requestUUID originatorId:originatorId consumerSubType:consumerSubType bundleIds:bundleIds intentClassNames:intentClassNames limit:v14 timeout:?];
  if (hasLimit)
  {
  }

  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (id)proto
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v27.receiver = self;
  v27.super_class = ATXIntentSuggestionRequest;
  proto = [(ATXSuggestionRequest *)&v27 proto];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setBase:proto];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = self->_bundleIds;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v3 addBundleIds:*(*(&v23 + 1) + 8 * i)];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v7);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = self->_intentClassNames;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v3 addIntentClassNames:{*(*(&v19 + 1) + 8 * j), v19}];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v28 count:16];
      }

      while (v12);
    }

    if (self->_limit)
    {
      [v3 setHasLimit:1];
      [v3 setLimit:{-[NSNumber intValue](self->_limit, "intValue")}];
    }

    else
    {
      [v3 setHasLimit:0];
    }

    v16 = v3;
  }

  else
  {
    v15 = __atxlog_handle_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [ATXIntentSuggestionRequest proto];
    }

    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)initWithProto:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1DEFC4000, v0, v1, "%s: Returning nil because input proto is of unexpected class %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)proto
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1DEFC4000, v0, v1, "%s: Returning nil because [super proto] is of unexpected class %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end