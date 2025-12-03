@interface PXPhotosDetailsHeaderPlaceholderView
- (PXPhotosDetailsHeaderPlaceholderView)initWithRegionOfInterest:(id)interest;
- (void)_layoutImageTile;
- (void)_layoutLabelForLastBaselineLayout;
- (void)_layoutTextTile;
- (void)_layoutTile:(id)tile withGeometry:(PXTileGeometry *)geometry userData:(id)data;
- (void)layoutSubviews;
@end

@implementation PXPhotosDetailsHeaderPlaceholderView

- (void)_layoutLabelForLastBaselineLayout
{
  v3 = *MEMORY[0x1E695EFF8];
  view = [(PXTitleSubtitleUILabelTile *)self->_textTile view];
  [view bounds];
  MinY = CGRectGetMinY(v10);
  [(PXTitleSubtitleUILabelTile *)self->_textTile lastBaseline];
  [(PXPhotosDetailsHeaderPlaceholderView *)self convertPoint:view fromView:v3, MinY + v6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PXPhotosDetailsHeaderPlaceholderView__layoutLabelForLastBaselineLayout__block_invoke;
  v9[3] = &unk_1E772D440;
  v9[4] = self;
  v9[5] = v7;
  v9[6] = v8;
  [PXViewLayoutHelper performLayoutWithinView:self usingBlock:v9];
}

void __73__PXPhotosDetailsHeaderPlaceholderView__layoutLabelForLastBaselineLayout__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = vdupq_n_s64(0x7FF8000000000000uLL);
  v10 = v9;
  [v3 leadingOfView:{*(a1 + 32), *&v9, *&v9, *&v9, *&v9}];
  [v3 trailingOfView:{*(a1 + 32), v4}];
  v9.i64[1] = v5;
  *&v7 = *(a1 + 48);
  v8 = vdupq_n_s64(0x7FF0000000000000uLL);
  [v3 layoutView:*(*(a1 + 32) + 1024) withAttributes:&v6];
}

- (void)_layoutTile:(id)tile withGeometry:(PXTileGeometry *)geometry userData:(id)data
{
  tileCopy = tile;
  dataCopy = data;
  view = [tileCopy view];
  superview = [view superview];

  if (superview != self)
  {
    [(PXPhotosDetailsHeaderPlaceholderView *)self addSubview:view];
  }

  tileAnimator = self->_tileAnimator;
  v13 = *&geometry->contentSize.height;
  v19[8] = *&geometry->hidden;
  v19[9] = v13;
  v14 = *&geometry->contentsRect.size.height;
  v19[10] = *&geometry->contentsRect.origin.y;
  v19[11] = v14;
  v15 = *&geometry->transform.c;
  v19[4] = *&geometry->transform.a;
  v19[5] = v15;
  v16 = *&geometry->alpha;
  v19[6] = *&geometry->transform.tx;
  v19[7] = v16;
  size = geometry->frame.size;
  v19[0] = geometry->frame.origin;
  v19[1] = size;
  v18 = geometry->size;
  v19[2] = geometry->center;
  v19[3] = v18;
  [(PXBasicUIViewTileAnimator *)tileAnimator animateTile:tileCopy toGeometry:v19 userData:dataCopy withOptions:0 completionHandler:&__block_literal_global_2628];
}

- (void)_layoutTextTile
{
  textTile = self->_textTile;
  textTileUserData = self->_textTileUserData;
  v4 = *&self->_textTileGeometry.contentSize.height;
  v10[8] = *&self->_textTileGeometry.hidden;
  v10[9] = v4;
  v5 = *&self->_textTileGeometry.contentsRect.size.height;
  v10[10] = *&self->_textTileGeometry.contentsRect.origin.y;
  v10[11] = v5;
  v6 = *&self->_textTileGeometry.transform.c;
  v10[4] = *&self->_textTileGeometry.transform.a;
  v10[5] = v6;
  v7 = *&self->_textTileGeometry.alpha;
  v10[6] = *&self->_textTileGeometry.transform.tx;
  v10[7] = v7;
  size = self->_textTileGeometry.frame.size;
  v10[0] = self->_textTileGeometry.frame.origin;
  v10[1] = size;
  v9 = self->_textTileGeometry.size;
  v10[2] = self->_textTileGeometry.center;
  v10[3] = v9;
  [(PXPhotosDetailsHeaderPlaceholderView *)self _layoutTile:textTile withGeometry:v10 userData:textTileUserData];
}

- (void)_layoutImageTile
{
  imageTile = self->_imageTile;
  imageTileUserData = self->_imageTileUserData;
  v4 = *&self->_imageTileGeometry.contentSize.height;
  v10[8] = *&self->_imageTileGeometry.hidden;
  v10[9] = v4;
  v5 = *&self->_imageTileGeometry.contentsRect.size.height;
  v10[10] = *&self->_imageTileGeometry.contentsRect.origin.y;
  v10[11] = v5;
  v6 = *&self->_imageTileGeometry.transform.c;
  v10[4] = *&self->_imageTileGeometry.transform.a;
  v10[5] = v6;
  v7 = *&self->_imageTileGeometry.alpha;
  v10[6] = *&self->_imageTileGeometry.transform.tx;
  v10[7] = v7;
  size = self->_imageTileGeometry.frame.size;
  v10[0] = self->_imageTileGeometry.frame.origin;
  v10[1] = size;
  v9 = self->_imageTileGeometry.size;
  v10[2] = self->_imageTileGeometry.center;
  v10[3] = v9;
  [(PXPhotosDetailsHeaderPlaceholderView *)self _layoutTile:imageTile withGeometry:v10 userData:imageTileUserData];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PXPhotosDetailsHeaderPlaceholderView;
  [(PXPhotosDetailsHeaderPlaceholderView *)&v7 layoutSubviews];
  [(PXPhotosDetailsHeaderPlaceholderView *)self bounds];
  self->_imageTileGeometry.frame.origin.x = v3;
  self->_imageTileGeometry.frame.origin.y = v4;
  self->_imageTileGeometry.frame.size.width = v5;
  self->_imageTileGeometry.frame.size.height = v6;
  PXRectGetCenter();
}

- (PXPhotosDetailsHeaderPlaceholderView)initWithRegionOfInterest:(id)interest
{
  interestCopy = interest;
  coordinateSpace = [interestCopy coordinateSpace];
  [interestCopy rectInCoordinateSpace:coordinateSpace];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v18.receiver = self;
  v18.super_class = PXPhotosDetailsHeaderPlaceholderView;
  v14 = [(PXPhotosDetailsHeaderPlaceholderView *)&v18 initWithFrame:v7, v9, v11, v13];
  if (v14)
  {
    v15 = objc_alloc_init(PXBasicUIViewTileAnimator);
    tileAnimator = v14->_tileAnimator;
    v14->_tileAnimator = v15;

    [(PXPhotosDetailsHeaderPlaceholderView *)v14 bounds];
    PXRectGetCenter();
  }

  return 0;
}

@end