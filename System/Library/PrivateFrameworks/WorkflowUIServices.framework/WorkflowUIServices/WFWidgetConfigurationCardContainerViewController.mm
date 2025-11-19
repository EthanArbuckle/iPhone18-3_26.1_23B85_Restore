@interface WFWidgetConfigurationCardContainerViewController
- (CGRect)configurationCardViewFrame;
- (MTVisualStylingProvider)fillProvider;
- (MTVisualStylingProvider)strokeProvider;
- (UIColor)containerBackgroundColor;
- (WFWidgetConfigurationCardContainerViewController)initWithRequest:(id)a3 contentViewController:(id)a4;
- (WFWidgetConfigurationContainerViewControllerProtocolDelegate)containerDelegate;
- (void)loadView;
- (void)setConfigurationCardViewFrame:(CGRect)a3;
- (void)setContainerBackgroundColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateUserInterfaceStyle;
- (void)viewDidLoad;
- (void)widgetConfigurationCardViewDidRequestToCancel:(id)a3;
- (void)widgetConfigurationCardViewDidRequestToClose:(id)a3;
@end

@implementation WFWidgetConfigurationCardContainerViewController

- (WFWidgetConfigurationContainerViewControllerProtocolDelegate)containerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);

  return WeakRetained;
}

- (void)widgetConfigurationCardViewDidRequestToCancel:(id)a3
{
  v4 = [(WFWidgetConfigurationCardContainerViewController *)self containerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFWidgetConfigurationCardContainerViewController *)self containerDelegate];
    [v6 widgetConfigurationContainerViewControllerDidRequestToCancel:self];
  }
}

- (void)widgetConfigurationCardViewDidRequestToClose:(id)a3
{
  v4 = [(WFWidgetConfigurationCardContainerViewController *)self containerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFWidgetConfigurationCardContainerViewController *)self containerDelegate];
    [v6 widgetConfigurationContainerViewControllerDidRequestToClose:self];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFWidgetConfigurationCardContainerViewController;
  v4 = a3;
  [(WFWidgetConfigurationCardContainerViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(WFWidgetConfigurationCardContainerViewController *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(WFWidgetConfigurationCardContainerViewController *)self updateUserInterfaceStyle];
  }
}

- (void)updateUserInterfaceStyle
{
  v4 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  v5 = [v4 backgroundColor];
  v6 = [(WFWidgetConfigurationCardContainerViewController *)self traitCollection];
  v21 = [v5 resolvedColorWithTraitCollection:v6];

  v7 = v21;
  if (WFCGColorPerceivedLightness([v21 CGColor]) > 0.7)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  v10 = [v9 traitCollection];
  v11 = [v10 userInterfaceStyle];
  if (v11)
  {
    v12 = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
    v2 = [v12 traitCollection];
    if ([v2 userInterfaceStyle] != v8)
    {

      goto LABEL_15;
    }

    v19 = v12;
  }

  v13 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  v14 = [v13 traitCollection];
  if ([v14 userInterfaceStyle])
  {
    v15 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
    v16 = [v15 traitCollection];
    v20 = [v16 userInterfaceStyle] != v8;
  }

  else
  {
    v20 = 0;
  }

  if (v11)
  {
  }

  if (!v20)
  {
    v8 = 0;
  }

LABEL_15:
  v17 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  [v17 setOverrideUserInterfaceStyle:v8];

  v18 = [(WFWidgetConfigurationCardContainerViewController *)self contentViewController];
  [v18 setOverrideUserInterfaceStyle:v8];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = WFWidgetConfigurationCardContainerViewController;
  [(WFWidgetConfigurationCardContainerViewController *)&v6 viewDidLoad];
  v3 = [(WFWidgetConfigurationCardContainerViewController *)self request];
  v4 = [v3 widgetTintColor];
  v5 = [(WFWidgetConfigurationCardContainerViewController *)self view];
  [v5 setTintColor:v4];

  [(WFWidgetConfigurationCardContainerViewController *)self updateUserInterfaceStyle];
}

