@interface NCNotificationListSupplementaryHostingViewController
- (BOOL)_useDefaultLookForColor:(id)a3 materialRecipe:(int64_t)a4 containsUnmanagedContent:(BOOL)a5;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (BOOL)isHostedViewControllerUserInteractionEnabled;
- (BOOL)supportsMitosis;
- (BOOL)unmanagedBackdropContrast;
- (CGSize)preferredContentSize;
- (NCNotificationListSupplementaryHostingViewController)initWithHostedViewController:(id)a3 sectionIdentifier:(id)a4;
- (NCNotificationListSupplementaryHostingViewControllerDelegate)delegate;
- (PLPlatterView)platterView;
- (double)glassSmoothness;
- (double)rootScrollVelocity;
- (id)_logDescription;
- (id)_sanitizedColorFromDeveloperProvidedColor:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)apparentZDistanceToUser;
- (int64_t)backgroundGlassId;
- (unint64_t)backgroundGlassState;
- (unint64_t)glassMode;
- (void)_configureAuxiliaryViewAnimated:(BOOL)a3;
- (void)_configureHostingViewAnimated:(BOOL)a3;
- (void)_preferredContentSizeDidChangeForChildViewController:(id)a3;
- (void)_showAuxiliaryOptionsView:(BOOL)a3;
- (void)configureStackDimmingForTransform:(CGAffineTransform *)a3;
- (void)loadView;
- (void)removeLightEffectsIfNeeded;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setApparentZDistanceToUser:(int64_t)a3;
- (void)setConfiguration:(id)a3 animated:(BOOL)a4;
- (void)setContentVisible:(BOOL)a3;
- (void)setGlassMode:(unint64_t)a3;
- (void)setHostedViewControllerUserInteractionEnabled:(BOOL)a3;
- (void)setMaterialGroupNameBase:(id)a3;
- (void)setMaterialRecipe:(int64_t)a3;
- (void)setMaterialTintColor:(id)a3;
- (void)setRootScrollVelocity:(double)a3;
- (void)setSupportsMitosis:(BOOL)a3;
- (void)setUnmanagedBackdropContrast:(BOOL)a3;
- (void)supplementaryHostingViewWasTapped:(id)a3;
@end

@implementation NCNotificationListSupplementaryHostingViewController

- (NCNotificationListSupplementaryHostingViewController)initWithHostedViewController:(id)a3 sectionIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = NCNotificationListSupplementaryHostingViewController;
  v9 = [(NCNotificationListSupplementaryHostingViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    materialGroupNameBase = v9->_materialGroupNameBase;
    v9->_materialGroupNameBase = 0;

    objc_storeStrong(&v10->_hostedViewController, a3);
    [(NCNotificationListSupplementaryHostingViewController *)v10 addChildViewController:v10->_hostedViewController];
    [(UIViewController *)v10->_hostedViewController didMoveToParentViewController:v10];
    objc_storeStrong(&v10->_sectionIdentifier, a4);
  }

  return v10;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(NCNotificationListSupplementaryHostingViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__NCNotificationListSupplementaryHostingViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_27836F560;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

void __94__NCNotificationListSupplementaryHostingViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) configuration];
  v4 = [v2 appendObject:v3 withName:@"configuration" skipIfNil:1];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) hostedViewController];
  v6 = [v5 appendObject:v7 withName:@"hostedViewController"];
}

- (id)succinctDescription
{
  v2 = [(NCNotificationListSupplementaryHostingViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NCNotificationListSupplementaryHostingViewController *)self configuration];
  v5 = [v3 appendObject:v4 withName:@"configuration" skipIfNil:1];

  v6 = [(NCNotificationListSupplementaryHostingViewController *)self hostedViewController];
  v7 = [v3 appendObject:v6 withName:@"hostedViewController"];

  return v3;
}

- (void)setHostedViewControllerUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [v4 setHostedViewUserInteractionEnabled:v3];
}

- (BOOL)isHostedViewControllerUserInteractionEnabled
{
  v2 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  v3 = [v2 isHostedViewUserInteractionEnabled];

  return v3;
}

