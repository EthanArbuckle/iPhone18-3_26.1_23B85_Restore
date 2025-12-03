@interface ATXProactiveSuggestionGroupedUIFeedbackQuery
- (id)uiFeedbackPublisherChainForShortcutsEditor;
- (id)uiPublisherForConsumerSubType:(unsigned __int8)type startTime:(double)time;
- (void)enumerateGroupedUIFeedbackResultsWithBlock:(id)block completionBlock:(id)completionBlock;
- (void)enumerateGroupedUIFeedbackResultsWithBlock:(id)block completionBlock:(id)completionBlock uiFeedbackPublisherChain:(id)chain;
@end

@implementation ATXProactiveSuggestionGroupedUIFeedbackQuery

- (id)uiPublisherForConsumerSubType:(unsigned __int8)type startTime:(double)time
{
  if (type == 43)
  {
    v5 = objc_opt_new();
    v6 = [v5 genericEventPublisherFromStartTime:43 consumerSubType:time];
  }

  else
  {
    v8 = __atxlog_handle_blending_ecosystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ATXProactiveSuggestionGroupedUIFeedbackQuery uiPublisherForConsumerSubType:type startTime:v8];
    }

    v6 = 0;
  }

  return v6;
}

- (id)uiFeedbackPublisherChainForShortcutsEditor
{
  v3 = [ATXShortcutsEditorGroupedUIFeedbackPublisher alloc];
  uiFeedbackPublisherChain = [(ATXProactiveSuggestionUIFeedbackQuery *)self uiFeedbackPublisherChain];
  v5 = [(ATXShortcutsEditorGroupedUIFeedbackPublisher *)v3 initWithUIFeedbackPublisher:uiFeedbackPublisherChain];
  shortcutsEditorUIFeedbackPublisher = [(ATXShortcutsEditorGroupedUIFeedbackPublisher *)v5 shortcutsEditorUIFeedbackPublisher];

  return shortcutsEditorUIFeedbackPublisher;
}

- (void)enumerateGroupedUIFeedbackResultsWithBlock:(id)block completionBlock:(id)completionBlock
{
  v30[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if ([(ATXProactiveSuggestionUIFeedbackQuery *)self consumerSubTypeToConsider]!= 43)
  {
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXProactiveSuggestionGroupedUIFeedbackQuery enumerateGroupedUIFeedbackResultsWithBlock:v10 completionBlock:?];
    }

    v29 = *MEMORY[0x1E696A578];
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [MEMORY[0x1E698B028] stringForConsumerSubtype:{-[ATXProactiveSuggestionUIFeedbackQuery consumerSubTypeToConsider](self, "consumerSubTypeToConsider")}];
    v13 = [v11 initWithFormat:@"Unknown consumerSubType specified: %@", v12];
    v30[0] = v13;
    v14 = MEMORY[0x1E695DF20];
    v15 = v30;
    v16 = &v29;
    goto LABEL_10;
  }

  uiFeedbackPublisherChainForShortcutsEditor = [(ATXProactiveSuggestionGroupedUIFeedbackQuery *)self uiFeedbackPublisherChainForShortcutsEditor];
  if (!uiFeedbackPublisherChainForShortcutsEditor)
  {
    v17 = __atxlog_handle_blending_ecosystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXProactiveSuggestionUIFeedbackQuery enumerateUIFeedbackResultsWithBlock:v17 completionBlock:?];
    }

    v27 = *MEMORY[0x1E696A578];
    v18 = objc_alloc(MEMORY[0x1E696AEC0]);
    v19 = objc_opt_class();
    v12 = NSStringFromClass(v19);
    v13 = [v18 initWithFormat:@"%@ - could not create uiFeedbackPublisherChain, returning early", v12, v27];
    v28 = v13;
    v14 = MEMORY[0x1E695DF20];
    v15 = &v28;
    v16 = &v27;
LABEL_10:
    v9 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];

    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v21 initWithFormat:@"%@", v23];
    v25 = [v20 initWithDomain:v24 code:-1 userInfo:v9];

    completionBlockCopy[2](completionBlockCopy, v25);
    goto LABEL_11;
  }

  v9 = uiFeedbackPublisherChainForShortcutsEditor;
  [(ATXProactiveSuggestionGroupedUIFeedbackQuery *)self enumerateGroupedUIFeedbackResultsWithBlock:blockCopy completionBlock:completionBlockCopy uiFeedbackPublisherChain:uiFeedbackPublisherChainForShortcutsEditor];
