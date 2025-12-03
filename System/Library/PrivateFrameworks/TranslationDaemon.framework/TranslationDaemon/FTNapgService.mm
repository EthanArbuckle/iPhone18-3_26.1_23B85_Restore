@interface FTNapgService
- (void)performCreateLanguageProfile:(id)profile requestBuilder:(id)builder completion:(id)completion;
@end

@implementation FTNapgService

- (void)performCreateLanguageProfile:(id)profile requestBuilder:(id)builder completion:(id)completion
{
  builderCopy = builder;
  completionCopy = completion;
  flatbuffData = [profile flatbuffData];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__FTNapgService_performCreateLanguageProfile_requestBuilder_completion___block_invoke;
  v12[3] = &unk_2789B9158;
  v11 = completionCopy;
  v13 = v11;
  [(OspreyChannel *)self unaryRequestWithMethodName:@"/siri.speech.qss_fb.Napg/CreateLanguageProfile" requestData:flatbuffData requestBuilder:builderCopy responseHandler:v12];
}

void __72__FTNapgService_performCreateLanguageProfile_requestBuilder_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [[FTCreateLanguageProfileResponse alloc] initAndVerifyWithFlatbuffData:v8];
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