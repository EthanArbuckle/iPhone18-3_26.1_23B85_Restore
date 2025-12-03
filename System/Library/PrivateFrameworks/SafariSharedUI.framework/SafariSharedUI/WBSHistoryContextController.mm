@interface WBSHistoryContextController
- (WBSHistoryContextController)initWithHistory:(id)history contextClient:(id)client qualityOfService:(unsigned int)service;
- (void)_persistTopicsFromContextResult:(id)result forPageURL:(id)l;
- (void)cachedResponseForURL:(id)l completionHandler:(id)handler;
- (void)contextForPageURL:(id)l content:(id)content contentType:(int64_t)type metadata:(id)metadata isPrivate:(BOOL)private isReaderAvailable:(BOOL)available withCompletionHandler:(id)handler;
- (void)invalidateCachedResults;
@end

@implementation WBSHistoryContextController

- (WBSHistoryContextController)initWithHistory:(id)history contextClient:(id)client qualityOfService:(unsigned int)service
{
  historyCopy = history;
  clientCopy = client;
  v23.receiver = self;
  v23.super_class = WBSHistoryContextController;
  v11 = [(WBSHistoryContextController *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_history, history);
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 stringWithFormat:@"com.apple.SafariShared.%@.%p.internalQueue", v15, v12];

    uTF8String = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_qos_class(0, service, 0);
    v19 = dispatch_queue_create(uTF8String, v18);
    internalQueue = v12->_internalQueue;
    v12->_internalQueue = v19;

    objc_storeStrong(&v12->_client, client);
    v21 = v12;
  }

  return v12;
}

- (void)cachedResponseForURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__WBSHistoryContextController_cachedResponseForURL_completionHandler___block_invoke;
  block[3] = &unk_1E8283058;
  block[4] = self;
  v12 = lCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = lCopy;
  dispatch_async(internalQueue, block);
}

uint64_t __70__WBSHistoryContextController_cachedResponseForURL_completionHandler___block_invoke(void *a1)
{
  [*(a1[4] + 16) isEqual:a1[5]];
  v2 = *(a1[6] + 16);

  return v2();
}

- (void)invalidateCachedResults
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__WBSHistoryContextController_invalidateCachedResults__block_invoke;
  block[3] = &unk_1E8283080;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __54__WBSHistoryContextController_invalidateCachedResults__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

- (void)contextForPageURL:(id)l content:(id)content contentType:(int64_t)type metadata:(id)metadata isPrivate:(BOOL)private isReaderAvailable:(BOOL)available withCompletionHandler:(id)handler
{
  privateCopy = private;
  lCopy = l;
  contentCopy = content;
  metadataCopy = metadata;
  handlerCopy = handler;
  v18 = handlerCopy;
  if (privateCopy)
  {
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    if (![contentCopy length])
    {
      v19 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [WBSHistoryContextController contextForPageURL:content:contentType:metadata:isPrivate:isReaderAvailable:withCompletionHandler:];
      }

      v20 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [WBSHistoryContextController contextForPageURL:content:contentType:metadata:isPrivate:isReaderAvailable:withCompletionHandler:];
      }
    }

    internalQueue = self->_internalQueue;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke;
    v22[3] = &unk_1E82830F8;
    v23 = lCopy;
    selfCopy = self;
    v27 = v18;
    v25 = metadataCopy;
    v26 = contentCopy;
    typeCopy = type;
    dispatch_async(internalQueue, v22);
  }
}

void __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqual:*(*(a1 + 40) + 16)] && (objc_msgSend(*(*(a1 + 40) + 8), "results"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, v3))
  {
    v4 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_cold_1();
    }

    v5 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_cold_2();
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      (*(v6 + 16))(v6, *(*(a1 + 40) + 8));
    }
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_cold_3();
    }

    v8 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_cold_2();
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_5;
    aBlock[3] = &unk_1E82830D0;
    v20 = *(a1 + 32);
    v9 = v20.i64[0];
    v26 = vextq_s8(v20, v20, 8uLL);
    v27 = *(a1 + 64);
    v10 = _Block_copy(aBlock);
    v11 = [*(*(a1 + 40) + 32) newRequest];
    v12 = [*(a1 + 48) safari_stringForKey:*MEMORY[0x1E69C9408]];
    [v11 setContentAuthor:v12];

    v13 = [*(a1 + 48) safari_stringForKey:*MEMORY[0x1E69C9410]];
    [v11 setContentDescription:v13];

    v14 = [*(a1 + 48) safari_stringForKey:*MEMORY[0x1E69C9418]];
    [v11 setContentKeywords:v14];

    [v11 setIncludeHigherLevelTopics:1];
    v15 = [*(a1 + 56) safari_bestLanguageTag];
    [v11 setLanguageTag:v15];

    [v11 setText:*(a1 + 56)];
    [v11 setTextIsRaw:*(a1 + 72) == 2];
    v16 = [*(a1 + 48) safari_stringForKey:*MEMORY[0x1E69C9420]];
    [v11 setTitle:v16];

    v17 = [*(a1 + 32) absoluteString];
    [v11 setUrl:v17];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_7;
    v22[3] = &unk_1E82830D0;
    v21 = *(a1 + 32);
    v18 = v21.i64[0];
    v23 = vextq_s8(v21, v21, 8uLL);
    v24 = v10;
    v19 = v10;
    [v11 executeWithReply:v22];
  }
}

void __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E82830A8;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v4, v8);
}

void __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_2_cold_1(v3, v2);
    }

    v4 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_2_cold_2();
    }

    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  objc_storeStrong((*(a1 + 48) + 8), v5);
  objc_storeStrong((*(a1 + 48) + 16), *(a1 + 40));
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_7(void *a1, void *a2)
{
  v3 = a1[4];
  v6 = a2;
  v4 = [v6 results];
  v5 = [v4 firstObject];
  [v3 _persistTopicsFromContextResult:v5 forPageURL:a1[5]];

  (*(a1[6] + 16))();
}

- (void)_persistTopicsFromContextResult:(id)result forPageURL:(id)l
{
  resultCopy = result;
  lCopy = l;
  topicId = [resultCopy topicId];
  if (topicId)
  {
    title = [resultCopy title];
    safari_stringByRemovingParenthesizedDomain = [title safari_stringByRemovingParenthesizedDomain];

    history = self->_history;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke;
    v12[3] = &unk_1E8283120;
    v13 = topicId;
    selfCopy = self;
    [(WBSHistory *)history addTagWithIdentifier:v13 title:safari_stringByRemovingParenthesizedDomain toItemAtURL:lCopy level:200 completionHandler:v12];
  }
}

void __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke_cold_2();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke_8;
    block[3] = &unk_1E8283080;
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke_cold_1(a1, v7, v5);
  }
}

void __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke_8(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"WBSHistoryContextControllerDidAddTagNotification" object:*(a1 + 32)];
}

void __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_2_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Received ContextKit response with error: %{public}@", &v5, 0xCu);
}

void __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 138478083;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1C6968000, v5, OS_LOG_TYPE_ERROR, "Could not add tag with topic ID: %{private}@ to history item with error: %{public}@", &v7, 0x16u);
}

void __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end