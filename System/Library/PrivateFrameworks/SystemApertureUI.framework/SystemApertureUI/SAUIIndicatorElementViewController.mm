@interface SAUIIndicatorElementViewController
+ (void)initialize;
- (CGAffineTransform)fixedIndicatorViewTransform;
- (CGAffineTransform)indicatorViewTransform;
- (SAUIIndicatorElementViewController)initWithIndicatorElementViewProvider:(id)provider;
- (SAUIIndicatorLayoutHosting)layoutHost;
- (int64_t)handleElementTap:(id)tap;
- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)addElementViewControllingObserver:(id)observer;
- (void)indicatorNeedsDisplayWellKnownLocationDidInvalidateForLayoutSpecifier:(id)specifier;
- (void)removeElementViewControllingObserver:(id)observer;
- (void)setFixedIndicatorViewAlpha:(double)alpha;
- (void)setFixedIndicatorViewBlurProgress:(double)progress;
- (void)setFixedIndicatorViewTransform:(CGAffineTransform *)transform;
- (void)setIndicatorViewAlpha:(double)alpha;
- (void)setIndicatorViewBlurProgress:(double)progress;
- (void)setIndicatorViewTransform:(CGAffineTransform *)transform;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SAUIIndicatorElementViewController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SAUIIndicatorElementViewController;
  [(SAUIIndicatorElementViewController *)&v8 viewDidLoad];
  view = [(SAUIIndicatorElementViewController *)self view];
  indicatorView = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider indicatorView];
  [view addSubview:indicatorView];

  if (objc_opt_respondsToSelector())
  {
    fixedIndicatorView = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider fixedIndicatorView];
    if (fixedIndicatorView)
    {
      v6 = fixedIndicatorView;
      view2 = [(SAUIIndicatorElementViewController *)self view];
      [view2 addSubview:v6];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v41.receiver = self;
  v41.super_class = SAUIIndicatorElementViewController;
  [(SAUIIndicatorElementViewController *)&v41 viewDidLayoutSubviews];
  if (objc_opt_respondsToSelector())
  {
    fixedIndicatorView = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider fixedIndicatorView];
  }

  else
  {
    fixedIndicatorView = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  view = [(SAUIIndicatorElementViewController *)self view];
  [WeakRetained interSensorRegionInContentView:view];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  SAUIIndicatorFrameForInterSensorRegionFrame(v7, v9, v11, v13);
  BSRectWithSize();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  UIRectGetCenter();
  v23 = v22;
  v25 = v24;
  if (objc_opt_respondsToSelector())
  {
    v26 = self->_elementViewProvider;
    view2 = [(SAUIIndicatorElementViewController *)self view];
    window = [view2 window];
    [WeakRetained interSensorRegionInContentView:window];
    [(SAUIIndicatorElementViewProviding *)v26 didUpdateInterSensorRegionFrameInScreenSpace:?];
  }

  if (fixedIndicatorView)
  {
    [fixedIndicatorView setBounds:{v15, v17, v19, v21}];
    [fixedIndicatorView setCenter:{v23, v25}];
    view3 = [(SAUIIndicatorElementViewController *)self view];
    [view3 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    indicatorView = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider indicatorView];
    [indicatorView setBounds:{v31, v33, v35, v37}];
    UIRectGetCenter();
    v23 = v39;
    v25 = v40;
  }

  else
  {
    indicatorView = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider indicatorView];
    [indicatorView setBounds:{v15, v17, v19, v21}];
  }

  [indicatorView setCenter:{v23, v25}];
}

- (CGAffineTransform)indicatorViewTransform
{
  v3 = *&self[22].b;
  *&retstr->a = *&self[21].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[22].d;
  return self;
}

- (CGAffineTransform)fixedIndicatorViewTransform
{
  v3 = *&self[23].b;
  *&retstr->a = *&self[22].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[23].d;
  return self;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    SAUIRegisterSystemApertureLogging();
  }
}

