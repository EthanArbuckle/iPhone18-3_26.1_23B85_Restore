@interface SVXServiceCommandHandlerSmsPlayAudio
@end

@implementation SVXServiceCommandHandlerSmsPlayAudio

void __90___SVXServiceCommandHandlerSmsPlayAudio_handleCommand_withContext_taskTracker_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(*(a1 + 32) + 8);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __90___SVXServiceCommandHandlerSmsPlayAudio_handleCommand_withContext_taskTracker_completion___block_invoke_2;
    v13[3] = &unk_279C66E50;
    v14 = v5;
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    [v7 getCurrentSessionUsingBlock:v13];
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277CCACA8]);
      v10 = [*(a1 + 40) aceId];
      v11 = [v9 initWithFormat:@"Failed to acquire audio for command %@.", v10];
      v12 = [SVXServiceCommandResult resultFailureWithErrorCode:0 reason:v11];
      (*(v8 + 16))(v8, v12);
    }
  }
}

void __90___SVXServiceCommandHandlerSmsPlayAudio_handleCommand_withContext_taskTracker_completion___block_invoke_2(id *a1, void *a2)
{
  v3 = MEMORY[0x277CEF188];
  v4 = a2;
  v5 = [v3 alloc];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90___SVXServiceCommandHandlerSmsPlayAudio_handleCommand_withContext_taskTracker_completion___block_invoke_3;
  v10[3] = &unk_279C67318;
  v11 = a1[4];
  v6 = [v5 initWithBuilder:v10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90___SVXServiceCommandHandlerSmsPlayAudio_handleCommand_withContext_taskTracker_completion___block_invoke_4;
  v7[3] = &unk_279C66E28;
  v8 = a1[5];
  v9 = a1[6];
  [v4 startAudioPlaybackRequest:v6 options:0 completion:v7];
}

void __90___SVXServiceCommandHandlerSmsPlayAudio_handleCommand_withContext_taskTracker_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v4 setItemData:v2];
  [v4 setNumberOfLoops:0];
  LODWORD(v3) = 1.0;
  [v4 setVolume:v3];
  [v4 setFadeInDuration:0.0];
  [v4 setFadeOutDuration:0.0];
}

void __90___SVXServiceCommandHandlerSmsPlayAudio_handleCommand_withContext_taskTracker_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = [*(a1 + 32) aceId];
    v5 = [v3 initWithFormat:@"Failed to playback audio for command %@.", v4];
    v6 = [SVXServiceCommandResult resultFailureWithErrorCode:0 reason:v5];
  }

  else
  {
    v6 = +[SVXServiceCommandResult resultSuccess];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

@end