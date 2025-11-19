@interface SVXSpeechSynthesisContext
- (SVXSpeechSynthesisContext)initWithOperationType:(int64_t)a3 request:(id)a4 languageCode:(id)a5 voiceName:(id)a6 gender:(int64_t)a7 audioSessionID:(unsigned int)a8 preparation:(id)a9 audioChunkHandler:(id)a10 finalization:(id)a11 taskTracker:(id)a12 analyticsContext:(id)a13;
- (id)description;
- (void)dealloc;
- (void)finalizeWithResultType:(int64_t)a3 utteranceInfo:(id)a4 error:(id)a5;
- (void)handleAudioChunkData:(id)a3;
- (void)prepare;
@end

@implementation SVXSpeechSynthesisContext

- (void)finalizeWithResultType:(int64_t)a3 utteranceInfo:(id)a4 error:(id)a5
{
  v13 = a4;
  v8 = a5;
  preparation = self->_preparation;
  if (preparation)
  {
    self->_preparation = 0;
  }

  [(SVXAudioSessionAssertion *)self->_audioSessionAssertion relinquish];
  finalization = self->_finalization;
  if (finalization)
  {
    v11 = [[SVXSpeechSynthesisResult alloc] initWithType:a3 utteranceInfo:v13 error:v8];
    finalization[2](finalization, v11);

    v12 = self->_finalization;
    self->_finalization = 0;
  }
}

- (void)handleAudioChunkData:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  audioChunkCount = self->_audioChunkCount;
  audioChunkHandler = self->_audioChunkHandler;
  self->_audioChunkCount = audioChunkCount + 1;
  if (audioChunkHandler)
  {
    v7 = [[SVXSpeechSynthesizerAudioData alloc] initWithAudioChunkData:v4 audioChunkIndex:audioChunkCount];
    (*(self->_audioChunkHandler + 2))();
  }

  else
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[SVXSpeechSynthesisContext handleAudioChunkData:]";
      _os_log_error_impl(&dword_2695B9000, v8, OS_LOG_TYPE_ERROR, "%s AudioChunkData received but no handler is set to take it", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)prepare
{
  preparation = self->_preparation;
  if (preparation)
  {
    preparation[2](preparation, a2);
    v4 = self->_preparation;
    self->_preparation = 0;
  }
}

- (SVXSpeechSynthesisContext)initWithOperationType:(int64_t)a3 request:(id)a4 languageCode:(id)a5 voiceName:(id)a6 gender:(int64_t)a7 audioSessionID:(unsigned int)a8 preparation:(id)a9 audioChunkHandler:(id)a10 finalization:(id)a11 taskTracker:(id)a12 analyticsContext:(id)a13
{
  v43 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v44.receiver = self;
  v44.super_class = SVXSpeechSynthesisContext;
  v24 = [(SVXSpeechSynthesisContext *)&v44 init];
  v25 = v24;
  if (v24)
  {
    v24->_operationType = a3;
    v26 = [v43 copy];
    request = v25->_request;
    v25->_request = v26;

    v28 = [v17 copy];
    languageCode = v25->_languageCode;
    v25->_languageCode = v28;

    v30 = [v18 copy];
    voiceName = v25->_voiceName;
    v25->_voiceName = v30;

    v25->_gender = a7;
    v25->_audioSessionID = a8;
    v32 = [v19 copy];
    preparation = v25->_preparation;
    v25->_preparation = v32;

    v25->_audioChunkCount = 0;
    v34 = MEMORY[0x26D642680](v20);
    audioChunkHandler = v25->_audioChunkHandler;
    v25->_audioChunkHandler = v34;

    v36 = [v21 copy];
    finalization = v25->_finalization;
    v25->_finalization = v36;

    objc_storeStrong(&v25->_taskTracker, a12);
    v38 = [v23 copy];
    analyticsContext = v25->_analyticsContext;
    v25->_analyticsContext = v38;
  }

  return v25;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = SVXSpeechSynthesisContext;
  v4 = [(SVXSpeechSynthesisContext *)&v15 description];
  operationType = self->_operationType;
  if (operationType > 2)
  {
    v6 = @"(unknown)";
  }

  else
  {
    v6 = off_279C66D60[operationType];
  }

  v7 = v6;
  request = self->_request;
  languageCode = self->_languageCode;
  gender = self->_gender;
  if (gender > 3)
  {
    v11 = @"(unknown)";
  }

  else
  {
    v11 = off_279C66CC8[gender];
  }

  v12 = v11;
  v13 = [v3 stringWithFormat:@"%@ {operationType = %@, request = %@, languageCode = %@, gender = %@, name = %@, audioSessionID = %u, taskTracker = %@}", v4, v7, request, languageCode, v12, self->_voiceName, self->_audioSessionID, self->_taskTracker];

  return v13;
}

- (void)dealloc
{
  [(SVXSpeechSynthesisContext *)self finalizeWithResultType:2 utteranceInfo:0 error:0];
  v3.receiver = self;
  v3.super_class = SVXSpeechSynthesisContext;
  [(SVXSpeechSynthesisContext *)&v3 dealloc];
}

@end