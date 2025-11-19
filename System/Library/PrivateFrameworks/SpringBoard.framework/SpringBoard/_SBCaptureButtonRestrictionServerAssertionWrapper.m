@interface _SBCaptureButtonRestrictionServerAssertionWrapper
- (BSServiceConnection)associatedConnection;
@end

@implementation _SBCaptureButtonRestrictionServerAssertionWrapper

- (BSServiceConnection)associatedConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedConnection);

  return WeakRetained;
}

@end