@interface PLGameModeService
+ (void)load;
- (PLGameModeService)init;
- (void)initOperatorDependancies;
- (void)postGameModeStatusChangeNotification:(id)a3;
- (void)updateGameMode;
@end

@implementation PLGameModeService

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLGameModeService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLGameModeService)init
{
  v3.receiver = self;
  v3.super_class = PLGameModeService;
  result = [(PLOperator *)&v3 init];
  result->_previousGameModeState = 0;
  return result;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F160]);
  v4 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__PLGameModeService_initOperatorDependancies__block_invoke;
  v7[3] = &unk_2782597E8;
  v7[4] = self;
  v5 = [v3 initWithWorkQueue:v4 forNotification:@"com.apple.system.console_mode_changed" requireState:1 withBlock:v7];
  consoleModeListener = self->_consoleModeListener;
  self->_consoleModeListener = v5;
}

uint64_t __45__PLGameModeService_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v2 = PLLogGameMode();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Received notifiction for Console Mode change", v4, 2u);
  }

  return [*(a1 + 32) updateGameMode];
}

- (void)updateGameMode
{
  v17 = *MEMORY[0x277D85DE8];
  state64 = 0;
  v3 = [(PLGameModeService *)self consoleModeListener];
  state = notify_get_state([v3 stateToken], &state64);

  if (state)
  {
    v5 = PLLogGameMode();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Console Mode state Unavailable", buf, 2u);
    }

LABEL_10:

    goto LABEL_11;
  }

  v6 = state64;
  v7 = PLLogGameMode();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v16 = v6 != 0;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Console Mode state: %d", buf, 8u);
  }

  if ((v6 != 0) != [(PLGameModeService *)self previousGameModeState])
  {
    [(PLGameModeService *)self setPreviousGameModeState:v6 != 0];
    v8 = PLLogGameMode();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(PLGameModeService *)self previousGameModeState];
      *buf = 67109120;
      v16 = v11;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "self.previousGameModeState: %d", buf, 8u);
    }

    v13 = @"gameMode";
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v6 != 0];
    v14 = v5;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [(PLGameModeService *)self postGameModeStatusChangeNotification:v9];

    goto LABEL_10;
  }

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)postGameModeStatusChangeNotification:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogGameMode();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 objectForKeyedSubscript:@"gameMode"];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "Sent game mode notification to submodules: %@", &v8, 0xCu);
  }

  [MEMORY[0x277D3F258] postNotificationName:@"PLGameModeNotification" object:self userInfo:v4];
  v7 = *MEMORY[0x277D85DE8];
}

@end