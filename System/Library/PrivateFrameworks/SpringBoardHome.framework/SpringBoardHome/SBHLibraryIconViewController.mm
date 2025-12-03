@interface SBHLibraryIconViewController
- (CGPoint)focusEffectCenter;
- (CGRect)focusEffectBounds;
- (CGRect)visibleBounds;
- (SBHLibraryCategoryStackView)categoryStackView;
- (SBHLibraryIconViewController)initWithListLayoutProvider:(id)provider;
- (UIView)dismissalView;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_reloadCategoryViewsForDataSourceChangeAnimated:(BOOL)animated;
- (void)dealloc;
- (void)setBrightness:(double)brightness;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)setLibraryDataSource:(id)source;
- (void)setOverlapping:(BOOL)overlapping;
- (void)setPrefersFlatImageLayers:(BOOL)layers;
- (void)viewDidLoad;
@end

@implementation SBHLibraryIconViewController

- (SBHLibraryIconViewController)initWithListLayoutProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SBHLibraryIconViewController;
  v6 = [(SBHLibraryIconViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listLayoutProvider, provider);
  }

  return v7;
}

- (void)dealloc
{
  [(SBHLibraryCategoriesFolderDataSource *)self->_libraryDataSource removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBHLibraryIconViewController;
  [(SBHLibraryIconViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SBHLibraryIconViewController;
  [(SBHLibraryIconViewController *)&v8 viewDidLoad];
  view = [(SBHLibraryIconViewController *)self view];
  v4 = [SBHLibraryCategoryStackView alloc];
  [view bounds];
  v5 = [(SBHLibraryCategoryStackView *)v4 initWithFrame:?];
  [(SBHLibraryCategoryStackView *)v5 setAutoresizingMask:18];
  [(SBHLibraryCategoryStackView *)v5 setIconImageInfo:self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius];
  [(SBHLibraryCategoryStackView *)v5 setPrefersFlatImageLayers:[(SBHLibraryIconViewController *)self prefersFlatImageLayers]];
  [view addSubview:v5];
  categoryStackView = self->_categoryStackView;
  self->_categoryStackView = v5;
  v7 = v5;

  [(SBHLibraryCategoryStackView *)v7 setAlpha:1.0];
  [(SBHLibraryIconViewController *)self _reloadCategoryViewsForDataSourceChangeAnimated:0];
}

- (void)setLibraryDataSource:(id)source
{
  sourceCopy = source;
  v6 = sourceCopy;
  libraryDataSource = self->_libraryDataSource;
  if (libraryDataSource != sourceCopy)
  {
    v8 = sourceCopy;
    [(SBHLibraryCategoriesFolderDataSource *)self->_libraryDataSource removeObserver:self];
    objc_storeStrong(&self->_libraryDataSource, source);
    [(SBHLibraryCategoriesFolderDataSource *)v8 addObserver:self];
    sourceCopy = [(SBHLibraryIconViewController *)self isViewLoaded];
    v6 = v8;
    if (sourceCopy)
    {
      sourceCopy = [(SBHLibraryIconViewController *)self _reloadCategoryViewsForDataSourceChangeAnimated:libraryDataSource != 0];
      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](sourceCopy, v6);
}

- (SBHLibraryCategoryStackView)categoryStackView
{
  [(SBHLibraryIconViewController *)self loadViewIfNeeded];
  categoryStackView = self->_categoryStackView;

  return categoryStackView;
}

- (UIView)dismissalView
{
  [(SBHLibraryIconViewController *)self loadViewIfNeeded];
  dismissalView = self->_dismissalView;

  return dismissalView;
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_iconImageInfo = &self->_iconImageInfo;
  if (!SBIconImageInfoEqualToIconImageInfo(self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius, v3, v4, v5, v6))
  {
    p_iconImageInfo->size.width = v10;
    p_iconImageInfo->size.height = v9;
    p_iconImageInfo->scale = v8;
    p_iconImageInfo->continuousCornerRadius = v7;
    [(SBHLibraryCategoryStackView *)self->_categoryStackView setIconImageInfo:v10, v9, v8, v7];
    dismissalView = self->_dismissalView;

    [(SBHLibraryDismissalView *)dismissalView setIconImageInfo:v10, v9, v8, v7];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    [(SBHLibraryCategoryStackView *)self->_categoryStackView setEditing:?];
  }
}

- (void)setOverlapping:(BOOL)overlapping
{
  if (self->_overlapping != overlapping)
  {
    self->_overlapping = overlapping;
    [(SBHLibraryCategoryStackView *)self->_categoryStackView setOverlapping:?];
  }
}

- (void)setBrightness:(double)brightness
{
  if (self->_brightness != brightness)
  {
    self->_brightness = brightness;
    [(SBHLibraryCategoryStackView *)self->_categoryStackView setHighlighted:BSFloatIsOne() ^ 1];
    dismissalView = self->_dismissalView;

    [(SBHLibraryDismissalView *)dismissalView setBrightness:brightness];
  }
}

- (CGRect)focusEffectBounds
{
  [(SBHLibraryCategoryStackView *)self->_categoryStackView visibleContentFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)focusEffectCenter
{
  [(SBHLibraryIconViewController *)self focusEffectBounds];

  UIRectGetCenter();
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setPrefersFlatImageLayers:(BOOL)layers
{
  if (self->_prefersFlatImageLayers != layers)
  {
    self->_prefersFlatImageLayers = layers;
    [(SBHLibraryCategoryStackView *)self->_categoryStackView setPrefersFlatImageLayers:?];
  }
}

- (CGRect)visibleBounds
{
  [(SBHLibraryIconViewController *)self iconImageInfo];
  v3 = v2;
  v5 = v4;
  v6 = 0.0;
  v7 = 0.0;
  result.size.height = v5;
  result.size.width = v3;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)_reloadCategoryViewsForDataSourceChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v21 = *MEMORY[0x1E69E9840];
  categoryIdentifiers = [(SBHLibraryCategoriesFolderDataSource *)self->_libraryDataSource categoryIdentifiers];
  categoryStackView = self->_categoryStackView;
  v7 = [categoryIdentifiers count];
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  [(SBHLibraryCategoryStackView *)categoryStackView setNumberOfCategories:v9];
  libraryDataSource = self->_libraryDataSource;
  firstObject = [categoryIdentifiers firstObject];
  v12 = [(SBHLibraryCategoriesFolderDataSource *)libraryDataSource categoryForIdentifier:firstObject];

  v13 = SBLogLibrary();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "[%@] reloading pod icons for updated topmost category: %@", &v17, 0x16u);
  }

  compactPodFolder = [v12 compactPodFolder];
  v15 = self->_categoryStackView;
  icons = [compactPodFolder icons];
  [(SBHLibraryCategoryStackView *)v15 setInnerIcons:icons animated:animatedCopy];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHLibraryIconViewController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHLibraryIconViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBHLibraryIconViewController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__SBHLibraryIconViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E8088F18;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __70__SBHLibraryIconViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) libraryDataSource];
  v4 = [v2 appendObject:v3 withName:@"libraryDataSource"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) categoryStackView];
  v7 = [v5 appendObject:v6 withName:@"categoryStackView"];

  v8 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"isEditing") ifEqualTo:{@"isEditing", 1}];
  v9 = *(a1 + 32);
  [*(a1 + 40) brightness];
  return [v9 appendFloat:@"brightness" withName:?];
}

@end