LABEL_11:

  v26 = *MEMORY[0x1E69E9840];
}

- (void)enumerateGroupedUIFeedbackResultsWithBlock:(id)block completionBlock:(id)completionBlock uiFeedbackPublisherChain:(id)chain
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  chainCopy = chain;
  v11 = MEMORY[0x1E698AFE0];
  bookmarkURLPath = [(ATXProactiveSuggestionUIFeedbackQuery *)self bookmarkURLPath];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:4];
  v14 = [v11 bookmarkFromURLPath:bookmarkURLPath maxFileSize:3000000 versionNumber:v13];

  bookmark = [v14 bookmark];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __132__ATXProactiveSuggestionGroupedUIFeedbackQuery_enumerateGroupedUIFeedbackResultsWithBlock_completionBlock_uiFeedbackPublisherChain___block_invoke;
  v21[3] = &unk_1E86A3CE8;
  v21[4] = self;
  v22 = completionBlockCopy;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __132__ATXProactiveSuggestionGroupedUIFeedbackQuery_enumerateGroupedUIFeedbackResultsWithBlock_completionBlock_uiFeedbackPublisherChain___block_invoke_28;
  v19[3] = &unk_1E86A44D8;
  v19[4] = self;
  v20 = blockCopy;
  v16 = blockCopy;
  v17 = completionBlockCopy;
  v18 = [chainCopy sinkWithBookmark:bookmark completion:v21 receiveInput:v19];
}

void __132__ATXProactiveSuggestionGroupedUIFeedbackQuery_enumerateGroupedUIFeedbackResultsWithBlock_completionBlock_uiFeedbackPublisherChain___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = [v6 error];
  v8 = [v6 state];

  v9 = v8 == 0;
  if (!v8 && !v7)
  {
    v7 = [*(a1 + 32) bookmarkURLPath];

    if (v7)
    {
      v10 = objc_alloc(MEMORY[0x1E698AFE0]);
      v11 = [*(a1 + 32) bookmarkURLPath];
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:4];
      v13 = [v10 initWithURLPath:v11 versionNumber:v12 bookmark:v5 metadata:0];

      v23 = 0;
      v9 = [v13 saveBookmarkWithError:&v23];
      v7 = v23;
      v14 = __atxlog_handle_blending_ecosystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138412802;
        v25 = v17;
        v26 = 1024;
        v27 = v9;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&dword_1DEFC4000, v14, OS_LOG_TYPE_DEFAULT, "%@ - saved new bookmark with success: %u, error: %@", buf, 0x1Cu);
      }
    }

    else
    {
      v9 = 1;
    }
  }

  v18 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    *buf = 138412802;
    v25 = v21;
    v26 = 1024;
    v27 = v9;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_1DEFC4000, v18, OS_LOG_TYPE_DEFAULT, "%@ - invoking completion handler with success: %u, error: %@", buf, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
  v22 = *MEMORY[0x1E69E9840];
}

void __132__ATXProactiveSuggestionGroupedUIFeedbackQuery_enumerateGroupedUIFeedbackResultsWithBlock_completionBlock_uiFeedbackPublisherChain___block_invoke_28(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v10 startDateOfFirstSession];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = [*(a1 + 32) startDateForResults];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  if (v6 >= v9)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v3);
}

- (void)initWithClientModelIds:(NSObject *)a3 consumerSubTypeToConsider:startDateForResults:bookmarkURLPath:hyperParameters:.cold.1(uint64_t a1, unsigned __int8 a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [MEMORY[0x1E698B028] stringForConsumerSubtype:a2];
  v9 = 138412546;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  _os_log_fault_impl(&dword_1DEFC4000, a3, OS_LOG_TYPE_FAULT, "%@ - could not find iOS ui publisher for consumerSubType: %@", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)uiPublisherForConsumerSubType:(unsigned __int8)a1 startTime:(NSObject *)a2 .cold.1(unsigned __int8 a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698B028] stringForConsumerSubtype:a1];
  v5 = 138412290;
  v6 = v3;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "Tried to access BiomeUIStream for grouped UI feedback results for an incompatible consumerSubType: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end