@interface _UIActivityIndicatorViewStyleView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIActivityIndicatorProvider)provider;
- (_UIActivityIndicatorViewStyleView)initWithProvider:(id)provider;
@end

@implementation _UIActivityIndicatorViewStyleView

- (_UIActivityIndicatorViewStyleView)initWithProvider:(id)provider
{
  v10.receiver = self;
  v10.super_class = _UIActivityIndicatorViewStyleView;
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  providerCopy = provider;
  v8 = [(UIView *)&v10 initWithFrame:v3, v4, v5, v6];
  objc_storeWeak(&v8->_provider, providerCopy);

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 30.0;
  v4 = 30.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIActivityIndicatorProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end