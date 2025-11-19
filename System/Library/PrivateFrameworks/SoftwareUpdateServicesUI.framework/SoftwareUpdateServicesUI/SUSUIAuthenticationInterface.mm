@interface SUSUIAuthenticationInterface
+ (id)sharedInstance;
- (BOOL)attemptAuthentication:(id)a3 outBlocked:(BOOL *)a4;
- (BOOL)isBlocked;
- (SUSUIAuthenticationInterface)init;
- (SUSUIAuthenticationInterface)initWithKeybag:(id)a3;
- (unint64_t)_currentFailedAttemptsCount;
- (void)_setNumberOfFailedAuthenticationAttempts:(unint64_t)a3;
- (void)_setPasscodeLocked:(BOOL)a3;
- (void)keybagInterface:(id)a3 passcodeLockedStateDidChange:(BOOL)a4;
- (void)resetAttempts;
@end

@implementation SUSUIAuthenticationInterface

+ (id)sharedInstance
{
  v5 = &sharedInstance___once;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance___instance;

  return v2;
}

uint64_t __46__SUSUIAuthenticationInterface_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SUSUIAuthenticationInterface);
  v1 = sharedInstance___instance;
  sharedInstance___instance = v0;
  return MEMORY[0x277D82BD8](v1);
}

- (SUSUIAuthenticationInterface)init
{
  v6 = self;
  v4 = [MEMORY[0x277D648A8] sharedInstance];
  v6 = 0;
  v6 = [(SUSUIAuthenticationInterface *)self initWithKeybag:?];
  v5 = MEMORY[0x277D82BE0](v6);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v6, 0);
  return v5;
}

- (SUSUIAuthenticationInterface)initWithKeybag:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11.receiver = v3;
  v11.super_class = SUSUIAuthenticationInterface;
  v9 = [(SUSUIAuthenticationInterface *)&v11 init];
  v13 = v9;
  objc_storeStrong(&v13, v9);
  if (v9)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.softwareupdateservices.security"];
    defaults = v13->_defaults;
    v13->_defaults = v4;
    MEMORY[0x277D82BD8](defaults);
    objc_storeStrong(&v13->_keybag, location[0]);
    [(SUKeybagInterface *)v13->_keybag addObserver:v13];
    v6 = [(SUKeybagInterface *)v13->_keybag isPasscodeLocked];
    v13->_isPasscodeLocked = v6;
    v10 = SUSUILogKeybagInterface();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v14, v13->_isPasscodeLocked);
      _os_log_impl(&dword_26AC54000, v10, OS_LOG_TYPE_DEFAULT, "Initialized with passcode locked: %d", v14, 8u);
    }

    objc_storeStrong(&v10, 0);
  }

  v8 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isBlocked
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = self;
  v9 = a2;
  [(SUKeybagInterface *)self->_keybag backOffTime];
  v8 = v2;
  location = SUSUILogKeybagInterface();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v13, v8);
    _os_log_impl(&dword_26AC54000, location, v6, "isBlocked: Backoff time: %f", v13, 0xCu);
  }

  objc_storeStrong(&location, 0);
  if (*&v8 <= 0.0)
  {
    v5 = [(SUSUIAuthenticationInterface *)v10 _currentFailedAttemptsCount];
    oslog = SUSUILogKeybagInterface();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v12, v5);
      _os_log_impl(&dword_26AC54000, oslog, OS_LOG_TYPE_DEFAULT, "isBlocked: currentFailedAttemptsCount: %d", v12, 8u);
    }

    objc_storeStrong(&oslog, 0);
    v11 = v5 >= 5;
  }

  else
  {
    v11 = 1;
  }

  *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)attemptAuthentication:(id)a3 outBlocked:(BOOL *)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  v18 = 0;
  v17 = [(SUSUIAuthenticationInterface *)v21 isBlocked];
  if (!v17)
  {
    if ([(SUKeybagInterface *)v21->_keybag authenticate:location[0]])
    {
      v16 = SUSUILogKeybagInterface();
      v15 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        log = v16;
        type = v15;
        __os_log_helper_16_0_0(v14);
        _os_log_impl(&dword_26AC54000, log, type, "attemptAuthentication: success", v14, 2u);
      }

      objc_storeStrong(&v16, 0);
      v18 = 1;
    }

    else
    {
      v13 = SUSUILogKeybagInterface();
      v12 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v13;
        v7 = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_impl(&dword_26AC54000, v6, v7, "attemptAuthentication: failed", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      [(SUSUIAuthenticationInterface *)v21 _incrementFailedAttemptsCount];
      v17 = [(SUSUIAuthenticationInterface *)v21 isBlocked];
    }
  }

  if (v19)
  {
    *v19 = v17;
  }

  if (v17)
  {
    [(SUKeybagInterface *)v21->_keybag lockDevice];
  }

  v5 = v18;
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)resetAttempts
{
  v7 = self;
  location[1] = a2;
  if (self->_isController)
  {
    location[0] = SUSUILogKeybagInterface();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v5;
      __os_log_helper_16_0_0(v4);
      _os_log_impl(&dword_26AC54000, log, type, "Attempts reset", v4, 2u);
    }

    objc_storeStrong(location, 0);
    [(SUSUIAuthenticationInterface *)v7 _setNumberOfFailedAuthenticationAttempts:0];
    [(NSUserDefaults *)v7->_defaults synchronize];
  }
}

- (void)_setNumberOfFailedAuthenticationAttempts:(unint64_t)a3
{
  defaults = self->_defaults;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [NSUserDefaults setObject:"setObject:forKey:" forKey:?];
  MEMORY[0x277D82BD8](v4);
  [(NSUserDefaults *)self->_defaults synchronize];
}

- (void)_setPasscodeLocked:(BOOL)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = self;
  v5 = a2;
  v4 = a3;
  if (self->_isPasscodeLocked != a3)
  {
    v6->_isPasscodeLocked = v4;
    oslog = SUSUILogKeybagInterface();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v7, v4);
      _os_log_impl(&dword_26AC54000, oslog, OS_LOG_TYPE_DEFAULT, "Passcode locked state did change: %d", v7, 8u);
    }

    objc_storeStrong(&oslog, 0);
    [(SUSUIAuthenticationInterface *)v6 resetAttempts];
  }

  *MEMORY[0x277D85DE8];
}

- (void)keybagInterface:(id)a3 passcodeLockedStateDidChange:(BOOL)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __77__SUSUIAuthenticationInterface_keybagInterface_passcodeLockedStateDidChange___block_invoke;
  v12 = &unk_279CB3BD8;
  v13 = MEMORY[0x277D82BE0](v17);
  v14 = v15;
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (unint64_t)_currentFailedAttemptsCount
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"SUSUIFailedAttemptCountsWhileUnlocked"];
  v4 = [v3 unsignedIntegerValue];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

@end