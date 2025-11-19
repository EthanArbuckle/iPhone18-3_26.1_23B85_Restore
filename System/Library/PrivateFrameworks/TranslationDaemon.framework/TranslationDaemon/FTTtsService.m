@interface FTTtsService
- (id)performTextToSpeechStreamingWithDelegate:(id)a3 requestBuilder:(id)a4 completion:(id)a5;
- (void)performTextToSpeech:(id)a3 requestBuilder:(id)a4 completion:(id)a5;
- (void)performTextToSpeechSpeechFeature:(id)a3 requestBuilder:(id)a4 completion:(id)a5;
@end

@implementation FTTtsService

- (void)performTextToSpeech:(id)a3 requestBuilder:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 flatbuffData];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__FTTtsService_performTextToSpeech_requestBuilder_completion___block_invoke;
  v12[3] = &unk_2789B9158;
  v11 = v9;
  v13 = v11;
  [(OspreyChannel *)self unaryRequestWithMethodName:@"/siri.speech.qss_fb.Tts/TextToSpeech" requestData:v10 requestBuilder:v8 responseHandler:v12];
}

void __62__FTTtsService_performTextToSpeech_requestBuilder_completion___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)performTextToSpeechStreamingWithDelegate:(id)a3 requestBuilder:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__FTTtsService_performTextToSpeechStreamingWithDelegate_requestBuilder_completion___block_invoke;
  v21[3] = &unk_2789B7AA0;
  v10 = v8;
  v22 = v10;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __83__FTTtsService_performTextToSpeechStreamingWithDelegate_requestBuilder_completion___block_invoke_2;
  v19 = &unk_2789B9130;
  v11 = v9;
  v20 = v11;
  v12 = [(OspreyChannel *)self bidirectionalStreamingRequestWithMethodName:@"/siri.speech.qss_fb.Tts/TextToSpeechStreaming" requestBuilder:a4 streamingResponseHandler:v21 completion:&v16];
  v13 = [FTTextToSpeechStreamingStreamingContext alloc];
  v14 = [(FTTextToSpeechStreamingStreamingContext *)v13 initWithGRPCStreamingCallContext:v12, v16, v17, v18, v19];

  return v14;
}

void __83__FTTtsService_performTextToSpeechStreamingWithDelegate_requestBuilder_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[FTTextToSpeechStreamingStreamingResponse alloc] initAndVerifyWithFlatbuffData:v6];
  v4 = *(a1 + 32);
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) streamDidReceiveTextToSpeechStreamingStreamingResponse:v3];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Flatbuffers" code:100 userInfo:MEMORY[0x277CBEC10]];
    [*(a1 + 32) streamFailVerifyTextToSpeechStreamingStreamingResponse:v5];
  }
}

- (void)performTextToSpeechSpeechFeature:(id)a3 requestBuilder:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 flatbuffData];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__FTTtsService_performTextToSpeechSpeechFeature_requestBuilder_completion___block_invoke;
  v12[3] = &unk_2789B9158;
  v11 = v9;
  v13 = v11;
  [(OspreyChannel *)self unaryRequestWithMethodName:@"/siri.speech.qss_fb.Tts/TextToSpeechSpeechFeature" requestData:v10 requestBuilder:v8 responseHandler:v12];
}

void __75__FTTtsService_performTextToSpeechSpeechFeature_requestBuilder_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [[FTTextToSpeechSpeechFeatureResponse alloc] initAndVerifyWithFlatbuffData:v8];
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