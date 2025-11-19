@interface SBFolderControllerConfiguration
- (CGRect)initialViewFrame;
- (SBFolderControllerConfiguration)init;
- (SBFolderControllerConfiguration)initWithConfiguration:(id)a3;
- (SBFolderControllerDelegate)folderDelegate;
- (SBIconViewProviding)iconViewProvider;
- (SBNestingViewControllerDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (int64_t)orientation;
@end

@implementation SBFolderControllerConfiguration

- (SBFolderControllerConfiguration)init
{
  v5.receiver = self;
  v5.super_class = SBFolderControllerConfiguration;
  v2 = [(SBFolderControllerConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_allowedOrientations = 30;
    objc_storeStrong(&v2->_originatingIconLocation, @"SBIconLocationNone");
    v3->_headerHeight = *MEMORY[0x1E69DE788];
    v3->_snapsToPageBoundariesAfterScrolling = 1;
    v3->_usesGlassGroup = 1;
  }

  return v3;
}

- (SBFolderControllerConfiguration)initWithConfiguration:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = SBFolderControllerConfiguration;
  v5 = [(SBFolderControllerConfiguration *)&v33 init];
  if (v5)
  {
    v6 = [v4 folder];
    folder = v5->_folder;
    v5->_folder = v6;

    v5->_orientation = [v4 orientation];
    v5->_allowedOrientations = [v4 allowedOrientations];
    v8 = [v4 listLayoutProvider];
    listLayoutProvider = v5->_listLayoutProvider;
    v5->_listLayoutProvider = v8;

    v10 = [v4 iconViewProvider];
    objc_storeWeak(&v5->_iconViewProvider, v10);

    v11 = [v4 delegate];
    objc_storeWeak(&v5->_delegate, v11);

    v12 = [v4 folderDelegate];
    objc_storeWeak(&v5->_folderDelegate, v12);

    v13 = [v4 legibilitySettings];
    legibilitySettings = v5->_legibilitySettings;
    v5->_legibilitySettings = v13;

    v15 = [v4 folderIconImageCache];
    folderIconImageCache = v5->_folderIconImageCache;
    v5->_folderIconImageCache = v15;

    v17 = [v4 iconImageCache];
    iconImageCache = v5->_iconImageCache;
    v5->_iconImageCache = v17;

    v19 = [v4 animationContext];
    animationContext = v5->_animationContext;
    v5->_animationContext = v19;

    v21 = [v4 headerView];
    headerView = v5->_headerView;
    v5->_headerView = v21;

    [v4 headerHeight];
    v5->_headerHeight = v23;
    v24 = [v4 originatingIconLocation];
    v25 = [v24 copy];
    originatingIconLocation = v5->_originatingIconLocation;
    v5->_originatingIconLocation = v25;

    v5->_userInterfaceLayoutDirectionHandling = [v4 userInterfaceLayoutDirectionHandling];
    v5->_vertical = [v4 isVertical];
    [v4 initialViewFrame];
    v5->_initialViewFrame.origin.x = v27;
    v5->_initialViewFrame.origin.y = v28;
    v5->_initialViewFrame.size.width = v29;
    v5->_initialViewFrame.size.height = v30;
    v5->_snapsToPageBoundariesAfterScrolling = [v4 snapsToPageBoundariesAfterScrolling];
    v5->_addsFocusGuidesForWrapping = [v4 addsFocusGuidesForWrapping];
    v5->_iconSpacingAxisMatchingBehavior = [v4 iconSpacingAxisMatchingBehavior];
    v5->_numberOfInitialPagesToPreferVisible = [v4 numberOfInitialPagesToPreferVisible];
    [v4 additionalPartialPagesToKeepVisible];
    v5->_additionalPartialPagesToKeepVisible = v31;
    v5->_requiresGlassGroupingForCustomIconImageViewControllers = [v4 requiresGlassGroupingForCustomIconImageViewControllers];
    v5->_usesGlassGroup = [v4 usesGlassGroup];
  }

  return v5;
}

- (int64_t)orientation
{
  orientation = self->_orientation;
  allowedOrientations = self->_allowedOrientations;
  v4 = SBFInterfaceOrientationMaskContainsInterfaceOrientation();
  v5 = __clz(__rbit64(allowedOrientations));
  if (v5 <= 1)
  {
    v5 = 1;
  }

  if (v4)
  {
    return orientation;
  }

  else
  {
    return v5;
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFolderControllerConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [(SBFolderControllerConfiguration *)self folder];
  v6 = [v4 appendObject:v5 withName:@"folder"];

  v7 = [v4 appendInteger:-[SBFolderControllerConfiguration orientation](self withName:{"orientation"), @"orientation"}];
  v8 = [v4 appendUnsignedInteger:-[SBFolderControllerConfiguration allowedOrientations](self withName:{"allowedOrientations"), @"allowedOrientations"}];
  v9 = [(SBFolderControllerConfiguration *)self listLayoutProvider];
  v10 = [v4 appendObject:v9 withName:@"listLayoutProvider"];

  v11 = [(SBFolderControllerConfiguration *)self iconViewProvider];
  v12 = [v4 appendObject:v11 withName:@"iconViewProvider"];

  v13 = [(SBFolderControllerConfiguration *)self delegate];
  v14 = [v4 appendObject:v13 withName:@"delegate"];

  v15 = [(SBFolderControllerConfiguration *)self folderDelegate];
  v16 = [v4 appendObject:v15 withName:@"folderDelegate"];

  v17 = [(SBFolderControllerConfiguration *)self legibilitySettings];
  v18 = [v4 appendObject:v17 withName:@"legibilitySettings"];

  v19 = [(SBFolderControllerConfiguration *)self folderIconImageCache];
  v20 = [v4 appendObject:v19 withName:@"folderIconImageCache"];

  v21 = [(SBFolderControllerConfiguration *)self iconImageCache];
  v22 = [v4 appendObject:v21 withName:@"iconImageCache"];

  v23 = [(SBFolderControllerConfiguration *)self animationContext];
  v24 = [v4 appendObject:v23 withName:@"animationContext"];

  v25 = [(SBFolderControllerConfiguration *)self headerView];
  v26 = [v4 appendObject:v25 withName:@"headerView"];

  [(SBFolderControllerConfiguration *)self headerHeight];
  v27 = [v4 appendFloat:@"headerHeight" withName:?];
  v28 = [(SBFolderControllerConfiguration *)self originatingIconLocation];
  v29 = [v4 appendObject:v28 withName:@"originatingIconLocation"];

  v30 = [v4 appendInteger:-[SBFolderControllerConfiguration userInterfaceLayoutDirectionHandling](self withName:{"userInterfaceLayoutDirectionHandling"), @"userInterfaceLayoutDirectionHandling"}];
  v31 = [v4 appendBool:-[SBFolderControllerConfiguration isVertical](self withName:{"isVertical"), @"isVertical"}];
  [(SBFolderControllerConfiguration *)self initialViewFrame];
  v32 = [v4 appendRect:@"initialViewFrame" withName:?];
  v33 = [v4 appendBool:-[SBFolderControllerConfiguration snapsToPageBoundariesAfterScrolling](self withName:{"snapsToPageBoundariesAfterScrolling"), @"snapsToPageBoundariesAfterScrolling"}];
  v34 = [v4 appendBool:-[SBFolderControllerConfiguration addsFocusGuidesForWrapping](self withName:{"addsFocusGuidesForWrapping"), @"addsFocusGuidesForWrapping"}];
  v35 = SBHStringForIconListIconSpacingAxisMatchingBehavior([(SBFolderControllerConfiguration *)self iconSpacingAxisMatchingBehavior]);
  [v4 appendString:v35 withName:@"iconSpacingAxisMatchingBehavior"];

  v36 = [v4 appendUnsignedInteger:-[SBFolderControllerConfiguration numberOfInitialPagesToPreferVisible](self withName:{"numberOfInitialPagesToPreferVisible"), @"numberOfInitialPagesToPreferVisible"}];
  [(SBFolderControllerConfiguration *)self additionalPartialPagesToKeepVisible];
  v37 = [v4 appendFloat:@"additionalPartialPagesToKeepVisible" withName:?];
  v38 = [v4 appendBool:-[SBFolderControllerConfiguration requiresGlassGroupingForCustomIconImageViewControllers](self withName:{"requiresGlassGroupingForCustomIconImageViewControllers"), @"requiresGlassGroupingForCustomIconImageViewControllers"}];
  v39 = [v4 appendBool:-[SBFolderControllerConfiguration usesGlassGroup](self withName:{"usesGlassGroup"), @"usesGlassGroup"}];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBFolderControllerConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithConfiguration:self];
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

- (SBNestingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBFolderControllerDelegate)folderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_folderDelegate);

  return WeakRetained;
}

- (CGRect)initialViewFrame
{
  x = self->_initialViewFrame.origin.x;
  y = self->_initialViewFrame.origin.y;
  width = self->_initialViewFrame.size.width;
  height = self->_initialViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end