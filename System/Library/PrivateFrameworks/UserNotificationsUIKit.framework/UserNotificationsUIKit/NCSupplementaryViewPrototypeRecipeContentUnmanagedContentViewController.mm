@interface NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewController
- (NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewController)init;
- (void)loadView;
- (void)unmanagedContentViewControllerView:(id)view setContainsUnmanagedContent:(BOOL)content;
@end

@implementation NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewController

- (NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewController)init
{
  v5.receiver = self;
  v5.super_class = NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewController;
  v2 = [(NCSupplementaryViewPrototypeRecipeViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NCSupplementaryViewPrototypeRecipeViewController *)v2 updateConfiguration:&__block_literal_global_399];
  }

  return v3;
}

- (void)loadView
{
  v3 = objc_alloc_init(NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView);
  [(NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView *)v3 setContainsUnmanagedContent:1];
  [(NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView *)v3 setDelegate:self];
  [(NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewController *)self setView:v3];
}

- (void)unmanagedContentViewControllerView:(id)view setContainsUnmanagedContent:(BOOL)content
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __138__NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewController_unmanagedContentViewControllerView_setContainsUnmanagedContent___block_invoke;
  v4[3] = &__block_descriptor_33_e65_v16__0__NCNotificationListMutableSupplementaryViewConfiguration_8l;
  contentCopy = content;
  [(NCSupplementaryViewPrototypeRecipeViewController *)self updateConfiguration:v4];
}

@end