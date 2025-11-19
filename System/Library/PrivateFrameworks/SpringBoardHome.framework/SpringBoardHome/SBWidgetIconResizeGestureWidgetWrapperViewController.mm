@interface SBWidgetIconResizeGestureWidgetWrapperViewController
- (BOOL)isContentReady;
- (SBWidgetIconResizeGestureWidgetWrapperViewController)initWithWidgetViewController:(id)a3;
- (void)addObserver:(id)a3;
- (void)invalidate;
- (void)loadView;
- (void)viewDidLoad;
- (void)widgetContainerViewControllerInitialWidgetContentReadinessChanged:(id)a3 widgetContentIsReady:(BOOL)a4;
@end

@implementation SBWidgetIconResizeGestureWidgetWrapperViewController

- (SBWidgetIconResizeGestureWidgetWrapperViewController)initWithWidgetViewController:(id)a3
{
  v5 = a3;
  v6 = [(SBWidgetIconResizeGestureWidgetWrapperViewController *)self initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_widgetViewController, a3);
    [v5 addObserver:v7];
  }

  return v7;
}

- (void)loadView
{
  v41[4] = *MEMORY[0x1E69E9840];
  v2 = [(SBWidgetIconResizeGestureWidgetWrapperViewController *)self widgetViewController];
  [v2 iconImageInfo];
  v4 = v3;
  v7 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, v5, v6}];
  v39 = v2;
  if ([v2 wantsSystemMaterialBackground])
  {
    v8 = [MEMORY[0x1E69AE158] materialViewWithRecipe:3];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 _setContinuousCornerRadius:v4];
    [v7 addSubview:v8];
    [v7 sendSubviewToBack:v8];
    v26 = MEMORY[0x1E696ACD8];
    v36 = [v7 leadingAnchor];
    v34 = [v8 leadingAnchor];
    v32 = [v36 constraintEqualToAnchor:v34];
    v41[0] = v32;
    v30 = [v7 trailingAnchor];
    v28 = [v8 trailingAnchor];
    v25 = [v30 constraintEqualToAnchor:v28];
    v41[1] = v25;
    v9 = [v7 topAnchor];
    v10 = [v8 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v41[2] = v11;
    v12 = [v7 bottomAnchor];
    v13 = [v8 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v41[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
    [v26 activateConstraints:v15];
  }

  v16 = [v39 view];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:v16];
  v27 = MEMORY[0x1E696ACD8];
  v37 = [v7 leadingAnchor];
  v35 = [v16 leadingAnchor];
  v33 = [v37 constraintEqualToAnchor:v35];
  v40[0] = v33;
  v31 = [v7 trailingAnchor];
  v29 = [v16 trailingAnchor];
  v17 = [v31 constraintEqualToAnchor:v29];
  v40[1] = v17;
  v18 = [v7 topAnchor];
  v19 = [v16 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v40[2] = v20;
  v21 = [v7 bottomAnchor];
  v22 = [v16 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
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
  v3 = [(SBWidgetIconResizeGestureWidgetWrapperViewController *)self widgetViewController];
  [(SBWidgetIconResizeGestureWidgetWrapperViewController *)self bs_addChildViewController:v3];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (BOOL)isContentReady
{
  v2 = [(SBWidgetIconResizeGestureWidgetWrapperViewController *)self widgetViewController];
  v3 = [v2 isContentReady];

  return v3;
}

- (void)invalidate
{
  v8 = [(SBWidgetIconResizeGestureWidgetWrapperViewController *)self widgetViewController];
  v2 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  v4 = v8;
  if (isKindOfClass)
  {
    v5 = [v8 widgetViewController];
    v6 = objc_opt_self();
    v7 = objc_opt_isKindOfClass();

    if (v7)
    {
      [v5 invalidate];
    }

    v4 = v8;
  }
}

- (void)widgetContainerViewControllerInitialWidgetContentReadinessChanged:(id)a3 widgetContentIsReady:(BOOL)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy:a3];
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