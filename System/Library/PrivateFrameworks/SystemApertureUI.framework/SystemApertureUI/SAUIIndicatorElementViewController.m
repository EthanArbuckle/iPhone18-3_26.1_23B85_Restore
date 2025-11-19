@interface SAUIIndicatorElementViewController
+ (void)initialize;
- (CGAffineTransform)fixedIndicatorViewTransform;
- (CGAffineTransform)indicatorViewTransform;
- (SAUIIndicatorElementViewController)initWithIndicatorElementViewProvider:(id)a3;
- (SAUIIndicatorLayoutHosting)layoutHost;
- (int64_t)handleElementTap:(id)a3;
- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4;
- (void)addElementViewControllingObserver:(id)a3;
- (void)indicatorNeedsDisplayWellKnownLocationDidInvalidateForLayoutSpecifier:(id)a3;
- (void)removeElementViewControllingObserver:(id)a3;
- (void)setFixedIndicatorViewAlpha:(double)a3;
- (void)setFixedIndicatorViewBlurProgress:(double)a3;
- (void)setFixedIndicatorViewTransform:(CGAffineTransform *)a3;
- (void)setIndicatorViewAlpha:(double)a3;
- (void)setIndicatorViewBlurProgress:(double)a3;
- (void)setIndicatorViewTransform:(CGAffineTransform *)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SAUIIndicatorElementViewController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SAUIIndicatorElementViewController;
  [(SAUIIndicatorElementViewController *)&v8 viewDidLoad];
  v3 = [(SAUIIndicatorElementViewController *)self view];
  v4 = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider indicatorView];
  [v3 addSubview:v4];

  if (objc_opt_respondsToSelector())
  {
    v5 = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider fixedIndicatorView];
    if (v5)
    {
      v6 = v5;
      v7 = [(SAUIIndicatorElementViewController *)self view];
      [v7 addSubview:v6];
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
    v3 = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider fixedIndicatorView];
  }

  else
  {
    v3 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  v5 = [(SAUIIndicatorElementViewController *)self view];
  [WeakRetained interSensorRegionInContentView:v5];
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
    v27 = [(SAUIIndicatorElementViewController *)self view];
    v28 = [v27 window];
    [WeakRetained interSensorRegionInContentView:v28];
    [(SAUIIndicatorElementViewProviding *)v26 didUpdateInterSensorRegionFrameInScreenSpace:?];
  }

  if (v3)
  {
    [v3 setBounds:{v15, v17, v19, v21}];
    [v3 setCenter:{v23, v25}];
    v29 = [(SAUIIndicatorElementViewController *)self view];
    [v29 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v38 = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider indicatorView];
    [v38 setBounds:{v31, v33, v35, v37}];
    UIRectGetCenter();
    v23 = v39;
    v25 = v40;
  }

  else
  {
    v38 = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider indicatorView];
    [v38 setBounds:{v15, v17, v19, v21}];
  }

  [v38 setCenter:{v23, v25}];
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
  if (objc_opt_class() == a1)
  {

    SAUIRegisterSystemApertureLogging();
  }
}

- (SAUIIndicatorElementViewController)initWithIndicatorElementViewProvider:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SAUIIndicatorElementViewController *)a2 initWithIndicatorElementViewProvider:?];
  }

  v16.receiver = self;
  v16.super_class = SAUIIndicatorElementViewController;
  v7 = [(SAUIIndicatorElementViewController *)&v16 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_elementViewProvider, a3);
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

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SAUIIndicatorElementViewController;
  [(SAUIIndicatorElementViewController *)&v5 viewWillAppear:a3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__SAUIIndicatorElementViewController_viewWillAppear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUIIndicatorElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingWillAppear_ usingBlock:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SAUIIndicatorElementViewController;
  [(SAUIIndicatorElementViewController *)&v5 viewDidAppear:a3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__SAUIIndicatorElementViewController_viewDidAppear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUIIndicatorElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingDidAppear_ usingBlock:v4];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SAUIIndicatorElementViewController;
  [(SAUIIndicatorElementViewController *)&v5 viewWillDisappear:a3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SAUIIndicatorElementViewController_viewWillDisappear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUIIndicatorElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingWillDisappear_ usingBlock:v4];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SAUIIndicatorElementViewController;
  [(SAUIIndicatorElementViewController *)&v5 viewDidDisappear:a3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SAUIIndicatorElementViewController_viewDidDisappear___block_invoke;
  v4[3] = &unk_279D326E8;
  v4[4] = self;
  [(SAUIIndicatorElementViewController *)self _enumerateObserversRespondingToSelector:sel_elementViewControllingDidDisappear_ usingBlock:v4];
}

- (int64_t)handleElementTap:(id)a3
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

- (void)addElementViewControllingObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers addObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)removeElementViewControllingObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers removeObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)indicatorNeedsDisplayWellKnownLocationDidInvalidateForLayoutSpecifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  [WeakRetained indicatorNeedsDisplayWellKnownLocationDidInvalidateForLayoutSpecifier:v4];
}

