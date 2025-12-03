@interface NCNotificationListSupplementaryHostingViewController
- (BOOL)_useDefaultLookForColor:(id)color materialRecipe:(int64_t)recipe containsUnmanagedContent:(BOOL)content;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (BOOL)isHostedViewControllerUserInteractionEnabled;
- (BOOL)supportsMitosis;
- (BOOL)unmanagedBackdropContrast;
- (CGSize)preferredContentSize;
- (NCNotificationListSupplementaryHostingViewController)initWithHostedViewController:(id)controller sectionIdentifier:(id)identifier;
- (NCNotificationListSupplementaryHostingViewControllerDelegate)delegate;
- (PLPlatterView)platterView;
- (double)glassSmoothness;
- (double)rootScrollVelocity;
- (id)_logDescription;
- (id)_sanitizedColorFromDeveloperProvidedColor:(id)color;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)apparentZDistanceToUser;
- (int64_t)backgroundGlassId;
- (unint64_t)backgroundGlassState;
- (unint64_t)glassMode;
- (void)_configureAuxiliaryViewAnimated:(BOOL)animated;
- (void)_configureHostingViewAnimated:(BOOL)animated;
- (void)_preferredContentSizeDidChangeForChildViewController:(id)controller;
- (void)_showAuxiliaryOptionsView:(BOOL)view;
- (void)configureStackDimmingForTransform:(CGAffineTransform *)transform;
- (void)loadView;
- (void)removeLightEffectsIfNeeded;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setApparentZDistanceToUser:(int64_t)user;
- (void)setConfiguration:(id)configuration animated:(BOOL)animated;
- (void)setContentVisible:(BOOL)visible;
- (void)setGlassMode:(unint64_t)mode;
- (void)setHostedViewControllerUserInteractionEnabled:(BOOL)enabled;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setMaterialRecipe:(int64_t)recipe;
- (void)setMaterialTintColor:(id)color;
- (void)setRootScrollVelocity:(double)velocity;
- (void)setSupportsMitosis:(BOOL)mitosis;
- (void)setUnmanagedBackdropContrast:(BOOL)contrast;
- (void)supplementaryHostingViewWasTapped:(id)tapped;
@end

@implementation NCNotificationListSupplementaryHostingViewController

