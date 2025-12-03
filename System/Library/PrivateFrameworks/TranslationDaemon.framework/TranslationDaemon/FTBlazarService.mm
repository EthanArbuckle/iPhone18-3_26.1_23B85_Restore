@interface FTBlazarService
- (id)performBatchTranslationWithDelegate:(id)delegate requestBuilder:(id)builder completion:(id)completion;
- (id)performMultiUserWithDelegate:(id)delegate requestBuilder:(id)builder completion:(id)completion;
- (id)performMultilingualWithDelegate:(id)delegate requestBuilder:(id)builder completion:(id)completion;
- (id)performSpeechTranslationWithDelegate:(id)delegate requestBuilder:(id)builder completion:(id)completion;
- (id)performTextToSpeechRouterStreamingWithDelegate:(id)delegate requestBuilder:(id)builder completion:(id)completion;
- (void)performServiceDiscovery:(id)discovery requestBuilder:(id)builder completion:(id)completion;
- (void)performTextToSpeechRouter:(id)router requestBuilder:(id)builder completion:(id)completion;
@end

@implementation FTBlazarService

- (id)performMultiUserWithDelegate:(id)delegate requestBuilder:(id)builder completion:(id)completion
{
  delegateCopy = delegate;
  completionCopy = completion;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__FTBlazarService_performMultiUserWithDelegate_requestBuilder_completion___block_invoke;
  v21[3] = &unk_2789B7AA0;
  v10 = delegateCopy;
  v22 = v10;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __74__FTBlazarService_performMultiUserWithDelegate_requestBuilder_completion___block_invoke_2;
  v19 = &unk_2789B9130;
  v11 = completionCopy;
  v20 = v11;
  v12 = [(OspreyChannel *)self bidirectionalStreamingRequestWithMethodName:@"/siri.speech.qss_fb.Blazar/MultiUser" requestBuilder:builder streamingResponseHandler:v21 completion:&v16];
  v13 = [FTMultiUserStreamingContext alloc];
  v14 = [(FTMultiUserStreamingContext *)v13 initWithGRPCStreamingCallContext:v12, v16, v17, v18, v19];

  return v14;
}

void __74__FTBlazarService_performMultiUserWithDelegate_requestBuilder_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[FTMultiUserStreamingResponse alloc] initAndVerifyWithFlatbuffData:v6];
  v4 = *(a1 + 32);
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) streamDidReceiveMultiUserStreamingResponse:v3];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Flatbuffers" code:100 userInfo:MEMORY[0x277CBEC10]];
    [*(a1 + 32) streamFailVerifyMultiUserStreamingResponse:v5];
  }
}

- (id)performMultilingualWithDelegate:(id)delegate requestBuilder:(id)builder completion:(id)completion
{
  delegateCopy = delegate;
  completionCopy = completion;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__FTBlazarService_performMultilingualWithDelegate_requestBuilder_completion___block_invoke;
  v21[3] = &unk_2789B7AA0;
  v10 = delegateCopy;
  v22 = v10;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __77__FTBlazarService_performMultilingualWithDelegate_requestBuilder_completion___block_invoke_2;
  v19 = &unk_2789B9130;
  v11 = completionCopy;
  v20 = v11;
  v12 = [(OspreyChannel *)self bidirectionalStreamingRequestWithMethodName:@"/siri.speech.qss_fb.Blazar/Multilingual" requestBuilder:builder streamingResponseHandler:v21 completion:&v16];
  v13 = [FTMultilingualStreamingContext alloc];
  v14 = [(FTMultilingualStreamingContext *)v13 initWithGRPCStreamingCallContext:v12, v16, v17, v18, v19];

  return v14;
}

void __77__FTBlazarService_performMultilingualWithDelegate_requestBuilder_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[FTMultilingualStreamingResponse alloc] initAndVerifyWithFlatbuffData:v6];
  v4 = *(a1 + 32);
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) streamDidReceiveMultilingualStreamingResponse:v3];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Flatbuffers" code:100 userInfo:MEMORY[0x277CBEC10]];
    [*(a1 + 32) streamFailVerifyMultilingualStreamingResponse:v5];
  }
}

- (id)performSpeechTranslationWithDelegate:(id)delegate requestBuilder:(id)builder completion:(id)completion
{
  delegateCopy = delegate;
  completionCopy = completion;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __82__FTBlazarService_performSpeechTranslationWithDelegate_requestBuilder_completion___block_invoke;
  v21[3] = &unk_2789B7AA0;
  v10 = delegateCopy;
  v22 = v10;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __82__FTBlazarService_performSpeechTranslationWithDelegate_requestBuilder_completion___block_invoke_2;
  v19 = &unk_2789B9130;
  v11 = completionCopy;
  v20 = v11;
  v12 = [(OspreyChannel *)self bidirectionalStreamingRequestWithMethodName:@"/siri.speech.qss_fb.Blazar/SpeechTranslation" requestBuilder:builder streamingResponseHandler:v21 completion:&v16];
  v13 = [FTSpeechTranslationStreamingContext alloc];
  v14 = [(FTSpeechTranslationStreamingContext *)v13 initWithGRPCStreamingCallContext:v12, v16, v17, v18, v19];

  return v14;
}

