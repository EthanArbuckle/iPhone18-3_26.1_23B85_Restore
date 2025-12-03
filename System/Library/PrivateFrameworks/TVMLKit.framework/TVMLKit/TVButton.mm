@interface TVButton
+ (id)_buttonContentWithFrame:(CGRect)frame blurEffectStyle:(int64_t)style blurEnabled:(BOOL)enabled;
- (CGSize)sizeThatFits:(CGSize)fits;
- (TVButton)initWithFrame:(CGRect)frame blurEffectStyle:(int64_t)style blurEnabled:(BOOL)enabled;
- (void)_playButtonAction:(id)action;
- (void)_selectButtonAction:(id)action;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlightColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
- (void)tv_setLayout:(id)layout;
@end

@implementation TVButton

+ (id)_buttonContentWithFrame:(CGRect)frame blurEffectStyle:(int64_t)style blurEnabled:(BOOL)enabled
{
  v5 = [[TVButtonContent alloc] initWithFrame:style blurEffectStyle:enabled blurEnabled:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return v5;
}

- (TVButton)initWithFrame:(CGRect)frame blurEffectStyle:(int64_t)style blurEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12.receiver = self;
  v12.super_class = TVButton;
  v7 = [(TVButton *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v7)
  {
    v8 = objc_opt_class();
    [(TVButton *)v7 bounds];
    v9 = [v8 _buttonContentWithFrame:style blurEffectStyle:enabledCopy blurEnabled:?];
    buttonContent = v7->_buttonContent;
    v7->_buttonContent = v9;

    [(TVButton *)v7 addSubview:v7->_buttonContent];
    [(TVButton *)v7 addTarget:v7 action:sel__selectButtonAction_ forEvents:64];
    [(TVButton *)v7 setCornerRadius:*&_kTVButtonDefaultCornerRadius];
  }

  return v7;
}

- (void)tv_setLayout:(id)layout
{
  v5.receiver = self;
  v5.super_class = TVButton;
  layoutCopy = layout;
  [(UIView *)&v5 tv_setLayout:layoutCopy];
  [(UIView *)self->_buttonContent tv_setLayout:layoutCopy, v5.receiver, v5.super_class];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(TVButtonContent *)self->_buttonContent sizeThatFits:fits.width, fits.height];
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

- (void)setBackgroundColor:(id)color
{
  [(TVButtonContent *)self->_buttonContent setBackgroundColor:color];
  state = [(TVButton *)self state];

  [(TVButton *)self _updateBackgroundColorForState:state];
}

- (void)setHighlightColor:(id)color
{
  [(TVButtonContent *)self->_buttonContent setHighlightColor:color];
  state = [(TVButton *)self state];

  [(TVButton *)self _updateBackgroundColorForState:state];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v9.receiver = self;
  v9.super_class = TVButton;
  coordinatorCopy = coordinator;
  contextCopy = context;
  [(TVButton *)&v9 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  nextFocusedView = [contextCopy nextFocusedView];

  [(TVButton *)self _setFocused:nextFocusedView == self animationCoordinator:coordinatorCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (changeCopy)
  {
    traitCollection = [(TVButton *)self traitCollection];
    if ([traitCollection userInterfaceStyle])
    {
      [changeCopy userInterfaceStyle];
      traitCollection2 = [(TVButton *)self traitCollection];
      [traitCollection2 userInterfaceStyle];
    }
  }

  v7.receiver = self;
  v7.super_class = TVButton;
  [(TVButton *)&v7 traitCollectionDidChange:changeCopy];
}

- (void)_selectButtonAction:(id)action
{
  actionCopy = action;
  selectActionHandler = [(TVButton *)self selectActionHandler];

  if (selectActionHandler)
  {
    selectActionHandler2 = [(TVButton *)self selectActionHandler];
    (selectActionHandler2)[2](selectActionHandler2, self);
  }

  else
  {
    [(IKViewElement *)self->_viewElement tv_dispatchEvent:@"select" canBubble:1 isCancelable:1 extraInfo:0 targetResponder:actionCopy completionBlock:0];
  }
}

- (void)_playButtonAction:(id)action
{
  actionCopy = action;
  playActionHandler = [(TVButton *)self playActionHandler];

  if (playActionHandler)
  {
    playActionHandler2 = [(TVButton *)self playActionHandler];
    (playActionHandler2)[2](playActionHandler2, self);
  }

  else
  {
    [(IKViewElement *)self->_viewElement tv_dispatchEvent:@"play" canBubble:1 isCancelable:1 extraInfo:0 targetResponder:actionCopy completionBlock:0];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = TVButton;
  [(TVButton *)&v5 setSelected:?];
  [(TVButton *)self setSelected:selectedCopy animated:0];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = TVButton;
  [(UIView *)&v5 setHighlighted:?];
  [(TVButton *)self setSelected:highlightedCopy animated:0];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = TVButton;
  [(TVButton *)&v5 setEnabled:?];
  [(TVButtonContent *)self->_buttonContent setEnabled:enabledCopy];
}

@end