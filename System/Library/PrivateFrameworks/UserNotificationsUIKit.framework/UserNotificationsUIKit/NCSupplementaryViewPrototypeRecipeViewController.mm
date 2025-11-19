@interface NCSupplementaryViewPrototypeRecipeViewController
+ (NSSet)presentableTypes;
- (NCSupplementaryViewPrototypeRecipeViewController)init;
- (NCSupplementaryViewPrototypeRecipeViewControllerDelegate)delegate;
- (id)_testActionNotImplementedBlock;
- (void)updateConfiguration:(id)a3;
- (void)viewDidLoad;
@end

@implementation NCSupplementaryViewPrototypeRecipeViewController

- (NCSupplementaryViewPrototypeRecipeViewController)init
{
  v6.receiver = self;
  v6.super_class = NCSupplementaryViewPrototypeRecipeViewController;
  v2 = [(NCSupplementaryViewPrototypeRecipeViewController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] now];
    dateModified = v2->_dateModified;
    v2->_dateModified = v3;
  }

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = NCSupplementaryViewPrototypeRecipeViewController;
  [(NCSupplementaryViewPrototypeRecipeViewController *)&v5 viewDidLoad];
  v3 = [(NCSupplementaryViewPrototypeRecipeViewController *)self view];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];
}

- (void)updateConfiguration:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationListSupplementaryViewConfiguration *)self->_configuration mutableCopy];
  if (v5)
  {
    v6 = v5;
    v4[2](v4, v5);
    configuration = self->_configuration;
    self->_configuration = v6;

    v8 = [(NCSupplementaryViewPrototypeRecipeViewController *)self delegate];
    [v8 requestsUpdateForPrototypeRecipeViewController:self];
  }

  else
  {
    v9 = objc_alloc_init(NCNotificationListMutableSupplementaryViewConfiguration);
    v10 = [MEMORY[0x277D75348] whiteColor];
    [(NCNotificationListMutableSupplementaryViewConfiguration *)v9 setTextColor:v10];

    v11 = [MEMORY[0x277D75348] blackColor];
    v12 = [v11 colorWithAlphaComponent:0.2];
    [(NCNotificationListMutableSupplementaryViewConfiguration *)v9 setTintColor:v12];

    [(NCNotificationListMutableSupplementaryViewConfiguration *)v9 setMaterialRecipe:22];
    v13 = [objc_opt_class() title];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = @"Supplementary View";
    }

    [(NCNotificationListMutableSupplementaryViewConfiguration *)v9 setGroupName:v15];

    [(NCNotificationListMutableSupplementaryViewConfiguration *)v9 setGroupingIdentifier:@"identifier"];
    objc_initWeak(&location, self);
    v16 = MEMORY[0x277D750C8];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __72__NCSupplementaryViewPrototypeRecipeViewController_updateConfiguration___block_invoke;
    v22 = &unk_27836F428;
    objc_copyWeak(&v23, &location);
    v17 = [v16 actionWithTitle:@"Action" image:0 identifier:0 handler:&v19];
    v25[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:{1, v19, v20, v21, v22}];
    [(NCNotificationListMutableSupplementaryViewConfiguration *)v9 setSupplementaryActions:v18];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
    v4[2](v4, v9);
    v8 = self->_configuration;
    self->_configuration = &v9->super;
  }
}

void __72__NCSupplementaryViewPrototypeRecipeViewController_updateConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 requestsRemovalForPrototypeRecipeViewController:v3];

    WeakRetained = v3;
  }
}

+ (NSSet)presentableTypes
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)_testActionNotImplementedBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__NCSupplementaryViewPrototypeRecipeViewController__testActionNotImplementedBlock__block_invoke;
  v4[3] = &unk_27836F428;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __82__NCSupplementaryViewPrototypeRecipeViewController__testActionNotImplementedBlock__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = MEMORY[0x277D75110];
    v5 = [v8 title];
    v6 = [v4 alertControllerWithTitle:v5 message:@"Action not implemented." preferredStyle:1];

    v7 = [MEMORY[0x277D750F8] actionWithTitle:@"Dismiss" style:1 handler:0];
    [v6 addAction:v7];
    [WeakRetained presentViewController:v6 animated:1 completion:0];
  }
}

- (NCSupplementaryViewPrototypeRecipeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end