- (SAUIIndicatorElementViewController)initWithIndicatorElementViewProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    [(SAUIIndicatorElementViewController *)a2 initWithIndicatorElementViewProvider:?];
  }

  v16.receiver = self;
  v16.super_class = SAUIIndicatorElementViewController;
  v7 = [(SAUIIndicatorElementViewController *)&v16 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_elementViewProvider, provider);
    if (objc_opt_respondsToSelector())
    {
      [(SAUIIndicatorElementViewProviding *)v8->_elementViewProvider setLayoutHost:v8];
    }

    v8->_indicatorViewAlpha = 1.0;
    v8->_indicatorViewBlurProgress = 0.0;
    v9 = MEMORY[0x277CBF2C0];
    v10 = *MEMORY[0x277CBF2C0];
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    *&v8->_indicatorViewTransform.a = *MEMORY[0x277CBF2C0];
    *&v8->_indicatorViewTransform.c = v11;
    v12 = *(v9 + 32);
    *&v8->_indicatorViewTransform.tx = v12;
    v8->_fixedIndicatorViewAlpha = 1.0;
    v8->_fixedIndicatorViewBlurProgress = 0.0;
    *&v8->_fixedIndicatorViewTransform.a = v10;
    *&v8->_fixedIndicatorViewTransform.c = v11;
    *&v8->_fixedIndicatorViewTransform.tx = v12;
    v13 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v8->_observers;
    v8->_observers = v13;
  }

  return v8;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SAUIIndicatorElementViewController;
  [(SAUIIndicatorElementViewController *)&v5 viewWillAppear:appear];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__SAUIIndicatorElementViewController_viewWillAppear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUIIndicatorElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingWillAppear_ usingBlock:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SAUIIndicatorElementViewController;
  [(SAUIIndicatorElementViewController *)&v5 viewDidAppear:appear];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__SAUIIndicatorElementViewController_viewDidAppear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUIIndicatorElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingDidAppear_ usingBlock:v4];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SAUIIndicatorElementViewController;
  [(SAUIIndicatorElementViewController *)&v5 viewWillDisappear:disappear];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SAUIIndicatorElementViewController_viewWillDisappear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUIIndicatorElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingWillDisappear_ usingBlock:v4];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SAUIIndicatorElementViewController;
  [(SAUIIndicatorElementViewController *)&v5 viewDidDisappear:disappear];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SAUIIndicatorElementViewController_viewDidDisappear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUIIndicatorElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingDidDisappear_ usingBlock:v4];
}

- (int64_t)handleElementTap:(id)tap
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  if ([(SAUIIndicatorElementViewProviding *)self->_elementViewProvider handleElementViewEvent:0])
  {
    return 2;
  }

  return 0;
}

- (void)addElementViewControllingObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers addObject:v6];
    objc_sync_exit(v5);

    observerCopy = v6;
  }
}

- (void)removeElementViewControllingObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers removeObject:v6];
    objc_sync_exit(v5);

    observerCopy = v6;
  }
}

- (void)indicatorNeedsDisplayWellKnownLocationDidInvalidateForLayoutSpecifier:(id)specifier
{
  specifierCopy = specifier;
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  [WeakRetained indicatorNeedsDisplayWellKnownLocationDidInvalidateForLayoutSpecifier:specifierCopy];
}

- (void)setIndicatorViewBlurProgress:(double)progress
{
  if (self->_indicatorViewBlurProgress != progress)
  {
    self->_indicatorViewBlurProgress = progress;
    indicatorView = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider indicatorView];
    if (objc_opt_respondsToSelector())
    {
      [indicatorView setBlurRadius:progress * 4.5];
    }

    else
    {
      [indicatorView setSauiBlurRadius:progress * 4.5];
    }

    if (objc_opt_respondsToSelector())
    {
      [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider didUpdateIndicatorViewBlurProgress:progress];
    }
  }
}

- (void)setIndicatorViewAlpha:(double)alpha
{
  if (self->_indicatorViewAlpha != alpha)
  {
    self->_indicatorViewAlpha = alpha;
    indicatorView = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider indicatorView];
    [indicatorView setAlpha:alpha];

    if (objc_opt_respondsToSelector())
    {
      elementViewProvider = self->_elementViewProvider;

      [(SAUIIndicatorElementViewProviding *)elementViewProvider didUpdateIndicatorViewAlpha:alpha];
    }
  }
}

