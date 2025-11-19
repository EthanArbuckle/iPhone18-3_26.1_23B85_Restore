@interface SPPowerAssertion
- (SPPowerAssertion)initWithReason:(id)a3 type:(unint64_t)a4 timeout:(double)a5;
- (id)assertionName;
- (id)assertionType;
- (id)powerAssertionOption;
- (void)_drop;
- (void)dealloc;
- (void)drop;
- (void)hold;
@end

@implementation SPPowerAssertion

- (SPPowerAssertion)initWithReason:(id)a3 type:(unint64_t)a4 timeout:(double)a5
{
  v9 = a3;
  v19.receiver = self;
  v19.super_class = SPPowerAssertion;
  v10 = [(SPPowerAssertion *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_reason, a3);
    v11->_type = a4;
    v11->_timeout = a5;
    v11->_powerAssertionId = 0;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(v14, v15);
    queue = v11->_queue;
    v11->_queue = v16;
  }

  return v11;
}

- (void)hold
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__SPPowerAssertion_hold__block_invoke;
  block[3] = &unk_279B58AE8;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __24__SPPowerAssertion_hold__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 8))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [*(a1 + 32) powerAssertionOption];
    AssertionID = 0;
    v4 = IOPMAssertionCreateWithProperties(v3, &AssertionID);
    if (v4)
    {
      v5 = LogCategory_PowerManagement();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v11 = v3;
        v12 = 1024;
        v13 = v4;
        _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "IOPMAssertionCreateWithProperties %@ failed with error: (%d)", buf, 0x12u);
      }
    }

    else
    {
      v6 = LogCategory_PowerManagement();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = [*(a1 + 32) assertionName];
        __24__SPPowerAssertion_hold__block_invoke_cold_1(v7, &AssertionID, buf, v6);
      }

      *(*(a1 + 32) + 8) = AssertionID;
    }

    objc_autoreleasePoolPop(v2);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)powerAssertionOption
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (self->_timeout >= 1.0)
  {
    timeout = self->_timeout;
  }

  else
  {
    timeout = 1.0;
  }

  v5 = [(SPPowerAssertion *)self assertionType];
  [v3 setObject:v5 forKeyedSubscript:@"AssertType"];

  v6 = [(SPPowerAssertion *)self assertionName];
  [v3 setObject:v6 forKeyedSubscript:@"AssertName"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
  [v3 setObject:v7 forKeyedSubscript:@"TimeoutSeconds"];

  [v3 setObject:@"TimeoutActionTurnOff" forKeyedSubscript:@"TimeoutAction"];
  [v3 setObject:&unk_2875F2B98 forKeyedSubscript:@"AssertLevel"];

  return v3;
}

- (id)assertionName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v3 stringWithFormat:@"%@-%@-%@", v5, @"SPOwner", self->_reason];

  return v6;
}

- (id)assertionType
{
  if (self->_type == 1)
  {
    return @"BackgroundTask";
  }

  else
  {
    return @"RequiresDisplayAudio";
  }
}

- (void)drop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__SPPowerAssertion_drop__block_invoke;
  block[3] = &unk_279B58AE8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_drop
{
  v9 = *MEMORY[0x277D85DE8];
  powerAssertionId = self->_powerAssertionId;
  if (powerAssertionId)
  {
    v4 = IOPMAssertionRelease(powerAssertionId);
    if (v4)
    {
      v5 = v4;
      v6 = LogCategory_PowerManagement();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8[0] = 67109120;
        v8[1] = v5;
        _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "IOPMAssertionRelease failed with error: (%d)", v8, 8u);
      }
    }

    else
    {
      self->_powerAssertionId = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(SPPowerAssertion *)self _drop];
  v3.receiver = self;
  v3.super_class = SPPowerAssertion;
  [(SPPowerAssertion *)&v3 dealloc];
}

void __24__SPPowerAssertion_hold__block_invoke_cold_1(void *a1, int *a2, uint8_t *buf, os_log_t log)
{
  v5 = *a2;
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v5;
  _os_log_debug_impl(&dword_2643D0000, log, OS_LOG_TYPE_DEBUG, "Successfully created assertion %@ with ID 0x%x", buf, 0x12u);
}

@end