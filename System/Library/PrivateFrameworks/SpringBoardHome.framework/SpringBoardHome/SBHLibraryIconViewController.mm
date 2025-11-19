@interface SBHLibraryIconViewController
- (CGPoint)focusEffectCenter;
- (CGRect)focusEffectBounds;
- (CGRect)visibleBounds;
- (SBHLibraryCategoryStackView)categoryStackView;
- (SBHLibraryIconViewController)initWithListLayoutProvider:(id)a3;
- (UIView)dismissalView;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_reloadCategoryViewsForDataSourceChangeAnimated:(BOOL)a3;
- (void)dealloc;
- (void)setBrightness:(double)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)setLibraryDataSource:(id)a3;
- (void)setOverlapping:(BOOL)a3;
- (void)setPrefersFlatImageLayers:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SBHLibraryIconViewController

- (SBHLibraryIconViewController)initWithListLayoutProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBHLibraryIconViewController;
  v6 = [(SBHLibraryIconViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listLayoutProvider, a3);
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
  v3 = [(SBHLibraryIconViewController *)self view];
  v4 = [SBHLibraryCategoryStackView alloc];
  [v3 bounds];
  v5 = [(SBHLibraryCategoryStackView *)v4 initWithFrame:?];
  [(SBHLibraryCategoryStackView *)v5 setAutoresizingMask:18];
  [(SBHLibraryCategoryStackView *)v5 setIconImageInfo:self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius];
  [(SBHLibraryCategoryStackView *)v5 setPrefersFlatImageLayers:[(SBHLibraryIconViewController *)self prefersFlatImageLayers]];
  [v3 addSubview:v5];
  categoryStackView = self->_categoryStackView;
  self->_categoryStackView = v5;
  v7 = v5;

  [(SBHLibraryCategoryStackView *)v7 setAlpha:1.0];
  [(SBHLibraryIconViewController *)self _reloadCategoryViewsForDataSourceChangeAnimated:0];
}

- (void)setLibraryDataSource:(id)a3
{
  v5 = a3;
  v6 = v5;
  libraryDataSource = self->_libraryDataSource;
  if (libraryDataSource != v5)
  {
    v8 = v5;
    [(SBHLibraryCategoriesFolderDataSource *)self->_libraryDataSource removeObserver:self];
    objc_storeStrong(&self->_libraryDataSource, a3);
    [(SBHLibraryCategoriesFolderDataSource *)v8 addObserver:self];
    v5 = [(SBHLibraryIconViewController *)self isViewLoaded];
    v6 = v8;
    if (v5)
    {
      v5 = [(SBHLibraryIconViewController *)self _reloadCategoryViewsForDataSourceChangeAnimated:libraryDataSource != 0];
      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
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

- (void)setIconImageInfo:(SBIconImageInfo *)a3
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

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    [(SBHLibraryCategoryStackView *)self->_categoryStackView setEditing:?];
  }
}

- (void)setOverlapping:(BOOL)a3
{
  if (self->_overlapping != a3)
  {
    self->_overlapping = a3;
    [(SBHLibraryCategoryStackView *)self->_categoryStackView setOverlapping:?];
  }
}

- (void)setBrightness:(double)a3
{
  if (self->_brightness != a3)
  {
    self->_brightness = a3;
    [(SBHLibraryCategoryStackView *)self->_categoryStackView setHighlighted:BSFloatIsOne() ^ 1];
    dismissalView = self->_dismissalView;

    [(SBHLibraryDismissalView *)dismissalView setBrightness:a3];
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

- (void)setPrefersFlatImageLayers:(BOOL)a3
{
  if (self->_prefersFlatImageLayers != a3)
  {
    self->_prefersFlatImageLayers = a3;
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

- (void)_reloadCategoryViewsForDataSourceChangeAnimated:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(SBHLibraryCategoriesFolderDataSource *)self->_libraryDataSource categoryIdentifiers];
  categoryStackView = self->_categoryStackView;
  v7 = [v5 count];
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
  v11 = [v5 firstObject];
  v12 = [(SBHLibraryCategoriesFolderDataSource *)libraryDataSource categoryForIdentifier:v11];

  v13 = SBLogLibrary();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = self;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "[%@] reloading pod icons for updated topmost category: %@", &v17, 0x16u);
  }

  v14 = [v12 compactPodFolder];
  v15 = self->_categoryStackView;
  v16 = [v14 icons];
  [(SBHLibraryCategoryStackView *)v15 setInnerIcons:v16 animated:v3];
}

- (id)succinctDescription
{
  v2 = [(SBHLibraryIconViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHLibraryIconViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryIconViewController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__SBHLibraryIconViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E8088F18;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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