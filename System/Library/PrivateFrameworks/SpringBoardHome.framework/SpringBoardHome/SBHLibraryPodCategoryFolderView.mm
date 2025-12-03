@interface SBHLibraryPodCategoryFolderView
- (CGSize)_iconSpacingForIconListView;
- (CGSize)_scrollViewContentSize;
- (void)_configureIconListView:(id)view;
- (void)_orientationDidChange:(int64_t)change;
@end

@implementation SBHLibraryPodCategoryFolderView

- (CGSize)_iconSpacingForIconListView
{
  iconLocation = [(SBFolderView *)self iconLocation];
  listLayoutProvider = [(SBFolderView *)self listLayoutProvider];
  v5 = [listLayoutProvider layoutForIconLocation:iconLocation];

  appLibraryVisualConfiguration = [v5 appLibraryVisualConfiguration];
  [appLibraryVisualConfiguration expandedCategoryPodIconSpacing];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_configureIconListView:(id)view
{
  viewCopy = view;
  v6.receiver = self;
  v6.super_class = SBHLibraryPodCategoryFolderView;
  [(SBHLibraryPodFolderView *)&v6 _configureIconListView:viewCopy];
  [viewCopy iconSpacing];
  if (v5 == -123.0)
  {
    [viewCopy setAutoresizingMask:2];
  }
}

- (void)_orientationDidChange:(int64_t)change
{
  navigationBar = [(SBHLibraryPodFolderView *)self navigationBar];
  [(SBHLibraryPodFolderView *)self _layoutMarginsforNavigationBar:navigationBar];
  [navigationBar setDirectionalLayoutMargins:?];
  v6.receiver = self;
  v6.super_class = SBHLibraryPodCategoryFolderView;
  [(SBHLibraryPodFolderView *)&v6 _orientationDidChange:change];
}

- (CGSize)_scrollViewContentSize
{
  [(SBHLibraryPodCategoryFolderView *)self bounds];
  v4 = v3;
  v8.receiver = self;
  v8.super_class = SBHLibraryPodCategoryFolderView;
  [(SBHLibraryPodFolderView *)&v8 _scrollViewContentSize];
  v7 = fmax(v6, 0.0);
  if (v4 <= v7)
  {
    v7 = v4;
  }

  result.height = v5;
  result.width = v7;
  return result;
}

@end