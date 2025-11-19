@interface WFUIKitParameterEditingController
- (WFUIKitParameterEditingControllerDelegate)delegate;
@end

@implementation WFUIKitParameterEditingController

- (WFUIKitParameterEditingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end