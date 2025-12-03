@interface WFWidgetConfigurationCardContainerViewController
- (CGRect)configurationCardViewFrame;
- (MTVisualStylingProvider)fillProvider;
- (MTVisualStylingProvider)strokeProvider;
- (UIColor)containerBackgroundColor;
- (WFWidgetConfigurationCardContainerViewController)initWithRequest:(id)request contentViewController:(id)controller;
- (WFWidgetConfigurationContainerViewControllerProtocolDelegate)containerDelegate;
- (void)loadView;
- (void)setConfigurationCardViewFrame:(CGRect)frame;
- (void)setContainerBackgroundColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
- (void)updateUserInterfaceStyle;
- (void)viewDidLoad;
- (void)widgetConfigurationCardViewDidRequestToCancel:(id)cancel;
- (void)widgetConfigurationCardViewDidRequestToClose:(id)close;
@end

@implementation WFWidgetConfigurationCardContainerViewController

- (WFWidgetConfigurationContainerViewControllerProtocolDelegate)containerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);

  return WeakRetained;
}

- (void)widgetConfigurationCardViewDidRequestToCancel:(id)cancel
{
  containerDelegate = [(WFWidgetConfigurationCardContainerViewController *)self containerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    containerDelegate2 = [(WFWidgetConfigurationCardContainerViewController *)self containerDelegate];
    [containerDelegate2 widgetConfigurationContainerViewControllerDidRequestToCancel:self];
  }
}

