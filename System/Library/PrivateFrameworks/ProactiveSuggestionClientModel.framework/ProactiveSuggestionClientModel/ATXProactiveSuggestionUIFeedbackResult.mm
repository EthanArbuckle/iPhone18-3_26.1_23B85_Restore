@interface ATXProactiveSuggestionUIFeedbackResult
- (ATXProactiveSuggestionUIFeedbackResult)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXProactiveSuggestionUIFeedbackResult:(id)a3;
- (id)description;
- (id)suggestionExecutableObjectListFromSuggestions:(id)a3;
- (int64_t)uiEngagementTypeFromShownSuggestions:(id)a3 engagedSuggestions:(id)a4 rejectedSuggestions:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXProactiveSuggestionUIFeedbackResult

- (int64_t)uiEngagementTypeFromShownSuggestions:(id)a3 engagedSuggestions:(id)a4 rejectedSuggestions:(id)a5
{
  v6 = a4;
  v7 = [a5 count] != 0;
  v8 = [v6 count];

  if (v8)
  {
    return 2;
  }

  else
  {
    return v7;
  }
}

- (unint64_t)hash
{
  engagementType = self->_engagementType;
  v4 = [(NSArray *)self->_engagedSuggestions hash]- engagementType + 32 * engagementType;
  v5 = [(NSArray *)self->_shownSuggestions hash]- v4 + 32 * v4;
  v6 = [(NSArray *)self->_rejectedSuggestions hash]- v5 + 32 * v5;
  v7 = 31 * ([(ATXProactiveSuggestionUIFeedbackSession *)self->_session hash]- v6 + 32 * v6);
  v8 = v7 + [(ATXProactiveSuggestionFeedbackResult *)self consumerSubType];
  v9 = [(ATXProactiveSuggestionFeedbackResult *)self clientCacheUpdate];
  v10 = [v9 hash] - v8 + 32 * v8;

  v11 = [(ATXProactiveSuggestionFeedbackResult *)self uiCacheUpdate];
  v12 = [v11 hash] - v10 + 32 * v10;

  v13 = [(ATXProactiveSuggestionFeedbackResult *)self context];
  v14 = [v13 hash] - v12 + 32 * v12;

  return v14;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionUIFeedbackResult *)self isEqualToATXProactiveSuggestionUIFeedbackResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXProactiveSuggestionUIFeedbackResult:(id)a3
{
  v4 = a3;
  engagementType = self->_engagementType;
  if (engagementType != [v4 engagementType])
  {
    goto LABEL_25;
  }

  v6 = self->_engagedSuggestions;
  v7 = v6;
  if (v6 == v4[8])
  {
  }

  else
  {
    v8 = [(NSArray *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v9 = self->_shownSuggestions;
  v10 = v9;
  if (v9 == v4[7])
  {
  }

  else
  {
    v11 = [(NSArray *)v9 isEqual:?];

    if ((v11 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v12 = self->_rejectedSuggestions;
  v13 = v12;
  if (v12 == v4[9])
  {
  }

  else
  {
    v14 = [(NSArray *)v12 isEqual:?];

    if ((v14 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v15 = self->_session;
  v16 = v15;
  if (v15 == v4[10])
  {
  }

  else
  {
    v17 = [(ATXProactiveSuggestionUIFeedbackSession *)v15 isEqual:?];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  v18 = [(ATXProactiveSuggestionFeedbackResult *)self consumerSubType];
  if (v18 != [v4 consumerSubType])
  {
LABEL_25:
    v31 = 0;
    goto LABEL_26;
  }

  v19 = [(ATXProactiveSuggestionFeedbackResult *)self clientCacheUpdate];
  v20 = [v4 clientCacheUpdate];
  v21 = v20;
  if (v19 == v20)
  {
  }

  else
  {
    v22 = [(ATXProactiveSuggestionFeedbackResult *)self clientCacheUpdate];
    v23 = [v4 clientCacheUpdate];
    v24 = [v22 isEqual:v23];

    if (!v24)
    {
      goto LABEL_25;
    }
  }

  v25 = [(ATXProactiveSuggestionFeedbackResult *)self uiCacheUpdate];
  v26 = [v4 uiCacheUpdate];
  v27 = v26;
  if (v25 == v26)
  {
  }

  else
  {
    v28 = [(ATXProactiveSuggestionFeedbackResult *)self uiCacheUpdate];
    v29 = [v4 uiCacheUpdate];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_25;
    }
  }

  v33 = [(ATXProactiveSuggestionFeedbackResult *)self context];
  v34 = [v4 context];
  if (v33 == v34)
  {
    v31 = 1;
  }

  else
  {
    v35 = [(ATXProactiveSuggestionFeedbackResult *)self context];
    v36 = [v4 context];
    v31 = [v35 isEqual:v36];
  }

LABEL_26:
  return v31 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:{-[ATXProactiveSuggestionFeedbackResult consumerSubType](self, "consumerSubType")}];
  [v14 encodeObject:v4 forKey:@"consumerSubType"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ATXProactiveSuggestionFeedbackResult sessionType](self, "sessionType")}];
  [v14 encodeObject:v5 forKey:@"sessionType"];

  v6 = [(ATXProactiveSuggestionFeedbackResult *)self clientCacheUpdate];
  [v14 encodeObject:v6 forKey:@"clientCache"];

  v7 = [(ATXProactiveSuggestionFeedbackResult *)self uiCacheUpdate];
  [v14 encodeObject:v7 forKey:@"uiCache"];

  v8 = [(ATXProactiveSuggestionFeedbackResult *)self context];
  [v14 encodeObject:v8 forKey:@"context"];

  v9 = [(ATXProactiveSuggestionFeedbackResult *)self context];

  if (v9)
  {
    v10 = [(ATXProactiveSuggestionFeedbackResult *)self context];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v14 encodeObject:v12 forKey:@"contextString"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_engagementType];
  [v14 encodeObject:v13 forKey:@"uiEngagementType"];

  [v14 encodeObject:self->_engagedSuggestions forKey:@"engaged"];
  [v14 encodeObject:self->_shownSuggestions forKey:@"shown"];
  [v14 encodeObject:self->_rejectedSuggestions forKey:@"dismissed"];
  [v14 encodeObject:self->_session forKey:@"session"];
}

- (ATXProactiveSuggestionUIFeedbackResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_blending_ecosystem();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"consumerSubType" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v7];

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
        v17 = [v14 robustDecodeObjectOfClass:v15 forKey:@"sessionType" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v16];

        if (!v17 || ([v4 error], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
        {
          v10 = 0;
LABEL_52:

          goto LABEL_4;
        }

        v19 = MEMORY[0x1E69C5D78];
        v20 = objc_opt_class();
        v21 = __atxlog_handle_blending_ecosystem();
        v22 = [v19 robustDecodeObjectOfClass:v20 forKey:@"clientCache" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v21];

        if (!v22 || ([v4 error], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
        {
          v10 = 0;
LABEL_51:

          goto LABEL_52;
        }

        v72 = v22;
        v24 = MEMORY[0x1E69C5D78];
        v25 = objc_opt_class();
        v26 = __atxlog_handle_blending_ecosystem();
        v27 = [v24 robustDecodeObjectOfClass:v25 forKey:@"uiCache" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v26];

        if (!v27 || ([v4 error], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
        {
          v10 = 0;
          v22 = v72;
LABEL_50:

          goto LABEL_51;
        }

        v71 = v27;
        v29 = MEMORY[0x1E69C5D78];
        v30 = objc_opt_class();
        v31 = __atxlog_handle_blending_ecosystem();
        v32 = [v29 robustDecodeObjectOfClass:v30 forKey:@"contextString" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v31];

        v33 = [v4 error];

        if (v33)
        {
          v10 = 0;
          v27 = v71;
          v22 = v72;
LABEL_49:

          goto LABEL_50;
        }

        v22 = v72;
        if (v32 && (-[ATXProactiveSuggestionFeedbackResult validContextClassNames](self, "validContextClassNames"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 containsObject:v32], v34, v35))
        {
          v36 = NSClassFromString(v32);
          if (!v36)
          {
            goto LABEL_22;
          }

          v69 = MEMORY[0x1E69C5D78];
          v37 = __atxlog_handle_blending_ecosystem();
          v36 = [v69 robustDecodeObjectOfClass:v36 forKey:@"context" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v37];

          if (!v36 || ([v4 error], v38 = objc_claimAutoreleasedReturnValue(), v38, v38))
          {
LABEL_22:
            v10 = 0;
            v27 = v71;
LABEL_48:

            goto LABEL_49;
          }

          v70 = v36;
          v67 = v32;
        }

        else
        {
          v67 = v32;
          v70 = 0;
        }

        v39 = MEMORY[0x1E69C5D78];
        v40 = objc_opt_class();
        v41 = __atxlog_handle_blending_ecosystem();
        v42 = [v39 robustDecodeObjectOfClass:v40 forKey:@"uiEngagementType" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v41];

        v68 = v42;
        if (v42)
        {
          v43 = [v4 error];

          v27 = v71;
          if (v43)
          {
            v10 = 0;
LABEL_47:
            v36 = v70;

            v32 = v67;
            goto LABEL_48;
          }

          v44 = objc_autoreleasePoolPush();
          v45 = objc_alloc(MEMORY[0x1E695DFD8]);
          v46 = objc_opt_class();
          v47 = [v45 initWithObjects:{v46, objc_opt_class(), 0}];
          objc_autoreleasePoolPop(v44);
          v48 = MEMORY[0x1E69C5D78];
          v49 = __atxlog_handle_blending_ecosystem();
          v50 = [v48 robustDecodeObjectOfClasses:v47 forKey:@"engaged" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v49];

          if (v50 && ([v4 error], v51 = objc_claimAutoreleasedReturnValue(), v51, !v51))
          {
            v52 = MEMORY[0x1E69C5D78];
            v53 = __atxlog_handle_blending_ecosystem();
            v54 = [v52 robustDecodeObjectOfClasses:v47 forKey:@"shown" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v53];

            v66 = v54;
            if (v54 && ([v4 error], v55 = objc_claimAutoreleasedReturnValue(), v55, !v55))
            {
              v56 = MEMORY[0x1E69C5D78];
              v57 = __atxlog_handle_blending_ecosystem();
              v58 = [v56 robustDecodeObjectOfClasses:v47 forKey:@"dismissed" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v57];

              v59 = v58;
              if (v58 && ([v4 error], v60 = objc_claimAutoreleasedReturnValue(), v60, !v60))
              {
                v65 = MEMORY[0x1E69C5D78];
                v61 = objc_opt_class();
                v62 = __atxlog_handle_blending_ecosystem();
                v63 = [v65 robustDecodeObjectOfClass:v61 forKey:@"session" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackResult" errorCode:-1 logHandle:v62];

                if (v63 && ([v4 error], v64 = objc_claimAutoreleasedReturnValue(), v64, !v64))
                {
                  self = -[ATXProactiveSuggestionUIFeedbackResult initWithEngagementType:shownSuggestions:engagedSuggestions:rejectedSuggestions:session:consumerSubType:clientCacheUpdate:uiCacheUpdate:context:](self, "initWithEngagementType:shownSuggestions:engagedSuggestions:rejectedSuggestions:session:consumerSubType:clientCacheUpdate:uiCacheUpdate:context:", [v68 integerValue], v66, v50, v59, v63, v13, v72, v71, v70);
                  v10 = self;
                }

                else
                {
                  v10 = 0;
                }
              }

              else
              {
                v10 = 0;
              }
            }

            else
            {
              v10 = 0;
            }
          }

          else
          {
            v10 = 0;
          }

          v22 = v72;
        }

        else
        {
          v10 = 0;
        }

        v27 = v71;
        goto LABEL_47;
      }
    }
  }

  v10 = 0;
LABEL_4:

  return v10;
}

- (id)description
{
  v24 = objc_autoreleasePoolPush();
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v19 = NSStringFromClass(v3);
  v17 = [MEMORY[0x1E698B028] stringForConsumerSubtype:{-[ATXProactiveSuggestionFeedbackResult consumerSubType](self, "consumerSubType")}];
  v26 = [ATXProactiveSuggestionFeedbackTypes stringForUIFeedbackEngagementType:[(ATXProactiveSuggestionUIFeedbackResult *)self engagementType]];
  v23 = [(ATXProactiveSuggestionUIFeedbackResult *)self session];
  v25 = [v23 sessionStartDate];
  v22 = [(ATXProactiveSuggestionUIFeedbackResult *)self session];
  v14 = [v22 sessionEndDate];
  v18 = [(ATXProactiveSuggestionUIFeedbackResult *)self engagedSuggestions];
  v4 = [(ATXProactiveSuggestionUIFeedbackResult *)self suggestionExecutableObjectListFromSuggestions:v18];
  v16 = [(ATXProactiveSuggestionUIFeedbackResult *)self rejectedSuggestions];
  v13 = [(ATXProactiveSuggestionUIFeedbackResult *)self suggestionExecutableObjectListFromSuggestions:v16];
  v15 = [(ATXProactiveSuggestionUIFeedbackResult *)self shownSuggestions];
  v5 = [(ATXProactiveSuggestionUIFeedbackResult *)self suggestionExecutableObjectListFromSuggestions:v15];
  v6 = [(ATXProactiveSuggestionFeedbackResult *)self clientCacheUpdate];
  v7 = [v6 clientModelId];
  v8 = [(ATXProactiveSuggestionUIFeedbackResult *)self session];
  v9 = [v8 blendingUICacheUpdateUUID];
  v10 = [(ATXProactiveSuggestionUIFeedbackResult *)self session];
  v11 = [v10 sessionMetadata];
  v21 = [v20 initWithFormat:@"%@: %@ - %@ \nsession start: %@, session end: %@ \nengaged suggestions: %@ \nrejected suggestions: %@ \nshown suggestions: %@ \nclient model id: %@ \nblending cache uuid: %@ \nmetadata: %@", v19, v17, v26, v25, v14, v4, v13, v5, v7, v9, v11];

  objc_autoreleasePoolPop(v24);

  return v21;
}

- (id)suggestionExecutableObjectListFromSuggestions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 executableSpecification];
        v13 = [v12 executableIdentifier];
        [v4 addObject:v13];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v4 componentsJoinedByString:{@", "}];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end