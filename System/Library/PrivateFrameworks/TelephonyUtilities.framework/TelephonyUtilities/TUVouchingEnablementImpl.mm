@interface TUVouchingEnablementImpl
- (BOOL)serverBagValueForKey:(id)key withDefault:(BOOL)default;
- (BOOL)shouldForceVerificationFailures;
- (TUVouchingEnablementImpl)init;
- (TUVouchingEnablementImpl)initWithUserDefaults:(id)defaults serverBag:(id)bag;
@end

@implementation TUVouchingEnablementImpl

- (TUVouchingEnablementImpl)init
{
  cUTWeakLinkClass() = [CUTWeakLinkClass() sharedInstance];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [(TUVouchingEnablementImpl *)self initWithUserDefaults:standardUserDefaults serverBag:cUTWeakLinkClass()];

  return v5;
}

- (TUVouchingEnablementImpl)initWithUserDefaults:(id)defaults serverBag:(id)bag
{
  defaultsCopy = defaults;
  bagCopy = bag;
  v12.receiver = self;
  v12.super_class = TUVouchingEnablementImpl;
  v9 = [(TUVouchingEnablementImpl *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userDefaults, defaults);
    objc_storeStrong(&v10->_serverBag, bag);
  }

  return v10;
}

- (BOOL)shouldForceVerificationFailures
{
  v3 = _TUIsInternalInstall();
  if (v3)
  {
    userDefaults = self->_userDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)userDefaults BOOLForKey:@"ForceVoucherVerificationFailures" withDefault:0];
  }

  return v3;
}

- (BOOL)serverBagValueForKey:(id)key withDefault:(BOOL)default
{
  v5 = [(FTServerBag *)self->_serverBag objectForKey:key];
  v6 = v5;
  if (v5)
  {
    default = [v5 BOOLValue];
  }

  return default;
}

@end