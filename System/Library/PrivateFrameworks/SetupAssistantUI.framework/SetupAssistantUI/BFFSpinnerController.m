@interface BFFSpinnerController
- (BFFFlowItemDelegate)delegate;
@end

@implementation BFFSpinnerController

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end