@interface PRComplicationGalleryView
- (PRComplicationGalleryView)initWithFrame:(CGRect)frame;
- (PRComplicationGalleryViewDelegate)delegate;
- (id)_makeLayout;
@end

@implementation PRComplicationGalleryView

- (PRComplicationGalleryView)initWithFrame:(CGRect)frame
{
  v26[4] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = PRComplicationGalleryView;
  v3 = [(PRComplicationGalleryView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
    _makeLayout = [(PRComplicationGalleryView *)v3 _makeLayout];
    v6 = [v4 initWithFrame:_makeLayout collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    collectionView = v3->_collectionView;
    v3->_collectionView = v6;

    v8 = v3->_collectionView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v8 setBackgroundColor:clearColor];

    [(UICollectionView *)v3->_collectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)v3->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRComplicationGalleryView *)v3 addSubview:v3->_collectionView];
    v20 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UICollectionView *)v3->_collectionView leadingAnchor];
    leadingAnchor2 = [(PRComplicationGalleryView *)v3 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[0] = v22;
    trailingAnchor = [(UICollectionView *)v3->_collectionView trailingAnchor];
    trailingAnchor2 = [(PRComplicationGalleryView *)v3 trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[1] = v11;
    topAnchor = [(UICollectionView *)v3->_collectionView topAnchor];
    topAnchor2 = [(PRComplicationGalleryView *)v3 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[2] = v14;
    bottomAnchor = [(UICollectionView *)v3->_collectionView bottomAnchor];
    bottomAnchor2 = [(PRComplicationGalleryView *)v3 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v20 activateConstraints:v18];
  }

  return v3;
}

- (id)_makeLayout
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC810]);
  [v3 setInterSectionSpacing:20.0];
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x1E69DC808]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__PRComplicationGalleryView__makeLayout__block_invoke;
  v7[3] = &unk_1E7843A48;
  objc_copyWeak(&v8, &location);
  v5 = [v4 initWithSectionProvider:v7 configuration:v3];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

id __40__PRComplicationGalleryView__makeLayout__block_invoke(uint64_t a1, uint64_t a2)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6995588];
  v5 = [MEMORY[0x1E6995558] estimatedDimension:60.0];
  v6 = [MEMORY[0x1E6995558] estimatedDimension:60.0];
  v7 = [v4 sizeWithWidthDimension:v5 heightDimension:v6];

  v8 = [MEMORY[0x1E6995578] itemWithLayoutSize:v7];
  [MEMORY[0x1E6999618] containerEdgeInset];
  v10 = v9;
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v11 scale];
  v13 = v12;

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15 = [WeakRetained delegate];
  v16 = [v15 layoutStyleForSectionIndex:a2];

  if (v16)
  {
    v17 = MEMORY[0x1E6995588];
    v18 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v19 = [MEMORY[0x1E6995558] estimatedDimension:60.0];
    v20 = [v17 sizeWithWidthDimension:v18 heightDimension:v19];

    v21 = [MEMORY[0x1E6995578] itemWithLayoutSize:v20];
    v22 = MEMORY[0x1E6995588];
    v23 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v24 = [MEMORY[0x1E6995558] estimatedDimension:60.0];
    v25 = [v22 sizeWithWidthDimension:v23 heightDimension:v24];

    v26 = MEMORY[0x1E6995568];
    v38 = v21;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    v28 = [v26 verticalGroupWithLayoutSize:v25 subitems:v27];

    v29 = [MEMORY[0x1E6995590] flexibleSpacing:0.0];
    [v28 setInterItemSpacing:v29];

    v30 = [MEMORY[0x1E6995580] sectionWithGroup:v28];
    [v30 setInterGroupSpacing:0.0];
    [v30 setOrthogonalScrollingBehavior:0];
    [v30 setContentInsets:{0.0, 0.0, 24.0, 0.0}];
  }

  else
  {
    v31 = MEMORY[0x1E6995588];
    v32 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v33 = [MEMORY[0x1E6995558] estimatedDimension:60.0];
    v20 = [v31 sizeWithWidthDimension:v32 heightDimension:v33];

    v34 = MEMORY[0x1E6995568];
    v39[0] = v8;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    v21 = [v34 horizontalGroupWithLayoutSize:v20 subitems:v35];

    [MEMORY[0x1E6999618] interComplicationSpacingExcludingInnerInset];
    v36 = [MEMORY[0x1E6995590] fixedSpacing:?];
    [v21 setInterItemSpacing:v36];

    v30 = [MEMORY[0x1E6995580] sectionWithGroup:v21];
    [v30 setInterGroupSpacing:16.0];
    [v30 setOrthogonalScrollingBehavior:0];
    [v30 setContentInsets:{0.0, v10 - 1.0 / v13, 12.0, v10 - 1.0 / v13}];
  }

  return v30;
}

- (PRComplicationGalleryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end