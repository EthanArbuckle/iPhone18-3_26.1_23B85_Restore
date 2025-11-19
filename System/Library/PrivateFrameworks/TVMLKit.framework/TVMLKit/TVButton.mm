@interface TVButton
+ (id)_buttonContentWithFrame:(CGRect)a3 blurEffectStyle:(int64_t)a4 blurEnabled:(BOOL)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (TVButton)initWithFrame:(CGRect)a3 blurEffectStyle:(int64_t)a4 blurEnabled:(BOOL)a5;
- (void)_playButtonAction:(id)a3;
- (void)_selectButtonAction:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlightColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)tv_setLayout:(id)a3;
@end

@implementation TVButton

+ (id)_buttonContentWithFrame:(CGRect)a3 blurEffectStyle:(int64_t)a4 blurEnabled:(BOOL)a5
{
  v5 = [[TVButtonContent alloc] initWithFrame:a4 blurEffectStyle:a5 blurEnabled:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  return v5;
}

- (TVButton)initWithFrame:(CGRect)a3 blurEffectStyle:(int64_t)a4 blurEnabled:(BOOL)a5
{
  v5 = a5;
  v12.receiver = self;
  v12.super_class = TVButton;
  v7 = [(TVButton *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v7)
  {
    v8 = objc_opt_class();
    [(TVButton *)v7 bounds];
    v9 = [v8 _buttonContentWithFrame:a4 blurEffectStyle:v5 blurEnabled:?];
    buttonContent = v7->_buttonContent;
    v7->_buttonContent = v9;

    [(TVButton *)v7 addSubview:v7->_buttonContent];
    [(TVButton *)v7 addTarget:v7 action:sel__selectButtonAction_ forEvents:64];
    [(TVButton *)v7 setCornerRadius:*&_kTVButtonDefaultCornerRadius];
  }

  return v7;
}

- (void)tv_setLayout:(id)a3
{
  v5.receiver = self;
  v5.super_class = TVButton;
  v4 = a3;
  [(UIView *)&v5 tv_setLayout:v4];
  [(UIView *)self->_buttonContent tv_setLayout:v4, v5.receiver, v5.super_class];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(TVButtonContent *)self->_buttonContent sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = TVButton;
  [(TVButton *)&v4 layoutSubviews];
  buttonContent = self->_buttonContent;
  [(TVButton *)self bounds];
  [(_UIFloatingContentView *)buttonContent setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  [(TVButtonContent *)self->_buttonContent setBackgroundColor:a3];
  v4 = [(TVButton *)self state];

  [(TVButton *)self _updateBackgroundColorForState:v4];
}

- (void)setHighlightColor:(id)a3
{
  [(TVButtonContent *)self->_buttonContent setHighlightColor:a3];
  v4 = [(TVButton *)self state];

  [(TVButton *)self _updateBackgroundColorForState:v4];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v9.receiver = self;
  v9.super_class = TVButton;
  v6 = a4;
  v7 = a3;
  [(TVButton *)&v9 didUpdateFocusInContext:v7 withAnimationCoordinator:v6];
  v8 = [v7 nextFocusedView];

  [(TVButton *)self _setFocused:v8 == self animationCoordinator:v6];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(TVButton *)self traitCollection];
    if ([v5 userInterfaceStyle])
    {
      [v4 userInterfaceStyle];
      v6 = [(TVButton *)self traitCollection];
      [v6 userInterfaceStyle];
    }
  }

  v7.receiver = self;
  v7.super_class = TVButton;
  [(TVButton *)&v7 traitCollectionDidChange:v4];
}

- (void)_selectButtonAction:(id)a3
{
  v6 = a3;
  v4 = [(TVButton *)self selectActionHandler];

  if (v4)
  {
    v5 = [(TVButton *)self selectActionHandler];
    (v5)[2](v5, self);
  }

  else
  {
    [(IKViewElement *)self->_viewElement tv_dispatchEvent:@"select" canBubble:1 isCancelable:1 extraInfo:0 targetResponder:v6 completionBlock:0];
  }
}

- (void)_playButtonAction:(id)a3
{
  v6 = a3;
  v4 = [(TVButton *)self playActionHandler];

  if (v4)
  {
    v5 = [(TVButton *)self playActionHandler];
    (v5)[2](v5, self);
  }

  else
  {
    [(IKViewElement *)self->_viewElement tv_dispatchEvent:@"play" canBubble:1 isCancelable:1 extraInfo:0 targetResponder:v6 completionBlock:0];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = TVButton;
  [(TVButton *)&v5 setSelected:?];
  [(TVButton *)self setSelected:v3 animated:0];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = TVButton;
  [(UIView *)&v5 setHighlighted:?];
  [(TVButton *)self setSelected:v3 animated:0];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = TVButton;
  [(TVButton *)&v5 setEnabled:?];
  [(TVButtonContent *)self->_buttonContent setEnabled:v3];
}

@end