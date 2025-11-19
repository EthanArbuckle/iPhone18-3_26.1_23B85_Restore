@interface _SBUIBiometricKitInterfaceOperationStateTracker
- (_SBUIBiometricKitInterfaceOperationStateTracker)initWithState:(int64_t)a3;
@end

@implementation _SBUIBiometricKitInterfaceOperationStateTracker

- (_SBUIBiometricKitInterfaceOperationStateTracker)initWithState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _SBUIBiometricKitInterfaceOperationStateTracker;
  result = [(_SBUIBiometricKitInterfaceOperationStateTracker *)&v5 init];
  if (result)
  {
    result->_state = a3;
  }

  return result;
}

@end