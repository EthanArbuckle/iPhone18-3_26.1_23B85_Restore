@interface ATXInfoTimelineEntry
+ (id)entryWithDate:(id)a3 importantRelativeToTimeline:(BOOL)a4;
+ (id)entryWithDate:(id)a3 relevance:(id)a4;
- (ATXInfoTimelineEntry)initWithCoder:(id)a3;
- (ATXInfoTimelineEntry)initWithDate:(id)a3 relevance:(id)a4;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXInfoTimelineEntry

+ (id)entryWithDate:(id)a3 relevance:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithDate:v7 relevance:v6];

  return v8;
}

- (ATXInfoTimelineEntry)initWithDate:(id)a3 relevance:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXInfoTimelineEntry;
  v9 = [(ATXInfoTimelineEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_date, a3);
    objc_storeStrong(&v10->_relevance, a4);
  }

  return v10;
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
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"date"];
  [v5 encodeObject:self->_relevance forKey:@"relevance"];
}

- (ATXInfoTimelineEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  if ([(ATXInfoTimelineEntry *)self checkAndReportDecodingFailureIfNeededForid:v5 key:@"date" coder:v4 errorDomain:@"com.apple.proactive.TimelineSuggestionEntry" errorCode:-1])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relevance"];
    if ([(ATXInfoTimelineEntry *)self checkAndReportDecodingFailureIfNeededForid:v7 key:@"relevance" coder:v4 errorDomain:@"com.apple.proactive.TimelineSuggestionEntry" errorCode:-1])
    {
      v6 = 0;
    }

    else
    {
      self = [(ATXInfoTimelineEntry *)self initWithDate:v5 relevance:v7];
      v6 = self;
    }
  }

  return v6;
}

+ (id)entryWithDate:(id)a3 importantRelativeToTimeline:(BOOL)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithDate:v5 relevance:0];

  return v6;
}

@end