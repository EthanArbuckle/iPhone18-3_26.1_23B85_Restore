@interface BFFPasscodeCreationManager
+ (id)sharedPasscodeManager;
- (BFFPasscodeCreationDelegate)delegate;
- (BFFPasscodeCreationManager)init;
- (BOOL)isSimplePasscodeEntry;
- (NSString)constraintInstructions;
- (void)_applyPasscode;
- (void)acceptWeakPasscode:(BOOL)a3;
- (void)reset;
- (void)setPasscodeState:(unint64_t)a3;
- (void)transitionToNextPasscodeStateForInput:(id)a3;
@end

@implementation BFFPasscodeCreationManager

- (BFFPasscodeCreationManager)init
{
  v5.receiver = self;
  v5.super_class = BFFPasscodeCreationManager;
  v2 = [(BFFPasscodeCreationManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BFFPasscodeCreationManager *)v2 setPasscodeState:0];
    [(BFFPasscodeCreationManager *)v3 setConstraintFailedInstructions:0];
  }

  return v3;
}

+ (id)sharedPasscodeManager
{
  v2 = sharedPasscodeManager_sharedPasscodeManager;
  if (!sharedPasscodeManager_sharedPasscodeManager)
  {
    v3 = objc_alloc_init(BFFPasscodeCreationManager);
    v4 = sharedPasscodeManager_sharedPasscodeManager;
    sharedPasscodeManager_sharedPasscodeManager = v3;

    v2 = sharedPasscodeManager_sharedPasscodeManager;
  }

  return v2;
}

- (NSString)constraintInstructions
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 isPasscodeRequired];

  if (v4)
  {
    v5 = [(BFFPasscodeCreationManager *)self constraintFailedInstructions];

    if (v5)
    {
      v6 = [(BFFPasscodeCreationManager *)self constraintFailedInstructions];
    }

    else
    {
      v7 = [MEMORY[0x277D262A0] sharedConnection];
      v6 = [v7 localizedDescriptionOfCurrentPasscodeConstraints];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isSimplePasscodeEntry
{
  v3 = [(BFFPasscodeCreationManager *)self isNumericPasscodeEntry];
  if (v3)
  {
    LOBYTE(v3) = [(BFFPasscodeCreationManager *)self simplePasscodeEntryLength]> 0;
  }

  return v3;
}

- (void)_applyPasscode
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_265AC5000, v3, OS_LOG_TYPE_DEFAULT, "Setting a passcode...", buf, 2u);
  }

  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__BFFPasscodeCreationManager__applyPasscode__block_invoke;
  block[3] = &unk_279BB49A8;
  block[4] = self;
  dispatch_async(v4, block);
}

void __44__BFFPasscodeCreationManager__applyPasscode__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [*(a1 + 32) passcode];
  v18 = 0;
  v4 = [v2 changePasscodeFrom:0 to:v3 outError:&v18];
  v5 = v18;

  if ((v4 & 1) == 0)
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (_BYIsInternalInstall())
      {
        v12 = 0;
        v13 = v5;
      }

      else if (v5)
      {
        v14 = MEMORY[0x277CCACA8];
        v3 = [v5 domain];
        v13 = [v14 stringWithFormat:@"<Error domain: %@, code %ld>", v3, objc_msgSend(v5, "code")];
        v12 = 1;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *buf = 138543362;
      v20 = v13;
      _os_log_error_impl(&dword_265AC5000, v6, OS_LOG_TYPE_ERROR, "Failed to set the passcode with error %{public}@", buf, 0xCu);
      if (v12)
      {
      }
    }
  }

  v7 = objc_alloc_init(MEMORY[0x277D4DA70]);
  v8 = [objc_alloc(MEMORY[0x277D4DA48]) initWithFeatureFlags:v7];
  v9 = [*(a1 + 32) passcode];
  [v8 updateCoreCDPStateControllerWithPasscode:v9];

  v10 = [*(a1 + 32) _mainQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__BFFPasscodeCreationManager__applyPasscode__block_invoke_5;
  block[3] = &unk_279BB4F88;
  v17 = v4;
  block[4] = *(a1 + 32);
  v16 = v5;
  v11 = v5;
  dispatch_async(v10, block);
}

