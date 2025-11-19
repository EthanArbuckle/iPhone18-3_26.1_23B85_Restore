@interface TSUserInPurchaseFlowAssertion
+ (id)sharedInstance;
- (TSUserInPurchaseFlowAssertion)init;
- (void)assertUserInPurchaseFlowStartOver:(BOOL)a3 caller:(id)a4;
- (void)deassertUserInPurchaseFlowWithForce:(BOOL)a3 caller:(id)a4;
@end

@implementation TSUserInPurchaseFlowAssertion

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[TSUserInPurchaseFlowAssertion sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __47__TSUserInPurchaseFlowAssertion_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(TSUserInPurchaseFlowAssertion);

  return MEMORY[0x2821F96F8]();
}

- (TSUserInPurchaseFlowAssertion)init
{
  v3.receiver = self;
  v3.super_class = TSUserInPurchaseFlowAssertion;
  result = [(TSUserInPurchaseFlowAssertion *)&v3 init];
  if (result)
  {
    result->_assertionCounter = 0;
  }

  return result;
}

- (void)assertUserInPurchaseFlowStartOver:(BOOL)a3 caller:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = self->_assertionCounter + 1;
  }

  self->_assertionCounter = v7;
  v8 = _TSLogDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    assertionCounter = self->_assertionCounter;
    v12[0] = 67109634;
    v12[1] = assertionCounter;
    v13 = 2112;
    v14 = v6;
    v15 = 2080;
    v16 = "[TSUserInPurchaseFlowAssertion assertUserInPurchaseFlowStartOver:caller:]";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "_assertionCounter: %d, caller:%@ @%s", v12, 0x1Cu);
  }

  if (self->_assertionCounter >= 1)
  {
    v10 = [MEMORY[0x277CF96D8] sharedManager];
    [v10 setUserInPurchaseFlow:1];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deassertUserInPurchaseFlowWithForce:(BOOL)a3 caller:(id)a4
{
  v4 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _TSLogDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    assertionCounter = self->_assertionCounter;
    v13[0] = 67109634;
    v13[1] = assertionCounter;
    v14 = 2112;
    v15 = v6;
    v16 = 2080;
    v17 = "[TSUserInPurchaseFlowAssertion deassertUserInPurchaseFlowWithForce:caller:]";
    _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "_assertionCounter: %d, caller:%@ @%s", v13, 0x1Cu);
  }

  v9 = self->_assertionCounter;
  if (v9)
  {
    v10 = v9 - 1;
    self->_assertionCounter = v10;
    if (!v10 || v4)
    {
      v11 = [MEMORY[0x277CF96D8] sharedManager];
      [v11 setUserInPurchaseFlow:0];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end