- (void)setConfiguration:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 copy];
  configuration = self->_configuration;
  self->_configuration = v7;

  v9 = [v6 tintColor];
  if (-[NCNotificationListSupplementaryHostingViewController _useDefaultLookForColor:materialRecipe:containsUnmanagedContent:](self, "_useDefaultLookForColor:materialRecipe:containsUnmanagedContent:", v9, [v6 materialRecipe], objc_msgSend(v6, "containsUnmanagedContent")))
  {
    materialTintColor = self->_materialTintColor;
    self->_materialTintColor = 0;

    v11 = [(NCNotificationListSupplementaryHostingViewController *)self _defaultTextColor];
    textColor = self->_textColor;
    self->_textColor = v11;

    self->_materialRecipe = 1;
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.1];
    auxiliaryOptionsBackgroundColor = self->_auxiliaryOptionsBackgroundColor;
    self->_auxiliaryOptionsBackgroundColor = v13;

    objc_storeStrong(&self->_auxiliaryOptionsBackgroundCompositingFilter, *MEMORY[0x277CDA5D8]);
    goto LABEL_19;
  }

  self->_materialRecipe = [(NCNotificationListSupplementaryViewConfiguration *)self->_configuration materialRecipe];
  objc_storeStrong(&self->_materialTintColor, v9);
  v29 = 0.0;
  v30 = 0.0;
  v15 = self->_materialTintColor;
  if (!v15)
  {
    v30 = 0.0;
LABEL_8:
    v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.1];
    v17 = MEMORY[0x277CDA5D8];
    goto LABEL_9;
  }

  [(UIColor *)v15 getWhite:&v30 alpha:&v29];
  if (v30 > 0.2 || v29 > 0.4)
  {
    goto LABEL_8;
  }

  v16 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:?];
  v17 = MEMORY[0x277CDA5E8];
LABEL_9:
  v18 = self->_auxiliaryOptionsBackgroundColor;
  self->_auxiliaryOptionsBackgroundColor = v16;

  objc_storeStrong(&self->_auxiliaryOptionsBackgroundCompositingFilter, *v17);
  v19 = [v6 textColor];
  v20 = [(NCNotificationListSupplementaryHostingViewController *)self _sanitizedColorFromDeveloperProvidedColor:v19];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = [MEMORY[0x277D75348] whiteColor];
  }

  v23 = v22;

  v27 = 0;
  v28 = 0.0;
  [(UIColor *)v23 getWhite:&v28 alpha:&v27];
  if (vabdd_f64(v28, v30) < 0.25 && v29 > 0.5)
  {
    if (v30 < 0.5)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    v24 = ;

    v23 = v24;
  }

  v25 = self->_textColor;
  self->_textColor = v23;

LABEL_19:
  [(NCNotificationListSupplementaryHostingViewController *)self _configureHostingViewAnimated:v4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained supplementaryHostingViewControllerPreferredContentSizeChanged:self];
  }
}

- (PLPlatterView)platterView
{
  v2 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  v3 = [v2 platterView];

  return v3;
}

- (void)setContentVisible:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_contentVisible != a3)
  {
    v3 = a3;
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(NCNotificationListSupplementaryHostingViewController *)self _logDescription];
      v8 = NSStringFromBOOL();
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting content visible %{public}@", &v10, 0x16u);
    }

    self->_contentVisible = v3;
    v9 = self->_hostedViewController;
    if (objc_opt_respondsToSelector())
    {
      [(UIViewController *)v9 notificationListSupplementaryViewPresentableContentWillBecomeVisible:v3];
    }
  }
}

