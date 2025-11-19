@interface UISymbolEffectCompletionContext
- (id)sender;
@end

@implementation UISymbolEffectCompletionContext

- (id)sender
{
  WeakRetained = objc_loadWeakRetained(&self->_sender);

  return WeakRetained;
}

@end