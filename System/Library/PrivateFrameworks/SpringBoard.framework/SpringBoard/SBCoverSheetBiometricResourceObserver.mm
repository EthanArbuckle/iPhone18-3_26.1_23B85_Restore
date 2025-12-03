@interface SBCoverSheetBiometricResourceObserver
- (BOOL)pearlMatchEnabledAndPossible;
- (SBCoverSheetBiometricResourceObserver)initWithBiometricResource:(id)resource;
- (SBPearlMatchingStateProviderDelegate)delegate;
- (SBUIBiometricResource)biometricResource;
- (void)biometricResource:(id)resource observeEvent:(unint64_t)event;
- (void)setSeenMatchResultSinceScreenOn:(BOOL)on;
- (void)setSeenMatchResultSinceScreenOn:(int)on notifyDelegate:;
@end

@implementation SBCoverSheetBiometricResourceObserver

- (BOOL)pearlMatchEnabledAndPossible
{
  biometricResource = [(SBCoverSheetBiometricResourceObserver *)self biometricResource];
  hasBiometricAuthenticationCapabilityEnabled = [biometricResource hasBiometricAuthenticationCapabilityEnabled];
  biometricLockoutState = [biometricResource biometricLockoutState];
  isPearlDetectEnabled = [biometricResource isPearlDetectEnabled];
  v6 = MGGetBoolAnswer();
  if (v6)
  {
    LOBYTE(v6) = [biometricResource isFingerDetectEnabled];
  }

  if (hasBiometricAuthenticationCapabilityEnabled)
  {
    v7 = (biometricLockoutState == 0) & (isPearlDetectEnabled | v6);
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

- (SBCoverSheetBiometricResourceObserver)initWithBiometricResource:(id)resource
{
  resourceCopy = resource;
  v8.receiver = self;
  v8.super_class = SBCoverSheetBiometricResourceObserver;
  v5 = [(SBCoverSheetBiometricResourceObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SBCoverSheetBiometricResourceObserver *)v5 setBiometricResource:resourceCopy];
    [resourceCopy addObserver:v6];
    [(SBCoverSheetBiometricResourceObserver *)v6 reset];
  }

  return v6;
}

- (void)setSeenMatchResultSinceScreenOn:(BOOL)on
{
  if (self->_seenMatchResultSinceScreenOn != on)
  {
    self->_seenMatchResultSinceScreenOn = on;
  }
}

- (SBPearlMatchingStateProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSeenMatchResultSinceScreenOn:(int)on notifyDelegate:
{
  if (result)
  {
    v4 = result;
    result = [result setSeenMatchResultSinceScreenOn:a2];
    if (on)
    {
      delegate = [v4 delegate];
      if (delegate)
      {
        v6 = delegate;
        delegate = objc_opt_respondsToSelector();
        if (delegate)
        {
          delegate = [v6 pearlMatchingStateProviderStateChangedForMatchFailure:v4];
        }
      }

      return MEMORY[0x2821F9730](delegate);
    }
  }

  return result;
}

- (void)biometricResource:(id)resource observeEvent:(unint64_t)event
{
  resourceCopy = resource;
  if (event <= 0x1A)
  {
    if (((1 << event) & 0x18) != 0)
    {
      if (!self)
      {
        goto LABEL_6;
      }

      v7 = resourceCopy;
      [(SBCoverSheetBiometricResourceObserver *)self setSeenMatchResultSinceScreenOn:1];
      goto LABEL_5;
    }

    if (((1 << event) & 0x6008E00) != 0)
    {
      v7 = resourceCopy;
      [(SBCoverSheetBiometricResourceObserver *)self setSeenMatchResultSinceScreenOn:1 notifyDelegate:?];
LABEL_5:
      resourceCopy = v7;
    }
  }

LABEL_6:
}

@end