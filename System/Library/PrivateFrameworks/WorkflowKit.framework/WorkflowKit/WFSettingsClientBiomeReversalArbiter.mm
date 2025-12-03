@interface WFSettingsClientBiomeReversalArbiter
+ (id)reversePublisherOptions;
- (BOOL)lastEventEquals:(id)equals;
- (WFSettingsClientBiomeReversalArbiter)initWithBiomeStream:(id)stream;
- (WFSettingsClientBiomeReversalArbiter)initWithPublisher:(id)publisher reversePublisher:(id)reversePublisher;
- (void)_pollBiomeForBookmarkForFirstEventAfterBookmark:(id)bookmark trial:(unint64_t)trial completionHandler:(id)handler;
- (void)getBookmarkForCurrentStateWithCompletionHandler:(id)handler;
- (void)getBookmarkForFirstEventAfterBookmark:(id)bookmark completionHandler:(id)handler;
- (void)getReversalStateWithBookmark:(id)bookmark completionHandler:(id)handler;
@end

@implementation WFSettingsClientBiomeReversalArbiter

- (BOOL)lastEventEquals:(id)equals
{
  equalsCopy = equals;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__72201;
  v14 = __Block_byref_object_dispose__72202;
  v15 = 0;
  publisher = [(WFSettingsClientBiomeReversalArbiter *)self publisher];
  last = [publisher last];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__WFSettingsClientBiomeReversalArbiter_lastEventEquals___block_invoke_2;
  v9[3] = &unk_1E837F610;
  v9[4] = &v10;
  v7 = [last sinkWithCompletion:&__block_literal_global_194_72203 receiveInput:v9];

  LOBYTE(publisher) = [v11[5] isEqual:equalsCopy];
  _Block_object_dispose(&v10, 8);

  return publisher;
}

void __56__WFSettingsClientBiomeReversalArbiter_lastEventEquals___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)getReversalStateWithBookmark:(id)bookmark completionHandler:(id)handler
{
  v51 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  handlerCopy = handler;
  if (!bookmarkCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSettingsClientBiomeReversalArbiter.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"bookmark"}];
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__72201;
  v43 = __Block_byref_object_dispose__72202;
  v44 = 0;
  v9 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = bookmarkCopy;
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEBUG, "%s Got bookmark %@", buf, 0x16u);
  }

  publisher = [(WFSettingsClientBiomeReversalArbiter *)self publisher];
  last = [publisher last];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __87__WFSettingsClientBiomeReversalArbiter_getReversalStateWithBookmark_completionHandler___block_invoke_2;
  v38[3] = &unk_1E837F610;
  v38[4] = &v39;
  v12 = [last sinkWithCompletion:&__block_literal_global_183_72212 receiveInput:v38];

  v13 = v40[5];
  v14 = getWFBiomeReversalArbiterLogObject();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]";
      *&buf[12] = 2112;
      *&buf[14] = bookmarkCopy;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEBUG, "%s Walking forward from %@", buf, 0x16u);
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    publisher2 = [(WFSettingsClientBiomeReversalArbiter *)self publisher];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __87__WFSettingsClientBiomeReversalArbiter_getReversalStateWithBookmark_completionHandler___block_invoke_2_187;
    v33[3] = &unk_1E837F6C0;
    v33[4] = &v34;
    v17 = [publisher2 drivableSinkWithBookmark:bookmarkCopy completion:&__block_literal_global_186_72216 shouldContinue:v33];

    v18 = getWFBiomeReversalArbiterLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]";
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_DEBUG, "%s Done walking forward", buf, 0xCu);
    }

    if (*(v35 + 24) == 1)
    {
      v19 = getWFBiomeReversalArbiterLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_INFO, "%s State has been invalidated -- something wrote after our bookmark. Cancelling.", buf, 0xCu);
      }

      userCancelledError = [MEMORY[0x1E696ABC0] userCancelledError];
      handlerCopy[2](handlerCopy, 0, userCancelledError);
    }

    else
    {
      v31[0] = 0;
      v31[1] = v31;
      v31[2] = 0x2020000000;
      v32 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v48 = __Block_byref_object_copy__72201;
      v49 = __Block_byref_object_dispose__72202;
      v50 = 0;
      v22 = getWFBiomeReversalArbiterLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *v45 = 136315138;
        v46 = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_DEBUG, "%s Walking back from last event", v45, 0xCu);
      }

      reversePublisher = [(WFSettingsClientBiomeReversalArbiter *)self reversePublisher];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __87__WFSettingsClientBiomeReversalArbiter_getReversalStateWithBookmark_completionHandler___block_invoke_2_192;
      v30[3] = &unk_1E837F6E8;
      v30[4] = v31;
      v30[5] = buf;
      v30[6] = &v39;
      v24 = [reversePublisher drivableSinkWithBookmark:0 completion:&__block_literal_global_191_72220 shouldContinue:v30];

      v25 = *(*&buf[8] + 40);
      if (v25)
      {
        eventBody = [v25 eventBody];
        (handlerCopy)[2](handlerCopy, eventBody, 0);
      }

      else
      {
        v27 = getWFBiomeReversalArbiterLogObject();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *v45 = 136315138;
          v46 = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]";
          _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_ERROR, "%s The only record in the Biome stream is the one we bookmarked — there's nothing to restore to before that", v45, 0xCu);
        }

        eventBody = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.shortcuts.biomereversalarbiter" code:100 userInfo:0];
        handlerCopy[2](handlerCopy, 0, eventBody);
      }

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(v31, 8);
    }

    _Block_object_dispose(&v34, 8);
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]";
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s The Biome stream is empty", buf, 0xCu);
    }

    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.shortcuts.biomereversalarbiter" code:100 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v21);
  }

  _Block_object_dispose(&v39, 8);

  v28 = *MEMORY[0x1E69E9840];
}

