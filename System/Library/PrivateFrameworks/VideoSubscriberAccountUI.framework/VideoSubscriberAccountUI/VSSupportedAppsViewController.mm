@interface VSSupportedAppsViewController
- (VSSupportedAppsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (VSSupportedAppsViewControllerDelegate)delegate;
- (void)_didFinish;
- (void)_displayApps;
- (void)_presentError:(id)a3;
- (void)beginLoadingImages;
- (void)viewDidLoad;
@end

@implementation VSSupportedAppsViewController

- (VSSupportedAppsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = VSSupportedAppsViewController;
  v4 = [(VSSupportedAppsViewController *)&v10 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v4->_privateQueue;
    v4->_privateQueue = v5;

    [(NSOperationQueue *)v4->_privateQueue setName:@"VSSupportedAppsViewController"];
    [(NSOperationQueue *)v4->_privateQueue setMaxConcurrentOperationCount:1];
    v7 = [(VSSupportedAppsViewController *)v4 navigationItem];
    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v4 action:sel__doneButtonPresed_];
    [v7 setRightBarButtonItem:v8];
  }

  return v4;
}

- (void)_didFinish
{
  v3 = [(VSSupportedAppsViewController *)self delegate];
  [v3 supportedAppsViewControllerDidFinish:self];
}

- (void)_presentError:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__VSSupportedAppsViewController__presentError___block_invoke;
  v5[3] = &unk_279E1A398;
  v5[4] = self;
  v4 = VSAlertForError(a3, v5);
  v3 = v4;
  VSPerformBlockOnMainThread();
}

- (void)_displayApps
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [(VSSupportedAppsViewController *)self supportedApps];
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v10 = [v8 shortenedDisplayName];
        [v9 vs_setObjectUnlessNil:v10 forKey:@"appName"];

        v11 = [v8 icon];
        [v9 vs_setObjectUnlessNil:v11 forKey:@"appIcon"];

        [v3 addObject:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  if ([v3 count])
  {
    [(VSSupportedAppsViewController *)self setApps:v3];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)beginLoadingImages
{
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v8, &location);
  v3 = VSMainThreadOperationWithBlock();
  v4 = [(VSSupportedAppsViewController *)self supportedApps:v7];
  v5 = [[VSLoadAllAppIconsOperation alloc] initWithApps:v4 shouldPrecomposeIcon:0];
  [v3 addDependency:v5];
  v6 = [(VSSupportedAppsViewController *)self privateQueue];
  [v6 addOperation:v5];

  VSEnqueueCompletionOperation();
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __51__VSSupportedAppsViewController_beginLoadingImages__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _displayApps];
}

- (void)viewDidLoad
{
  v34.receiver = self;
  v34.super_class = VSSupportedAppsViewController;
  [(VSSupportedAppsViewController *)&v34 viewDidLoad];
  v3 = [(VSSupportedAppsViewController *)self view];
  v4 = [MEMORY[0x277D75348] whiteColor];
  [v3 setBackgroundColor:v4];

  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
  [v5 startAnimating];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v5];
  v6 = VSMainConcurrencyBindingOptions();
  v7 = [v6 mutableCopy];

  v8 = *MEMORY[0x277CE24D0];
  [v7 setObject:*MEMORY[0x277CCA2B8] forKey:*MEMORY[0x277CE24D0]];
  [v5 vs_bind:@"hidden" toObject:self withKeyPath:@"apps" options:v7];

  v9 = objc_alloc_init(MEMORY[0x277D78300]);
  v10 = VSMainConcurrencyBindingOptions();
  [v9 vs_bind:@"apps" toObject:self withKeyPath:@"apps" options:v10];

  v11 = VSMainConcurrencyBindingOptions();
  [v9 vs_bind:@"title" toObject:self withKeyPath:@"title" options:v11];

  [(VSSupportedAppsViewController *)self addChildViewController:v9];
  v12 = [v9 view];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v12];
  [v9 didMoveToParentViewController:self];
  v13 = VSMainConcurrencyBindingOptions();
  v14 = [v13 mutableCopy];

  [v14 setObject:*MEMORY[0x277CCA2B0] forKey:v8];
  [v12 vs_bind:@"hidden" toObject:self withKeyPath:@"apps" options:v14];

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = [v5 centerXAnchor];
  v17 = [v3 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v15 addObject:v18];

  v19 = [v5 centerYAnchor];
  v20 = [v3 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v15 addObject:v21];

  v22 = [v12 topAnchor];
  v23 = [v3 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v15 addObject:v24];

  v25 = [v12 bottomAnchor];
  v26 = [v3 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  [v15 addObject:v27];

  v28 = [v12 leftAnchor];
  v29 = [v3 leftAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  [v15 addObject:v30];

  v31 = [v12 rightAnchor];
  v32 = [v3 rightAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  [v15 addObject:v33];

  [MEMORY[0x277CCAAD0] activateConstraints:v15];
}

- (VSSupportedAppsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end