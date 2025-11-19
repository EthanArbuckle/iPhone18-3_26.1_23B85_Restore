@interface ATXProactiveSuggestionWidgetRotationFeedbackSession
- (ATXProactiveSuggestionWidgetRotationFeedbackSession)init;
- (ATXProactiveSuggestionWidgetRotationFeedbackSession)initWithCoder:(id)a3;
- (ATXProactiveSuggestionWidgetRotationFeedbackSession)initWithEngagementType:(int64_t)a3 metadata:(id)a4 engagementHistory:(id)a5 systemSuggestSuggestionLayout:(id)a6 sessionStartDate:(id)a7 sessionEndDate:(id)a8 dwellStartDate:(id)a9 longestDwell:(double)a10;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXProactiveSuggestionWidgetRotationFeedbackSession:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)markRotationSessionEndedAtDate:(id)a3 wasUserScroll:(BOOL)a4;
- (void)markStackHiddenAtDate:(id)a3;
- (void)markStackShownAtDate:(id)a3;
- (void)tryUpdateStackRotationEngagementType:(int64_t)a3;
@end

@implementation ATXProactiveSuggestionWidgetRotationFeedbackSession

- (ATXProactiveSuggestionWidgetRotationFeedbackSession)init
{
  v3 = objc_opt_new();
  v4 = [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self initWithEngagementType:0 metadata:0 engagementHistory:v3 systemSuggestSuggestionLayout:0 sessionStartDate:0 sessionEndDate:0 dwellStartDate:0.0 longestDwell:0];

  return v4;
}

- (ATXProactiveSuggestionWidgetRotationFeedbackSession)initWithEngagementType:(int64_t)a3 metadata:(id)a4 engagementHistory:(id)a5 systemSuggestSuggestionLayout:(id)a6 sessionStartDate:(id)a7 sessionEndDate:(id)a8 dwellStartDate:(id)a9 longestDwell:(double)a10
{
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v27.receiver = self;
  v27.super_class = ATXProactiveSuggestionWidgetRotationFeedbackSession;
  v20 = [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)&v27 init];
  v21 = v20;
  if (v20)
  {
    v20->_engagementType = a3;
    objc_storeStrong(&v20->_metadata, a4);
    objc_storeStrong(&v21->_engagementHistory, a5);
    objc_storeStrong(&v21->_systemSuggestSuggestionLayout, a6);
    objc_storeStrong(&v21->_sessionStartDate, a7);
    objc_storeStrong(&v21->_sessionEndDate, a8);
    objc_storeStrong(&v21->_dwellStartDate, a9);
    v21->_longestDwell = a10;
  }

  return v21;
}

- (void)markStackShownAtDate:(id)a3
{
  objc_storeStrong(&self->_dwellStartDate, a3);

  [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self tryUpdateStackRotationEngagementType:1];
}

- (void)markStackHiddenAtDate:(id)a3
{
  v4 = a3;
  dwellStartDate = self->_dwellStartDate;
  v8 = v4;
  if (v4 && dwellStartDate)
  {
    [v4 timeIntervalSinceDate:?];
    v7 = v6;
    if (v6 >= *&kATXWidgetRotationFeedbackMinTimeIntervalToBeConsideredDwell)
    {
      [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self tryUpdateStackRotationEngagementType:3];
    }

    if (v7 > self->_longestDwell)
    {
      self->_longestDwell = v7;
    }

    dwellStartDate = self->_dwellStartDate;
  }

  self->_dwellStartDate = 0;
}

- (void)tryUpdateStackRotationEngagementType:(int64_t)a3
{
  engagementHistory = self->_engagementHistory;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [(NSMutableArray *)engagementHistory addObject:v6];

  if (self->_engagementType < a3)
  {
    self->_engagementType = a3;
  }
}