void __87__WFSettingsClientBiomeReversalArbiter_getReversalStateWithBookmark_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [v3 timestamp];
    v9 = 136315394;
    v10 = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]_block_invoke_2";
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEBUG, "%s Last mode is %f", &v9, 0x16u);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __87__WFSettingsClientBiomeReversalArbiter_getReversalStateWithBookmark_completionHandler___block_invoke_2_187(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [v3 timestamp];
    v8 = 136315394;
    v9 = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]_block_invoke_2";
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEBUG, "%s Saw %f", &v8, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __87__WFSettingsClientBiomeReversalArbiter_getReversalStateWithBookmark_completionHandler___block_invoke_2_192(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [v4 timestamp];
    v14 = 136315394;
    v15 = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]_block_invoke_2";
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s Iterating over %f", &v14, 0x16u);
  }

  v7 = *(*(a1[4] + 8) + 24);
  if (v7 == 1)
  {
    v8 = getWFBiomeReversalArbiterLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [*(*(a1[5] + 8) + 40) timestamp];
      v14 = 136315394;
      v15 = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]_block_invoke";
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEBUG, "%s Setting mode to restore to %f, already seen last mode", &v14, 0x16u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a2);
  }

  else if ([v4 isEqual:*(*(a1[6] + 8) + 40)])
  {
    v10 = getWFBiomeReversalArbiterLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [*(*(a1[6] + 8) + 40) timestamp];
      v14 = 136315394;
      v15 = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]_block_invoke";
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEBUG, "%s Setting seen last mode. Last mode we know about is %f", &v14, 0x16u);
    }

    *(*(a1[4] + 8) + 24) = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7 ^ 1u;
}

- (void)getBookmarkForCurrentStateWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__72201;
  v16 = __Block_byref_object_dispose__72202;
  v17 = 0;
  publisher = [(WFSettingsClientBiomeReversalArbiter *)self publisher];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__WFSettingsClientBiomeReversalArbiter_getBookmarkForCurrentStateWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E837F638;
  v11[4] = &v12;
  v6 = [publisher sinkWithBookmark:0 completion:v11 receiveInput:&__block_literal_global_170];

  v7 = v13[5];
  if (v7)
  {
    handlerCopy[2](handlerCopy, v7, 0);
  }

  else
  {
    v8 = getWFBiomeReversalArbiterLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[WFSettingsClientBiomeReversalArbiter getBookmarkForCurrentStateWithCompletionHandler:]";
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s The Biome stream is empty", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.shortcuts.biomereversalarbiter" code:100 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v9);
  }

  _Block_object_dispose(&v12, 8);

  v10 = *MEMORY[0x1E69E9840];
}