- (void)setIndicatorViewBlurProgress:(double)a3
{
  if (self->_indicatorViewBlurProgress != a3)
  {
    self->_indicatorViewBlurProgress = a3;
    v5 = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider indicatorView];
    if (objc_opt_respondsToSelector())
    {
      [v5 setBlurRadius:a3 * 4.5];
    }

    else
    {
      [v5 setSauiBlurRadius:a3 * 4.5];
    }

    if (objc_opt_respondsToSelector())
    {
      [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider didUpdateIndicatorViewBlurProgress:a3];
    }
  }
}

- (void)setIndicatorViewAlpha:(double)a3
{
  if (self->_indicatorViewAlpha != a3)
  {
    self->_indicatorViewAlpha = a3;
    v5 = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider indicatorView];
    [v5 setAlpha:a3];

    if (objc_opt_respondsToSelector())
    {
      elementViewProvider = self->_elementViewProvider;

      [(SAUIIndicatorElementViewProviding *)elementViewProvider didUpdateIndicatorViewAlpha:a3];
    }
  }
}

- (void)setIndicatorViewTransform:(CGAffineTransform *)a3
{
  p_indicatorViewTransform = &self->_indicatorViewTransform;
  v6 = *&self->_indicatorViewTransform.c;
  *&t1.a = *&self->_indicatorViewTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_indicatorViewTransform.tx;
  v7 = *&a3->c;
  *&v14.a = *&a3->a;
  *&v14.c = v7;
  *&v14.tx = *&a3->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v14))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_indicatorViewTransform->c = *&a3->c;
    *&p_indicatorViewTransform->tx = v9;
    *&p_indicatorViewTransform->a = v8;
    v10 = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider indicatorView];
    v11 = *&a3->c;
    *&t1.a = *&a3->a;
    *&t1.c = v11;
    *&t1.tx = *&a3->tx;
    [v10 setTransform:&t1];

    if (objc_opt_respondsToSelector())
    {
      elementViewProvider = self->_elementViewProvider;
      v13 = *&a3->c;
      *&t1.a = *&a3->a;
      *&t1.c = v13;
      *&t1.tx = *&a3->tx;
      [(SAUIIndicatorElementViewProviding *)elementViewProvider didUpdateIndicatorViewTransform:&t1];
    }
  }
}

- (void)setFixedIndicatorViewBlurProgress:(double)a3
{
  if (self->_fixedIndicatorViewBlurProgress != a3)
  {
    self->_fixedIndicatorViewBlurProgress = a3;
    if (objc_opt_respondsToSelector())
    {
      v5 = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider fixedIndicatorView];
      if (v5)
      {
        v6 = v5;
        if (objc_opt_respondsToSelector())
        {
          [v6 setBlurRadius:a3 * 4.5];
        }

        else
        {
          [v6 setSauiBlurRadius:a3 * 4.5];
        }
      }
    }

    if (objc_opt_respondsToSelector())
    {
      elementViewProvider = self->_elementViewProvider;

      [(SAUIIndicatorElementViewProviding *)elementViewProvider didUpdateFixedIndicatorViewBlurProgress:a3];
    }
  }
}

- (void)setFixedIndicatorViewAlpha:(double)a3
{
  if (self->_fixedIndicatorViewAlpha != a3)
  {
    self->_fixedIndicatorViewAlpha = a3;
    if (objc_opt_respondsToSelector())
    {
      v5 = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider fixedIndicatorView];
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    [v5 setAlpha:a3];
    if (objc_opt_respondsToSelector())
    {
      [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider didUpdateFixedIndicatorViewAlpha:a3];
    }
  }
}

- (void)setFixedIndicatorViewTransform:(CGAffineTransform *)a3
{
  p_fixedIndicatorViewTransform = &self->_fixedIndicatorViewTransform;
  v6 = *&self->_fixedIndicatorViewTransform.c;
  *&t1.a = *&self->_fixedIndicatorViewTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_fixedIndicatorViewTransform.tx;
  v7 = *&a3->c;
  *&v14.a = *&a3->a;
  *&v14.c = v7;
  *&v14.tx = *&a3->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v14))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_fixedIndicatorViewTransform->c = *&a3->c;
    *&p_fixedIndicatorViewTransform->tx = v9;
    *&p_fixedIndicatorViewTransform->a = v8;
    if (objc_opt_respondsToSelector())
    {
      v10 = [(SAUIIndicatorElementViewProviding *)self->_elementViewProvider fixedIndicatorView];
    }

    else
    {
      v10 = 0;
    }

    v11 = *&a3->c;
    *&t1.a = *&a3->a;
    *&t1.c = v11;
    *&t1.tx = *&a3->tx;
    [v10 setTransform:&t1];
    if (objc_opt_respondsToSelector())
    {
      elementViewProvider = self->_elementViewProvider;
      v13 = *&a3->c;
      *&t1.a = *&a3->a;
      *&t1.c = v13;
      *&t1.tx = *&a3->tx;
      [(SAUIIndicatorElementViewProviding *)elementViewProvider didUpdateFixedIndicatorViewTransform:&t1];
    }
  }
}

- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5)
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
            v5[2](v5, v12);
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