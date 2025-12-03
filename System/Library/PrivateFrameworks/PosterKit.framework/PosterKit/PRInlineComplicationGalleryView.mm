@interface PRInlineComplicationGalleryView
- (PRInlineComplicationGalleryView)initWithFrame:(CGRect)frame;
- (PRInlineComplicationGalleryViewDelegate)delegate;
- (id)_makeLayout;
@end

@implementation PRInlineComplicationGalleryView

- (PRInlineComplicationGalleryView)initWithFrame:(CGRect)frame
{
  v26[4] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = PRInlineComplicationGalleryView;
  v3 = [(PRInlineComplicationGalleryView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
    _makeLayout = [(PRInlineComplicationGalleryView *)v3 _makeLayout];
    v6 = [v4 initWithFrame:_makeLayout collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    collectionView = v3->_collectionView;
    v3->_collectionView = v6;

    [(UICollectionView *)v3->_collectionView setDelegate:v3];
    v8 = v3->_collectionView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v8 setBackgroundColor:clearColor];

    [(UICollectionView *)v3->_collectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)v3->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRInlineComplicationGalleryView *)v3 addSubview:v3->_collectionView];
    v20 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UICollectionView *)v3->_collectionView leadingAnchor];
    leadingAnchor2 = [(PRInlineComplicationGalleryView *)v3 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[0] = v22;
    trailingAnchor = [(UICollectionView *)v3->_collectionView trailingAnchor];
    trailingAnchor2 = [(PRInlineComplicationGalleryView *)v3 trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[1] = v11;
    topAnchor = [(UICollectionView *)v3->_collectionView topAnchor];
    topAnchor2 = [(PRInlineComplicationGalleryView *)v3 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[2] = v14;
    bottomAnchor = [(UICollectionView *)v3->_collectionView bottomAnchor];
    bottomAnchor2 = [(PRInlineComplicationGalleryView *)v3 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v20 activateConstraints:v18];
  }

  return v3;
}

- (id)_makeLayout
{
  v2 = objc_alloc_init(MEMORY[0x1E69DC810]);
  [v2 setInterSectionSpacing:20.0];
  v3 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:clearColor];

  [v3 setShowsSeparators:1];
  v5 = [objc_alloc(MEMORY[0x1E69DCC38]) initWithListAppearance:2];
  v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.1];
  [v5 setColor:v6];

  [v3 setSeparatorConfiguration:v5];
  v7 = objc_alloc(MEMORY[0x1E69DC808]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__PRInlineComplicationGalleryView__makeLayout__block_invoke;
  v11[3] = &unk_1E7844A98;
  v12 = v3;
  v8 = v3;
  v9 = [v7 initWithSectionProvider:v11 configuration:v2];

  return v9;
}

id __46__PRInlineComplicationGalleryView__makeLayout__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6995580] sectionWithListConfiguration:*(a1 + 32) layoutEnvironment:a3];
  [v3 setContentInsets:{0.0, 16.0, 0.0, 16.0}];
  v4 = MEMORY[0x1E6995588];
  v5 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v6 = [MEMORY[0x1E6995558] estimatedDimension:44.0];
  v7 = [v4 sizeWithWidthDimension:v5 heightDimension:v6];

  v8 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v7 elementKind:@"PRInlineComplicationGalleryTitleElementKind" alignment:1 absoluteOffset:{0.0, -8.0}];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v3 setBoundarySupplementaryItems:v9];

  return v3;
}

- (PRInlineComplicationGalleryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end