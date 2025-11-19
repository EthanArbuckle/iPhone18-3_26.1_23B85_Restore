@interface SVXServiceCommandHandlerPreSynthesizeTTS
- (SVXServiceCommandHandlerPreSynthesizeTTS)initWithSpeechSynthesizer:(id)a3 speechSynthesisUtils:(id)a4;
- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6;
@end

@implementation SVXServiceCommandHandlerPreSynthesizeTTS

- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerPreSynthesizeTTS.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAPreSynthesizeTTS class]]"}];
  }

  v11 = v9;
  v12 = [v11 dialogStrings];
  v13 = [v11 aceAudioData];
  v14 = [v11 streamIds];
  v15 = [v11 speakableContextInfo];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __93__SVXServiceCommandHandlerPreSynthesizeTTS_handleCommand_withContext_taskTracker_completion___block_invoke;
  v21[3] = &unk_279C67BE8;
  v16 = v14;
  v22 = v16;
  v17 = v13;
  v23 = v17;
  v24 = self;
  v18 = v15;
  v25 = v18;
  [v12 enumerateObjectsUsingBlock:v21];
  if (v10)
  {
    v19 = +[SVXServiceCommandResult resultSuccess];
    v10[2](v10, v19);
  }
}

void __93__SVXServiceCommandHandlerPreSynthesizeTTS_handleCommand_withContext_taskTracker_completion___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  if ([v5 count] <= a3)
  {
    v13 = 0;
  }

  else
  {
    v13 = [*(a1 + 32) objectAtIndex:a3];
  }

  if ([*(a1 + 40) count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 40) objectAtIndex:a3];
  }

  v8 = [*(*(a1 + 48) + 16) createAudioFromUIAudioData:v7];
  v9 = [SVXSpeechSynthesisRequest alloc];
  v10 = *(a1 + 56);
  if ([v13 length])
  {
    v11 = v13;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(SVXSpeechSynthesisRequest *)v9 initWithPriority:2 options:0 speakableText:v6 speakableContext:v10 localizationKey:0 presynthesizedAudio:v8 streamID:v11];

  [*(*(a1 + 48) + 8) synthesizeRequest:v12 audioChunkHandler:0 taskTracker:0 analyticsContext:0 completion:&__block_literal_global_9229];
}

void __93__SVXServiceCommandHandlerPreSynthesizeTTS_handleCommand_withContext_taskTracker_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 type] == 4)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v5 = v3;
      v6 = [v2 error];
      v7 = 136315394;
      v8 = "[SVXServiceCommandHandlerPreSynthesizeTTS handleCommand:withContext:taskTracker:completion:]_block_invoke_2";
      v9 = 2112;
      v10 = v6;
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s PreSynthesis failed: %@", &v7, 0x16u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (SVXServiceCommandHandlerPreSynthesizeTTS)initWithSpeechSynthesizer:(id)a3 speechSynthesisUtils:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = SVXServiceCommandHandlerPreSynthesizeTTS;
  v9 = [(SVXServiceCommandHandlerPreSynthesizeTTS *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_speechSynthesizer, a3);
    objc_storeStrong(&v10->_speechSynthesisUtils, a4);
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = [objc_opt_class() supportedCommandClass];
    v13 = NSStringFromClass(v12);
    v14 = [v11 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v13];
    identifier = v10->_identifier;
    v10->_identifier = v14;
  }

  return v10;
}

@end