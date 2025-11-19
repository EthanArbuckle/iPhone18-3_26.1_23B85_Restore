@interface _TVVibrancyContainerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIView)containedView;
- (_TVVibrancyContainerView)initWithEffect:(id)a3 containingView:(id)a4;
- (void)layoutSubviews;
@end

@implementation _TVVibrancyContainerView

- (_TVVibrancyContainerView)initWithEffect:(id)a3 containingView:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = _TVVibrancyContainerView;
  v7 = [(_TVVibrancyContainerView *)&v11 initWithEffect:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_containedView, v6);
    v9 = [(_TVVibrancyContainerView *)v8 contentView];
    [v9 addSubview:v6];
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(_TVVibrancyContainerView *)self containedView];
  [v5 sizeThatFits:{width, height}];
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
  v3 = [(_TVVibrancyContainerView *)self containedView];
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  [(_TVVibrancyContainerView *)self bounds];
  [v3 setFrame:{v4, v5}];
}

- (UIView)containedView
{
  WeakRetained = objc_loadWeakRetained(&self->_containedView);

  return WeakRetained;
}

@end