uint64_t __44__BFFPasscodeCreationManager__applyPasscode__block_invoke_5(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v2 = [MEMORY[0x277D75688] sharedInputModeController];
    [v2 saveDeviceUnlockPasscodeInputModes];
  }

  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 passcodeManager:*(a1 + 32) didSetPasscodeWithSuccess:*(a1 + 48) error:*(a1 + 40)];
  }

  else
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) delegate];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_265AC5000, v5, OS_LOG_TYPE_DEFAULT, "Failed to stash passcode token, delegate = %@", &v8, 0xCu);
    }
  }

  return [*(a1 + 32) setPasscodeState:4];
}

- (void)setPasscodeState:(unint64_t)a3
{
  v5 = [(BFFPasscodeCreationManager *)self passcodeState];
  self->_passcodeState = a3;
  v6 = [(BFFPasscodeCreationManager *)self delegate];
  if (v6)
  {
    v7 = v6;
    v8 = [(BFFPasscodeCreationManager *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(BFFPasscodeCreationManager *)self delegate];
      [v10 passcodeManager:self didTransitionFromState:v5 toState:a3];
    }
  }
}

- (void)transitionToNextPasscodeStateForInput:(id)a3
{
  v4 = a3;
  v5 = [(BFFPasscodeCreationManager *)self passcodeState];
  v6 = v5;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        v6 = 0;
      }

      goto LABEL_28;
    }

    goto LABEL_10;
  }

  if (v5 != 2)
  {
    if (v5 == 4)
    {
LABEL_28:
      [(BFFPasscodeCreationManager *)self setPasscodeState:v6];
      goto LABEL_29;
    }

    if (v5 != 3)
    {
LABEL_26:
      v6 = 0;
      goto LABEL_28;
    }

LABEL_10:
    if ([v4 length])
    {
      v7 = [MEMORY[0x277D262A0] sharedConnection];
      v19 = 0;
      v8 = [v7 passcode:v4 meetsCurrentConstraintsOutError:&v19];
      v9 = v19;

      if (v8)
      {
        [(BFFPasscodeCreationManager *)self setPasscode:v4];
        [(BFFPasscodeCreationManager *)self isSimplePasscodeEntry];
        [(BFFPasscodeCreationManager *)self passcode];
        if (SecPasswordIsPasswordWeak2())
        {
          v6 = 1;
        }

        else
        {
          v6 = 2;
        }

        goto LABEL_28;
      }

      if (v9)
      {
        v15 = [v9 domain];
        v16 = [v15 isEqualToString:*MEMORY[0x277D26140]];

        if (v16)
        {
          v17 = [v9 localizedDescription];
          [(BFFPasscodeCreationManager *)self setConstraintFailedInstructions:v17];
LABEL_25:

          goto LABEL_26;
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v17 = [MEMORY[0x277D262A0] sharedConnection];
    v18 = [v17 localizedDescriptionOfCurrentPasscodeConstraints];
    [(BFFPasscodeCreationManager *)self setConstraintFailedInstructions:v18];

    goto LABEL_25;
  }

  v10 = [(BFFPasscodeCreationManager *)self passcode];
  v11 = [v10 isEqualToString:v4];

  if (!v11)
  {
    v6 = 3;
    goto LABEL_28;
  }

  v12 = [(BFFPasscodeCreationManager *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(BFFPasscodeCreationManager *)self delegate];
    [v14 passcodeManagerWillSetPasscode:self];
  }

  [(BFFPasscodeCreationManager *)self _applyPasscode];
LABEL_29:
}

- (void)acceptWeakPasscode:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    [(BFFPasscodeCreationManager *)self setPasscode:0];
    v5 = 0;
  }

  [(BFFPasscodeCreationManager *)self setPasscodeState:v5];

  [(BFFPasscodeCreationManager *)self setAcceptedWeakPasscode:v3];
}

- (void)reset
{
  [(BFFPasscodeCreationManager *)self setPasscode:0];
  [(BFFPasscodeCreationManager *)self setAcceptedWeakPasscode:0];
  [(BFFPasscodeCreationManager *)self setPasscodeState:0];

  [(BFFPasscodeCreationManager *)self setConstraintFailedInstructions:0];
}

- (BFFPasscodeCreationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end