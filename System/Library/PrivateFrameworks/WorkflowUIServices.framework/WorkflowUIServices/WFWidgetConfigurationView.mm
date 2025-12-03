@interface WFWidgetConfigurationView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGRect)overridingCardViewFrame;
- (WFWidgetConfigurationView)initWithFrame:(CGRect)frame preferredCardSize:(CGSize)size;
- (void)requestDismissal;
- (void)setContainerView:(id)view;
- (void)setOverridingCardViewFrame:(CGRect)frame;
- (void)setRemoteViewController:(id)controller;
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

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  view = [touchCopy view];
  if (view)
  {
    view2 = [touchCopy view];
    containerView = [(WFWidgetConfigurationView *)self containerView];
    cardView = [containerView cardView];
    v10 = [view2 isDescendantOfView:cardView] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)requestDismissal
{
  containerView = [(WFWidgetConfigurationView *)self containerView];
  [containerView requestDismissal];
}

- (void)setContainerView:(id)view
{
  viewCopy = view;
  containerView = [(WFWidgetConfigurationView *)self containerView];
  [containerView removeFromSuperview];

  containerView = self->_containerView;
  self->_containerView = viewCopy;

  containerView2 = [(WFWidgetConfigurationView *)self containerView];
  [containerView2 setAutoresizingMask:18];

  [(WFWidgetConfigurationView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  containerView3 = [(WFWidgetConfigurationView *)self containerView];
  [containerView3 setFrame:{v9, v11, v13, v15}];

  [(WFWidgetConfigurationView *)self overridingCardViewFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  containerView4 = [(WFWidgetConfigurationView *)self containerView];
  [containerView4 setConfigurationCardViewFrame:{v18, v20, v22, v24}];

  containerView5 = [(WFWidgetConfigurationView *)self containerView];
  [(WFWidgetConfigurationView *)self addSubview:containerView5];
}

- (void)setRemoteViewController:(id)controller
{
  controllerCopy = controller;
  remoteViewController = [(WFWidgetConfigurationView *)self remoteViewController];
  view = [remoteViewController view];
  [view removeFromSuperview];

  objc_storeStrong(&self->_remoteViewController, controller);
  if (controllerCopy)
  {
    view2 = [controllerCopy view];
    [(WFWidgetConfigurationView *)self bounds];
    [view2 setFrame:?];
    [view2 setAutoresizingMask:18];
    [(WFWidgetConfigurationView *)self overridingCardViewFrame];
    [controllerCopy setConfigurationCardViewFrame:?];
    [(WFWidgetConfigurationView *)self insertSubview:view2 atIndex:0];
  }

  containerView = [(WFWidgetConfigurationView *)self containerView];
  [containerView setHidden:controllerCopy != 0];
}

- (void)setOverridingCardViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  self->_overridingCardViewFrame = frame;
  remoteViewController = [(WFWidgetConfigurationView *)self remoteViewController];
  [remoteViewController setConfigurationCardViewFrame:{x, y, width, height}];

  containerView = [(WFWidgetConfigurationView *)self containerView];
  [containerView setConfigurationCardViewFrame:{x, y, width, height}];
}

- (WFWidgetConfigurationView)initWithFrame:(CGRect)frame preferredCardSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v14.receiver = self;
  v14.super_class = WFWidgetConfigurationView;
  v6 = [(WFWidgetConfigurationView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v7 = v6;
  if (v6)
  {
    *(v6 + 51) = width;
    *(v6 + 52) = height;
    v8 = *(MEMORY[0x1E695F050] + 16);
    *(v6 + 440) = *MEMORY[0x1E695F050];
    *(v6 + 456) = v8;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v10 = [whiteColor colorWithAlphaComponent:0.01];
    [(WFWidgetConfigurationView *)v7 setBackgroundColor:v10];

    v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v7 action:sel_requestDismissal];
    [v11 setDelegate:v7];
    [(WFWidgetConfigurationView *)v7 addGestureRecognizer:v11];
    v12 = v7;
  }

  return v7;
}

@end