@interface FTNlService
- (void)performShortcutFuzzyMatch:(id)a3 requestBuilder:(id)a4 completion:(id)a5;
@end

@implementation FTNlService

- (void)performShortcutFuzzyMatch:(id)a3 requestBuilder:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 flatbuffData];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__FTNlService_performShortcutFuzzyMatch_requestBuilder_completion___block_invoke;
  v12[3] = &unk_2789B9158;
  v11 = v9;
  v13 = v11;
  [(OspreyChannel *)self unaryRequestWithMethodName:@"/siri.speech.qss_fb.Nl/ShortcutFuzzyMatch" requestData:v10 requestBuilder:v8 responseHandler:v12];
}

void __67__FTNlService_performShortcutFuzzyMatch_requestBuilder_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [[FTShortcutFuzzyMatchResponse alloc] initAndVerifyWithFlatbuffData:v8];
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