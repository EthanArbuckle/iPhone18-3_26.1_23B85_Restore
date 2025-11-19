@interface SRSVoiceTrainingManager
- (SRSTrainingManagerDelegate)delegate;
- (SRSVoiceTrainingManager)initWithLanguageCode:(id)a3;
- (SRSVoiceTrainingManager)initWithLanguageCode:(id)a3 withSharedUserId:(id)a4;
- (int)convertToAudioTone:(int64_t)a3;
- (int64_t)convertStatus:(int)a3;
- (void)VTUITrainingManagerFeedLevel:(float)a3;
- (void)getAudioSessionID:(id)a3;
- (void)playSoundsEffect:(int64_t)a3;
- (void)setRecordingStartHostTime:(unint64_t)a3;
@end

@implementation SRSVoiceTrainingManager

- (SRSVoiceTrainingManager)initWithLanguageCode:(id)a3 withSharedUserId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SRSVoiceTrainingManager;
  v8 = [(SRSVoiceTrainingManager *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x277D653E0] trainingManagerWithLocaleID:v6 withAppDomain:*MEMORY[0x277D65458] withSiriSharedUserId:v7];
    trainingManager = v8->_trainingManager;
    v8->_trainingManager = v9;

    [(SSRVTUITrainingManager *)v8->_trainingManager setDelegate:v8];
  }

  return v8;
}

- (SRSVoiceTrainingManager)initWithLanguageCode:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SRSVoiceTrainingManager;
  v5 = [(SRSVoiceTrainingManager *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277D653E0] trainingManagerWithLocaleID:v4 withAppDomain:*MEMORY[0x277D65458]];
    trainingManager = v5->_trainingManager;
    v5->_trainingManager = v6;

    [(SSRVTUITrainingManager *)v5->_trainingManager setDelegate:v5];
  }

  return v5;
}

uint64_t __66__SRSVoiceTrainingManager_trainUtterance_shouldUseASR_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) convertStatus:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __78__SRSVoiceTrainingManager_trainUtterance_shouldUseASR_loggingUUID_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 convertStatus:{objc_msgSend(v6, "sessionStatus")}];
  v8 = *(a1 + 40);
  v9 = [v6 sessionId];

  v10 = *(v8 + 16);

  return v10(v8, v9, v7, a3);
}

- (void)playSoundsEffect:(int64_t)a3
{
  trainingManager = self->_trainingManager;
  v4 = [(SRSVoiceTrainingManager *)self convertToAudioTone:a3];

  [(SSRVTUITrainingManager *)trainingManager playSoundEffectWithAudioTone:v4];
}

- (void)getAudioSessionID:(id)a3
{
  v4 = a3;
  v5 = SRSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_269002000, v5, OS_LOG_TYPE_INFO, "Fetching audio session.", buf, 2u);
  }

  trainingManager = self->_trainingManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SRSVoiceTrainingManager_getAudioSessionID___block_invoke;
  v8[3] = &unk_279C4A100;
  v9 = v4;
  v7 = v4;
  [(SSRVTUITrainingManager *)trainingManager getAudioSessionID:v8];
}

uint64_t __45__SRSVoiceTrainingManager_getAudioSessionID___block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = SRSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_269002000, v4, OS_LOG_TYPE_INFO, "Fetched audio session [%i]", v7, 8u);
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setRecordingStartHostTime:(unint64_t)a3
{
  trainingManager = self->_trainingManager;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_trainingManager;

    [(SSRVTUITrainingManager *)v6 setRecordingStartHostTime:a3];
  }

  else
  {
    v7 = SRSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SRSVoiceTrainingManager setRecordingStartHostTime:v7];
    }
  }
}

- (void)VTUITrainingManagerFeedLevel:(float)a3
{
  v5 = [(SRSVoiceTrainingManager *)self delegate];
  *&v4 = a3;
  [v5 audioLevelDidChange:v4];
}

- (int64_t)convertStatus:(int)a3
{
  v3 = (a3 - 1);
  if (v3 < 7)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (int)convertToAudioTone:(int64_t)a3
{
  if ((a3 + 1) > 6)
  {
    return 6;
  }

  else
  {
    return dword_269059CF8[a3 + 1];
  }
}

- (SRSTrainingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end