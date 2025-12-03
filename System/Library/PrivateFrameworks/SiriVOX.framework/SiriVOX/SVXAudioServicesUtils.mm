@interface SVXAudioServicesUtils
- (BOOL)audioServicesActivateWithTimeout;
@end

@implementation SVXAudioServicesUtils

- (BOOL)audioServicesActivateWithTimeout
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SVXAudioServicesUtils audioServicesActivateWithTimeout]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s Activating audio services with timeout...", &v9, 0xCu);
  }

  _activate = [(SVXAudioServicesUtils *)self _activate];
  v6 = *v3;
  if (_activate)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[SVXAudioServicesUtils audioServicesActivateWithTimeout]";
      v11 = 1024;
      v12 = _activate;
      _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s Failed to activate audio services with timeout. (result = %d)", &v9, 0x12u);
    }
  }

  else if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SVXAudioServicesUtils audioServicesActivateWithTimeout]";
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Activated audio services with timeout.", &v9, 0xCu);
  }

  result = _activate == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

@end