- (void)widgetConfigurationCardViewDidRequestToClose:(id)close
{
  containerDelegate = [(WFWidgetConfigurationCardContainerViewController *)self containerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    containerDelegate2 = [(WFWidgetConfigurationCardContainerViewController *)self containerDelegate];
    [containerDelegate2 widgetConfigurationContainerViewControllerDidRequestToClose:self];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = WFWidgetConfigurationCardContainerViewController;
  changeCopy = change;
  [(WFWidgetConfigurationCardContainerViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(WFWidgetConfigurationCardContainerViewController *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(WFWidgetConfigurationCardContainerViewController *)self updateUserInterfaceStyle];
  }
}

- (void)updateUserInterfaceStyle
{
  cardView = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  backgroundColor = [cardView backgroundColor];
  traitCollection = [(WFWidgetConfigurationCardContainerViewController *)self traitCollection];
  v21 = [backgroundColor resolvedColorWithTraitCollection:traitCollection];

  v7 = v21;
  if (WFCGColorPerceivedLightness([v21 CGColor]) > 0.7)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  containerView = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  traitCollection2 = [containerView traitCollection];
  userInterfaceStyle = [traitCollection2 userInterfaceStyle];
  if (userInterfaceStyle)
  {
    containerView2 = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
    traitCollection3 = [containerView2 traitCollection];
    if ([traitCollection3 userInterfaceStyle] != v8)
    {

      goto LABEL_15;
    }

    v19 = containerView2;
  }

  cardView2 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  traitCollection4 = [cardView2 traitCollection];
  if ([traitCollection4 userInterfaceStyle])
  {
    cardView3 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
    traitCollection5 = [cardView3 traitCollection];
    v20 = [traitCollection5 userInterfaceStyle] != v8;
  }

  else
  {
    v20 = 0;
  }

  if (userInterfaceStyle)
  {
  }

  if (!v20)
  {
    v8 = 0;
  }

LABEL_15:
  cardView4 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  [cardView4 setOverrideUserInterfaceStyle:v8];

  contentViewController = [(WFWidgetConfigurationCardContainerViewController *)self contentViewController];
  [contentViewController setOverrideUserInterfaceStyle:v8];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = WFWidgetConfigurationCardContainerViewController;
  [(WFWidgetConfigurationCardContainerViewController *)&v6 viewDidLoad];
  request = [(WFWidgetConfigurationCardContainerViewController *)self request];
  widgetTintColor = [request widgetTintColor];
  view = [(WFWidgetConfigurationCardContainerViewController *)self view];
  [view setTintColor:widgetTintColor];

  [(WFWidgetConfigurationCardContainerViewController *)self updateUserInterfaceStyle];
}

- (void)loadView
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = v4;

  request = [(WFWidgetConfigurationCardContainerViewController *)self request];
  if (request)
  {
    request2 = [(WFWidgetConfigurationCardContainerViewController *)self request];
    [request2 defaultCardSize];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v9 = v5 + -56.0;
    v11 = ceil(v9 * 0.7);
  }

  v12 = [WFWidgetConfigurationView alloc];
  v13 = [(WFWidgetConfigurationView *)v12 initWithFrame:*MEMORY[0x1E695F058] preferredCardSize:*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), v9, v11];
  [(WFWidgetConfigurationCardContainerViewController *)self setView:v13];

  configurationView = [(WFWidgetConfigurationCardContainerViewController *)self configurationView];
  [configurationView setAutoresizingMask:18];

  contentViewController = [(WFWidgetConfigurationCardContainerViewController *)self contentViewController];
  [(WFWidgetConfigurationCardContainerViewController *)self addChildViewController:contentViewController];

  contentViewController2 = [(WFWidgetConfigurationCardContainerViewController *)self contentViewController];
  view = [contentViewController2 view];

  v17 = [WFWidgetConfigurationCardView alloc];
  request3 = [(WFWidgetConfigurationCardContainerViewController *)self request];
  v19 = [(WFWidgetConfigurationCardView *)v17 initWithRequest:request3 contentView:view];
  [(WFWidgetConfigurationCardContainerViewController *)self setCardView:v19];

  cardView = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  [cardView setDelegate:self];

  request4 = [(WFWidgetConfigurationCardContainerViewController *)self request];
  widgetPrimaryColor = [request4 widgetPrimaryColor];
  v23 = widgetPrimaryColor;
  if (widgetPrimaryColor)
  {
    wf_defaultWidgetConfigurationCardBackgroundColor = widgetPrimaryColor;
  }

  else
  {
    wf_defaultWidgetConfigurationCardBackgroundColor = [MEMORY[0x1E69DC888] wf_defaultWidgetConfigurationCardBackgroundColor];
  }

  v25 = wf_defaultWidgetConfigurationCardBackgroundColor;

  cardView2 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  [cardView2 setBackgroundColor:v25];

  request5 = [(WFWidgetConfigurationCardContainerViewController *)self request];
  widgetTintColor = [request5 widgetTintColor];
  cardView3 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  [cardView3 setTintColor:widgetTintColor];

  v30 = [WFWidgetConfigurationContainerView alloc];
  cardView4 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  v32 = [(WFWidgetConfigurationContainerView *)v30 initWithCardView:cardView4 preferredSize:v9, v11];
  [(WFWidgetConfigurationCardContainerViewController *)self setContainerView:v32];

  request6 = [(WFWidgetConfigurationCardContainerViewController *)self request];
  resolvedWidgetConfigurationStyle = [request6 resolvedWidgetConfigurationStyle];
  containerView = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  [containerView setWidgetConfigurationStyle:resolvedWidgetConfigurationStyle];

  request7 = [(WFWidgetConfigurationCardContainerViewController *)self request];

  if (request7)
  {
    request8 = [(WFWidgetConfigurationCardContainerViewController *)self request];
    [request8 initialCardFrame];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    configurationView2 = [(WFWidgetConfigurationCardContainerViewController *)self configurationView];
    [configurationView2 setOverridingCardViewFrame:{v39, v41, v43, v45}];

    request9 = [(WFWidgetConfigurationCardContainerViewController *)self request];
    [request9 initialCardFrame];
    LODWORD(configurationView2) = CGRectIsNull(v72);

    request10 = [(WFWidgetConfigurationCardContainerViewController *)self request];
    v49 = request10;
    if (configurationView2)
    {
      [request10 defaultCardSize];
    }

    else
    {
      [request10 initialCardFrame];
      v50 = v52;
      v51 = v53;
    }

    [(WFWidgetConfigurationCardContainerViewController *)self setPreferredContentSize:v50, v51];
  }

  else
  {
    [(WFWidgetConfigurationCardContainerViewController *)self setPreferredContentSize:v9, v11];
  }

  containerView2 = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  [containerView2 setAutoresizingMask:18];

  containerView3 = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  [containerView3 setDelegate:self];

  view2 = [(WFWidgetConfigurationCardContainerViewController *)self view];
  [view2 bounds];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  containerView4 = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  [containerView4 setFrame:{v58, v60, v62, v64}];

  contentViewController3 = [(WFWidgetConfigurationCardContainerViewController *)self contentViewController];
  [(WFWidgetConfigurationCardContainerViewController *)self addChildViewController:contentViewController3];

  containerView5 = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  configurationView3 = [(WFWidgetConfigurationCardContainerViewController *)self configurationView];
  [configurationView3 setContainerView:containerView5];

  contentViewController4 = [(WFWidgetConfigurationCardContainerViewController *)self contentViewController];
  [contentViewController4 didMoveToParentViewController:self];
}

- (MTVisualStylingProvider)fillProvider
{
  cardView = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  fillProvider = [cardView fillProvider];

  return fillProvider;
}

- (MTVisualStylingProvider)strokeProvider
{
  cardView = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  strokeProvider = [cardView strokeProvider];

  return strokeProvider;
}

- (void)setConfigurationCardViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerView = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  [containerView setConfigurationCardViewFrame:{x, y, width, height}];
}

- (CGRect)configurationCardViewFrame
{
  containerView = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  [containerView configurationCardViewFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setContainerBackgroundColor:(id)color
{
  colorCopy = color;
  cardView = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  [cardView setBackgroundColor:colorCopy];

  [(WFWidgetConfigurationCardContainerViewController *)self updateUserInterfaceStyle];
}

- (UIColor)containerBackgroundColor
{
  cardView = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  backgroundColor = [cardView backgroundColor];

  return backgroundColor;
}

- (WFWidgetConfigurationCardContainerViewController)initWithRequest:(id)request contentViewController:(id)controller
{
  requestCopy = request;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = WFWidgetConfigurationCardContainerViewController;
  v9 = [(WFWidgetConfigurationCardContainerViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_contentViewController, controller);
    v11 = v10;
  }

  return v10;
}

@end