void __88__WFSettingsClientBiomeReversalArbiter_getBookmarkForCurrentStateWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [v2 timestamp];
    v6 = 136315394;
    v7 = "[WFSettingsClientBiomeReversalArbiter getBookmarkForCurrentStateWithCompletionHandler:]_block_invoke_2";
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEBUG, "%s Saw %f", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_pollBiomeForBookmarkForFirstEventAfterBookmark:(id)bookmark trial:(unint64_t)trial completionHandler:(id)handler
{
  bookmarkCopy = bookmark;
  handlerCopy = handler;
  if (trial < 0xA)
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v19 = 0;
    publisher = [(WFSettingsClientBiomeReversalArbiter *)self publisher];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __112__WFSettingsClientBiomeReversalArbiter__pollBiomeForBookmarkForFirstEventAfterBookmark_trial_completionHandler___block_invoke;
    v14[3] = &unk_1E837F5E8;
    v16 = v18;
    trialCopy = trial;
    v14[4] = self;
    v15 = handlerCopy;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __112__WFSettingsClientBiomeReversalArbiter__pollBiomeForBookmarkForFirstEventAfterBookmark_trial_completionHandler___block_invoke_2;
    v13[3] = &unk_1E837F610;
    v13[4] = v18;
    v12 = [publisher sinkWithBookmark:bookmarkCopy completion:v14 receiveInput:v13];

    _Block_object_dispose(v18, 8);
  }

  else
  {
    userCancelledError = [MEMORY[0x1E696ABC0] userCancelledError];
    (*(handlerCopy + 2))(handlerCopy, 0, userCancelledError);
  }
}

void __112__WFSettingsClientBiomeReversalArbiter__pollBiomeForBookmarkForFirstEventAfterBookmark_trial_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 56);
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 136315650;
    v18 = "[WFSettingsClientBiomeReversalArbiter _pollBiomeForBookmarkForFirstEventAfterBookmark:trial:completionHandler:]_block_invoke";
    v19 = 2048;
    v20 = v6;
    v21 = 1024;
    v22 = v7;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s Subscription ending @ trial=%lu, sawSomething=%d", buf, 0x1Cu);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = dispatch_time(0, 300000011);
    v9 = [*(a1 + 32) queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __112__WFSettingsClientBiomeReversalArbiter__pollBiomeForBookmarkForFirstEventAfterBookmark_trial_completionHandler___block_invoke_166;
    v13[3] = &unk_1E837F5C0;
    v13[4] = *(a1 + 32);
    v10 = v4;
    v11 = *(a1 + 56);
    v14 = v10;
    v16 = v11;
    v15 = *(a1 + 40);
    dispatch_after(v8, v9, v13);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __112__WFSettingsClientBiomeReversalArbiter__pollBiomeForBookmarkForFirstEventAfterBookmark_trial_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [v3 timestamp];
    v7 = 136315394;
    v8 = "[WFSettingsClientBiomeReversalArbiter _pollBiomeForBookmarkForFirstEventAfterBookmark:trial:completionHandler:]_block_invoke_2";
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEBUG, "%s Publisher inside subscription saw %f", &v7, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v6 = *MEMORY[0x1E69E9840];
}

- (void)getBookmarkForFirstEventAfterBookmark:(id)bookmark completionHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  handlerCopy = handler;
  v8 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "[WFSettingsClientBiomeReversalArbiter getBookmarkForFirstEventAfterBookmark:completionHandler:]";
    v12 = 2112;
    v13 = bookmarkCopy;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEBUG, "%s Trying to see what's next after %@", &v10, 0x16u);
  }

  [(WFSettingsClientBiomeReversalArbiter *)self _pollBiomeForBookmarkForFirstEventAfterBookmark:bookmarkCopy trial:0 completionHandler:handlerCopy];
  v9 = *MEMORY[0x1E69E9840];
}

- (WFSettingsClientBiomeReversalArbiter)initWithPublisher:(id)publisher reversePublisher:(id)reversePublisher
{
  publisherCopy = publisher;
  reversePublisherCopy = reversePublisher;
  v17.receiver = self;
  v17.super_class = WFSettingsClientBiomeReversalArbiter;
  v9 = [(WFSettingsClientBiomeReversalArbiter *)&v17 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INITIATED, 0);

    v12 = dispatch_get_global_queue(0, 0);
    v13 = dispatch_queue_create_with_target_V2("com.apple.shortcuts.biomereversalarbiter.instance", v11, v12);
    queue = v9->_queue;
    v9->_queue = v13;

    objc_storeStrong(&v9->_publisher, publisher);
    objc_storeStrong(&v9->_reversePublisher, reversePublisher);
    v15 = v9;
  }

  return v9;
}

- (WFSettingsClientBiomeReversalArbiter)initWithBiomeStream:(id)stream
{
  streamCopy = stream;
  publisher = [streamCopy publisher];
  reversePublisherOptions = [objc_opt_class() reversePublisherOptions];
  v7 = [streamCopy publisherWithOptions:reversePublisherOptions];

  v8 = [(WFSettingsClientBiomeReversalArbiter *)self initWithPublisher:publisher reversePublisher:v7];
  return v8;
}

+ (id)reversePublisherOptions
{
  v2 = [objc_alloc(MEMORY[0x1E698F2D0]) initWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];

  return v2;
}

@end