- (NCNotificationListSupplementaryHostingViewController)initWithHostedViewController:(id)controller sectionIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = NCNotificationListSupplementaryHostingViewController;
  v9 = [(NCNotificationListSupplementaryHostingViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    materialGroupNameBase = v9->_materialGroupNameBase;
    v9->_materialGroupNameBase = 0;

    objc_storeStrong(&v10->_hostedViewController, controller);
    [(NCNotificationListSupplementaryHostingViewController *)v10 addChildViewController:v10->_hostedViewController];
    [(UIViewController *)v10->_hostedViewController didMoveToParentViewController:v10];
    objc_storeStrong(&v10->_sectionIdentifier, identifier);
  }

  return v10;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(NCNotificationListSupplementaryHostingViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__NCNotificationListSupplementaryHostingViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_27836F560;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

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
  succinctDescriptionBuilder = [(NCNotificationListSupplementaryHostingViewController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  configuration = [(NCNotificationListSupplementaryHostingViewController *)self configuration];
  v5 = [v3 appendObject:configuration withName:@"configuration" skipIfNil:1];

  hostedViewController = [(NCNotificationListSupplementaryHostingViewController *)self hostedViewController];
  v7 = [v3 appendObject:hostedViewController withName:@"hostedViewController"];

  return v3;
}

- (void)setHostedViewControllerUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [_hostingView setHostedViewUserInteractionEnabled:enabledCopy];
}

- (BOOL)isHostedViewControllerUserInteractionEnabled
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  isHostedViewUserInteractionEnabled = [_hostingView isHostedViewUserInteractionEnabled];

  return isHostedViewUserInteractionEnabled;
}

- (void)setConfiguration:(id)configuration animated:(BOOL)animated
{
  animatedCopy = animated;
  configurationCopy = configuration;
  v7 = [configurationCopy copy];
  configuration = self->_configuration;
  self->_configuration = v7;

  tintColor = [configurationCopy tintColor];
  if (-[NCNotificationListSupplementaryHostingViewController _useDefaultLookForColor:materialRecipe:containsUnmanagedContent:](self, "_useDefaultLookForColor:materialRecipe:containsUnmanagedContent:", tintColor, [configurationCopy materialRecipe], objc_msgSend(configurationCopy, "containsUnmanagedContent")))
  {
    materialTintColor = self->_materialTintColor;
    self->_materialTintColor = 0;

    _defaultTextColor = [(NCNotificationListSupplementaryHostingViewController *)self _defaultTextColor];
    textColor = self->_textColor;
    self->_textColor = _defaultTextColor;

    self->_materialRecipe = 1;
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.1];
    auxiliaryOptionsBackgroundColor = self->_auxiliaryOptionsBackgroundColor;
    self->_auxiliaryOptionsBackgroundColor = v13;

    objc_storeStrong(&self->_auxiliaryOptionsBackgroundCompositingFilter, *MEMORY[0x277CDA5D8]);
    goto LABEL_19;
  }

  self->_materialRecipe = [(NCNotificationListSupplementaryViewConfiguration *)self->_configuration materialRecipe];
  objc_storeStrong(&self->_materialTintColor, tintColor);
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
  textColor = [configurationCopy textColor];
  v20 = [(NCNotificationListSupplementaryHostingViewController *)self _sanitizedColorFromDeveloperProvidedColor:textColor];
  v21 = v20;
  if (v20)
  {
    whiteColor = v20;
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  v23 = whiteColor;

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
  [(NCNotificationListSupplementaryHostingViewController *)self _configureHostingViewAnimated:animatedCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained supplementaryHostingViewControllerPreferredContentSizeChanged:self];
  }
}

- (PLPlatterView)platterView
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  platterView = [_hostingView platterView];

  return platterView;
}

- (void)setContentVisible:(BOOL)visible
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_contentVisible != visible)
  {
    visibleCopy = visible;
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      _logDescription = [(NCNotificationListSupplementaryHostingViewController *)self _logDescription];
      v8 = NSStringFromBOOL();
      v10 = 138543618;
      v11 = _logDescription;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting content visible %{public}@", &v10, 0x16u);
    }

    self->_contentVisible = visibleCopy;
    v9 = self->_hostedViewController;
    if (objc_opt_respondsToSelector())
    {
      [(UIViewController *)v9 notificationListSupplementaryViewPresentableContentWillBecomeVisible:visibleCopy];
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

- (void)_preferredContentSizeDidChangeForChildViewController:(id)controller
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
  view = [(UIViewController *)self->_hostedViewController view];
  [(NCNotificationListSupplementaryHostingView *)v4 setHostedView:view];

  [(NCNotificationListSupplementaryHostingViewController *)self _configureHostingViewAnimated:0];
}

- (void)supplementaryHostingViewWasTapped:(id)tapped
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
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  adjustsFontForContentSizeCategory = [_hostingView adjustsFontForContentSizeCategory];

  return adjustsFontForContentSizeCategory;
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [_hostingView setAdjustsFontForContentSizeCategory:categoryCopy];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [_hostingView adjustForContentSizeCategoryChange];

  return 1;
}

- (void)setMaterialRecipe:(int64_t)recipe
{
  self->_materialRecipe = recipe;
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [_hostingView setMaterialRecipe:self->_materialRecipe];
}

- (void)setMaterialTintColor:(id)color
{
  objc_storeStrong(&self->_materialTintColor, color);
  colorCopy = color;
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [_hostingView setMaterialTintColor:self->_materialTintColor];
}

- (void)setMaterialGroupNameBase:(id)base
{
  objc_storeStrong(&self->_materialGroupNameBase, base);
  baseCopy = base;
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [_hostingView setMaterialGroupNameBase:self->_materialGroupNameBase];
}

