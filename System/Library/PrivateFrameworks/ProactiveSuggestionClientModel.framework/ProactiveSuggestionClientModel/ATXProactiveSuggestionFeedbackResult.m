@interface ATXProactiveSuggestionFeedbackResult
- (ATXProactiveSuggestionFeedbackResult)initWithCoder:(id)a3;
- (ATXProactiveSuggestionFeedbackResult)initWithConsumerSubType:(unsigned __int8)a3 sessionType:(int64_t)a4 clientCacheUpdate:(id)a5 uiCacheUpdate:(id)a6 context:(id)a7;
- (id)validContextClassNames;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXProactiveSuggestionFeedbackResult

- (ATXProactiveSuggestionFeedbackResult)initWithConsumerSubType:(unsigned __int8)a3 sessionType:(int64_t)a4 clientCacheUpdate:(id)a5 uiCacheUpdate:(id)a6 context:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = ATXProactiveSuggestionFeedbackResult;
  v16 = [(ATXProactiveSuggestionFeedbackResult *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_consumerSubType = a3;
    v16->_sessionType = a4;
    objc_storeStrong(&v16->_clientCacheUpdate, a5);
    objc_storeStrong(&v17->_uiCacheUpdate, a6);
    objc_storeStrong(&v17->_context, a7);
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

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  [v8 encodeObject:v4 forKey:@"consumerSubType"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sessionType];
  [v8 encodeObject:v5 forKey:@"sessionType"];

  [v8 encodeObject:self->_clientCacheUpdate forKey:@"clientCache"];
  [v8 encodeObject:self->_context forKey:@"context"];
  [v8 encodeObject:self->_uiCacheUpdate forKey:@"clientCache"];
  if (self->_context)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v8 encodeObject:v7 forKey:@"contextString"];
  }
}

- (ATXProactiveSuggestionFeedbackResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_blending_ecosystem();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"consumerSubType" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionFeedbackResult" errorCode:-1 logHandle:v7];

  if (v8)
  {
    v9 = [v4 error];

    if (!v9)
    {
      v12 = [MEMORY[0x1E698B028] consumerSubtypeForString:v8 found:0];
      if (v12)
      {
        v13 = v12;
        v14 = MEMORY[0x1E69C5D78];
        v15 = objc_opt_class();
        v16 = __atxlog_handle_blending_ecosystem();
        v17 = [v14 robustDecodeObjectOfClass:v15 forKey:@"sessionType" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionFeedbackResult" errorCode:-1 logHandle:v16];

        if (!v17 || ([v4 error], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
        {
          v10 = 0;
LABEL_34:

          goto LABEL_4;
        }

        v19 = MEMORY[0x1E69C5D78];
        v20 = objc_opt_class();
        v21 = __atxlog_handle_blending_ecosystem();
        v22 = [v19 robustDecodeObjectOfClass:v20 forKey:@"clientCache" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionFeedbackResult" errorCode:-1 logHandle:v21];

        if (!v22 || ([v4 error], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
        {
          v10 = 0;
LABEL_33:

          goto LABEL_34;
        }

        v42 = v22;
        v24 = MEMORY[0x1E69C5D78];
        v25 = objc_opt_class();
        v26 = __atxlog_handle_blending_ecosystem();
        v27 = [v24 robustDecodeObjectOfClass:v25 forKey:@"clientCache" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionFeedbackResult" errorCode:-1 logHandle:v26];

        if (!v27)
        {
          v10 = 0;
          v22 = v42;
          goto LABEL_32;
        }

        v28 = [v4 error];

        v22 = v42;
        if (v28)
        {
          v10 = 0;
LABEL_32:

          goto LABEL_33;
        }

        aClassNamea = MEMORY[0x1E69C5D78];
        v29 = objc_opt_class();
        v30 = __atxlog_handle_blending_ecosystem();
        aClassName = [(NSString *)aClassNamea robustDecodeObjectOfClass:v29 forKey:@"contextString" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionFeedbackResult" errorCode:-1 logHandle:v30];

        v31 = [v4 error];

        if (v31)
        {
          v10 = 0;
          v32 = aClassName;
          v22 = v42;
LABEL_31:

          goto LABEL_32;
        }

        v32 = aClassName;
        if (aClassName)
        {
          v33 = [(ATXProactiveSuggestionFeedbackResult *)self validContextClassNames];
          v34 = [v33 containsObject:aClassName];

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
            v38 = [v35 robustDecodeObjectOfClass:v36 forKey:@"contextString" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionFeedbackResult" errorCode:-1 logHandle:v37];

            if (v38)
            {
              v39 = [v4 error];

              if (!v39)
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            v38 = 0;
          }

          v10 = 0;
          v22 = v42;
          goto LABEL_30;
        }

        v38 = 0;
LABEL_25:
        v22 = v42;
LABEL_27:
        self = -[ATXProactiveSuggestionFeedbackResult initWithConsumerSubType:sessionType:clientCacheUpdate:uiCacheUpdate:context:](self, "initWithConsumerSubType:sessionType:clientCacheUpdate:uiCacheUpdate:context:", v13, [v17 integerValue], v22, v27, v38);
        v10 = self;
LABEL_30:

        goto LABEL_31;
      }
    }
  }

  v10 = 0;
LABEL_4:

  return v10;
}

@end