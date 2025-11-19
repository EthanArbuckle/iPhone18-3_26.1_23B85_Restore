@interface SBExternalDefaults
- (SBBiometricKitDefaults)biometricKitDefaults;
- (SBExternalDemoDefaults)demoDefaults;
- (SBExternalDuetDefaults)duetDefaults;
- (SBExternalGlobalDefaults)globalDefaults;
- (SBExternalNotesDefaults)notesDefaults;
- (SBExternalPhoneDefaults)phoneDefaults;
- (SBExternalSettingsDefaults)settingsDefaults;
- (SBExternalSetupDefaults)setupDefaults;
- (SBExternalSoundsDefaults)soundDefaults;
- (SBExternalWifiDefaults)networkDefaults;
@end

@implementation SBExternalDefaults

- (SBExternalNotesDefaults)notesDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SBExternalDefaults_notesDefaults__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  if (notesDefaults___once != -1)
  {
    dispatch_once(&notesDefaults___once, block);
  }

  return self->_lazy_notesDefaults;
}

- (SBExternalGlobalDefaults)globalDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SBExternalDefaults_globalDefaults__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  if (globalDefaults___once != -1)
  {
    dispatch_once(&globalDefaults___once, block);
  }

  return self->_lazy_globalDefaults;
}

void __36__SBExternalDefaults_globalDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBExternalGlobalDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;
}

- (SBExternalDuetDefaults)duetDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SBExternalDefaults_duetDefaults__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  if (duetDefaults___once != -1)
  {
    dispatch_once(&duetDefaults___once, block);
  }

  return self->_lazy_duetDefaults;
}

void __34__SBExternalDefaults_duetDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBExternalDuetDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

- (SBExternalDemoDefaults)demoDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SBExternalDefaults_demoDefaults__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  if (demoDefaults___once != -1)
  {
    dispatch_once(&demoDefaults___once, block);
  }

  return self->_lazy_demoDefaults;
}

void __34__SBExternalDefaults_demoDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBExternalDemoDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

- (SBExternalSetupDefaults)setupDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SBExternalDefaults_setupDefaults__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  if (setupDefaults___once != -1)
  {
    dispatch_once(&setupDefaults___once, block);
  }

  return self->_lazy_setupDefaults;
}

void __35__SBExternalDefaults_setupDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBExternalSetupDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

- (SBExternalSettingsDefaults)settingsDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SBExternalDefaults_settingsDefaults__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  if (settingsDefaults___once != -1)
  {
    dispatch_once(&settingsDefaults___once, block);
  }

  return self->_lazy_settingsDefaults;
}

void __38__SBExternalDefaults_settingsDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBExternalSettingsDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (SBExternalPhoneDefaults)phoneDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SBExternalDefaults_phoneDefaults__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  if (phoneDefaults___once != -1)
  {
    dispatch_once(&phoneDefaults___once, block);
  }

  return self->_lazy_phoneDefaults;
}

void __35__SBExternalDefaults_phoneDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBExternalPhoneDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

- (SBExternalWifiDefaults)networkDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SBExternalDefaults_networkDefaults__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  if (networkDefaults___once != -1)
  {
    dispatch_once(&networkDefaults___once, block);
  }

  return self->_lazy_networkDefaults;
}

void __37__SBExternalDefaults_networkDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBExternalWifiDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

- (SBExternalSoundsDefaults)soundDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SBExternalDefaults_soundDefaults__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  if (soundDefaults___once != -1)
  {
    dispatch_once(&soundDefaults___once, block);
  }

  return self->_lazy_soundDefaults;
}

void __35__SBExternalDefaults_soundDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBExternalSoundsDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

void __35__SBExternalDefaults_notesDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBExternalNotesDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
}

- (SBBiometricKitDefaults)biometricKitDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SBExternalDefaults_biometricKitDefaults__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  if (biometricKitDefaults___once != -1)
  {
    dispatch_once(&biometricKitDefaults___once, block);
  }

  return self->_lazy_biometricKitDefaults;
}

void __42__SBExternalDefaults_biometricKitDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBBiometricKitDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
}

@end