- (int64_t)apparentZDistanceToUser
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  apparentZDistanceToUser = [_hostingView apparentZDistanceToUser];

  return apparentZDistanceToUser;
}

- (void)setApparentZDistanceToUser:(int64_t)user
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [_hostingView setApparentZDistanceToUser:user];
}

- (double)rootScrollVelocity
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [_hostingView rootScrollVelocity];
  v4 = v3;

  return v4;
}

- (void)setRootScrollVelocity:(double)velocity
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [_hostingView setRootScrollVelocity:velocity];
}

- (unint64_t)glassMode
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  glassMode = [_hostingView glassMode];

  return glassMode;
}

- (void)setGlassMode:(unint64_t)mode
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [_hostingView setGlassMode:mode];
}

- (BOOL)supportsMitosis
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  supportsMitosis = [_hostingView supportsMitosis];

  return supportsMitosis;
}

- (void)setSupportsMitosis:(BOOL)mitosis
{
  mitosisCopy = mitosis;
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [_hostingView setSupportsMitosis:mitosisCopy];
}

- (BOOL)unmanagedBackdropContrast
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  unmanagedBackdropContrast = [_hostingView unmanagedBackdropContrast];

  return unmanagedBackdropContrast;
}

- (void)setUnmanagedBackdropContrast:(BOOL)contrast
{
  contrastCopy = contrast;
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [_hostingView setUnmanagedBackdropContrast:contrastCopy];
}

- (unint64_t)backgroundGlassState
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  backgroundGlassState = [_hostingView backgroundGlassState];

  return backgroundGlassState;
}

- (int64_t)backgroundGlassId
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  backgroundGlassId = [_hostingView backgroundGlassId];

  return backgroundGlassId;
}

- (double)glassSmoothness
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [_hostingView glassSmoothness];
  v4 = v3;

  return v4;
}

- (void)removeLightEffectsIfNeeded
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  [_hostingView removeLightEffectsIfNeeded];
}

- (void)configureStackDimmingForTransform:(CGAffineTransform *)transform
{
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  v5 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v5;
  v6[2] = *&transform->tx;
  [_hostingView configureStackDimmingForTransform:v6];
}

- (void)_configureHostingViewAnimated:(BOOL)animated
{
  if (self->_configuration)
  {
    animatedCopy = animated;
    _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
    [_hostingView setMaterialRecipe:self->_materialRecipe];
    [_hostingView setMaterialTintColor:self->_materialTintColor];
    [_hostingView setMaterialGroupNameBase:self->_materialGroupNameBase];
    [_hostingView setClipsToBounds:{-[NCNotificationListSupplementaryViewConfiguration containsUnmanagedContent](self->_configuration, "containsUnmanagedContent")}];
    [(NCNotificationListSupplementaryHostingViewController *)self _configureAuxiliaryViewAnimated:animatedCopy];
  }
}

