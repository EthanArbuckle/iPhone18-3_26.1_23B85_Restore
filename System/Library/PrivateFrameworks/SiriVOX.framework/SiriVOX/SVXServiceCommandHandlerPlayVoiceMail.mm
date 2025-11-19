@interface SVXServiceCommandHandlerPlayVoiceMail
@end

@implementation SVXServiceCommandHandlerPlayVoiceMail

void __91___SVXServiceCommandHandlerPlayVoiceMail_handleCommand_withContext_taskTracker_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(*(a1 + 32) + 32) audioPlaybackDuration:v5];
    if (v6 >= 0.00100000005)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0.00100000005;
    }

    v8 = *(*(a1 + 32) + 8);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91___SVXServiceCommandHandlerPlayVoiceMail_handleCommand_withContext_taskTracker_completion___block_invoke_2;
    v20[3] = &unk_279C67368;
    v21 = v5;
    v9 = *(a1 + 40);
    v25 = v7;
    *&v10 = v9;
    *(&v10 + 1) = *(a1 + 32);
    v19 = v10;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v22 = v19;
    v23 = v13;
    v24 = *(a1 + 64);
    [v8 getCurrentSessionUsingBlock:v20];
  }

  else
  {
    v14 = *(a1 + 64);
    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      v16 = [*(a1 + 40) aceId];
      v17 = [v15 initWithFormat:@"Failed to acquire audio for command %@.", v16];
      v18 = [SVXServiceCommandResult resultFailureWithErrorCode:0 reason:v17];
      (*(v14 + 16))(v14, v18);
    }
  }
}

void __91___SVXServiceCommandHandlerPlayVoiceMail_handleCommand_withContext_taskTracker_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEF188];
  v4 = a2;
  v5 = [v3 alloc];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __91___SVXServiceCommandHandlerPlayVoiceMail_handleCommand_withContext_taskTracker_completion___block_invoke_3;
  v18[3] = &unk_279C67318;
  v19 = *(a1 + 32);
  v6 = [v5 initWithBuilder:v18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91___SVXServiceCommandHandlerPlayVoiceMail_handleCommand_withContext_taskTracker_completion___block_invoke_4;
  v13[3] = &unk_279C67340;
  v7 = *(a1 + 40);
  v17 = *(a1 + 80);
  *&v8 = v7;
  *(&v8 + 1) = *(a1 + 48);
  v12 = v8;
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v14 = v12;
  v15 = v11;
  v16 = *(a1 + 72);
  [v4 startAudioPlaybackRequest:v6 options:0 completion:v13];
}

void __91___SVXServiceCommandHandlerPlayVoiceMail_handleCommand_withContext_taskTracker_completion___block_invoke_3(uint64_t a1, void *a2)
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

void __91___SVXServiceCommandHandlerPlayVoiceMail_handleCommand_withContext_taskTracker_completion___block_invoke_4(uint64_t a1, void *a2, double a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3 == 0.0 && v5 != 0)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = [*(a1 + 32) aceId];
    v11 = [v9 initWithFormat:@"Failed to playback audio for command %@.", v10];
    v12 = [SVXServiceCommandResult resultFailureWithErrorCode:0 reason:v11];

LABEL_8:
    goto LABEL_12;
  }

  if (a3 / *(a1 + 72) > 0.75)
  {
    v12 = +[SVXServiceCommandResult resultSuccess];
    v8 = *(*(a1 + 40) + 40);
    v10 = [*(a1 + 48) voiceMailId];
    [v8 markVoiceMailAsRead:v10 forRemoteDevice:*(a1 + 56)];
    goto LABEL_8;
  }

  v13 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[_SVXServiceCommandHandlerPlayVoiceMail handleCommand:withContext:taskTracker:completion:]_block_invoke_4";
    _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_DEFAULT, "%s Voicemail did not play long enough to be marked as read", buf, 0xCu);
  }

  v12 = 0;
LABEL_12:
  (*(*(a1 + 64) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

@end