@interface UIAssistantBarSeparatorView
- (BOOL)_usesLightStyle;
- (UIAssistantBarSeparatorView)initWithFrame:(CGRect)frame;
- (void)_updateVisualStyle;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UIAssistantBarSeparatorView

- (UIAssistantBarSeparatorView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = UIAssistantBarSeparatorView;
  v3 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    v5 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIAssistantBarSeparatorView *)v3 setInnerSeparatorView:v5];

    innerSeparatorView = [(UIAssistantBarSeparatorView *)v3 innerSeparatorView];
    [(UIView *)v3 addSubview:innerSeparatorView];
  }

  return v3;
}

- (BOOL)_usesLightStyle
{
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  lightKeyboard = [_inheritedRenderConfig lightKeyboard];

  return lightKeyboard;
}

- (void)_updateVisualStyle
{
  v3 = +[UIColor grayColor];
  v6 = [v3 colorWithAlphaComponent:0.3];

  if (![(UIAssistantBarSeparatorView *)self _usesLightStyle])
  {
    v4 = [UIColor colorWithWhite:1.0 alpha:0.3];

    v6 = v4;
  }

  innerSeparatorView = [(UIAssistantBarSeparatorView *)self innerSeparatorView];
  [innerSeparatorView setBackgroundColor:v6];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = UIAssistantBarSeparatorView;
  [(UIView *)&v3 didMoveToWindow];
  [(UIAssistantBarSeparatorView *)self _updateVisualStyle];
}

- (void)traitCollectionDidChange:(id)change
{
  v3.receiver = self;
  v3.super_class = UIAssistantBarSeparatorView;
  [(UIView *)&v3 traitCollectionDidChange:change];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = UIAssistantBarSeparatorView;
  [(UIView *)&v19 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  innerSeparatorView = [(UIAssistantBarSeparatorView *)self innerSeparatorView];
  [innerSeparatorView setFrame:{0.0, 0.0, v6, 32.0}];

  innerSeparatorView2 = [(UIAssistantBarSeparatorView *)self innerSeparatorView];
  [innerSeparatorView2 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = round(v4 + (v8 - v15) * 0.5);
  innerSeparatorView3 = [(UIAssistantBarSeparatorView *)self innerSeparatorView];
  [innerSeparatorView3 setFrame:{v12, v17, v14, v16}];
}

@end