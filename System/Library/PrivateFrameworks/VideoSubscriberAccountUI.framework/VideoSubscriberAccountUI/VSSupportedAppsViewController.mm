@interface VSSupportedAppsViewController
- (VSSupportedAppsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (VSSupportedAppsViewControllerDelegate)delegate;
- (void)_didFinish;
- (void)_displayApps;
- (void)_presentError:(id)error;
- (void)beginLoadingImages;
- (void)viewDidLoad;
@end

@implementation VSSupportedAppsViewController

- (VSSupportedAppsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = VSSupportedAppsViewController;
  v4 = [(VSSupportedAppsViewController *)&v10 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v4->_privateQueue;
    v4->_privateQueue = v5;

    [(NSOperationQueue *)v4->_privateQueue setName:@"VSSupportedAppsViewController"];
    [(NSOperationQueue *)v4->_privateQueue setMaxConcurrentOperationCount:1];
    navigationItem = [(VSSupportedAppsViewController *)v4 navigationItem];
    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v4 action:sel__doneButtonPresed_];
    [navigationItem setRightBarButtonItem:v8];
  }

  return v4;
}

- (void)_didFinish
{
  delegate = [(VSSupportedAppsViewController *)self delegate];
  [delegate supportedAppsViewControllerDidFinish:self];
}

- (void)_presentError:(id)error
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__VSSupportedAppsViewController__presentError___block_invoke;
  v5[3] = &unk_279E1A398;
  v5[4] = self;
  v4 = VSAlertForError(error, v5);
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
        shortenedDisplayName = [v8 shortenedDisplayName];
        [v9 vs_setObjectUnlessNil:shortenedDisplayName forKey:@"appName"];

        icon = [v8 icon];
        [v9 vs_setObjectUnlessNil:icon forKey:@"appIcon"];

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
  privateQueue = [(VSSupportedAppsViewController *)self privateQueue];
  [privateQueue addOperation:v5];

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
  view = [(VSSupportedAppsViewController *)self view];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [view setBackgroundColor:whiteColor];

  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
  [v5 startAnimating];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v5];
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
  view2 = [v9 view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:view2];
  [v9 didMoveToParentViewController:self];
  v13 = VSMainConcurrencyBindingOptions();
  v14 = [v13 mutableCopy];

  [v14 setObject:*MEMORY[0x277CCA2B0] forKey:v8];
  [view2 vs_bind:@"hidden" toObject:self withKeyPath:@"apps" options:v14];

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  centerXAnchor = [v5 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v15 addObject:v18];

  centerYAnchor = [v5 centerYAnchor];
  centerYAnchor2 = [view centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v15 addObject:v21];

  topAnchor = [view2 topAnchor];
  topAnchor2 = [view topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v15 addObject:v24];

  bottomAnchor = [view2 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v15 addObject:v27];

  leftAnchor = [view2 leftAnchor];
  leftAnchor2 = [view leftAnchor];
  v30 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v15 addObject:v30];

  rightAnchor = [view2 rightAnchor];
  rightAnchor2 = [view rightAnchor];
  v33 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v15 addObject:v33];

  [MEMORY[0x277CCAAD0] activateConstraints:v15];
}

- (VSSupportedAppsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end