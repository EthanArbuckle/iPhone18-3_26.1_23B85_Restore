@interface ATXProactiveSuggestionUIFeedbackQuery
- (ATXProactiveSuggestionUIFeedbackQuery)initWithClientModelIds:(id)a3 consumerSubTypeToConsider:(unsigned __int8)a4 startDateForResults:(id)a5 bookmarkURLPath:(id)a6 uiPublisher:(id)a7 blendingModelPublisher:(id)a8 contextPublisher:(id)a9 hyperParameters:(id)a10;
- (id)uiFeedbackPublisher;
- (id)uiFeedbackPublisherChain;
- (void)enumerateUIFeedbackResultsWithBlock:(id)a3 completionBlock:(id)a4;
@end

@implementation ATXProactiveSuggestionUIFeedbackQuery

- (ATXProactiveSuggestionUIFeedbackQuery)initWithClientModelIds:(id)a3 consumerSubTypeToConsider:(unsigned __int8)a4 startDateForResults:(id)a5 bookmarkURLPath:(id)a6 uiPublisher:(id)a7 blendingModelPublisher:(id)a8 contextPublisher:(id)a9 hyperParameters:(id)a10
{
  v28 = a3;
  v27 = a5;
  v15 = a6;
  v26 = a7;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v29.receiver = self;
  v29.super_class = ATXProactiveSuggestionUIFeedbackQuery;
  v19 = [(ATXProactiveSuggestionUIFeedbackQuery *)&v29 init];
  if (v19)
  {
    v20 = [v28 copy];
    clientModelIds = v19->_clientModelIds;
    v19->_clientModelIds = v20;

    v19->_consumerSubTypeToConsider = a4;
    objc_storeStrong(&v19->_startDateForResults, a5);
    v22 = [v15 copy];
    bookmarkURLPath = v19->_bookmarkURLPath;
    v19->_bookmarkURLPath = v22;

    objc_storeStrong(&v19->_uiPublisher, a7);
    objc_storeStrong(&v19->_blendingModelPublisher, a8);
    objc_storeStrong(&v19->_contextPublisher, a9);
    objc_storeStrong(&v19->_hyperParameters, a10);
  }

  return v19;
}

- (id)uiFeedbackPublisher
{
  [(NSDate *)self->_startDateForResults timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = objc_opt_new();
  v6 = [v5 publisherFromStartTime:v4];

  v7 = [[ATXProactiveSuggestionUIFeedbackPublisher alloc] initWithClientModelPublisher:v6 blendingModelPublisher:self->_blendingModelPublisher uiPublisher:self->_uiPublisher contextPublisher:self->_contextPublisher validUICacheConsumerSubType:self->_consumerSubTypeToConsider validClientModelIds:self->_clientModelIds hyperParameters:self->_hyperParameters];

  return v7;
}

- (id)uiFeedbackPublisherChain
{
  v2 = [(ATXProactiveSuggestionUIFeedbackQuery *)self uiFeedbackPublisher];
  v3 = [v2 uiFeedbackPublisher];

  return v3;
}

- (void)enumerateUIFeedbackResultsWithBlock:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ATXProactiveSuggestionUIFeedbackQuery *)self uiFeedbackPublisherChain];
  if (v8)
  {
    v9 = [MEMORY[0x1E698AFE0] bookmarkFromURLPath:self->_bookmarkURLPath maxFileSize:3000000 versionNumber:&unk_1F5A40E10];
    v10 = [v9 bookmark];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __93__ATXProactiveSuggestionUIFeedbackQuery_enumerateUIFeedbackResultsWithBlock_completionBlock___block_invoke;
    v18[3] = &unk_1E86A3CE8;
    v18[4] = self;
    v19 = v7;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __93__ATXProactiveSuggestionUIFeedbackQuery_enumerateUIFeedbackResultsWithBlock_completionBlock___block_invoke_15;
    v16[3] = &unk_1E86A3D10;
    v16[4] = self;
    v17 = v6;
    v11 = [v8 sinkWithBookmark:v10 completion:v18 receiveInput:v16];
  }

  else
  {
    v12 = __atxlog_handle_blending_ecosystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXProactiveSuggestionUIFeedbackQuery enumerateUIFeedbackResultsWithBlock:v12 completionBlock:?];
    }

    v13 = MEMORY[0x1E696ABC0];
    v14 = objc_opt_class();
    v9 = NSStringFromClass(v14);
    v15 = [v13 errorWithDomain:v9 code:1 userInfo:0];
    (*(v7 + 2))(v7, v15);
  }
}

void __93__ATXProactiveSuggestionUIFeedbackQuery_enumerateUIFeedbackResultsWithBlock_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 error];
  v8 = objc_autoreleasePoolPush();
  v9 = [v5 state];
  v10 = v9 == 0;
  if (!v9 && !v7)
  {
    if (*(*(a1 + 32) + 32))
    {
      v11 = [objc_alloc(MEMORY[0x1E698AFE0]) initWithURLPath:*(*(a1 + 32) + 32) versionNumber:&unk_1F5A40E10 bookmark:v6 metadata:0];
      v22 = 0;
      v10 = [v11 saveBookmarkWithError:&v22];
      v7 = v22;
      v12 = __atxlog_handle_blending_ecosystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138412802;
        v24 = v15;
        v25 = 1024;
        v26 = v10;
        v27 = 2112;
        v28 = v7;
        _os_log_impl(&dword_1DEFC4000, v12, OS_LOG_TYPE_DEFAULT, "%@ - saved new bookmark with success: %u, error: %@", buf, 0x1Cu);
      }
    }

    else
    {
      v7 = 0;
      v10 = 1;
    }
  }

  v16 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138412802;
    v24 = v19;
    v25 = 1024;
    v26 = v10;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_1DEFC4000, v16, OS_LOG_TYPE_DEFAULT, "%@ - invoking completion handler with success: %u, error: %@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v8);
  v20 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v20);

  v21 = *MEMORY[0x1E69E9840];
}

void __93__ATXProactiveSuggestionUIFeedbackQuery_enumerateUIFeedbackResultsWithBlock_completionBlock___block_invoke_15(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v10 session];
  v5 = [v4 sessionStartDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  [*(*(a1 + 32) + 24) timeIntervalSinceReferenceDate];
  v9 = v8;

  if (v7 >= v9)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v3);
}

- (void)enumerateUIFeedbackResultsWithBlock:(uint64_t)a1 completionBlock:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "%@ - could not create uiFeedbackPublisherChain, returning early", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end