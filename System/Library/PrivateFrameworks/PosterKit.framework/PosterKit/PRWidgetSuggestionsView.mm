@interface PRWidgetSuggestionsView
- (PRWidgetSuggestionsView)initWithLayoutDelegate:(id)delegate usingSidebarLayout:(BOOL)layout;
- (id)_makeLayout;
@end

@implementation PRWidgetSuggestionsView

- (PRWidgetSuggestionsView)initWithLayoutDelegate:(id)delegate usingSidebarLayout:(BOOL)layout
{
  layoutCopy = layout;
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = PRWidgetSuggestionsView;
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = [(PRWidgetSuggestionsView *)&v24 initWithFrame:*MEMORY[0x1E695F058], v8, v9, v10];
  v12 = v11;
  if (v11)
  {
    if (layoutCopy)
    {
      v13 = [PRSidebarWidgetSuggestionsCollectionViewLayout alloc];
      traitCollection = [(PRWidgetSuggestionsView *)v12 traitCollection];
      [traitCollection displayScale];
      _makeLayout = [(PRSidebarWidgetSuggestionsCollectionViewLayout *)v13 initWithDisplayScale:?];

      [(PRSidebarWidgetSuggestionsCollectionViewLayout *)_makeLayout setLayoutDelegate:delegateCopy];
    }

    else
    {
      _makeLayout = [(PRWidgetSuggestionsView *)v11 _makeLayout];
    }

    v16 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:_makeLayout collectionViewLayout:{v7, v8, v9, v10}];
    collectionView = v12->_collectionView;
    v12->_collectionView = v16;

    v18 = v12->_collectionView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v18 setBackgroundColor:clearColor];

    [(UICollectionView *)v12->_collectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)v12->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRWidgetSuggestionsView *)v12 addSubview:v12->_collectionView];
    v20 = v12->_collectionView;
    safeAreaLayoutGuide = [(PRWidgetSuggestionsView *)v12 safeAreaLayoutGuide];
    v22 = PRPinViewWithinLayoutGuide(v20, safeAreaLayoutGuide);
  }

  return v12;
}

- (id)_makeLayout
{
  v2 = objc_alloc_init(MEMORY[0x1E69DC810]);
  [v2 setInterSectionSpacing:20.0];
  v3 = [objc_alloc(MEMORY[0x1E69DC808]) initWithSectionProvider:&__block_literal_global_26 configuration:v2];

  return v3;
}

id __38__PRWidgetSuggestionsView__makeLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6995588];
  v4 = MEMORY[0x1E6995558];
  v5 = a3;
  v6 = [v4 estimatedDimension:60.0];
  v7 = [MEMORY[0x1E6995558] estimatedDimension:60.0];
  v8 = [v3 sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = [MEMORY[0x1E6995578] itemWithLayoutSize:v8];
  v10 = MEMORY[0x1E6995588];
  v11 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v12 = [MEMORY[0x1E6995558] estimatedDimension:60.0];
  v13 = [v10 sizeWithWidthDimension:v11 heightDimension:v12];

  v14 = MEMORY[0x1E6995568];
  v40[0] = v9;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v16 = [v14 horizontalGroupWithLayoutSize:v13 subitems:v15];

  [MEMORY[0x1E6999618] interComplicationSpacingExcludingInnerInset];
  v17 = [MEMORY[0x1E6995590] fixedSpacing:?];
  [v16 setInterItemSpacing:v17];

  v18 = [MEMORY[0x1E6995580] sectionWithGroup:v16];
  [v18 setInterGroupSpacing:16.0];
  [v18 setOrthogonalScrollingBehavior:0];
  [MEMORY[0x1E6999618] gridUnitSize];
  v20 = v19;
  [MEMORY[0x1E6999618] complicationEdgeInset];
  v22 = v21;
  [MEMORY[0x1E6999618] interComplicationSpacingExcludingInnerInset];
  v24 = v23;
  v25 = [v5 container];

  [v25 contentSize];
  v27 = v26;
  v29 = v28;
  v30 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v30 scale];
  v32 = v31;

  if (_os_feature_enabled_impl())
  {
    [v25 effectiveContentInsets];
    v34 = v27 - v33;
    [v25 effectiveContentInsets];
    v27 = v34 - v35;
  }

  v36 = v20 + v22 * 2.0;
  v38 = (v29 - (v36 * 3.0 + v24 + v24)) * 0.5;
  if (v38 < 0.0)
  {
    v38 = 0.0;
  }

  v37 = (v27 - (v36 * 4.0 + v24 * 3.0)) * 0.5 + -1.0 / v32;
  [v18 setContentInsets:{v38, v37, 0.0, v37}];

  return v18;
}

@end