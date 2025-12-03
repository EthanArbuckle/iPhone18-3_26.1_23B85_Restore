@interface ATXInfoTimelineEntry
+ (id)entryWithDate:(id)date importantRelativeToTimeline:(BOOL)timeline;
+ (id)entryWithDate:(id)date relevance:(id)relevance;
- (ATXInfoTimelineEntry)initWithCoder:(id)coder;
- (ATXInfoTimelineEntry)initWithDate:(id)date relevance:(id)relevance;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInfoTimelineEntry

+ (id)entryWithDate:(id)date relevance:(id)relevance
{
  relevanceCopy = relevance;
  dateCopy = date;
  v8 = [[self alloc] initWithDate:dateCopy relevance:relevanceCopy];

  return v8;
}

- (ATXInfoTimelineEntry)initWithDate:(id)date relevance:(id)relevance
{
  dateCopy = date;
  relevanceCopy = relevance;
  v12.receiver = self;
  v12.super_class = ATXInfoTimelineEntry;
  v9 = [(ATXInfoTimelineEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_date, date);
    objc_storeStrong(&v10->_relevance, relevance);
  }

  return v10;
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
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"date"];
  [coderCopy encodeObject:self->_relevance forKey:@"relevance"];
}

- (ATXInfoTimelineEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  if ([(ATXInfoTimelineEntry *)self checkAndReportDecodingFailureIfNeededForid:v5 key:@"date" coder:coderCopy errorDomain:@"com.apple.proactive.TimelineSuggestionEntry" errorCode:-1])
  {
    selfCopy = 0;
  }

  else
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relevance"];
    if ([(ATXInfoTimelineEntry *)self checkAndReportDecodingFailureIfNeededForid:v7 key:@"relevance" coder:coderCopy errorDomain:@"com.apple.proactive.TimelineSuggestionEntry" errorCode:-1])
    {
      selfCopy = 0;
    }

    else
    {
      self = [(ATXInfoTimelineEntry *)self initWithDate:v5 relevance:v7];
      selfCopy = self;
    }
  }

  return selfCopy;
}

+ (id)entryWithDate:(id)date importantRelativeToTimeline:(BOOL)timeline
{
  dateCopy = date;
  v6 = [[self alloc] initWithDate:dateCopy relevance:0];

  return v6;
}

@end