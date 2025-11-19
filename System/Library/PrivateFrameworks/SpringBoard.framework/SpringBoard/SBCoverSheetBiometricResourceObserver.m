@interface SBCoverSheetBiometricResourceObserver
- (BOOL)pearlMatchEnabledAndPossible;
- (SBCoverSheetBiometricResourceObserver)initWithBiometricResource:(id)a3;
- (SBPearlMatchingStateProviderDelegate)delegate;
- (SBUIBiometricResource)biometricResource;
- (void)biometricResource:(id)a3 observeEvent:(unint64_t)a4;
- (void)setSeenMatchResultSinceScreenOn:(BOOL)a3;
- (void)setSeenMatchResultSinceScreenOn:(int)a3 notifyDelegate:;
@end

@implementation SBCoverSheetBiometricResourceObserver

- (BOOL)pearlMatchEnabledAndPossible
{
  v2 = [(SBCoverSheetBiometricResourceObserver *)self biometricResource];
  v3 = [v2 hasBiometricAuthenticationCapabilityEnabled];
  v4 = [v2 biometricLockoutState];
  v5 = [v2 isPearlDetectEnabled];
  v6 = MGGetBoolAnswer();
  if (v6)
  {
    LOBYTE(v6) = [v2 isFingerDetectEnabled];
  }

  if (v3)
  {
    v7 = (v4 == 0) & (v5 | v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SBUIBiometricResource)biometricResource
{
  WeakRetained = objc_loadWeakRetained(&self->_biometricResource);

  return WeakRetained;
}

- (SBCoverSheetBiometricResourceObserver)initWithBiometricResource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBCoverSheetBiometricResourceObserver;
  v5 = [(SBCoverSheetBiometricResourceObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SBCoverSheetBiometricResourceObserver *)v5 setBiometricResource:v4];
    [v4 addObserver:v6];
    [(SBCoverSheetBiometricResourceObserver *)v6 reset];
  }

  return v6;
}

- (void)setSeenMatchResultSinceScreenOn:(BOOL)a3
{
  if (self->_seenMatchResultSinceScreenOn != a3)
  {
    self->_seenMatchResultSinceScreenOn = a3;
  }
}

- (SBPearlMatchingStateProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSeenMatchResultSinceScreenOn:(int)a3 notifyDelegate:
{
  if (result)
  {
    v4 = result;
    result = [result setSeenMatchResultSinceScreenOn:a2];
    if (a3)
    {
      v5 = [v4 delegate];
      if (v5)
      {
        v6 = v5;
        v5 = objc_opt_respondsToSelector();
        if (v5)
        {
          v5 = [v6 pearlMatchingStateProviderStateChangedForMatchFailure:v4];
        }
      }

      return MEMORY[0x2821F9730](v5);
    }
  }

  return result;
}

- (void)biometricResource:(id)a3 observeEvent:(unint64_t)a4
{
  v6 = a3;
  if (a4 <= 0x1A)
  {
    if (((1 << a4) & 0x18) != 0)
    {
      if (!self)
      {
        goto LABEL_6;
      }

      v7 = v6;
      [(SBCoverSheetBiometricResourceObserver *)self setSeenMatchResultSinceScreenOn:1];
      goto LABEL_5;
    }

    if (((1 << a4) & 0x6008E00) != 0)
    {
      v7 = v6;
      [(SBCoverSheetBiometricResourceObserver *)self setSeenMatchResultSinceScreenOn:1 notifyDelegate:?];
LABEL_5:
      v6 = v7;
    }
  }

LABEL_6:
}

@end