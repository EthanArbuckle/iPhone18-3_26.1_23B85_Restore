@interface _SBSystemApertureRestrictionServerAssertionWrapper
- (BSServiceConnection)associatedConnection;
- (NSString)invalidationReason;
@end

@implementation _SBSystemApertureRestrictionServerAssertionWrapper

- (NSString)invalidationReason
{
  if (self->_invalidationReason)
  {
    return self->_invalidationReason;
  }

  else
  {
    return @"unspecified";
  }
}

- (BSServiceConnection)associatedConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedConnection);

  return WeakRetained;
}

@end