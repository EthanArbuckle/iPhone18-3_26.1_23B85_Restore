@interface SBIconListViewIconSizeChangeAnimator
- (CGPoint)priorIconViewPosition;
- (SBIconListViewIconSizeChangeAnimator)initWithIconView:(id)view iconListView:(id)listView widgetMetricsProvider:(id)provider;
- (SBIconListViewIconSizeChangeAnimatorDelegate)delegate;
- (id)iconResizeTransitionViewController:(id)controller willUseIcon:(id)icon forViewControllerForGridSizeClass:(id)class;
- (id)iconResizeTransitionViewController:(id)controller willUseIconDataSource:(id)source forViewControllerForGridSizeClass:(id)class;
- (id)iconResizeViewHelper:(id)helper intentForWidget:(id)widget;
- (id)iconResizeViewHelper:(id)helper viewControllerForIconDataSource:(id)source icon:(id)icon gridSizeClass:(id)class;
- (id)snapshotViewBackgroundViewForIconView:(id)view;
- (void)addAnimationCompletionHandler:(id)handler;
- (void)dealloc;
- (void)iconListView:(id)view wantsAnimatedLayoutForIconView:(id)iconView withParameters:(SBIconListLayoutAnimationParameters *)parameters alongsideAnimationBlock:(id)block;
@end

@implementation SBIconListViewIconSizeChangeAnimator

- (SBIconListViewIconSizeChangeAnimator)initWithIconView:(id)view iconListView:(id)listView widgetMetricsProvider:(id)provider
{
  viewCopy = view;
  listViewCopy = listView;
  providerCopy = provider;
  v31.receiver = self;
  v31.super_class = SBIconListViewIconSizeChangeAnimator;
  v12 = [(SBIconListViewClusterAnimator *)&v31 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_iconView, view);
    icon = [viewCopy icon];
    priorIcon = v13->_priorIcon;
    v13->_priorIcon = icon;

    activeDataSource = [(SBIcon *)v13->_priorIcon activeDataSource];
    priorIconActiveDataSource = v13->_priorIconActiveDataSource;
    v13->_priorIconActiveDataSource = activeDataSource;

    [viewCopy center];
    v13->_priorIconViewPosition.x = v18;
    v13->_priorIconViewPosition.y = v19;
    icon2 = [viewCopy icon];
    gridSizeClass = [icon2 gridSizeClass];
    v22 = [gridSizeClass copy];
    priorGridSizeClass = v13->_priorGridSizeClass;
    v13->_priorGridSizeClass = v22;

    listLayout = [viewCopy listLayout];
    v25 = -[SBHWidgetIconResizeViewHelper initWithDelegate:listLayout:widgetMetricsProvider:orientation:]([SBHWidgetIconResizeViewHelper alloc], "initWithDelegate:listLayout:widgetMetricsProvider:orientation:", v13, listLayout, providerCopy, [listViewCopy layoutOrientation]);
    viewHelper = v13->_viewHelper;
    v13->_viewHelper = v25;

    v27 = +[SBHHomeScreenDomain rootSettings];
    iconEditingSettings = [v27 iconEditingSettings];
    iconEditingSettings = v13->_iconEditingSettings;
    v13->_iconEditingSettings = iconEditingSettings;
  }

  return v13;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_iconViewContextMenuAssertion invalidate];
  v3.receiver = self;
  v3.super_class = SBIconListViewIconSizeChangeAnimator;
  [(SBIconListViewIconSizeChangeAnimator *)&v3 dealloc];
}

- (void)addAnimationCompletionHandler:(id)handler
{
  handlerCopy = handler;
  animationCompletionHandlers = self->_animationCompletionHandlers;
  v10 = handlerCopy;
  if (!animationCompletionHandlers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_animationCompletionHandlers;
    self->_animationCompletionHandlers = v6;

    handlerCopy = v10;
    animationCompletionHandlers = self->_animationCompletionHandlers;
  }

  v8 = [handlerCopy copy];
  v9 = _Block_copy(v8);
  [(NSMutableArray *)animationCompletionHandlers addObject:v9];
}

