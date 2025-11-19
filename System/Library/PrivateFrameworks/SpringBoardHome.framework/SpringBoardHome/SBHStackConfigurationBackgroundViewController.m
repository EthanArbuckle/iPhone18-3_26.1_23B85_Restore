@interface SBHStackConfigurationBackgroundViewController
- (CGSize)apertureSize;
- (void)loadView;
- (void)setApertureSize:(CGSize)a3;
- (void)setFooterButtons:(id)a3;
- (void)viewDidLoad;
@end

@implementation SBHStackConfigurationBackgroundViewController

- (void)loadView
{
  v3 = objc_alloc_init(SBHTouchPassThroughView);
  [(SBHStackConfigurationBackgroundViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v40 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = SBHStackConfigurationBackgroundViewController;
  [(SBHStackConfigurationBackgroundViewController *)&v32 viewDidLoad];
  v27 = [(SBHStackConfigurationBackgroundViewController *)self view];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v3 = getCCUICustomContentModuleBackgroundViewControllerClass_softClass;
  v37 = getCCUICustomContentModuleBackgroundViewControllerClass_softClass;
  if (!getCCUICustomContentModuleBackgroundViewControllerClass_softClass)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __getCCUICustomContentModuleBackgroundViewControllerClass_block_invoke;
    v33[3] = &unk_1E8089848;
    v33[4] = &v34;
    __getCCUICustomContentModuleBackgroundViewControllerClass_block_invoke(v33);
    v3 = v35[3];
  }

  v4 = v3;
  _Block_object_dispose(&v34, 8);
  v5 = objc_alloc_init(v3);
  [(SBHStackConfigurationBackgroundViewController *)self setBackgroundViewController:v5];
  [(SBHStackConfigurationBackgroundViewController *)self bs_addChildViewController:v5];
  v6 = [v5 requiredVisualStyleCategories];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v7)
  {
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v28 + 1) + 8 * v9) integerValue];
        v11 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:4 andCategory:v10];
        [v5 setVisualStylingProvider:v11 forCategory:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v28 objects:v39 count:16];
    }

    while (v7);
  }

  v12 = [v5 view];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = MEMORY[0x1E696ACD8];
  v26 = [v12 topAnchor];
  v25 = [v27 topAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v38[0] = v24;
  v23 = [v12 bottomAnchor];
  v22 = [v27 bottomAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v38[1] = v21;
  v13 = [v12 leadingAnchor];
  v14 = [v27 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v38[2] = v15;
  v16 = [v12 trailingAnchor];
  v17 = [v27 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v38[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [v20 activateConstraints:v19];
}

- (void)setApertureSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SBHStackConfigurationBackgroundViewController *)self loadViewIfNeeded];
  v6 = [(SBHStackConfigurationBackgroundViewController *)self backgroundViewController];
  [v6 setExpandedContentModuleWidth:width];
  [v6 setExpandedContentModuleHeight:height];
}

- (void)setFooterButtons:(id)a3
{
  v4 = a3;
  v7 = [(SBHStackConfigurationBackgroundViewController *)self backgroundViewController];
  v5 = [v4 bs_compactMap:&__block_literal_global_6];

  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    v6 = [v5 bs_reverse];
    [v7 setFooterButtons:v6];
  }

  else
  {
    [v7 setFooterButtons:v5];
  }
}

Class __66__SBHStackConfigurationBackgroundViewController_setFooterButtons___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = NSClassFromString(&cfstr_Ccuilabeledrou.isa);
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (CGSize)apertureSize
{
  width = self->_apertureSize.width;
  height = self->_apertureSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end