@interface SVXAudioSessionAssertion
- (SVXAudioSessionAssertion)initWithReason:(id)a3 audioSessionID:(unsigned int)a4 taskTracker:(id)a5 relinquishHandler:(id)a6;
- (id)description;
- (void)dealloc;
- (void)relinquish;
@end

@implementation SVXAudioSessionAssertion

- (void)relinquish
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[SVXAudioSessionAssertion relinquish]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s %@", &v6, 0x16u);
  }

  taskTracker = self->_taskTracker;
  self->_taskTracker = 0;

  [(AFSafetyBlock *)self->_relinquishHandler invokeWithSignal:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (SVXAudioSessionAssertion)initWithReason:(id)a3 audioSessionID:(unsigned int)a4 taskTracker:(id)a5 relinquishHandler:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v24.receiver = self;
  v24.super_class = SVXAudioSessionAssertion;
  v13 = [(SVXAudioSessionAssertion *)&v24 init];
  if (v13)
  {
    v14 = [v10 copy];
    reason = v13->_reason;
    v13->_reason = v14;

    v13->_audioSessionID = a4;
    objc_storeStrong(&v13->_taskTracker, a5);
    v16 = objc_alloc(MEMORY[0x277CEF380]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __88__SVXAudioSessionAssertion_initWithReason_audioSessionID_taskTracker_relinquishHandler___block_invoke;
    v22[3] = &unk_279C68BA0;
    v23 = v12;
    v17 = [v16 initWithBlock:v22];
    relinquishHandler = v13->_relinquishHandler;
    v13->_relinquishHandler = v17;

    v19 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "[SVXAudioSessionAssertion initWithReason:audioSessionID:taskTracker:relinquishHandler:]";
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_2695B9000, v19, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __88__SVXAudioSessionAssertion_initWithReason_audioSessionID_taskTracker_relinquishHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_taskTracker)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "[SVXAudioSessionAssertion dealloc]";
      v8 = 2112;
      v9 = self;
      _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@ is released without explicitly calling -relinquish.", buf, 0x16u);
    }
  }

  [(AFSafetyBlock *)self->_relinquishHandler invokeWithSignal:-1];
  v5.receiver = self;
  v5.super_class = SVXAudioSessionAssertion;
  [(SVXAudioSessionAssertion *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v7.receiver = self;
  v7.super_class = SVXAudioSessionAssertion;
  v4 = [(SVXAudioSessionAssertion *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {reason = %@, audioSessionID = %lu, taskTracker = %@}", v4, self->_reason, self->_audioSessionID, self->_taskTracker];

  return v5;
}

@end