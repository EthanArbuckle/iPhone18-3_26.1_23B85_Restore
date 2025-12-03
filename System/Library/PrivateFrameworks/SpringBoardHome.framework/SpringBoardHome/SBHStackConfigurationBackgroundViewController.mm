@interface SBHStackConfigurationBackgroundViewController
- (CGSize)apertureSize;
- (void)loadView;
- (void)setApertureSize:(CGSize)size;
- (void)setFooterButtons:(id)buttons;
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
  view = [(SBHStackConfigurationBackgroundViewController *)self view];
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
  requiredVisualStyleCategories = [v5 requiredVisualStyleCategories];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [requiredVisualStyleCategories countByEnumeratingWithState:&v28 objects:v39 count:16];
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
          objc_enumerationMutation(requiredVisualStyleCategories);
        }

        integerValue = [*(*(&v28 + 1) + 8 * v9) integerValue];
        v11 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:4 andCategory:integerValue];
        [v5 setVisualStylingProvider:v11 forCategory:integerValue];

        ++v9;
      }

      while (v7 != v9);
      v7 = [requiredVisualStyleCategories countByEnumeratingWithState:&v28 objects:v39 count:16];
    }

    while (v7);
  }

  view2 = [v5 view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = MEMORY[0x1E696ACD8];
  topAnchor = [view2 topAnchor];
  topAnchor2 = [view topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[0] = v24;
  bottomAnchor = [view2 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[1] = v21;
  leadingAnchor = [view2 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[2] = v15;
  trailingAnchor = [view2 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v38[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [v20 activateConstraints:v19];
}

- (void)setApertureSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(SBHStackConfigurationBackgroundViewController *)self loadViewIfNeeded];
  backgroundViewController = [(SBHStackConfigurationBackgroundViewController *)self backgroundViewController];
  [backgroundViewController setExpandedContentModuleWidth:width];
  [backgroundViewController setExpandedContentModuleHeight:height];
}

- (void)setFooterButtons:(id)buttons
{
  buttonsCopy = buttons;
  backgroundViewController = [(SBHStackConfigurationBackgroundViewController *)self backgroundViewController];
  v5 = [buttonsCopy bs_compactMap:&__block_literal_global_6];

  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    bs_reverse = [v5 bs_reverse];
    [backgroundViewController setFooterButtons:bs_reverse];
  }

  else
  {
    [backgroundViewController setFooterButtons:v5];
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