@interface SUCoreDDMActivityScheduler
- (BOOL)armActivitySchedulerWithDate:(id)a3 options:(id)a4;
- (SUCoreDDMActivityScheduler)initWithDelegate:(id)a3 options:(id)a4;
- (void)_handleTimerFired:(id)a3;
- (void)disarmActivityScheduler;
@end

@implementation SUCoreDDMActivityScheduler

- (SUCoreDDMActivityScheduler)initWithDelegate:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v15.receiver = self;
    v15.super_class = SUCoreDDMActivityScheduler;
    v9 = [(SUCoreDDMActivityScheduler *)&v15 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_options, a4);
      objc_storeStrong(p_isa + 2, a3);
    }

    self = p_isa;
    v11 = self;
  }

  else
  {
    v12 = [MEMORY[0x277D64460] sharedLogger];
    v13 = [v12 oslog];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDDMActivityScheduler initWithDelegate:options:];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)armActivitySchedulerWithDate:(id)a3 options:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = objc_opt_class();
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[DDM] %@: Arming", buf, 0xCu);
  }

  if (!v6)
  {
    v13 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v13 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDDMActivityScheduler armActivitySchedulerWithDate:options:];
    }

    goto LABEL_9;
  }

  [v6 timeIntervalSinceNow];
  if (v10 < 0.0)
  {
    v11 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDDMActivityScheduler armActivitySchedulerWithDate:options:];
    }

LABEL_9:

    v14 = 0;
    goto LABEL_28;
  }

  if (v7)
  {
    [(SUCoreDDMActivityScheduler *)self setOptions:v7];
  }

  [(SUCoreDDMActivityScheduler *)self setIsArmed:1];
  [(SUCoreDDMActivityScheduler *)self setFireDate:v6];
  v15 = [MEMORY[0x277D64460] sharedLogger];
  v16 = [v15 oslog];

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = [(SUCoreDDMActivityScheduler *)self fireDate];
    v19 = [(SUCoreDDMActivityScheduler *)self options];
    *buf = 138412802;
    v44 = v17;
    v45 = 2112;
    v46 = v18;
    v47 = 2112;
    v48 = v19;
    _os_log_impl(&dword_23193C000, v16, OS_LOG_TYPE_DEFAULT, "[DDM] %@: Fire date: %@, options: %@", buf, 0x20u);
  }

  if ([(SUCoreDDMActivityScheduler *)self useXPC])
  {
    v20 = [MEMORY[0x277D64460] sharedLogger];
    v21 = [v20 oslog];

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[SUCoreDDMActivityScheduler armActivitySchedulerWithDate:options:]";
      _os_log_impl(&dword_23193C000, v21, OS_LOG_TYPE_DEFAULT, "[DDM] %s: Using XPC alarm stream", buf, 0xCu);
    }

    v22 = [(SUCoreDDMActivityScheduler *)self fireDate];
    [v22 timeIntervalSinceNow];
    v24 = v23;

    v25 = xpc_dictionary_create(0, 0, 0);
    v26 = time(0);
    xpc_dictionary_set_date(v25, "Date", ((v24 + v26) * 1000000000.0));
    xpc_set_event();
  }

  if ([(SUCoreDDMActivityScheduler *)self usePCSimpleTimer]&& objc_opt_class() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v27 = [MEMORY[0x277D64460] sharedLogger];
    v28 = [v27 oslog];

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[SUCoreDDMActivityScheduler armActivitySchedulerWithDate:options:]";
      _os_log_impl(&dword_23193C000, v28, OS_LOG_TYPE_DEFAULT, "[DDM] %s: Using PCSimpleTimer", buf, 0xCu);
    }

    v29 = objc_alloc(MEMORY[0x277D3A188]);
    v30 = [(SUCoreDDMActivityScheduler *)self fireDate];
    v31 = [v29 initWithFireDate:v30 serviceIdentifier:@"com.apple.MobileSoftwareUpdate.DDMActivityScheduler" target:self selector:sel__handleTimerFired_ userInfo:0];
    [(SUCoreDDMActivityScheduler *)self setPcTimer:v31];

    v32 = [(SUCoreDDMActivityScheduler *)self pcTimer];
    v33 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v32 scheduleInRunLoop:v33];
  }

  else
  {
    v34 = [MEMORY[0x277D64460] sharedLogger];
    v35 = [v34 oslog];

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[SUCoreDDMActivityScheduler armActivitySchedulerWithDate:options:]";
      _os_log_impl(&dword_23193C000, v35, OS_LOG_TYPE_DEFAULT, "[DDM] %s: Using NSTimer", buf, 0xCu);
    }

    v36 = objc_alloc(MEMORY[0x277CBEBB8]);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __67__SUCoreDDMActivityScheduler_armActivitySchedulerWithDate_options___block_invoke;
    v42[3] = &unk_27892CAD8;
    v42[4] = self;
    v37 = [v36 initWithFireDate:v6 interval:0 repeats:v42 block:0.0];
    [(SUCoreDDMActivityScheduler *)self setTimer:v37];

    v38 = [MEMORY[0x277CBEB88] mainRunLoop];
    v39 = [(SUCoreDDMActivityScheduler *)self timer];
    [v38 addTimer:v39 forMode:*MEMORY[0x277CBE640]];
  }

  v14 = 1;
LABEL_28:

  v40 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_handleTimerFired:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D64460] sharedLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [(SUCoreDDMActivityScheduler *)self options];
    v8 = [(SUCoreDDMActivityScheduler *)self fireDate];
    v12 = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "[DDM] %@: Fired with options: %@, fireDate: %@", &v12, 0x20u);
  }

  [(SUCoreDDMActivityScheduler *)self setIsArmed:0];
  v9 = [(SUCoreDDMActivityScheduler *)self delegate];
  v10 = [(SUCoreDDMActivityScheduler *)self options];
  [v9 timeFiredForScheduler:self withOptions:v10 replyBlock:&__block_literal_global];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)disarmActivityScheduler
{
  if ([(SUCoreDDMActivityScheduler *)self useXPC])
  {
    xpc_set_event();
  }

  v3 = [(SUCoreDDMActivityScheduler *)self timer];

  if (v3)
  {
    v4 = [(SUCoreDDMActivityScheduler *)self timer];
    [v4 invalidate];

    [(SUCoreDDMActivityScheduler *)self setTimer:0];
  }

  v5 = [(SUCoreDDMActivityScheduler *)self pcTimer];
  if (v5 && objc_opt_class())
  {
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(SUCoreDDMActivityScheduler *)self pcTimer];
      [v7 invalidate];

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