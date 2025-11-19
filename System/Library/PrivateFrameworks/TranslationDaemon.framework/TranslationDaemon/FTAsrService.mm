@interface FTAsrService
- (id)performRecognitionWithDelegate:(id)a3 requestBuilder:(id)a4 completion:(id)a5;
- (void)performCorrectionsValidator:(id)a3 requestBuilder:(id)a4 completion:(id)a5;
- (void)performErrorBlamer:(id)a3 requestBuilder:(id)a4 completion:(id)a5;
- (void)performGraphemeToPhoneme:(id)a3 requestBuilder:(id)a4 completion:(id)a5;
- (void)performItn:(id)a3 requestBuilder:(id)a4 completion:(id)a5;
- (void)performKeywordFinder:(id)a3 requestBuilder:(id)a4 completion:(id)a5;
- (void)performPostItnHammer:(id)a3 requestBuilder:(id)a4 completion:(id)a5;
- (void)performTextNormalization:(id)a3 requestBuilder:(id)a4 completion:(id)a5;
@end

@implementation FTAsrService

- (id)performRecognitionWithDelegate:(id)a3 requestBuilder:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __73__FTAsrService_performRecognitionWithDelegate_requestBuilder_completion___block_invoke;
  v21[3] = &unk_2789B7AA0;
  v10 = v8;
  v22 = v10;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __73__FTAsrService_performRecognitionWithDelegate_requestBuilder_completion___block_invoke_2;
  v19 = &unk_2789B9130;
  v11 = v9;
  v20 = v11;
  v12 = [(OspreyChannel *)self bidirectionalStreamingRequestWithMethodName:@"/siri.speech.qss_fb.Asr/Recognition" requestBuilder:a4 streamingResponseHandler:v21 completion:&v16];
  v13 = [FTRecognitionStreamingContext alloc];
  v14 = [(FTRecognitionStreamingContext *)v13 initWithGRPCStreamingCallContext:v12, v16, v17, v18, v19];

  return v14;
}

void __73__FTAsrService_performRecognitionWithDelegate_requestBuilder_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[FTRecognitionStreamingResponse alloc] initAndVerifyWithFlatbuffData:v6];
  v4 = *(a1 + 32);
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) streamDidReceiveRecognitionStreamingResponse:v3];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Flatbuffers" code:100 userInfo:MEMORY[0x277CBEC10]];
    [*(a1 + 32) streamFailVerifyRecognitionStreamingResponse:v5];
  }
}

- (void)performErrorBlamer:(id)a3 requestBuilder:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 flatbuffData];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__FTAsrService_performErrorBlamer_requestBuilder_completion___block_invoke;
  v12[3] = &unk_2789B9158;
  v11 = v9;
  v13 = v11;
  [(OspreyChannel *)self unaryRequestWithMethodName:@"/siri.speech.qss_fb.Asr/ErrorBlamer" requestData:v10 requestBuilder:v8 responseHandler:v12];
}

void __61__FTAsrService_performErrorBlamer_requestBuilder_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [[FTErrorBlamerResponse alloc] initAndVerifyWithFlatbuffData:v8];
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

- (void)performItn:(id)a3 requestBuilder:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 flatbuffData];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__FTAsrService_performItn_requestBuilder_completion___block_invoke;
  v12[3] = &unk_2789B9158;
  v11 = v9;
  v13 = v11;
  [(OspreyChannel *)self unaryRequestWithMethodName:@"/siri.speech.qss_fb.Asr/Itn" requestData:v10 requestBuilder:v8 responseHandler:v12];
}

void __53__FTAsrService_performItn_requestBuilder_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [[FTItnResponse alloc] initAndVerifyWithFlatbuffData:v8];
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

- (void)performTextNormalization:(id)a3 requestBuilder:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 flatbuffData];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__FTAsrService_performTextNormalization_requestBuilder_completion___block_invoke;
  v12[3] = &unk_2789B9158;
  v11 = v9;
  v13 = v11;
  [(OspreyChannel *)self unaryRequestWithMethodName:@"/siri.speech.qss_fb.Asr/TextNormalization" requestData:v10 requestBuilder:v8 responseHandler:v12];
}

void __67__FTAsrService_performTextNormalization_requestBuilder_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [[FTTextNormalizationResponse alloc] initAndVerifyWithFlatbuffData:v8];
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

- (void)performPostItnHammer:(id)a3 requestBuilder:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 flatbuffData];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__FTAsrService_performPostItnHammer_requestBuilder_completion___block_invoke;
  v12[3] = &unk_2789B9158;
  v11 = v9;
  v13 = v11;
  [(OspreyChannel *)self unaryRequestWithMethodName:@"/siri.speech.qss_fb.Asr/PostItnHammer" requestData:v10 requestBuilder:v8 responseHandler:v12];
}

void __63__FTAsrService_performPostItnHammer_requestBuilder_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [[FTPostItnHammerResponse alloc] initAndVerifyWithFlatbuffData:v8];
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

- (void)performKeywordFinder:(id)a3 requestBuilder:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 flatbuffData];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__FTAsrService_performKeywordFinder_requestBuilder_completion___block_invoke;
  v12[3] = &unk_2789B9158;
  v11 = v9;
  v13 = v11;
  [(OspreyChannel *)self unaryRequestWithMethodName:@"/siri.speech.qss_fb.Asr/KeywordFinder" requestData:v10 requestBuilder:v8 responseHandler:v12];
}

void __63__FTAsrService_performKeywordFinder_requestBuilder_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [[FTKeywordFinderResponse alloc] initAndVerifyWithFlatbuffData:v8];
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

- (void)performCorrectionsValidator:(id)a3 requestBuilder:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 flatbuffData];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__FTAsrService_performCorrectionsValidator_requestBuilder_completion___block_invoke;
  v12[3] = &unk_2789B9158;
  v11 = v9;
  v13 = v11;
  [(OspreyChannel *)self unaryRequestWithMethodName:@"/siri.speech.qss_fb.Asr/CorrectionsValidator" requestData:v10 requestBuilder:v8 responseHandler:v12];
}

void __70__FTAsrService_performCorrectionsValidator_requestBuilder_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [[FTCorrectionsValidatorResponse alloc] initAndVerifyWithFlatbuffData:v8];
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

- (void)performGraphemeToPhoneme:(id)a3 requestBuilder:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 flatbuffData];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__FTAsrService_performGraphemeToPhoneme_requestBuilder_completion___block_invoke;
  v12[3] = &unk_2789B9158;
  v11 = v9;
  v13 = v11;
  [(OspreyChannel *)self unaryRequestWithMethodName:@"/siri.speech.qss_fb.Asr/GraphemeToPhoneme" requestData:v10 requestBuilder:v8 responseHandler:v12];
}

void __67__FTAsrService_performGraphemeToPhoneme_requestBuilder_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [[FTGraphemeToPhonemeResponse alloc] initAndVerifyWithFlatbuffData:v8];
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