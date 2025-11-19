@interface SBCaptureButtonDisabledUserDefaultRestriction
- (SBCaptureButtonDisabledUserDefaultRestriction)initWithCoordinator:(id)a3;
- (void)_evaluateCaptureButtonDisablement;
@end

@implementation SBCaptureButtonDisabledUserDefaultRestriction

- (SBCaptureButtonDisabledUserDefaultRestriction)initWithCoordinator:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SBCaptureButtonDisabledUserDefaultRestriction;
  v5 = [(SBCaptureButtonInternalRestrictionGlue *)&v21 initWithCoordinator:v4];
  if (v5)
  {
    v6 = +[SBDefaults localDefaults];
    v7 = [v6 captureButtonDefaults];
    captureButtonDefaults = v5->_captureButtonDefaults;
    v5->_captureButtonDefaults = v7;

    objc_initWeak(&location, v5);
    v9 = v5->_captureButtonDefaults;
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"disableCaptureButton"];
    v11 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85CD0];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __69__SBCaptureButtonDisabledUserDefaultRestriction_initWithCoordinator___block_invoke;
    v18 = &unk_2783A8C68;
    objc_copyWeak(&v19, &location);
    v13 = [(SBCaptureButtonDefaults *)v9 observeDefault:v10 onQueue:v11 withBlock:&v15];

    [(SBCaptureButtonDisabledUserDefaultRestriction *)v5 _evaluateCaptureButtonDisablement:v15];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __69__SBCaptureButtonDisabledUserDefaultRestriction_initWithCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _evaluateCaptureButtonDisablement];
    WeakRetained = v2;
  }
}

- (void)_evaluateCaptureButtonDisablement
{
  if ([(SBCaptureButtonDefaults *)self->_captureButtonDefaults disableCaptureButton])
  {

    [(SBCaptureButtonInternalRestrictionGlue *)self acquireRestriction:@"disabled by UserDefault"];
  }

  else
  {

    [(SBCaptureButtonInternalRestrictionGlue *)self relinquishRestriction];
  }
}

@end