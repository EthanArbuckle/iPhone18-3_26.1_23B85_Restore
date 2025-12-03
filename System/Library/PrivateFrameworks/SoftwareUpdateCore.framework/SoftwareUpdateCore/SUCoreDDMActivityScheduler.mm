@interface SUCoreDDMActivityScheduler
- (BOOL)armActivitySchedulerWithDate:(id)date options:(id)options;
- (SUCoreDDMActivityScheduler)initWithDelegate:(id)delegate options:(id)options;
- (void)_handleTimerFired:(id)fired;
- (void)disarmActivityScheduler;
@end

@implementation SUCoreDDMActivityScheduler

- (SUCoreDDMActivityScheduler)initWithDelegate:(id)delegate options:(id)options
{
  delegateCopy = delegate;
  optionsCopy = options;
  if (delegateCopy)
  {
    v15.receiver = self;
    v15.super_class = SUCoreDDMActivityScheduler;
    v9 = [(SUCoreDDMActivityScheduler *)&v15 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_options, options);
      objc_storeStrong(p_isa + 2, delegate);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDDMActivityScheduler initWithDelegate:options:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)armActivitySchedulerWithDate:(id)date options:(id)options
{
  v49 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  optionsCopy = options;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = objc_opt_class();
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[DDM] %@: Arming", buf, 0xCu);
  }

  if (!dateCopy)
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDDMActivityScheduler armActivitySchedulerWithDate:options:];
    }

    goto LABEL_9;
  }

  [dateCopy timeIntervalSinceNow];
  if (v10 < 0.0)
  {
    mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]3 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDDMActivityScheduler armActivitySchedulerWithDate:options:];
    }

LABEL_9:

    v14 = 0;
    goto LABEL_28;
  }

  if (optionsCopy)
  {
    [(SUCoreDDMActivityScheduler *)self setOptions:optionsCopy];
  }

  [(SUCoreDDMActivityScheduler *)self setIsArmed:1];
  [(SUCoreDDMActivityScheduler *)self setFireDate:dateCopy];
  mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
  oslog3 = [mEMORY[0x277D64460]4 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    fireDate = [(SUCoreDDMActivityScheduler *)self fireDate];
    options = [(SUCoreDDMActivityScheduler *)self options];
    *buf = 138412802;
    v44 = v17;
    v45 = 2112;
    v46 = fireDate;
    v47 = 2112;
    v48 = options;
    _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[DDM] %@: Fire date: %@, options: %@", buf, 0x20u);
  }

  if ([(SUCoreDDMActivityScheduler *)self useXPC])
  {
    mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
    oslog4 = [mEMORY[0x277D64460]5 oslog];

    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[SUCoreDDMActivityScheduler armActivitySchedulerWithDate:options:]";
      _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[DDM] %s: Using XPC alarm stream", buf, 0xCu);
    }

    fireDate2 = [(SUCoreDDMActivityScheduler *)self fireDate];
    [fireDate2 timeIntervalSinceNow];
    v24 = v23;

    v25 = xpc_dictionary_create(0, 0, 0);
    v26 = time(0);
    xpc_dictionary_set_date(v25, "Date", ((v24 + v26) * 1000000000.0));
    xpc_set_event();
  }

  if ([(SUCoreDDMActivityScheduler *)self usePCSimpleTimer]&& objc_opt_class() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    mEMORY[0x277D64460]6 = [MEMORY[0x277D64460] sharedLogger];
    oslog5 = [mEMORY[0x277D64460]6 oslog];

    if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[SUCoreDDMActivityScheduler armActivitySchedulerWithDate:options:]";
      _os_log_impl(&dword_23193C000, oslog5, OS_LOG_TYPE_DEFAULT, "[DDM] %s: Using PCSimpleTimer", buf, 0xCu);
    }

    v29 = objc_alloc(MEMORY[0x277D3A188]);
    fireDate3 = [(SUCoreDDMActivityScheduler *)self fireDate];
    v31 = [v29 initWithFireDate:fireDate3 serviceIdentifier:@"com.apple.MobileSoftwareUpdate.DDMActivityScheduler" target:self selector:sel__handleTimerFired_ userInfo:0];
    [(SUCoreDDMActivityScheduler *)self setPcTimer:v31];

    pcTimer = [(SUCoreDDMActivityScheduler *)self pcTimer];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [pcTimer scheduleInRunLoop:mainRunLoop];
  }

  else
  {
    mEMORY[0x277D64460]7 = [MEMORY[0x277D64460] sharedLogger];
    oslog6 = [mEMORY[0x277D64460]7 oslog];

    if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[SUCoreDDMActivityScheduler armActivitySchedulerWithDate:options:]";
      _os_log_impl(&dword_23193C000, oslog6, OS_LOG_TYPE_DEFAULT, "[DDM] %s: Using NSTimer", buf, 0xCu);
    }

    v36 = objc_alloc(MEMORY[0x277CBEBB8]);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __67__SUCoreDDMActivityScheduler_armActivitySchedulerWithDate_options___block_invoke;
    v42[3] = &unk_27892CAD8;
    v42[4] = self;
    v37 = [v36 initWithFireDate:dateCopy interval:0 repeats:v42 block:0.0];
    [(SUCoreDDMActivityScheduler *)self setTimer:v37];

    mainRunLoop2 = [MEMORY[0x277CBEB88] mainRunLoop];
    timer = [(SUCoreDDMActivityScheduler *)self timer];
    [mainRunLoop2 addTimer:timer forMode:*MEMORY[0x277CBE640]];
  }

  v14 = 1;
