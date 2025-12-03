@interface RMSPowerAssertion
- (RMSPowerAssertion)initWithName:(id)name;
- (void)dealloc;
@end

@implementation RMSPowerAssertion

- (RMSPowerAssertion)initWithName:(id)name
{
  v13[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = RMSPowerAssertion;
  v5 = [(RMSPowerAssertion *)&v9 init];
  if (v5)
  {
    v12[0] = @"AssertName";
    v12[1] = @"TimeoutSeconds";
    v13[0] = nameCopy;
    v13[1] = &unk_287486D68;
    v12[2] = @"TimeoutAction";
    v12[3] = @"AssertType";
    v13[2] = @"TimeoutActionTurnOff";
    v13[3] = @"PreventUserIdleSystemSleep";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
    IOPMAssertionCreateWithProperties(v6, &v5->_assertionID);
    v7 = RMSLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = nameCopy;
      _os_log_impl(&dword_261E98000, v7, OS_LOG_TYPE_DEFAULT, "Power assertion created for %@", buf, 0xCu);
    }
  }

  return v5;
}

- (void)dealloc
{
  IOPMAssertionRelease(self->_assertionID);
  self->_assertionID = 0;
  v3.receiver = self;
  v3.super_class = RMSPowerAssertion;
  [(RMSPowerAssertion *)&v3 dealloc];
}

@end