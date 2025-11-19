@interface SBHMultiplexingViewController
- (NSString)description;
- (SBHMultiplexingViewController)initWithLevel:(double)a3 identifier:(id)a4;
- (id)sbh_underlyingAvocadoHostViewControllers;
- (void)_setUpMultiplexedViewController;
- (void)activateWithViewController:(id)a3;
- (void)addObserver:(id)a3;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)deactivate;
- (void)dealloc;
- (void)loadView;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation SBHMultiplexingViewController

- (void)_setUpMultiplexedViewController
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = self->_multiplexedViewController;
  v4 = v3;
  if (v3)
  {
    v5 = [(UIViewController *)v3 parentViewController];

    if (v5 != self)
    {
      v6 = SBLogWidgets();
      if (os_signpost_enabled(v6))
      {
        v7 = MEMORY[0x1E696AEC0];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [v7 stringWithFormat:@"<%@: %p>", v9, self];
        *buf = 138543362;
        v25 = v10;
        _os_signpost_emit_with_name_impl(&dword_1BEB18000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_MULTIPLEX_ACTIVATE", "%{public}@", buf, 0xCu);
      }

      v11 = [(UIViewController *)v4 view];
      v12 = [(SBHMultiplexingViewController *)self view];
      [v12 bounds];
      [v11 setFrame:?];

      [v11 setAutoresizingMask:18];
      [(UIViewController *)v4 bs_endAppearanceTransition:1];
      [(SBHMultiplexingViewController *)self bs_addChildViewController:v4];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v13 = [(NSHashTable *)self->_observers copy];
      v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v20;
        do
        {
          v17 = 0;
          do
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v19 + 1) + 8 * v17++) multiplexingViewControllerDidActivate:self];
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v15);
      }

      v18 = SBLogWidgets();
      if (os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1BEB18000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_MULTIPLEX_ACTIVATE", " isAnimation=YES ", buf, 2u);
      }
    }
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v3 setAutoresizingMask:18];
  [(SBHMultiplexingViewController *)self setView:v3];
}

- (void)deactivate
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_multiplexedViewController)
  {
    v3 = SBLogWidgets();
    if (os_signpost_enabled(v3))
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v4 stringWithFormat:@"<%@: %p>", v6, self];
      *buf = 138543362;
      v25 = v7;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_MULTIPLEX_DEACTIVATE", "%{public}@", buf, 0xCu);
    }

    v8 = SBLogWidgets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543618;
      v25 = v10;
      v26 = 2048;
      v27 = self;
      _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> deactivate", buf, 0x16u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [(NSHashTable *)self->_observers copy];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 multiplexingViewControllerWillDeactivate:self];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    multiplexedViewController = self->_multiplexedViewController;
    self->_multiplexedViewController = 0;

    v18 = SBLogWidgets();
    if (os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_MULTIPLEX_DEACTIVATE", " isAnimation=YES ", buf, 2u);
    }
  }
}

- (void)dealloc
{
  v3 = [(SBHMultiplexingViewController *)self multiplexingManager];
  [v3 validateActiveMultiplexingViewControllerForIdentifier:self->_identifier];

  v4.receiver = self;
  v4.super_class = SBHMultiplexingViewController;
  [(SBHMultiplexingViewController *)&v4 dealloc];
}

- (SBHMultiplexingViewController)initWithLevel:(double)a3 identifier:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SBHMultiplexingViewController;
  v7 = [(SBHMultiplexingViewController *)&v12 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    v7->_level = a3;
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;
  }

  return v8;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHMultiplexingViewController;
  [(SBHMultiplexingViewController *)&v4 viewIsAppearing:a3];
  [(SBHMultiplexingViewController *)self _setUpMultiplexedViewController];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  [(SBHMultiplexingViewController *)self appendDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (void)activateWithViewController:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogWidgets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v13 = 138544130;
    v14 = v7;
    v15 = 2048;
    v16 = self;
    v17 = 2114;
    v18 = v9;
    v19 = 2048;
    v20 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> activateWithViewController: <%{public}@:%p>", &v13, 0x2Au);
  }

  multiplexedViewController = self->_multiplexedViewController;
  self->_multiplexedViewController = v4;

  if ([(SBHMultiplexingViewController *)self isViewLoaded])
  {
    v11 = [(SBHMultiplexingViewController *)self view];
    v12 = [v11 window];

    if (v12)
    {
      [(SBHMultiplexingViewController *)self _setUpMultiplexedViewController];
    }
  }
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

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SBHMultiplexingViewController_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E8088F18;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

id __62__SBHMultiplexingViewController_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 1008) withName:@"identifier" skipIfEmpty:0];
  v2 = [*(a1 + 32) appendFloat:@"level" withName:*(*(a1 + 40) + 1000)];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 1016) withName:@"multiplexedViewController"];
}

- (id)sbh_underlyingAvocadoHostViewControllers
{
  v3 = [(SBHMultiplexingViewController *)self multiplexedViewController];
  v4 = [v3 sbh_isWidgetHostViewController];
  v5 = MEMORY[0x1E695DFD8];
  if (v4)
  {
    v6 = [(SBHMultiplexingViewController *)self multiplexedViewController];
    v7 = [v5 setWithObject:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFD8] set];
  }

  return v7;
}

@end