@interface ATXInfoTimelineEntryRelevance
+ (id)relevanceWithScore:(double)a3 duration:(double)a4;
- (ATXInfoTimelineEntryRelevance)initWithCoder:(id)a3;
- (ATXInfoTimelineEntryRelevance)initWithScore:(double)a3 duration:(double)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXInfoTimelineEntryRelevance

+ (id)relevanceWithScore:(double)a3 duration:(double)a4
{
  v4 = [[a1 alloc] initWithScore:a3 duration:a4];

  return v4;
}

- (ATXInfoTimelineEntryRelevance)initWithScore:(double)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = ATXInfoTimelineEntryRelevance;
  result = [(ATXInfoTimelineEntryRelevance *)&v7 init];
  if (result)
  {
    result->_score = a3;
    result->_duration = a4;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  score = self->_score;
  v5 = a3;
  [v5 encodeDouble:@"score" forKey:score];
  [v5 encodeDouble:@"duration" forKey:self->_duration];
}

- (ATXInfoTimelineEntryRelevance)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"score"];
  v6 = v5;
  v7 = [v4 error];

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [ATXInfoTimelineEntryRelevance initWithCoder:v4];
    }
  }

  else
  {
    [v4 decodeDoubleForKey:@"duration"];
    v9 = v8;
    v10 = [v4 error];

    if (!v10)
    {
      self = [(ATXInfoTimelineEntryRelevance *)self initWithScore:v6 duration:v9];
      v11 = self;
      goto LABEL_8;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [ATXInfoTimelineEntryRelevance initWithCoder:v4];
    }
  }

  v11 = 0;
LABEL_8:

  return v11;
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