LABEL_28:

  v40 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_handleTimerFired:(id)fired
{
  v18 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    options = [(SUCoreDDMActivityScheduler *)self options];
    fireDate = [(SUCoreDDMActivityScheduler *)self fireDate];
    v12 = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = options;
    v16 = 2112;
    v17 = fireDate;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[DDM] %@: Fired with options: %@, fireDate: %@", &v12, 0x20u);
  }

  [(SUCoreDDMActivityScheduler *)self setIsArmed:0];
  delegate = [(SUCoreDDMActivityScheduler *)self delegate];
  options2 = [(SUCoreDDMActivityScheduler *)self options];
  [delegate timeFiredForScheduler:self withOptions:options2 replyBlock:&__block_literal_global];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)disarmActivityScheduler
{
  if ([(SUCoreDDMActivityScheduler *)self useXPC])
  {
    xpc_set_event();
  }

  timer = [(SUCoreDDMActivityScheduler *)self timer];

  if (timer)
  {
    timer2 = [(SUCoreDDMActivityScheduler *)self timer];
    [timer2 invalidate];

    [(SUCoreDDMActivityScheduler *)self setTimer:0];
  }

  pcTimer = [(SUCoreDDMActivityScheduler *)self pcTimer];
  if (pcTimer && objc_opt_class())
  {
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      pcTimer2 = [(SUCoreDDMActivityScheduler *)self pcTimer];
      [pcTimer2 invalidate];

      [(SUCoreDDMActivityScheduler *)self setPcTimer:0];
    }
  }

  else
  {
  }

  [(SUCoreDDMActivityScheduler *)self setIsArmed:0];

  [(SUCoreDDMActivityScheduler *)self setFireDate:0];
}

- (void)initWithDelegate:options:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0(&dword_23193C000, v0, v1, "[DDM] %@: Can't init SUCoreDDMActivityScheduler with nil as delegate", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)armActivitySchedulerWithDate:options:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0(&dword_23193C000, v0, v1, "[DDM] %@: Trying to schedule for a date earlier than now, bailing", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)armActivitySchedulerWithDate:options:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0(&dword_23193C000, v0, v1, "[DDM] %@: No custom date found to schedule update, bail", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end