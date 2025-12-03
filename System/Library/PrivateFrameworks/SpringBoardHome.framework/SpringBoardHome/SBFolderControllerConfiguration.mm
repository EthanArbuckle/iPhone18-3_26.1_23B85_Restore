@interface SBFolderControllerConfiguration
- (CGRect)initialViewFrame;
- (SBFolderControllerConfiguration)init;
- (SBFolderControllerConfiguration)initWithConfiguration:(id)configuration;
- (SBFolderControllerDelegate)folderDelegate;
- (SBIconViewProviding)iconViewProvider;
- (SBNestingViewControllerDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
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

- (SBFolderControllerConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v33.receiver = self;
  v33.super_class = SBFolderControllerConfiguration;
  v5 = [(SBFolderControllerConfiguration *)&v33 init];
  if (v5)
  {
    folder = [configurationCopy folder];
    folder = v5->_folder;
    v5->_folder = folder;

    v5->_orientation = [configurationCopy orientation];
    v5->_allowedOrientations = [configurationCopy allowedOrientations];
    listLayoutProvider = [configurationCopy listLayoutProvider];
    listLayoutProvider = v5->_listLayoutProvider;
    v5->_listLayoutProvider = listLayoutProvider;

    iconViewProvider = [configurationCopy iconViewProvider];
    objc_storeWeak(&v5->_iconViewProvider, iconViewProvider);

    delegate = [configurationCopy delegate];
    objc_storeWeak(&v5->_delegate, delegate);

    folderDelegate = [configurationCopy folderDelegate];
    objc_storeWeak(&v5->_folderDelegate, folderDelegate);

    legibilitySettings = [configurationCopy legibilitySettings];
    legibilitySettings = v5->_legibilitySettings;
    v5->_legibilitySettings = legibilitySettings;

    folderIconImageCache = [configurationCopy folderIconImageCache];
    folderIconImageCache = v5->_folderIconImageCache;
    v5->_folderIconImageCache = folderIconImageCache;

    iconImageCache = [configurationCopy iconImageCache];
    iconImageCache = v5->_iconImageCache;
    v5->_iconImageCache = iconImageCache;

    animationContext = [configurationCopy animationContext];
    animationContext = v5->_animationContext;
    v5->_animationContext = animationContext;

    headerView = [configurationCopy headerView];
    headerView = v5->_headerView;
    v5->_headerView = headerView;

    [configurationCopy headerHeight];
    v5->_headerHeight = v23;
    originatingIconLocation = [configurationCopy originatingIconLocation];
    v25 = [originatingIconLocation copy];
    originatingIconLocation = v5->_originatingIconLocation;
    v5->_originatingIconLocation = v25;

    v5->_userInterfaceLayoutDirectionHandling = [configurationCopy userInterfaceLayoutDirectionHandling];
    v5->_vertical = [configurationCopy isVertical];
    [configurationCopy initialViewFrame];
    v5->_initialViewFrame.origin.x = v27;
    v5->_initialViewFrame.origin.y = v28;
    v5->_initialViewFrame.size.width = v29;
    v5->_initialViewFrame.size.height = v30;
    v5->_snapsToPageBoundariesAfterScrolling = [configurationCopy snapsToPageBoundariesAfterScrolling];
    v5->_addsFocusGuidesForWrapping = [configurationCopy addsFocusGuidesForWrapping];
    v5->_iconSpacingAxisMatchingBehavior = [configurationCopy iconSpacingAxisMatchingBehavior];
    v5->_numberOfInitialPagesToPreferVisible = [configurationCopy numberOfInitialPagesToPreferVisible];
    [configurationCopy additionalPartialPagesToKeepVisible];
    v5->_additionalPartialPagesToKeepVisible = v31;
    v5->_requiresGlassGroupingForCustomIconImageViewControllers = [configurationCopy requiresGlassGroupingForCustomIconImageViewControllers];
    v5->_usesGlassGroup = [configurationCopy usesGlassGroup];
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFolderControllerConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  folder = [(SBFolderControllerConfiguration *)self folder];
  v6 = [v4 appendObject:folder withName:@"folder"];

  v7 = [v4 appendInteger:-[SBFolderControllerConfiguration orientation](self withName:{"orientation"), @"orientation"}];
  v8 = [v4 appendUnsignedInteger:-[SBFolderControllerConfiguration allowedOrientations](self withName:{"allowedOrientations"), @"allowedOrientations"}];
  listLayoutProvider = [(SBFolderControllerConfiguration *)self listLayoutProvider];
  v10 = [v4 appendObject:listLayoutProvider withName:@"listLayoutProvider"];

  iconViewProvider = [(SBFolderControllerConfiguration *)self iconViewProvider];
  v12 = [v4 appendObject:iconViewProvider withName:@"iconViewProvider"];

  delegate = [(SBFolderControllerConfiguration *)self delegate];
  v14 = [v4 appendObject:delegate withName:@"delegate"];

  folderDelegate = [(SBFolderControllerConfiguration *)self folderDelegate];
  v16 = [v4 appendObject:folderDelegate withName:@"folderDelegate"];

  legibilitySettings = [(SBFolderControllerConfiguration *)self legibilitySettings];
  v18 = [v4 appendObject:legibilitySettings withName:@"legibilitySettings"];

  folderIconImageCache = [(SBFolderControllerConfiguration *)self folderIconImageCache];
  v20 = [v4 appendObject:folderIconImageCache withName:@"folderIconImageCache"];

  iconImageCache = [(SBFolderControllerConfiguration *)self iconImageCache];
  v22 = [v4 appendObject:iconImageCache withName:@"iconImageCache"];

  animationContext = [(SBFolderControllerConfiguration *)self animationContext];
  v24 = [v4 appendObject:animationContext withName:@"animationContext"];

  headerView = [(SBFolderControllerConfiguration *)self headerView];
  v26 = [v4 appendObject:headerView withName:@"headerView"];

  [(SBFolderControllerConfiguration *)self headerHeight];
  v27 = [v4 appendFloat:@"headerHeight" withName:?];
  originatingIconLocation = [(SBFolderControllerConfiguration *)self originatingIconLocation];
  v29 = [v4 appendObject:originatingIconLocation withName:@"originatingIconLocation"];

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
  succinctDescriptionBuilder = [(SBFolderControllerConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
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