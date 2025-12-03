@interface ATXProactiveSuggestionFeedbackResult
- (ATXProactiveSuggestionFeedbackResult)initWithCoder:(id)coder;
- (ATXProactiveSuggestionFeedbackResult)initWithConsumerSubType:(unsigned __int8)type sessionType:(int64_t)sessionType clientCacheUpdate:(id)update uiCacheUpdate:(id)cacheUpdate context:(id)context;
- (id)validContextClassNames;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXProactiveSuggestionFeedbackResult

- (ATXProactiveSuggestionFeedbackResult)initWithConsumerSubType:(unsigned __int8)type sessionType:(int64_t)sessionType clientCacheUpdate:(id)update uiCacheUpdate:(id)cacheUpdate context:(id)context
{
  updateCopy = update;
  cacheUpdateCopy = cacheUpdate;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = ATXProactiveSuggestionFeedbackResult;
  v16 = [(ATXProactiveSuggestionFeedbackResult *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_consumerSubType = type;
    v16->_sessionType = sessionType;
    objc_storeStrong(&v16->_clientCacheUpdate, update);
    objc_storeStrong(&v17->_uiCacheUpdate, cacheUpdate);
    objc_storeStrong(&v17->_context, context);
  }

  return v17;
}

- (id)validContextClassNames
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ATXPredictionContext", @"ATXUIFeedbackTestPredictionContext", 0}];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  [coderCopy encodeObject:v4 forKey:@"consumerSubType"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sessionType];
  [coderCopy encodeObject:v5 forKey:@"sessionType"];

  [coderCopy encodeObject:self->_clientCacheUpdate forKey:@"clientCache"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
  [coderCopy encodeObject:self->_uiCacheUpdate forKey:@"clientCache"];
  if (self->_context)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [coderCopy encodeObject:v7 forKey:@"contextString"];
  }
}

- (ATXProactiveSuggestionFeedbackResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_blending_ecosystem();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"consumerSubType" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionFeedbackResult" errorCode:-1 logHandle:v7];

  if (v8)
  {
    error = [coderCopy error];

    if (!error)
    {
      v12 = [MEMORY[0x1E698B028] consumerSubtypeForString:v8 found:0];
      if (v12)
      {
        v13 = v12;
        v14 = MEMORY[0x1E69C5D78];
        v15 = objc_opt_class();
        v16 = __atxlog_handle_blending_ecosystem();
        v17 = [v14 robustDecodeObjectOfClass:v15 forKey:@"sessionType" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionFeedbackResult" errorCode:-1 logHandle:v16];

        if (!v17 || ([coderCopy error], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
        {
          selfCopy = 0;
LABEL_34:

          goto LABEL_4;
        }

        v19 = MEMORY[0x1E69C5D78];
        v20 = objc_opt_class();
        v21 = __atxlog_handle_blending_ecosystem();
        v22 = [v19 robustDecodeObjectOfClass:v20 forKey:@"clientCache" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionFeedbackResult" errorCode:-1 logHandle:v21];

        if (!v22 || ([coderCopy error], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
        {
          selfCopy = 0;
LABEL_33:

          goto LABEL_34;
        }

        v42 = v22;
        v24 = MEMORY[0x1E69C5D78];
        v25 = objc_opt_class();
        v26 = __atxlog_handle_blending_ecosystem();
        v27 = [v24 robustDecodeObjectOfClass:v25 forKey:@"clientCache" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionFeedbackResult" errorCode:-1 logHandle:v26];

        if (!v27)
        {
          selfCopy = 0;
          v22 = v42;
          goto LABEL_32;
        }

        error2 = [coderCopy error];

        v22 = v42;
        if (error2)
        {
          selfCopy = 0;
LABEL_32:

          goto LABEL_33;
        }

        aClassNamea = MEMORY[0x1E69C5D78];
        v29 = objc_opt_class();
        v30 = __atxlog_handle_blending_ecosystem();
        aClassName = [(NSString *)aClassNamea robustDecodeObjectOfClass:v29 forKey:@"contextString" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionFeedbackResult" errorCode:-1 logHandle:v30];

        error3 = [coderCopy error];

        if (error3)
        {
          selfCopy = 0;
          v32 = aClassName;
          v22 = v42;
LABEL_31:

          goto LABEL_32;
        }

        v32 = aClassName;
        if (aClassName)
        {
          validContextClassNames = [(ATXProactiveSuggestionFeedbackResult *)self validContextClassNames];
          v34 = [validContextClassNames containsObject:aClassName];

          if (!v34)
          {
            v38 = 0;
            v32 = aClassName;
            v22 = v42;
            goto LABEL_27;
          }

          v32 = aClassName;
          if (NSClassFromString(aClassName))
          {
            v35 = MEMORY[0x1E69C5D78];
            v36 = objc_opt_class();
            v37 = __atxlog_handle_blending_ecosystem();
            v38 = [v35 robustDecodeObjectOfClass:v36 forKey:@"contextString" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionFeedbackResult" errorCode:-1 logHandle:v37];

            if (v38)
            {
              error4 = [coderCopy error];

              if (!error4)
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            v38 = 0;
          }

          selfCopy = 0;
          v22 = v42;
          goto LABEL_30;
        }

        v38 = 0;
LABEL_25:
        v22 = v42;
LABEL_27:
        self = -[ATXProactiveSuggestionFeedbackResult initWithConsumerSubType:sessionType:clientCacheUpdate:uiCacheUpdate:context:](self, "initWithConsumerSubType:sessionType:clientCacheUpdate:uiCacheUpdate:context:", v13, [v17 integerValue], v22, v27, v38);
        selfCopy = self;
LABEL_30:

        goto LABEL_31;
      }
    }
  }

  selfCopy = 0;
LABEL_4:

  return selfCopy;
}

@end