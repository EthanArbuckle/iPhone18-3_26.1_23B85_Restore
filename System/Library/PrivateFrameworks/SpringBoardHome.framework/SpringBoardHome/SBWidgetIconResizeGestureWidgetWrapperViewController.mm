@interface SBWidgetIconResizeGestureWidgetWrapperViewController
- (BOOL)isContentReady;
- (SBWidgetIconResizeGestureWidgetWrapperViewController)initWithWidgetViewController:(id)controller;
- (void)addObserver:(id)observer;
- (void)invalidate;
- (void)loadView;
- (void)viewDidLoad;
- (void)widgetContainerViewControllerInitialWidgetContentReadinessChanged:(id)changed widgetContentIsReady:(BOOL)ready;
@end

@implementation SBWidgetIconResizeGestureWidgetWrapperViewController

- (SBWidgetIconResizeGestureWidgetWrapperViewController)initWithWidgetViewController:(id)controller
{
  controllerCopy = controller;
  v6 = [(SBWidgetIconResizeGestureWidgetWrapperViewController *)self initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_widgetViewController, controller);
    [controllerCopy addObserver:v7];
  }

  return v7;
}

- (void)loadView
{
  v41[4] = *MEMORY[0x1E69E9840];
  widgetViewController = [(SBWidgetIconResizeGestureWidgetWrapperViewController *)self widgetViewController];
  [widgetViewController iconImageInfo];
  v4 = v3;
  v7 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, v5, v6}];
  v39 = widgetViewController;
  if ([widgetViewController wantsSystemMaterialBackground])
  {
    v8 = [MEMORY[0x1E69AE158] materialViewWithRecipe:3];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 _setContinuousCornerRadius:v4];
    [v7 addSubview:v8];
    [v7 sendSubviewToBack:v8];
    v26 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v7 leadingAnchor];
    leadingAnchor2 = [v8 leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v41[0] = v32;
    trailingAnchor = [v7 trailingAnchor];
    trailingAnchor2 = [v8 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v41[1] = v25;
    topAnchor = [v7 topAnchor];
    topAnchor2 = [v8 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v41[2] = v11;
    bottomAnchor = [v7 bottomAnchor];
    bottomAnchor2 = [v8 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v41[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
    [v26 activateConstraints:v15];
  }

  view = [v39 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:view];
  v27 = MEMORY[0x1E696ACD8];
  leadingAnchor3 = [v7 leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v33 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v40[0] = v33;
  trailingAnchor3 = [v7 trailingAnchor];
  trailingAnchor4 = [view trailingAnchor];
  v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v40[1] = v17;
  topAnchor3 = [v7 topAnchor];
  topAnchor4 = [view topAnchor];
  v20 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v40[2] = v20;
  bottomAnchor3 = [v7 bottomAnchor];
  bottomAnchor4 = [view bottomAnchor];
  v23 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v40[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  [v27 activateConstraints:v24];

  [(SBWidgetIconResizeGestureWidgetWrapperViewController *)self setView:v7];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SBWidgetIconResizeGestureWidgetWrapperViewController;
  [(SBWidgetIconResizeGestureWidgetWrapperViewController *)&v4 viewDidLoad];
  widgetViewController = [(SBWidgetIconResizeGestureWidgetWrapperViewController *)self widgetViewController];
  [(SBWidgetIconResizeGestureWidgetWrapperViewController *)self bs_addChildViewController:widgetViewController];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (BOOL)isContentReady
{
  widgetViewController = [(SBWidgetIconResizeGestureWidgetWrapperViewController *)self widgetViewController];
  isContentReady = [widgetViewController isContentReady];

  return isContentReady;
}

- (void)invalidate
{
  widgetViewController = [(SBWidgetIconResizeGestureWidgetWrapperViewController *)self widgetViewController];
  v2 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  v4 = widgetViewController;
  if (isKindOfClass)
  {
    v8WidgetViewController = [widgetViewController widgetViewController];
    v6 = objc_opt_self();
    v7 = objc_opt_isKindOfClass();

    if (v7)
    {
      [v8WidgetViewController invalidate];
    }

    v4 = widgetViewController;
  }
}

- (void)widgetContainerViewControllerInitialWidgetContentReadinessChanged:(id)changed widgetContentIsReady:(BOOL)ready
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy:changed];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 widgetIconResizeViewControllerDidChangeContentReadiness:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end