- (void)markRotationSessionEndedAtDate:(id)a3 wasUserScroll:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  objc_storeStrong(&self->_sessionEndDate, a3);
  [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self markStackHiddenAtDate:v7];
  if (v4)
  {
    [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self tryUpdateStackRotationEngagementType:2];
  }
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self isEqualToATXProactiveSuggestionWidgetRotationFeedbackSession:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXProactiveSuggestionWidgetRotationFeedbackSession:(id)a3
{
  v4 = a3;
  if (self->_engagementType != *(v4 + 1))
  {
    goto LABEL_24;
  }

  v5 = self->_metadata;
  v6 = v5;
  if (v5 == *(v4 + 2))
  {
  }

  else
  {
    v7 = [(ATXProactiveSuggestionWidgetRotationFeedbackSessionMetadata *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v8 = self->_engagementHistory;
  v9 = v8;
  if (v8 == *(v4 + 3))
  {
  }

  else
  {
    v10 = [(NSMutableArray *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v11 = self->_systemSuggestSuggestionLayout;
  v12 = v11;
  if (v11 == *(v4 + 4))
  {
  }

  else
  {
    v13 = [(ATXSuggestionLayout *)v11 isEqual:?];

    if (!v13)
    {
      goto LABEL_24;
    }
  }

  v14 = self->_sessionStartDate;
  v15 = v14;
  if (v14 == *(v4 + 5))
  {
  }

  else
  {
    v16 = [(NSDate *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v17 = self->_sessionEndDate;
  v18 = v17;
  if (v17 == *(v4 + 6))
  {
  }

  else
  {
    v19 = [(NSDate *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v20 = self->_dwellStartDate;
  v21 = v20;
  if (v20 == *(v4 + 7))
  {

    goto LABEL_27;
  }

  v22 = [(NSDate *)v20 isEqual:?];

  if (v22)
  {
LABEL_27:
    v23 = self->_longestDwell == v4[8];
    goto LABEL_25;
  }

LABEL_24:
  v23 = 0;
LABEL_25:

  return v23;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"YES";
  if (!self->_systemSuggestSuggestionLayout)
  {
    v7 = @"NO";
  }

  v8 = [v3 initWithFormat:@"%@ - engagementType: %lu, metadata: %@, engagementHistory: %@, suggestionLayout: %@, sessionStartDate: %@, sessionEndDate: %@, dwellStartDate: %@, longestDwell: %f", v5, *&self->_engagementType, self->_engagementHistory, v7, self->_sessionStartDate, self->_sessionEndDate, self->_dwellStartDate, *&self->_longestDwell];

  return v8;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
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

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3 == 0.0)
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
  engagementType = self->_engagementType;
  v5 = a3;
  [v5 encodeInteger:engagementType forKey:@"engagementType"];
  [v5 encodeObject:self->_metadata forKey:@"metadata"];
  [v5 encodeObject:self->_engagementHistory forKey:@"engagementHistory"];
  [v5 encodeObject:self->_systemSuggestSuggestionLayout forKey:@"suggestionLayout"];
  [v5 encodeObject:self->_sessionStartDate forKey:@"startDate"];
  [v5 encodeObject:self->_sessionEndDate forKey:@"endDate"];
  [v5 encodeObject:self->_dwellStartDate forKey:@"dwellStartDate"];
  [v5 encodeDouble:@"longestDwell" forKey:self->_longestDwell];
}

- (ATXProactiveSuggestionWidgetRotationFeedbackSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"engagementType"];
  if ([(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self checkAndReportDecodingFailureIfNeededForNSInteger:v5 key:@"engagementType" coder:v4 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorCode:-1])
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69C5D78];
    v8 = objc_opt_class();
    v9 = __atxlog_handle_blending_ecosystem();
    v10 = [v7 robustDecodeObjectOfClass:v8 forKey:@"metadata" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorCode:-1 logHandle:v9];

    v11 = [v4 error];

    if (v11)
    {
      v6 = 0;
    }

    else
    {
      v12 = MEMORY[0x1E69C5D78];
      v13 = objc_autoreleasePoolPush();
      v14 = objc_alloc(MEMORY[0x1E695DFD8]);
      v15 = objc_opt_class();
      v16 = [v14 initWithObjects:{v15, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v13);
      v17 = __atxlog_handle_blending_ecosystem();
      v18 = [v12 robustDecodeObjectOfClasses:v16 forKey:@"engagementHistory" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorCode:-1 logHandle:v17];

      if (v18 && ([v4 error], v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
      {
        v20 = MEMORY[0x1E69C5D78];
        v21 = objc_opt_class();
        v22 = __atxlog_handle_blending_ecosystem();
        v23 = [v20 robustDecodeObjectOfClass:v21 forKey:@"suggestionLayout" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorCode:-1 logHandle:v22];

        v24 = [v4 error];

        if (v24)
        {
          v6 = 0;
        }

        else
        {
          v25 = MEMORY[0x1E69C5D78];
          v26 = objc_opt_class();
          v27 = __atxlog_handle_blending_ecosystem();
          v28 = [v25 robustDecodeObjectOfClass:v26 forKey:@"startDate" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorCode:-1 logHandle:v27];

          v29 = [v4 error];

          if (v29)
          {
            v6 = 0;
          }

          else
          {
            v44 = v28;
            v30 = MEMORY[0x1E69C5D78];
            v31 = objc_opt_class();
            v32 = __atxlog_handle_blending_ecosystem();
            v33 = [v30 robustDecodeObjectOfClass:v31 forKey:@"endDate" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorCode:-1 logHandle:v32];

            v34 = [v4 error];

            if (v34)
            {
              v6 = 0;
              v28 = v44;
            }

            else
            {
              v43 = v33;
              v35 = MEMORY[0x1E69C5D78];
              v36 = objc_opt_class();
              v37 = __atxlog_handle_blending_ecosystem();
              v38 = [v35 robustDecodeObjectOfClass:v36 forKey:@"dwellStartDate" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorCode:-1 logHandle:v37];

              v39 = [v4 error];

              if (v39)
              {
                v6 = 0;
                v33 = v43;
                v28 = v44;
              }

              else
              {
                [v4 decodeDoubleForKey:@"longestDwell"];
                v41 = v40;
                v28 = v44;
                if ([(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self checkAndReportDecodingFailureIfNeededFordouble:@"longestDwell" key:v4 coder:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorDomain:-1 errorCode:?])
                {
                  v6 = 0;
                  v33 = v43;
                }

                else
                {
                  v33 = v43;
                  self = [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self initWithEngagementType:v5 metadata:v10 engagementHistory:v18 systemSuggestSuggestionLayout:v23 sessionStartDate:v44 sessionEndDate:v43 dwellStartDate:v41 longestDwell:v38];
                  v6 = self;
                }
              }
            }
          }
        }
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

@end