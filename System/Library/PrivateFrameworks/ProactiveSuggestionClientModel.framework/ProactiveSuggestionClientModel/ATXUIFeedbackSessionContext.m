@interface ATXUIFeedbackSessionContext
- (ATXUIFeedbackSessionContext)init;
- (ATXUIFeedbackSessionContext)initWithCoder:(id)a3;
- (ATXUIFeedbackSessionContext)initWithSessions:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXUIFeedbackSessionContext:(id)a3;
- (NSDictionary)sessions;
- (id)returnAndRemoveUIFeedbackSessionWithSessionIdentifier:(id)a3 endDate:(id)a4;
- (void)trackNewUIFeedbackSessionWithSessionIdentifier:(id)a3 startDate:(id)a4;
@end

@implementation ATXUIFeedbackSessionContext

- (ATXUIFeedbackSessionContext)init
{
  v3 = objc_opt_new();
  v4 = [(ATXUIFeedbackSessionContext *)self initWithSessions:v3];

  return v4;
}

- (ATXUIFeedbackSessionContext)initWithSessions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXUIFeedbackSessionContext;
  v6 = [(ATXUIFeedbackSessionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessions, a3);
  }

  return v7;
}

- (void)trackNewUIFeedbackSessionWithSessionIdentifier:(id)a3 startDate:(id)a4
{
  v6 = a3;
  sessions = self->_sessions;
  v8 = a4;
  if ([(NSMutableDictionary *)sessions count]>= 0xA)
  {
    v9 = __atxlog_handle_blending_ecosystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXUIFeedbackSessionContext *)self trackNewUIFeedbackSessionWithSessionIdentifier:v6 startDate:v9];
    }

    [(NSMutableDictionary *)self->_sessions removeAllObjects];
  }

  v10 = [[ATXProactiveSuggestionUIFeedbackSession alloc] initWithSessionIdentifier:v6];
  [(ATXProactiveSuggestionUIFeedbackSession *)v10 updateSessionStartDateIfUnset:v8];

  [(NSMutableDictionary *)self->_sessions setValue:v10 forKey:v6];
}

- (id)returnAndRemoveUIFeedbackSessionWithSessionIdentifier:(id)a3 endDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ATXUIFeedbackSessionContext *)self uiFeedbackSessionWithSessionIdentifier:v7];
  [v8 updateSessionEndDateIfUnset:v6];

  [(NSMutableDictionary *)self->_sessions removeObjectForKey:v7];

  return v8;
}

- (NSDictionary)sessions
{
  v2 = [(NSMutableDictionary *)self->_sessions copy];

  return v2;
}

- (ATXUIFeedbackSessionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v10 = MEMORY[0x1E69C5D78];
  v11 = __atxlog_handle_blending_ecosystem();
  v12 = [v10 robustDecodeObjectOfClasses:v9 forKey:@"sessions" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v11];

  if (v12 && ([v4 error], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    self = [(ATXUIFeedbackSessionContext *)self initWithSessions:v12];
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUIFeedbackSessionContext *)self isEqualToATXUIFeedbackSessionContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUIFeedbackSessionContext:(id)a3
{
  v4 = self->_sessions;
  v5 = v4;
  if (v4 == *(a3 + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSMutableDictionary *)v4 isEqual:?];
  }

  return v6;
}

- (void)trackNewUIFeedbackSessionWithSessionIdentifier:(NSObject *)a3 startDate:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412802;
  v9 = v6;
  v10 = 2048;
  v11 = 10;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_1DEFC4000, a3, OS_LOG_TYPE_ERROR, "%@ - reached max count of %lu tracked sessions, pruning all before starting new session with identifier: %@", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

@end