- (CGSize)preferredContentSize
{
  [(UIViewController *)self->_hostedViewController preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_preferredContentSizeDidChangeForChildViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (objc_opt_respondsToSelector())
    {
      [v5 supplementaryHostingViewControllerPreferredContentSizeChanged:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)loadView
{
  v4 = objc_alloc_init(NCNotificationListSupplementaryHostingView);
  [(NCNotificationListSupplementaryHostingViewController *)self setView:v4];
  [(NCNotificationListSupplementaryHostingView *)v4 setDelegate:self];
  v3 = [(UIViewController *)self->_hostedViewController view];
  [(NCNotificationListSupplementaryHostingView *)v4 setHostedView:v3];

  [(NCNotificationListSupplementaryHostingViewController *)self _configureHostingViewAnimated:0];
}

- (void)supplementaryHostingViewWasTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (objc_opt_respondsToSelector())
    {
      [v5 supplementaryHostingViewControllerWasTapped:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (BOOL)adjustsFontForContentSizeCategory
{
  v2 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  v3 = [v2 adjustsFontForContentSizeCategory];

  return v3;
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [v4 setAdjustsFontForContentSizeCategory:v3];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v2 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [v2 adjustForContentSizeCategoryChange];

  return 1;
}

- (void)setMaterialRecipe:(int64_t)a3
{
  self->_materialRecipe = a3;
  v4 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [v4 setMaterialRecipe:self->_materialRecipe];
}

- (void)setMaterialTintColor:(id)a3
{
  objc_storeStrong(&self->_materialTintColor, a3);
  v5 = a3;
  v6 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [v6 setMaterialTintColor:self->_materialTintColor];
}

- (void)setMaterialGroupNameBase:(id)a3
{
  objc_storeStrong(&self->_materialGroupNameBase, a3);
  v5 = a3;
  v6 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [v6 setMaterialGroupNameBase:self->_materialGroupNameBase];
}

- (int64_t)apparentZDistanceToUser
{
  v2 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  v3 = [v2 apparentZDistanceToUser];

  return v3;
}

- (void)setApparentZDistanceToUser:(int64_t)a3
{
  v4 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [v4 setApparentZDistanceToUser:a3];
}

- (double)rootScrollVelocity
{
  v2 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [v2 rootScrollVelocity];
  v4 = v3;

  return v4;
}

- (void)setRootScrollVelocity:(double)a3
{
  v4 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [v4 setRootScrollVelocity:a3];
}

- (unint64_t)glassMode
{
  v2 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  v3 = [v2 glassMode];

  return v3;
}

- (void)setGlassMode:(unint64_t)a3
{
  v4 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [v4 setGlassMode:a3];
}

- (BOOL)supportsMitosis
{
  v2 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  v3 = [v2 supportsMitosis];

  return v3;
}

- (void)setSupportsMitosis:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [v4 setSupportsMitosis:v3];
}

- (BOOL)unmanagedBackdropContrast
{
  v2 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  v3 = [v2 unmanagedBackdropContrast];

  return v3;
}

- (void)setUnmanagedBackdropContrast:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [v4 setUnmanagedBackdropContrast:v3];
}

- (unint64_t)backgroundGlassState
{
  v2 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  v3 = [v2 backgroundGlassState];

  return v3;
}

- (int64_t)backgroundGlassId
{
  v2 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  v3 = [v2 backgroundGlassId];

  return v3;
}

- (double)glassSmoothness
{
  v2 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [v2 glassSmoothness];
  v4 = v3;

  return v4;
}

- (void)removeLightEffectsIfNeeded
{
  v2 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [v2 removeLightEffectsIfNeeded];
}

- (void)configureStackDimmingForTransform:(CGAffineTransform *)a3
{
  v4 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  v5 = *&a3->c;
  v6[0] = *&a3->a;
  v6[1] = v5;
  v6[2] = *&a3->tx;
  [v4 configureStackDimmingForTransform:v6];
}

- (void)_configureHostingViewAnimated:(BOOL)a3
{
  if (self->_configuration)
  {
    v3 = a3;
    v5 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
    [v5 setMaterialRecipe:self->_materialRecipe];
    [v5 setMaterialTintColor:self->_materialTintColor];
    [v5 setMaterialGroupNameBase:self->_materialGroupNameBase];
    [v5 setClipsToBounds:{-[NCNotificationListSupplementaryViewConfiguration containsUnmanagedContent](self->_configuration, "containsUnmanagedContent")}];
    [(NCNotificationListSupplementaryHostingViewController *)self _configureAuxiliaryViewAnimated:v3];
  }
}

- (void)_configureAuxiliaryViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  v6 = [(NCNotificationListSupplementaryViewConfiguration *)self->_configuration auxiliaryOptionActions];
  LODWORD(v7) = v6 != 0;

  v8 = [v5 auxiliaryOptionActions];
  v9 = v8 != 0;

  v10 = v7 ^ v9;
  v11 = [(NCNotificationListSupplementaryViewConfiguration *)self->_configuration auxiliaryOptionActions];
  v12 = [v5 auxiliaryOptionActions];
  if (BSEqualArrays())
  {
    v13 = 1;
  }

  else
  {
    [(NCNotificationListSupplementaryViewConfiguration *)self->_configuration auxiliaryOptionsSummaryText];
    v7 = v20 = v3;
    [v5 auxiliaryOptionsSummaryText];
    v14 = v10;
    v16 = v15 = v5;
    v13 = BSEqualStrings();

    v5 = v15;
    v10 = v14;

    LOBYTE(v7) = v6 != 0;
    v3 = v20;
  }

  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__NCNotificationListSupplementaryHostingViewController__configureAuxiliaryViewAnimated___block_invoke;
  aBlock[3] = &unk_278372AB0;
  objc_copyWeak(&v30, location);
  v31 = v10;
  v32 = v13;
  v17 = _Block_copy(aBlock);
  if (v3 && v10)
  {
    v18 = [(NCNotificationListSupplementaryViewConfiguration *)self->_configuration containsUnmanagedContent];
    [v5 setClipsToBounds:1];
    if (v6)
    {
      [(NCNotificationListSupplementaryHostingViewController *)self _showAuxiliaryOptionsView:1];
    }

    v19 = MEMORY[0x277D75D18];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __88__NCNotificationListSupplementaryHostingViewController__configureAuxiliaryViewAnimated___block_invoke_2;
    v26[3] = &unk_27836F898;
    v27 = v5;
    v28 = v7;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __88__NCNotificationListSupplementaryHostingViewController__configureAuxiliaryViewAnimated___block_invoke_3;
    v21[3] = &unk_278372AD8;
    v24 = v7;
    v21[4] = self;
    v22 = v27;
    v25 = v18;
    v23 = v17;
    [v19 animateWithDuration:v26 animations:v21 completion:0.25];
  }

  else
  {
    [(NCNotificationListSupplementaryHostingViewController *)self _showAuxiliaryOptionsView:v6 != 0];
    v17[2](v17);
  }

  objc_destroyWeak(&v30);
  objc_destroyWeak(location);
}

void __88__NCNotificationListSupplementaryHostingViewController__configureAuxiliaryViewAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((*(a1 + 40) & 1) != 0 || *(a1 + 41) == 1)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v3 supplementaryHostingViewControllerPreferredContentSizeChanged:v4];
    }

    WeakRetained = v4;
  }
}