- (void)setIndicatorViewTransform:(CGAffineTransform *)transform
{
  p_indicatorViewTransform = &self->_indicatorViewTransform;
  v6 = *&self->_indicatorViewTransform.c;
  *&t1.a = *&self->_indicatorViewTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_indicatorViewTransform.tx;
  v7 = *&transform->c;
  *&v14.a = *&transform->a;
  *&v14.c = v7;
  *&v14.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v14))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_indicatorViewTransform->c = *&transform->c;
    *&p_indicatorViewTransform->tx = v9;
    *&p_indicatorViewTransform->a = v8;
    indicatorView = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider indicatorView];
    v11 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v11;
    *&t1.tx = *&transform->tx;
    [indicatorView setTransform:&t1];

    if (objc_opt_respondsToSelector())
    {
      elementViewProvider = self->_elementViewProvider;
      v13 = *&transform->c;
      *&t1.a = *&transform->a;
      *&t1.c = v13;
      *&t1.tx = *&transform->tx;
      [(SAUIIndicatorElementViewProviding *)elementViewProvider didUpdateIndicatorViewTransform:&t1];
    }
  }
}

- (void)setFixedIndicatorViewBlurProgress:(double)progress
{
  if (self->_fixedIndicatorViewBlurProgress != progress)
  {
    self->_fixedIndicatorViewBlurProgress = progress;
    if (objc_opt_respondsToSelector())
    {
      fixedIndicatorView = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider fixedIndicatorView];
      if (fixedIndicatorView)
      {
        v6 = fixedIndicatorView;
        if (objc_opt_respondsToSelector())
        {
          [v6 setBlurRadius:progress * 4.5];
        }

        else
        {
          [v6 setSauiBlurRadius:progress * 4.5];
        }
      }
    }

    if (objc_opt_respondsToSelector())
    {
      elementViewProvider = self->_elementViewProvider;

      [(SAUIIndicatorElementViewProviding *)elementViewProvider didUpdateFixedIndicatorViewBlurProgress:progress];
    }
  }
}

- (void)setFixedIndicatorViewAlpha:(double)alpha
{
  if (self->_fixedIndicatorViewAlpha != alpha)
  {
    self->_fixedIndicatorViewAlpha = alpha;
    if (objc_opt_respondsToSelector())
    {
      fixedIndicatorView = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider fixedIndicatorView];
    }

    else
    {
      fixedIndicatorView = 0;
    }

    v6 = fixedIndicatorView;
    [fixedIndicatorView setAlpha:alpha];
    if (objc_opt_respondsToSelector())
    {
      [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider didUpdateFixedIndicatorViewAlpha:alpha];
    }
  }
}

- (void)setFixedIndicatorViewTransform:(CGAffineTransform *)transform
{
  p_fixedIndicatorViewTransform = &self->_fixedIndicatorViewTransform;
  v6 = *&self->_fixedIndicatorViewTransform.c;
  *&t1.a = *&self->_fixedIndicatorViewTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_fixedIndicatorViewTransform.tx;
  v7 = *&transform->c;
  *&v14.a = *&transform->a;
  *&v14.c = v7;
  *&v14.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v14))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_fixedIndicatorViewTransform->c = *&transform->c;
    *&p_fixedIndicatorViewTransform->tx = v9;
    *&p_fixedIndicatorViewTransform->a = v8;
    if (objc_opt_respondsToSelector())
    {
      fixedIndicatorView = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider fixedIndicatorView];
    }

    else
    {
      fixedIndicatorView = 0;
    }

    v11 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v11;
    *&t1.tx = *&transform->tx;
    [fixedIndicatorView setTransform:&t1];
    if (objc_opt_respondsToSelector())
    {
      elementViewProvider = self->_elementViewProvider;
      v13 = *&transform->c;
      *&t1.a = *&transform->a;
      *&t1.c = v13;
      *&t1.tx = *&transform->tx;
      [(SAUIIndicatorElementViewProviding *)elementViewProvider didUpdateFixedIndicatorViewTransform:&t1];
    }
  }
}

- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v6 = self->_observers;
    objc_sync_enter(v6);
    v7 = [(NSHashTable *)self->_observers copy];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            blockCopy[2](blockCopy, v12);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    objc_sync_exit(v6);
  }
}

- (SAUIIndicatorLayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

- (void)initWithIndicatorElementViewProvider:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SAUIIndicatorElementViewController.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"elementViewProvider"}];
}

@end