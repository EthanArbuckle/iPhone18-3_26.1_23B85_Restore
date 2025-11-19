@interface MDUserOverrideHeuristic
- (MDUserOverrideHeuristic)init;
- (MDUserOverrideHeuristic)initWithInternalDefaults:(id)a3;
- (id)determineCurrentMode;
- (unint64_t)internalModeOverride;
- (void)internalModeOverride;
@end

@implementation MDUserOverrideHeuristic

- (MDUserOverrideHeuristic)init
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.siri.internal"];
  v4 = [(MDUserOverrideHeuristic *)self initWithInternalDefaults:v3];

  return v4;
}

- (MDUserOverrideHeuristic)initWithInternalDefaults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MDUserOverrideHeuristic;
  v6 = [(MDUserOverrideHeuristic *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalDefaults, a3);
  }

  return v7;
}

- (id)determineCurrentMode
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(MDUserOverrideHeuristic *)self internalModeOverride];
  if (v2 == -1)
  {
    v7 = 0;
  }

  else
  {
    v3 = v2;
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = MDModeGetName(v3);
      v10 = 136315394;
      v11 = "[MDUserOverrideHeuristic determineCurrentMode]";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_26807E000, v5, OS_LOG_TYPE_DEFAULT, "%s #modes: Override value being used: %@", &v10, 0x16u);
    }

    v7 = [[MDModeDecision alloc] initWithMode:v3];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unint64_t)internalModeOverride
{
  if (!AFIsInternalInstall())
  {
    return -1;
  }

  v3 = [(NSUserDefaults *)self->_internalDefaults stringForKey:@"ModeOverride"];
  v4 = [v3 lowercaseString];

  if ([v4 isEqualToString:@"silent"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"displayonly"))
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"mixed"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"displayforward"))
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"voice"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"voiceonly"))
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"voiceforward"])
  {
    v5 = 3;
  }

  else
  {
    if (v4)
    {
      v7 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        [(MDUserOverrideHeuristic *)v4 internalModeOverride];
      }
    }

    v5 = -1;
  }

  return v5;
}

- (void)internalModeOverride
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[MDUserOverrideHeuristic internalModeOverride]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_26807E000, a2, OS_LOG_TYPE_ERROR, "%s #modes Invalid mode override value: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end