uint64_t __88__NCNotificationListSupplementaryHostingViewController__configureAuxiliaryViewAnimated___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    if ((*(result + 56) & 1) == 0)
    {
      [*(result + 32) _showAuxiliaryOptionsView:0];
      [*(v2 + 40) setClipsToBounds:*(v2 + 57)];
    }

    v3 = *(*(v2 + 48) + 16);

    return v3();
  }

  return result;
}

- (void)_showAuxiliaryOptionsView:(BOOL)a3
{
  v3 = a3;
  v7 = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  v5 = [(NCNotificationListSupplementaryViewConfiguration *)self->_configuration auxiliaryOptionActions];
  [v7 setAuxiliaryOptionActions:v5];

  v6 = [(NCNotificationListSupplementaryViewConfiguration *)self->_configuration auxiliaryOptionsSummaryText];
  [v7 setAuxiliaryOptionsSummaryText:v6];

  [v7 setAuxiliaryOptionsVisible:v3];
  [v7 setAuxiliaryOptionsTextColor:self->_textColor];
  [v7 setMaterialTintColor:self->_materialTintColor];
  [v7 setAuxiliaryOptionsBackgroundColor:self->_auxiliaryOptionsBackgroundColor];
  [v7 setAuxiliaryOptionsBackgroundCompositingFilter:self->_auxiliaryOptionsBackgroundCompositingFilter];
  [v7 setMaterialRecipe:self->_materialRecipe];
  [v7 setMaterialGroupNameBase:self->_materialGroupNameBase];
}

- (BOOL)_useDefaultLookForColor:(id)a3 materialRecipe:(int64_t)a4 containsUnmanagedContent:(BOOL)a5
{
  if (!a5)
  {
    return 0;
  }

  v6 = MEMORY[0x277D75348];
  v7 = a3;
  v8 = [v6 systemBackgroundColor];
  v9 = [v7 isEqual:v8];

  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = a4 >= 2;
  }

  v11 = !v10;
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (id)_sanitizedColorFromDeveloperProvidedColor:(id)a3
{
  v4 = a3;
  if (a3)
  {
    var8[0] = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    [a3 getRed:var8 green:&v7 blue:&v6 alpha:0];
    v4 = [MEMORY[0x277D75348] colorWithRed:var8[0] green:v7 blue:v6 alpha:1.0];
    v3 = var8[2];
  }

  return v4;
}

- (id)_logDescription
{
  v3 = [(NCNotificationListSupplementaryHostingViewController *)self configuration];
  v4 = [v3 groupingIdentifier];
  v5 = v4;
  v6 = @"<Group w/ No ID>";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"%@ (addr:%p) [%@: %@]", v10, self, self->_sectionIdentifier, v7];

  return v11;
}

- (NCNotificationListSupplementaryHostingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end