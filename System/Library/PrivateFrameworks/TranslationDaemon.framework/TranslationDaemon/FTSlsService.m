@interface FTSlsService
- (id)performLanguageDetectionWithDelegate:(id)a3 requestBuilder:(id)a4 completion:(id)a5;
@end

@implementation FTSlsService

- (id)performLanguageDetectionWithDelegate:(id)a3 requestBuilder:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__FTSlsService_performLanguageDetectionWithDelegate_requestBuilder_completion___block_invoke;
  v21[3] = &unk_2789B7AA0;
  v10 = v8;
  v22 = v10;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __79__FTSlsService_performLanguageDetectionWithDelegate_requestBuilder_completion___block_invoke_2;
  v19 = &unk_2789B9130;
  v11 = v9;
  v20 = v11;
  v12 = [(OspreyChannel *)self bidirectionalStreamingRequestWithMethodName:@"/siri.speech.qss_fb.Sls/LanguageDetection" requestBuilder:a4 streamingResponseHandler:v21 completion:&v16];
  v13 = [FTLanguageDetectionStreamingContext alloc];
  v14 = [(FTLanguageDetectionStreamingContext *)v13 initWithGRPCStreamingCallContext:v12, v16, v17, v18, v19];

  return v14;
}

void __79__FTSlsService_performLanguageDetectionWithDelegate_requestBuilder_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[FTLanguageDetectionStreamingResponse alloc] initAndVerifyWithFlatbuffData:v6];
  v4 = *(a1 + 32);
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) streamDidReceiveLanguageDetectionStreamingResponse:v3];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Flatbuffers" code:100 userInfo:MEMORY[0x277CBEC10]];
    [*(a1 + 32) streamFailVerifyLanguageDetectionStreamingResponse:v5];
  }
}

@end