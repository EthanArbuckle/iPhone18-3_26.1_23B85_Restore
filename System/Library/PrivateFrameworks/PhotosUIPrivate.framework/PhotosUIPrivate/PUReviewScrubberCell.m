@interface PUReviewScrubberCell
- (PUReviewScrubberCell)initWithCoder:(id)a3;
- (PUReviewScrubberCell)initWithFrame:(CGRect)a3;
- (void)_commonPUReviewScrubberCellInitialization;
- (void)_updateFavoriteView;
- (void)_updateSuggestedView;
- (void)layoutSubviews;
- (void)setFavorite:(BOOL)a3 animated:(BOOL)a4;
- (void)setImage:(id)a3;
- (void)setSuggested:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation PUReviewScrubberCell

- (void)_updateSuggestedView
{
  v2 = 0.0;
  if (self->_suggested)
  {
    v2 = 1.0;
  }

  [(UIImageView *)self->__suggestedImageView setAlpha:v2];
}

- (void)_updateFavoriteView
{
  v3 = 0.200000003;
  if (!self->_favorite)
  {
    v3 = 1.0;
  }

  [(UIImageView *)self->__thumbnailImageView setAlpha:v3];
  v4 = 0.0;
  if (self->_favorite)
  {
    v4 = 1.0;
  }

  checkmarkImageView = self->__checkmarkImageView;

  [(UIImageView *)checkmarkImageView setAlpha:v4];
}

- (void)setSuggested:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_suggested != a3)
  {
    aBlock[7] = v4;
    aBlock[8] = v5;
    v6 = a4;
    self->_suggested = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__PUReviewScrubberCell_setSuggested_animated___block_invoke;
    aBlock[3] = &unk_1E7B80DD0;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (v6)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:0.25];
    }

    else
    {
      (*(v7 + 2))(v7);
    }
  }
}

- (void)setFavorite:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_favorite != a3)
  {
    aBlock[7] = v4;
    aBlock[8] = v5;
    v6 = a4;
    self->_favorite = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__PUReviewScrubberCell_setFavorite_animated___block_invoke;
    aBlock[3] = &unk_1E7B80DD0;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (v6)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:0.25];
    }

    else
    {
      (*(v7 + 2))(v7);
    }
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(PUReviewScrubberCell *)self _updateThumbnailImageView];
    v5 = v6;
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = PUReviewScrubberCell;
  [(PUReviewScrubberCell *)&v26 layoutSubviews];
  v3 = [(PUReviewScrubberCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIImageView *)self->__thumbnailImageView setFrame:v5, v7, v9, v11];
  [(UIImageView *)self->__checkmarkImageView sizeToFit];
  [(UIImageView *)self->__thumbnailImageView center];
  [(UIImageView *)self->__checkmarkImageView setCenter:?];
  [(UIImageView *)self->__suggestedImageView sizeToFit];
  [(UIImageView *)self->__suggestedImageView bounds];
  v25 = 0;
  UIRectCenteredIntegralRectScale();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = 3.0;
  if (!self->_wantsSmallSuggestionIndicators)
  {
    [(PUReviewScrubberCell *)self px_screenScale];
    v18 = 1.0 / v19 + 5.0;
  }

  v20 = [(PUReviewScrubberCell *)self contentView];
  [v20 frame];
  v21 = v18 + CGRectGetMaxY(v27);

  [(UIImageView *)self->__suggestedImageView setFrame:v13, v21, v15, v17];
  suggestedImageView = self->__suggestedImageView;
  v23 = [MEMORY[0x1E69DC888] labelColor];
  v24 = [v23 colorWithAlphaComponent:0.25];
  [(UIImageView *)suggestedImageView setTintColor:v24];
}

- (PUReviewScrubberCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = PUReviewScrubberCell;
  v3 = [(PUReviewScrubberCell *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PUReviewScrubberCell *)v3 _commonPUReviewScrubberCellInitialization];
    v5 = v4;
  }

  return v4;
}

- (PUReviewScrubberCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PUReviewScrubberCell;
  v3 = [(PUReviewScrubberCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUReviewScrubberCell *)v3 _commonPUReviewScrubberCellInitialization];
    v5 = v4;
  }

  return v4;
}

- (void)_commonPUReviewScrubberCellInitialization
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  thumbnailImageView = self->__thumbnailImageView;
  self->__thumbnailImageView = v4;

  [(UIImageView *)self->__thumbnailImageView setAccessibilityIgnoresInvertColors:1];
  [(UIImageView *)self->__thumbnailImageView setContentMode:2];
  [(UIImageView *)self->__thumbnailImageView setClipsToBounds:1];
  v6 = +[PUScrubberSettings sharedInstance];
  [v6 lemonadeItemCornerRadius];
  v8 = v7;
  v9 = [(UIImageView *)self->__thumbnailImageView layer];
  [v9 setCornerRadius:v8];

  v10 = *MEMORY[0x1E69796E8];
  v11 = [(UIImageView *)self->__thumbnailImageView layer];
  [v11 setCornerCurve:v10];

  v12 = [(PUReviewScrubberCell *)self contentView];
  [v12 addSubview:self->__thumbnailImageView];

  v13 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
  v15 = [v13 initWithImage:v14];
  checkmarkImageView = self->__checkmarkImageView;
  self->__checkmarkImageView = v15;

  v17 = [(PUReviewScrubberCell *)self contentView];
  [v17 addSubview:self->__checkmarkImageView];

  v18 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v19 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:@"AvalancheReviewSuggestedDot.png"];
  v20 = [v19 imageWithRenderingMode:2];
  v21 = [v18 initWithImage:v20];
  suggestedImageView = self->__suggestedImageView;
  self->__suggestedImageView = v21;

  v23 = [(PUReviewScrubberCell *)self contentView];
  [v23 addSubview:self->__suggestedImageView];

  self->_favorite = 0;
  self->_suggested = 0;
  [(PUReviewScrubberCell *)self _updateFavoriteView];

  [(PUReviewScrubberCell *)self _updateSuggestedView];
}

@end