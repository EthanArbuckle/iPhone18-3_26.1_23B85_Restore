@interface WFWidgetConfigurationView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGRect)overridingCardViewFrame;
- (WFWidgetConfigurationView)initWithFrame:(CGRect)a3 preferredCardSize:(CGSize)a4;
- (void)requestDismissal;
- (void)setContainerView:(id)a3;
- (void)setOverridingCardViewFrame:(CGRect)a3;
- (void)setRemoteViewController:(id)a3;
@end

@implementation WFWidgetConfigurationView

- (CGRect)overridingCardViewFrame
{
  x = self->_overridingCardViewFrame.origin.x;
  y = self->_overridingCardViewFrame.origin.y;
  width = self->_overridingCardViewFrame.size.width;
  height = self->_overridingCardViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [v5 view];
  if (v6)
  {
    v7 = [v5 view];
    v8 = [(WFWidgetConfigurationView *)self containerView];
    v9 = [v8 cardView];
    v10 = [v7 isDescendantOfView:v9] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)requestDismissal
{
  v2 = [(WFWidgetConfigurationView *)self containerView];
  [v2 requestDismissal];
}

- (void)setContainerView:(id)a3
{
  v4 = a3;
  v5 = [(WFWidgetConfigurationView *)self containerView];
  [v5 removeFromSuperview];

  containerView = self->_containerView;
  self->_containerView = v4;

  v7 = [(WFWidgetConfigurationView *)self containerView];
  [v7 setAutoresizingMask:18];

  [(WFWidgetConfigurationView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(WFWidgetConfigurationView *)self containerView];
  [v16 setFrame:{v9, v11, v13, v15}];

  [(WFWidgetConfigurationView *)self overridingCardViewFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(WFWidgetConfigurationView *)self containerView];
  [v25 setConfigurationCardViewFrame:{v18, v20, v22, v24}];

  v26 = [(WFWidgetConfigurationView *)self containerView];
  [(WFWidgetConfigurationView *)self addSubview:v26];
}

- (void)setRemoteViewController:(id)a3
{
  v9 = a3;
  v5 = [(WFWidgetConfigurationView *)self remoteViewController];
  v6 = [v5 view];
  [v6 removeFromSuperview];

  objc_storeStrong(&self->_remoteViewController, a3);
  if (v9)
  {
    v7 = [v9 view];
    [(WFWidgetConfigurationView *)self bounds];
    [v7 setFrame:?];
    [v7 setAutoresizingMask:18];
    [(WFWidgetConfigurationView *)self overridingCardViewFrame];
    [v9 setConfigurationCardViewFrame:?];
    [(WFWidgetConfigurationView *)self insertSubview:v7 atIndex:0];
  }

  v8 = [(WFWidgetConfigurationView *)self containerView];
  [v8 setHidden:v9 != 0];
}

- (void)setOverridingCardViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_overridingCardViewFrame = a3;
  v8 = [(WFWidgetConfigurationView *)self remoteViewController];
  [v8 setConfigurationCardViewFrame:{x, y, width, height}];

  v9 = [(WFWidgetConfigurationView *)self containerView];
  [v9 setConfigurationCardViewFrame:{x, y, width, height}];
}

- (WFWidgetConfigurationView)initWithFrame:(CGRect)a3 preferredCardSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v14.receiver = self;
  v14.super_class = WFWidgetConfigurationView;
  v6 = [(WFWidgetConfigurationView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v7 = v6;
  if (v6)
  {
    *(v6 + 51) = width;
    *(v6 + 52) = height;
    v8 = *(MEMORY[0x1E695F050] + 16);
    *(v6 + 440) = *MEMORY[0x1E695F050];
    *(v6 + 456) = v8;
    v9 = [MEMORY[0x1E69DC888] whiteColor];
    v10 = [v9 colorWithAlphaComponent:0.01];
    [(WFWidgetConfigurationView *)v7 setBackgroundColor:v10];

    v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v7 action:sel_requestDismissal];
    [v11 setDelegate:v7];
    [(WFWidgetConfigurationView *)v7 addGestureRecognizer:v11];
    v12 = v7;
  }

  return v7;
}

@end