@interface SVXRadarRateLimiter
- (BOOL)isRateLimited;
@end

@implementation SVXRadarRateLimiter

- (BOOL)isRateLimited
{
  v12 = *MEMORY[0x277D85DE8];
  _getRandom = [(SVXRadarRateLimiter *)self _getRandom];
  v3 = *MEMORY[0x277CEF098];
  v4 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO);
  if (_getRandom)
  {
    if (v4)
    {
      v8 = 136315394;
      v9 = "[SVXRadarRateLimiter isRateLimited]";
      v10 = 1024;
      v11 = _getRandom;
      v5 = "%s User not sampled for this time, randint=%d";
LABEL_6:
      _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, v5, &v8, 0x12u);
    }
  }

  else if (v4)
  {
    v8 = 136315394;
    v9 = "[SVXRadarRateLimiter isRateLimited]";
    v10 = 1024;
    v11 = 0;
    v5 = "%s User sampled for this time, randint=%d";
    goto LABEL_6;
  }

  result = _getRandom != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end