void __82__FTBlazarService_performSpeechTranslationWithDelegate_requestBuilder_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[FTSpeechTranslationStreamingResponse alloc] initAndVerifyWithFlatbuffData:v6];
  v4 = *(a1 + 32);
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) streamDidReceiveSpeechTranslationStreamingResponse:v3];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Flatbuffers" code:100 userInfo:MEMORY[0x277CBEC10]];
    [*(a1 + 32) streamFailVerifySpeechTranslationStreamingResponse:v5];
  }
}

- (id)performBatchTranslationWithDelegate:(id)delegate requestBuilder:(id)builder completion:(id)completion
{
  delegateCopy = delegate;
  completionCopy = completion;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__FTBlazarService_performBatchTranslationWithDelegate_requestBuilder_completion___block_invoke;
  v21[3] = &unk_2789B7AA0;
  v10 = delegateCopy;
  v22 = v10;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __81__FTBlazarService_performBatchTranslationWithDelegate_requestBuilder_completion___block_invoke_2;
  v19 = &unk_2789B9130;
  v11 = completionCopy;
  v20 = v11;
  v12 = [(OspreyChannel *)self bidirectionalStreamingRequestWithMethodName:@"/siri.speech.qss_fb.Blazar/BatchTranslation" requestBuilder:builder streamingResponseHandler:v21 completion:&v16];
  v13 = [FTBatchTranslationStreamingContext alloc];
  v14 = [(FTBatchTranslationStreamingContext *)v13 initWithGRPCStreamingCallContext:v12, v16, v17, v18, v19];

  return v14;
}

void __81__FTBlazarService_performBatchTranslationWithDelegate_requestBuilder_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[FTBatchTranslationStreamingResponse alloc] initAndVerifyWithFlatbuffData:v6];
  v4 = *(a1 + 32);
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) streamDidReceiveBatchTranslationStreamingResponse:v3];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Flatbuffers" code:100 userInfo:MEMORY[0x277CBEC10]];
    [*(a1 + 32) streamFailVerifyBatchTranslationStreamingResponse:v5];
  }
}

- (void)performTextToSpeechRouter:(id)router requestBuilder:(id)builder completion:(id)completion
{
  builderCopy = builder;
  completionCopy = completion;
  flatbuffData = [router flatbuffData];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__FTBlazarService_performTextToSpeechRouter_requestBuilder_completion___block_invoke;
  v12[3] = &unk_2789B9158;
  v11 = completionCopy;
  v13 = v11;
  [(OspreyChannel *)self unaryRequestWithMethodName:@"/siri.speech.qss_fb.Blazar/TextToSpeechRouter" requestData:flatbuffData requestBuilder:builderCopy responseHandler:v12];
}

void __71__FTBlazarService_performTextToSpeechRouter_requestBuilder_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [[FTTextToSpeechResponse alloc] initAndVerifyWithFlatbuffData:v8];
    if (v6)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Flatbuffers" code:100 userInfo:MEMORY[0x277CBEC10]];
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (id)performTextToSpeechRouterStreamingWithDelegate:(id)delegate requestBuilder:(id)builder completion:(id)completion
{
  delegateCopy = delegate;
  completionCopy = completion;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __92__FTBlazarService_performTextToSpeechRouterStreamingWithDelegate_requestBuilder_completion___block_invoke;
  v21[3] = &unk_2789B7AA0;
  v10 = delegateCopy;
  v22 = v10;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __92__FTBlazarService_performTextToSpeechRouterStreamingWithDelegate_requestBuilder_completion___block_invoke_2;
  v19 = &unk_2789B9130;
  v11 = completionCopy;
  v20 = v11;
  v12 = [(OspreyChannel *)self bidirectionalStreamingRequestWithMethodName:@"/siri.speech.qss_fb.Blazar/TextToSpeechRouterStreaming" requestBuilder:builder streamingResponseHandler:v21 completion:&v16];
  v13 = [FTTextToSpeechRouterStreamingStreamingContext alloc];
  v14 = [(FTTextToSpeechRouterStreamingStreamingContext *)v13 initWithGRPCStreamingCallContext:v12, v16, v17, v18, v19];

  return v14;
}

void __92__FTBlazarService_performTextToSpeechRouterStreamingWithDelegate_requestBuilder_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[FTTextToSpeechRouterStreamingStreamingResponse alloc] initAndVerifyWithFlatbuffData:v6];
  v4 = *(a1 + 32);
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) streamDidReceiveTextToSpeechRouterStreamingStreamingResponse:v3];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Flatbuffers" code:100 userInfo:MEMORY[0x277CBEC10]];
    [*(a1 + 32) streamFailVerifyTextToSpeechRouterStreamingStreamingResponse:v5];
  }
}

- (void)performServiceDiscovery:(id)discovery requestBuilder:(id)builder completion:(id)completion
{
  builderCopy = builder;
  completionCopy = completion;
  flatbuffData = [discovery flatbuffData];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__FTBlazarService_performServiceDiscovery_requestBuilder_completion___block_invoke;
  v12[3] = &unk_2789B9158;
  v11 = completionCopy;
  v13 = v11;
  [(OspreyChannel *)self unaryRequestWithMethodName:@"/siri.speech.qss_fb.Blazar/ServiceDiscovery" requestData:flatbuffData requestBuilder:builderCopy responseHandler:v12];
}

void __69__FTBlazarService_performServiceDiscovery_requestBuilder_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [[FTServiceDiscoveryResponse alloc] initAndVerifyWithFlatbuffData:v8];
    if (v6)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Flatbuffers" code:100 userInfo:MEMORY[0x277CBEC10]];
      (*(*(a1 + 32) + 16))();
    }
  }
}

@end