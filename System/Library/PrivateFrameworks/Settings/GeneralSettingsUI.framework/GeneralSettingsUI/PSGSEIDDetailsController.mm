@interface PSGSEIDDetailsController
- (BOOL)_setupSEIDSpecifier;
- (NSString)SEIDString;
- (id)specifiers;
- (void)_setupSEIDSpecifier;
- (void)_updateHwStateChange;
- (void)dealloc;
- (void)hardwareStateDidChange;
- (void)viewDidLoad;
@end

@implementation PSGSEIDDetailsController

- (void)dealloc
{
  v3 = [MEMORY[0x277D2C840] sharedHardwareManager];
  [v3 unregisterEventListener:self];

  v4.receiver = self;
  v4.super_class = PSGSEIDDetailsController;
  [(PSGSEIDDetailsController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v3 = [MEMORY[0x277D2C840] sharedHardwareManager];
  [v3 registerEventListener:self];
  -[PSGSEIDDetailsController setHwState:](self, "setHwState:", [v3 getHwSupport]);
  v4.receiver = self;
  v4.super_class = PSGSEIDDetailsController;
  [(PSGSEIDDetailsController *)&v4 viewDidLoad];
}

- (id)specifiers
{
  [(PSGSEIDDetailsController *)self _updateHwStateChange];
  v3 = [(PSGSEIDDetailsController *)self hwState];
  v4 = *MEMORY[0x277D3FC48];
  v5 = *(&self->super.super.super.super.super.isa + v4);
  if (v5)
  {
    goto LABEL_4;
  }

  if (v3 == 2)
  {
    [(PSGSEIDDetailsController *)self _setupSEIDSpecifier];
    v5 = *(&self->super.super.super.super.super.isa + v4);
LABEL_4:
    v6 = v5;
    goto LABEL_5;
  }

  v8 = _PSGLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_21CF20000, v8, OS_LOG_TYPE_DEFAULT, "HW not ready yet", v9, 2u);
  }

  v6 = MEMORY[0x277CBEBF8];
LABEL_5:

  return v6;
}

- (NSString)SEIDString
{
  SEIDString = self->_SEIDString;
  if (!SEIDString)
  {
    v4 = [MEMORY[0x277D2C868] embeddedSecureElement];
    v5 = [v4 serialNumber];
    v6 = self->_SEIDString;
    self->_SEIDString = v5;

    SEIDString = self->_SEIDString;
  }

  return SEIDString;
}

- (void)hardwareStateDidChange
{
  v3 = _PSGLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21CF20000, v3, OS_LOG_TYPE_DEFAULT, "HW state updated", buf, 2u);
  }

  v4 = [(PSGSEIDDetailsController *)self hwState];
  [(PSGSEIDDetailsController *)self _updateHwStateChange];
  if (v4 != 4 && v4 != [(PSGSEIDDetailsController *)self hwState])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PSGSEIDDetailsController_hardwareStateDidChange__block_invoke;
    block[3] = &unk_278324EE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __50__PSGSEIDDetailsController_hardwareStateDidChange__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setupSEIDSpecifier];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 reloadSpecifiers];
  }

  return result;
}

- (void)_updateHwStateChange
{
  if ([(PSGSEIDDetailsController *)self hwState]!= 4 && [(PSGSEIDDetailsController *)self hwState]!= 2)
  {
    v3 = [MEMORY[0x277D2C840] sharedHardwareManager];
    -[PSGSEIDDetailsController setHwState:](self, "setHwState:", [v3 getHwSupport]);
  }
}

- (BOOL)_setupSEIDSpecifier
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = [*(&self->super.super.super.super.super.isa + v3) count];
  if (v4)
  {
    v5 = _PSGLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21CF20000, v5, OS_LOG_TYPE_DEFAULT, "Already initialized", buf, 2u);
    }
  }

  else
  {
    v6 = [(PSGSEIDDetailsController *)self SEIDString];
    if (!v6)
    {
      [PSGSEIDDetailsController _setupSEIDSpecifier];
    }

    v5 = v6;
    v7 = MEMORY[0x277D3FAD8];
    v8 = [(PSGSEIDDetailsController *)self SEIDString];
    v9 = [v7 preferenceSpecifierNamed:v8 target:0 set:0 get:0 detail:0 cell:4 edit:0];

    [v9 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FED8]];
    v15[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v11 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v10;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4 == 0;
}

- (void)_setupSEIDSpecifier
{
  v0 = _PSGLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_21CF20000, v0, OS_LOG_TYPE_DEFAULT, "We should never hit this since we're supposed to wait until the secure element id is returned.", v1, 2u);
  }

  __assert_rtn("[PSGSEIDDetailsController _setupSEIDSpecifier]", "PSGSEIDDetailsController.m", 93, "0");
}

@end