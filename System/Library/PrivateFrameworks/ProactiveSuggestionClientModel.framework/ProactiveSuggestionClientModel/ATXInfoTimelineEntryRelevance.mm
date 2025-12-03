@interface ATXInfoTimelineEntryRelevance
+ (id)relevanceWithScore:(double)score duration:(double)duration;
- (ATXInfoTimelineEntryRelevance)initWithCoder:(id)coder;
- (ATXInfoTimelineEntryRelevance)initWithScore:(double)score duration:(double)duration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInfoTimelineEntryRelevance

+ (id)relevanceWithScore:(double)score duration:(double)duration
{
  v4 = [[self alloc] initWithScore:score duration:duration];

  return v4;
}

- (ATXInfoTimelineEntryRelevance)initWithScore:(double)score duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = ATXInfoTimelineEntryRelevance;
  result = [(ATXInfoTimelineEntryRelevance *)&v7 init];
  if (result)
  {
    result->_score = score;
    result->_duration = duration;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  score = self->_score;
  coderCopy = coder;
  [coderCopy encodeDouble:@"score" forKey:score];
  [coderCopy encodeDouble:@"duration" forKey:self->_duration];
}

- (ATXInfoTimelineEntryRelevance)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"score"];
  v6 = v5;
  error = [coderCopy error];

  if (error)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [ATXInfoTimelineEntryRelevance initWithCoder:coderCopy];
    }
  }

  else
  {
    [coderCopy decodeDoubleForKey:@"duration"];
    v9 = v8;
    error2 = [coderCopy error];

    if (!error2)
    {
      self = [(ATXInfoTimelineEntryRelevance *)self initWithScore:v6 duration:v9];
      selfCopy = self;
      goto LABEL_8;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [ATXInfoTimelineEntryRelevance initWithCoder:coderCopy];
    }
  }

  selfCopy = 0;
LABEL_8:

  return selfCopy;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = [a1 error];
  v3[0] = 138412546;
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(&dword_1DEFC4000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ATXInfoTimelineEntryRelevance: error decoding %@ - %@", v3, 0x16u);

  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(void *)a1 .cold.2(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = [a1 error];
  v3[0] = 138412546;
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(&dword_1DEFC4000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ATXInfoTimelineEntryRelevance: error decoding %@ - %@", v3, 0x16u);

  v2 = *MEMORY[0x1E69E9840];
}

@end