- (void)iconListView:(id)view wantsAnimatedLayoutForIconView:(id)iconView withParameters:(SBIconListLayoutAnimationParameters *)parameters alongsideAnimationBlock:(id)block
{
  viewCopy = view;
  iconViewCopy = iconView;
  blockCopy = block;
  icon = [iconViewCopy icon];
  iconView = [(SBIconListViewIconSizeChangeAnimator *)self iconView];
  v15 = iconView;
  if (iconView != iconViewCopy)
  {

LABEL_5:
    v73.receiver = self;
    v73.super_class = SBIconListViewIconSizeChangeAnimator;
    v46 = *&parameters->var2.continuousCornerRadius;
    v72[2] = *&parameters->var2.size.height;
    v72[3] = v46;
    v47 = *&parameters->var5;
    v72[4] = parameters->var4;
    v72[5] = v47;
    v48 = *&parameters->var1;
    v72[0] = parameters->var0;
    v72[1] = v48;
    [(SBIconListViewClusterAnimator *)&v73 iconListView:viewCopy wantsAnimatedLayoutForIconView:iconViewCopy withParameters:v72 alongsideAnimationBlock:blockCopy];
    goto LABEL_6;
  }

  isLeafIcon = [icon isLeafIcon];

  if ((isLeafIcon & 1) == 0)
  {
    goto LABEL_5;
  }

  priorGridSizeClass = [(SBIconListViewIconSizeChangeAnimator *)self priorGridSizeClass];
  icon2 = [iconViewCopy icon];
  gridSizeClass = [icon2 gridSizeClass];

  v49 = icon;
  gridSizeClassDomain = [iconViewCopy gridSizeClassDomain];
  [(SBIconListViewIconSizeChangeAnimator *)self viewHelper];
  v50 = v56 = blockCopy;
  v18 = [SBHIconGridSizeClassSet alloc];
  [MEMORY[0x1E695DFD8] setWithObjects:{priorGridSizeClass, gridSizeClass, 0}];
  v19 = v53 = icon;
  v51 = [(SBHIconGridSizeClassSet *)v18 initWithGridSizeClasses:v19];

  v20 = [[SBWidgetIconResizeTransitionViewController alloc] initWithLeafIcon:v49 allowedGridSizeClasses:v51 gridSizeClassDomain:gridSizeClassDomain viewHelper:v50 options:1];
  [(SBWidgetIconResizeTransitionViewController *)v20 setDelegate:self];
  [(SBWidgetIconResizeTransitionViewController *)v20 setStartingGridSizeClass:priorGridSizeClass];
  [(SBWidgetIconResizeTransitionViewController *)v20 setEndingGridSizeClass:gridSizeClass];
  [iconViewCopy setOverrideCustomIconImageViewController:v20];
  [viewCopy iconImageInfoForGridSizeClass:priorGridSizeClass];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(SBIconListViewIconSizeChangeAnimator *)self priorIconViewPosition];
  v30 = v29;
  v32 = v31;
  v33 = [iconViewCopy disallowContextMenusForReason:@"size change"];
  [(SBIconListViewIconSizeChangeAnimator *)self setIconViewContextMenuAssertion:v33];

  view = [(SBWidgetIconResizeTransitionViewController *)v20 view];
  [iconViewCopy setIconImageInfo:{v22, v24, v26, v28}];
  [iconViewCopy setCenter:{v30, v32}];
  [iconViewCopy layoutIfNeeded];
  [view layoutIfNeeded];
  [(SBHIconEditingSettings *)self->_iconEditingSettings defaultSpringDuration];
  v36 = v35;
  [(SBHIconEditingSettings *)self->_iconEditingSettings defaultSpringDampingRatio];
  v38 = v37;
  v39 = MEMORY[0x1E69DD250];
  var7 = parameters->var7;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __123__SBIconListViewIconSizeChangeAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke;
  v61[3] = &unk_1E8090DC8;
  v62 = v20;
  v63 = iconViewCopy;
  v64 = viewCopy;
  v41 = *&parameters->var2.size.height;
  var4 = parameters->var4;
  v43 = *&parameters->var5;
  v69 = *&parameters->var2.continuousCornerRadius;
  v70 = var4;
  v71 = v43;
  v44 = *&parameters->var1;
  var0 = parameters->var0;
  v67 = v44;
  v68 = v41;
  v65 = v56;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __123__SBIconListViewIconSizeChangeAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_3;
  v57[3] = &unk_1E808EF70;
  v58 = v63;
  selfCopy = self;
  v60 = v62;
  icon = v53;
  v45 = v62;
  [v39 animateWithDuration:var7 delay:v61 usingSpringWithDamping:v57 initialSpringVelocity:v36 options:0.0 animations:v38 completion:0.0];

  blockCopy = v56;
LABEL_6:
}

void __123__SBIconListViewIconSizeChangeAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v25 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v25.minimum;
  maximum = v25.maximum;
  preferred = v25.preferred;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __123__SBIconListViewIconSizeChangeAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_2;
  v16[3] = &unk_1E8090DC8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 112);
  v21 = *(a1 + 96);
  v22 = v9;
  v10 = *(a1 + 144);
  v23 = *(a1 + 128);
  v24 = v10;
  v11 = *(a1 + 80);
  v19 = *(a1 + 64);
  v20 = v11;
  v12 = *(a1 + 56);
  *&v13 = v8;
  *(&v13 + 1) = v12;
  *&v14 = v6;
  *(&v14 + 1) = v7;
  v17 = v14;
  v18 = v13;
  *&v13 = minimum;
  *&v14 = maximum;
  *&v15 = preferred;
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114131 updateReason:v16 animations:{*&v13, *&v14, v15}];
}

