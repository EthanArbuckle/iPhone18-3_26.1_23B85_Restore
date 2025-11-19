@interface _UITextLayoutView
- (id)delegate;
- (void)layoutSubviews;
@end

@implementation _UITextLayoutView

- (void)layoutSubviews
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained _layoutText];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end