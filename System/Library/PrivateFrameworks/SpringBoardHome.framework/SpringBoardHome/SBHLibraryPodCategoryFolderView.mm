@interface SBHLibraryPodCategoryFolderView
- (CGSize)_iconSpacingForIconListView;
- (CGSize)_scrollViewContentSize;
- (void)_configureIconListView:(id)a3;
- (void)_orientationDidChange:(int64_t)a3;
@end

@implementation SBHLibraryPodCategoryFolderView

- (CGSize)_iconSpacingForIconListView
{
  v3 = [(SBFolderView *)self iconLocation];
  v4 = [(SBFolderView *)self listLayoutProvider];
  v5 = [v4 layoutForIconLocation:v3];

  v6 = [v5 appLibraryVisualConfiguration];
  [v6 expandedCategoryPodIconSpacing];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_configureIconListView:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SBHLibraryPodCategoryFolderView;
  [(SBHLibraryPodFolderView *)&v6 _configureIconListView:v4];
  [v4 iconSpacing];
  if (v5 == -123.0)
  {
    [v4 setAutoresizingMask:2];
  }
}

- (void)_orientationDidChange:(int64_t)a3
{
  v5 = [(SBHLibraryPodFolderView *)self navigationBar];
  [(SBHLibraryPodFolderView *)self _layoutMarginsforNavigationBar:v5];
  [v5 setDirectionalLayoutMargins:?];
  v6.receiver = self;
  v6.super_class = SBHLibraryPodCategoryFolderView;
  [(SBHLibraryPodFolderView *)&v6 _orientationDidChange:a3];
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