@interface _TVVibrancyContainerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIView)containedView;
- (_TVVibrancyContainerView)initWithEffect:(id)effect containingView:(id)view;
- (void)layoutSubviews;
@end

@implementation _TVVibrancyContainerView

- (_TVVibrancyContainerView)initWithEffect:(id)effect containingView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = _TVVibrancyContainerView;
  v7 = [(_TVVibrancyContainerView *)&v11 initWithEffect:effect];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_containedView, viewCopy);
    contentView = [(_TVVibrancyContainerView *)v8 contentView];
    [contentView addSubview:viewCopy];
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  containedView = [(_TVVibrancyContainerView *)self containedView];
  [containedView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = _TVVibrancyContainerView;
  [(_TVVibrancyContainerView *)&v6 layoutSubviews];
  containedView = [(_TVVibrancyContainerView *)self containedView];
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  [(_TVVibrancyContainerView *)self bounds];
  [containedView setFrame:{v4, v5}];
}

- (UIView)containedView
{
  WeakRetained = objc_loadWeakRetained(&self->_containedView);

  return WeakRetained;
}

@end