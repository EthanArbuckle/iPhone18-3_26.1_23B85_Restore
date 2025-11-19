@interface MDFixedModeProvider
- (MDFixedModeProvider)initWithFixedMode:(unint64_t)a3;
@end

@implementation MDFixedModeProvider

- (MDFixedModeProvider)initWithFixedMode:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = MDFixedModeProvider;
  v4 = [(MDFixedModeProvider *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_fixedMode = a3;
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      [(MDFixedModeProvider *)&v5->_fixedMode initWithFixedMode:v6];
    }
  }

  return v5;
}

- (void)initWithFixedMode:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = MDModeGetName(v2);
  v6 = 136315394;
  v7 = "[MDFixedModeProvider initWithFixedMode:]";
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_26807E000, v3, OS_LOG_TYPE_DEBUG, "%s #modes: Initialized Fixed ModeProvider with mode %@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end