- (void)_configureAuxiliaryViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  auxiliaryOptionActions = [(NCNotificationListSupplementaryViewConfiguration *)self->_configuration auxiliaryOptionActions];
  LODWORD(v7) = auxiliaryOptionActions != 0;

  auxiliaryOptionActions2 = [_hostingView auxiliaryOptionActions];
  v9 = auxiliaryOptionActions2 != 0;

  v10 = v7 ^ v9;
  auxiliaryOptionActions3 = [(NCNotificationListSupplementaryViewConfiguration *)self->_configuration auxiliaryOptionActions];
  auxiliaryOptionActions4 = [_hostingView auxiliaryOptionActions];
  if (BSEqualArrays())
  {
    v13 = 1;
  }

  else
  {
    [(NCNotificationListSupplementaryViewConfiguration *)self->_configuration auxiliaryOptionsSummaryText];
    v7 = v20 = animatedCopy;
    [_hostingView auxiliaryOptionsSummaryText];
    v14 = v10;
    v16 = v15 = _hostingView;
    v13 = BSEqualStrings();

    _hostingView = v15;
    v10 = v14;

    LOBYTE(v7) = auxiliaryOptionActions != 0;
    animatedCopy = v20;
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
  if (animatedCopy && v10)
  {
    containsUnmanagedContent = [(NCNotificationListSupplementaryViewConfiguration *)self->_configuration containsUnmanagedContent];
    [_hostingView setClipsToBounds:1];
    if (auxiliaryOptionActions)
    {
      [(NCNotificationListSupplementaryHostingViewController *)self _showAuxiliaryOptionsView:1];
    }

    v19 = MEMORY[0x277D75D18];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __88__NCNotificationListSupplementaryHostingViewController__configureAuxiliaryViewAnimated___block_invoke_2;
    v26[3] = &unk_27836F898;
    v27 = _hostingView;
    v28 = v7;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __88__NCNotificationListSupplementaryHostingViewController__configureAuxiliaryViewAnimated___block_invoke_3;
    v21[3] = &unk_278372AD8;
    v24 = v7;
    v21[4] = self;
    v22 = v27;
    v25 = containsUnmanagedContent;
    v23 = v17;
    [v19 animateWithDuration:v26 animations:v21 completion:0.25];
  }

  else
  {
    [(NCNotificationListSupplementaryHostingViewController *)self _showAuxiliaryOptionsView:auxiliaryOptionActions != 0];
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

- (void)_showAuxiliaryOptionsView:(BOOL)view
{
  viewCopy = view;
  _hostingView = [(NCNotificationListSupplementaryHostingViewController *)self _hostingView];
  auxiliaryOptionActions = [(NCNotificationListSupplementaryViewConfiguration *)self->_configuration auxiliaryOptionActions];
  [_hostingView setAuxiliaryOptionActions:auxiliaryOptionActions];

  auxiliaryOptionsSummaryText = [(NCNotificationListSupplementaryViewConfiguration *)self->_configuration auxiliaryOptionsSummaryText];
  [_hostingView setAuxiliaryOptionsSummaryText:auxiliaryOptionsSummaryText];

  [_hostingView setAuxiliaryOptionsVisible:viewCopy];
  [_hostingView setAuxiliaryOptionsTextColor:self->_textColor];
  [_hostingView setMaterialTintColor:self->_materialTintColor];
  [_hostingView setAuxiliaryOptionsBackgroundColor:self->_auxiliaryOptionsBackgroundColor];
  [_hostingView setAuxiliaryOptionsBackgroundCompositingFilter:self->_auxiliaryOptionsBackgroundCompositingFilter];
  [_hostingView setMaterialRecipe:self->_materialRecipe];
  [_hostingView setMaterialGroupNameBase:self->_materialGroupNameBase];
}

- (BOOL)_useDefaultLookForColor:(id)color materialRecipe:(int64_t)recipe containsUnmanagedContent:(BOOL)content
{
  if (!content)
  {
    return 0;
  }

  v6 = MEMORY[0x277D75348];
  colorCopy = color;
  systemBackgroundColor = [v6 systemBackgroundColor];
  v9 = [colorCopy isEqual:systemBackgroundColor];

  if (colorCopy)
  {
    v10 = 1;
  }

  else
  {
    v10 = recipe >= 2;
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

- (id)_sanitizedColorFromDeveloperProvidedColor:(id)color
{
  colorCopy = color;
  if (color)
  {
    var8[0] = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    [color getRed:var8 green:&v7 blue:&v6 alpha:0];
    colorCopy = [MEMORY[0x277D75348] colorWithRed:var8[0] green:v7 blue:v6 alpha:1.0];
    v3 = var8[2];
  }

  return colorCopy;
}

- (id)_logDescription
{
  configuration = [(NCNotificationListSupplementaryHostingViewController *)self configuration];
  groupingIdentifier = [configuration groupingIdentifier];
  v5 = groupingIdentifier;
  v6 = @"<Group w/ No ID>";
  if (groupingIdentifier)
  {
    v6 = groupingIdentifier;
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