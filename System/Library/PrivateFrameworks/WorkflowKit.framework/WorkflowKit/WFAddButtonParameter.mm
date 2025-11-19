@interface WFAddButtonParameter
- (WFAddButtonParameterDelegate)delegate;
@end

@implementation WFAddButtonParameter

- (WFAddButtonParameterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end