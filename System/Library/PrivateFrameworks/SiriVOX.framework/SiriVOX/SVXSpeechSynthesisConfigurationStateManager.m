@interface SVXSpeechSynthesisConfigurationStateManager
- (BOOL)updateConfiguration:(id)a3;
@end

@implementation SVXSpeechSynthesisConfigurationStateManager

- (BOOL)updateConfiguration:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SVXSpeechSynthesisConfiguration *)self->_currentConfiguration locale];
  v6 = [v4 locale];
  v7 = v6;
  if (v6 && ([v6 isEqual:v5] & 1) == 0)
  {
    v24 = *MEMORY[0x277CEF098];
    v8 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v30 = "[SVXSpeechSynthesisConfigurationStateManager updateConfiguration:]";
      v31 = 2112;
      v32 = v5;
      v33 = 2112;
      v34 = v7;
      _os_log_impl(&dword_2695B9000, v24, OS_LOG_TYPE_INFO, "%s locale changed from %@ to %@.", buf, 0x20u);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SVXSpeechSynthesisConfiguration *)self->_currentConfiguration outputVoiceInfo];
  v10 = [v4 outputVoiceInfo];
  v11 = v10;
  if (v10 && ([v10 isEqual:v9] & 1) == 0)
  {
    v25 = *MEMORY[0x277CEF098];
    v12 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v30 = "[SVXSpeechSynthesisConfigurationStateManager updateConfiguration:]";
      v31 = 2112;
      v32 = v9;
      v33 = 2112;
      v34 = v11;
      _os_log_impl(&dword_2695B9000, v25, OS_LOG_TYPE_INFO, "%s outputVoiceInfo changed from %@ to %@.", buf, 0x20u);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [(SVXSpeechSynthesisConfiguration *)self->_currentConfiguration audioSessionID];
  v14 = [v4 audioSessionID];
  if (!v14 || (v15 = v14, v14 == v13))
  {
    v15 = v13;
    if ((v8 | v12) != 1)
    {
      v23 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v28 = v5;
    v16 = v8;
    v17 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v30 = "[SVXSpeechSynthesisConfigurationStateManager updateConfiguration:]";
      v31 = 2048;
      v32 = v13;
      v33 = 2048;
      v34 = v15;
      _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_INFO, "%s audioSessionID changed from %lu to %lu.", buf, 0x20u);
    }

    v8 = v16;
    v5 = v28;
  }

  if (v8)
  {
    v18 = v7;
  }

  else
  {
    v18 = v5;
  }

  v19 = [SVXSpeechSynthesisConfiguration alloc];
  if (v12)
  {
    v20 = v11;
  }

  else
  {
    v20 = v9;
  }

  v21 = [(SVXSpeechSynthesisConfiguration *)v19 initWithLocale:v18 outputVoiceInfo:v20 audioSessionID:v15];
  currentConfiguration = self->_currentConfiguration;
  self->_currentConfiguration = v21;

  v23 = 1;
LABEL_25:

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

@end