@interface _SBUIBiometricKitInterfaceOperationStateTracker
- (_SBUIBiometricKitInterfaceOperationStateTracker)initWithState:(int64_t)state;
@end

@implementation _SBUIBiometricKitInterfaceOperationStateTracker

- (_SBUIBiometricKitInterfaceOperationStateTracker)initWithState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = _SBUIBiometricKitInterfaceOperationStateTracker;
  result = [(_SBUIBiometricKitInterfaceOperationStateTracker *)&v5 init];
  if (result)
  {
    result->_state = state;
  }

  return result;
}

@end