- (void)loadView
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  v5 = v4;

  v6 = [(WFWidgetConfigurationCardContainerViewController *)self request];
  if (v6)
  {
    v7 = [(WFWidgetConfigurationCardContainerViewController *)self request];
    [v7 defaultCardSize];
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

  v14 = [(WFWidgetConfigurationCardContainerViewController *)self configurationView];
  [v14 setAutoresizingMask:18];

  v15 = [(WFWidgetConfigurationCardContainerViewController *)self contentViewController];
  [(WFWidgetConfigurationCardContainerViewController *)self addChildViewController:v15];

  v16 = [(WFWidgetConfigurationCardContainerViewController *)self contentViewController];
  v70 = [v16 view];

  v17 = [WFWidgetConfigurationCardView alloc];
  v18 = [(WFWidgetConfigurationCardContainerViewController *)self request];
  v19 = [(WFWidgetConfigurationCardView *)v17 initWithRequest:v18 contentView:v70];
  [(WFWidgetConfigurationCardContainerViewController *)self setCardView:v19];

  v20 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  [v20 setDelegate:self];

  v21 = [(WFWidgetConfigurationCardContainerViewController *)self request];
  v22 = [v21 widgetPrimaryColor];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = [MEMORY[0x1E69DC888] wf_defaultWidgetConfigurationCardBackgroundColor];
  }

  v25 = v24;

  v26 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  [v26 setBackgroundColor:v25];

  v27 = [(WFWidgetConfigurationCardContainerViewController *)self request];
  v28 = [v27 widgetTintColor];
  v29 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  [v29 setTintColor:v28];

  v30 = [WFWidgetConfigurationContainerView alloc];
  v31 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  v32 = [(WFWidgetConfigurationContainerView *)v30 initWithCardView:v31 preferredSize:v9, v11];
  [(WFWidgetConfigurationCardContainerViewController *)self setContainerView:v32];

  v33 = [(WFWidgetConfigurationCardContainerViewController *)self request];
  v34 = [v33 resolvedWidgetConfigurationStyle];
  v35 = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  [v35 setWidgetConfigurationStyle:v34];

  v36 = [(WFWidgetConfigurationCardContainerViewController *)self request];

  if (v36)
  {
    v37 = [(WFWidgetConfigurationCardContainerViewController *)self request];
    [v37 initialCardFrame];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = [(WFWidgetConfigurationCardContainerViewController *)self configurationView];
    [v46 setOverridingCardViewFrame:{v39, v41, v43, v45}];

    v47 = [(WFWidgetConfigurationCardContainerViewController *)self request];
    [v47 initialCardFrame];
    LODWORD(v46) = CGRectIsNull(v72);

    v48 = [(WFWidgetConfigurationCardContainerViewController *)self request];
    v49 = v48;
    if (v46)
    {
      [v48 defaultCardSize];
    }

    else
    {
      [v48 initialCardFrame];
      v50 = v52;
      v51 = v53;
    }

    [(WFWidgetConfigurationCardContainerViewController *)self setPreferredContentSize:v50, v51];
  }

  else
  {
    [(WFWidgetConfigurationCardContainerViewController *)self setPreferredContentSize:v9, v11];
  }

  v54 = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  [v54 setAutoresizingMask:18];

  v55 = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  [v55 setDelegate:self];

  v56 = [(WFWidgetConfigurationCardContainerViewController *)self view];
  [v56 bounds];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  [v65 setFrame:{v58, v60, v62, v64}];

  v66 = [(WFWidgetConfigurationCardContainerViewController *)self contentViewController];
  [(WFWidgetConfigurationCardContainerViewController *)self addChildViewController:v66];

  v67 = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  v68 = [(WFWidgetConfigurationCardContainerViewController *)self configurationView];
  [v68 setContainerView:v67];

  v69 = [(WFWidgetConfigurationCardContainerViewController *)self contentViewController];
  [v69 didMoveToParentViewController:self];
}

- (MTVisualStylingProvider)fillProvider
{
  v2 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  v3 = [v2 fillProvider];

  return v3;
}

- (MTVisualStylingProvider)strokeProvider
{
  v2 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  v3 = [v2 strokeProvider];

  return v3;
}

- (void)setConfigurationCardViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  [v7 setConfigurationCardViewFrame:{x, y, width, height}];
}

- (CGRect)configurationCardViewFrame
{
  v2 = [(WFWidgetConfigurationCardContainerViewController *)self containerView];
  [v2 configurationCardViewFrame];
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

- (void)setContainerBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  [v5 setBackgroundColor:v4];

  [(WFWidgetConfigurationCardContainerViewController *)self updateUserInterfaceStyle];
}

- (UIColor)containerBackgroundColor
{
  v2 = [(WFWidgetConfigurationCardContainerViewController *)self cardView];
  v3 = [v2 backgroundColor];

  return v3;
}

- (WFWidgetConfigurationCardContainerViewController)initWithRequest:(id)a3 contentViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WFWidgetConfigurationCardContainerViewController;
  v9 = [(WFWidgetConfigurationCardContainerViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_contentViewController, a4);
    v11 = v10;
  }

  return v10;
}

@end