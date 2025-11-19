@interface TUVouchingEnablementImpl
- (BOOL)serverBagValueForKey:(id)a3 withDefault:(BOOL)a4;
- (BOOL)shouldForceVerificationFailures;
- (TUVouchingEnablementImpl)init;
- (TUVouchingEnablementImpl)initWithUserDefaults:(id)a3 serverBag:(id)a4;
@end

@implementation TUVouchingEnablementImpl

- (TUVouchingEnablementImpl)init
{
  v3 = [CUTWeakLinkClass() sharedInstance];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [(TUVouchingEnablementImpl *)self initWithUserDefaults:v4 serverBag:v3];

  return v5;
}

- (TUVouchingEnablementImpl)initWithUserDefaults:(id)a3 serverBag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TUVouchingEnablementImpl;
  v9 = [(TUVouchingEnablementImpl *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userDefaults, a3);
    objc_storeStrong(&v10->_serverBag, a4);
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

- (BOOL)serverBagValueForKey:(id)a3 withDefault:(BOOL)a4
{
  v5 = [(FTServerBag *)self->_serverBag objectForKey:a3];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

@end