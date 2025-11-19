@interface TSClockPulser
- (BOOL)startPulsing;
- (BOOL)stopPulsing;
- (TSClockPulser)init;
- (TSClockPulser)initWithPulseClock:(id)a3;
- (void)dealloc;
- (void)didBeginClockGrandmasterChangeForClock:(id)a3;
- (void)didChangeClockMasterForClock:(id)a3;
- (void)didChangeLockStateTo:(int)a3 forClock:(id)a4;
- (void)didEndClockGrandmasterChangeForClock:(id)a3;
- (void)pulseThread;
- (void)stopPulsing;
@end

@implementation TSClockPulser

- (TSClockPulser)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSClockPulser init]"];
  [v3 raise:v4 format:{@"Do not call %@", v5}];

  return 0;
}

- (TSClockPulser)initWithPulseClock:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSClockPulser;
  v6 = [(TSClockPulser *)&v9 init];
  if (v6)
  {
    v7 = MEMORY[0x277D85F48];
    if (semaphore_create(*MEMORY[0x277D85F48], &v6->_startSemaphore, 0, 0))
    {
      [TSClockPulser initWithPulseClock:v6];
    }

    else
    {
      if (!semaphore_create(*v7, &v6->_stopSemaphore, 0, 0))
      {
        objc_storeStrong(&v6->_pulseClock, a3);
        v6->_pulsePeriod = 1000000000;
        goto LABEL_5;
      }

      [TSClockPulser initWithPulseClock:v6];
    }

    v6 = 0;
  }

LABEL_5:

  return v6;
}

- (BOOL)startPulsing
{
  if ([(TSClockPulser *)self pulsePeriod]< 0xF4240)
  {
    return 0;
  }

  else
  {
    [(TSClock *)self->_pulseClock addClient:self];
    self->_threadShouldBeRunning = 1;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __29__TSClockPulser_startPulsing__block_invoke;
    v5[3] = &unk_279DBD538;
    v5[4] = self;
    [MEMORY[0x277CCACC8] detachNewThreadWithBlock:v5];
    MEMORY[0x2743880E0](self->_startSemaphore);
    return self->_threadIsRunning;
  }
}

- (BOOL)stopPulsing
{
  if (self->_threadIsRunning)
  {
    self->_threadShouldBeRunning = 0;
    MEMORY[0x2743880E0](self->_stopSemaphore, a2);
    self->_lastLockState = 0;
    [(TSClock *)self->_pulseClock removeClient:self];
  }

  else
  {
    [TSClockPulser stopPulsing];
  }

  return !self->_threadIsRunning;
}

- (void)didChangeClockMasterForClock:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Changed master clock", v3, 2u);
  }
}

- (void)didChangeLockStateTo:(int)a3 forClock:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Change lock state to %u", v8, 8u);
  }

  self->_holdoverMode = a3 != 2;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didBeginClockGrandmasterChangeForClock:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Begin grandmaster change", v3, 2u);
  }
}

- (void)didEndClockGrandmasterChangeForClock:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "End grandmaster change", v3, 2u);
  }
}

- (void)pulseThread
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to convert pulse thread to realtime. Error 0x%08x\n", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  startSemaphore = self->_startSemaphore;
  v4 = MEMORY[0x277D85F48];
  if (startSemaphore)
  {
    semaphore_destroy(*MEMORY[0x277D85F48], startSemaphore);
    self->_startSemaphore = 0;
  }

  stopSemaphore = self->_stopSemaphore;
  if (stopSemaphore)
  {
    semaphore_destroy(*v4, stopSemaphore);
    self->_stopSemaphore = 0;
  }

  v6.receiver = self;
  v6.super_class = TSClockPulser;
  [(TSClockPulser *)&v6 dealloc];
}

- (void)initWithPulseClock:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithPulseClock:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopPulsing
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end