uint64_t __123__SBIconListViewIconSizeChangeAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setTransitionProgress:1.0];
  [*(a1 + 40) clearIconImageInfo];
  [*(a1 + 40) setNeedsLayout];
  [*(a1 + 40) layoutIfNeeded];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 112);
  v8[2] = *(a1 + 96);
  v8[3] = v4;
  v5 = *(a1 + 144);
  v8[4] = *(a1 + 128);
  v8[5] = v5;
  v6 = *(a1 + 80);
  v8[0] = *(a1 + 64);
  v8[1] = v6;
  [v2 performDefaultAnimatedLayoutUpdateForIconView:v3 withParameters:v8];
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __123__SBIconListViewIconSizeChangeAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_3(id *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [a1[4] setOverrideCustomIconImageViewController:0];
  v2 = *(a1[5] + 3);
  v3 = a1[5];
  v4 = v3[3];
  v3[3] = 0;

  v5 = [a1[5] iconViewContextMenuAssertion];
  [v5 invalidate];
  [a1[5] setIconViewContextMenuAssertion:0];
  [a1[6] invalidate];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v2;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)snapshotViewBackgroundViewForIconView:(id)view
{
  customIconImageViewController = [view customIconImageViewController];
  if ([customIconImageViewController sbh_isWidgetStackViewController])
  {
    v4 = customIconImageViewController;
    backgroundView = [v4 backgroundView];

    if (backgroundView)
    {
      backgroundViewProvider = [v4 backgroundViewProvider];
      v7 = backgroundViewProvider;
      if (backgroundViewProvider)
      {
        (*(backgroundViewProvider + 16))(backgroundViewProvider);
      }

      else
      {
        [MEMORY[0x1E69AE158] materialViewWithRecipe:3];
      }
      v8 = ;
      [v8 setClipsToBounds:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)iconResizeViewHelper:(id)helper intentForWidget:(id)widget
{
  widgetCopy = widget;
  delegate = [(SBIconListViewIconSizeChangeAnimator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate iconSizeChangeAnimator:self intentForWidget:widgetCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)iconResizeViewHelper:(id)helper viewControllerForIconDataSource:(id)source icon:(id)icon gridSizeClass:(id)class
{
  sourceCopy = source;
  iconCopy = icon;
  classCopy = class;
  delegate = [(SBIconListViewIconSizeChangeAnimator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [delegate iconSizeChangeAnimator:self viewControllerForIconDataSource:sourceCopy icon:iconCopy gridSizeClass:classCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)iconResizeTransitionViewController:(id)controller willUseIcon:(id)icon forViewControllerForGridSizeClass:(id)class
{
  iconCopy = icon;
  classCopy = class;
  priorGridSizeClass = [(SBIconListViewIconSizeChangeAnimator *)self priorGridSizeClass];
  v10 = priorGridSizeClass;
  if (priorGridSizeClass == classCopy)
  {

    goto LABEL_5;
  }

  priorGridSizeClass2 = [(SBIconListViewIconSizeChangeAnimator *)self priorGridSizeClass];
  v12 = [classCopy isEqualToString:priorGridSizeClass2];

  if (v12)
  {
LABEL_5:
    priorIcon = [(SBIconListViewIconSizeChangeAnimator *)self priorIcon];

    iconCopy = priorIcon;
  }

  return iconCopy;
}

- (id)iconResizeTransitionViewController:(id)controller willUseIconDataSource:(id)source forViewControllerForGridSizeClass:(id)class
{
  sourceCopy = source;
  classCopy = class;
  priorGridSizeClass = [(SBIconListViewIconSizeChangeAnimator *)self priorGridSizeClass];
  v10 = priorGridSizeClass;
  if (priorGridSizeClass == classCopy)
  {

    goto LABEL_5;
  }

  priorGridSizeClass2 = [(SBIconListViewIconSizeChangeAnimator *)self priorGridSizeClass];
  v12 = [classCopy isEqualToString:priorGridSizeClass2];

  if (v12)
  {
LABEL_5:
    priorIconActiveDataSource = [(SBIconListViewIconSizeChangeAnimator *)self priorIconActiveDataSource];

    sourceCopy = priorIconActiveDataSource;
  }

  return sourceCopy;
}

- (SBIconListViewIconSizeChangeAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)priorIconViewPosition
{
  x = self->_priorIconViewPosition.x;
  y = self->_priorIconViewPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end