@interface PUPhotosGridCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PUPhotosGridCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)fillerEdgeInsets;
- (void)_layoutTransitionFillerView;
- (void)_updateCloudIcon;
- (void)_updateContentViewClipsToBounds;
- (void)_updateHighlight;
- (void)_updateProgressImmediately:(BOOL)a3;
- (void)_updateSelectionBadge;
- (void)_updateSubviewOrdering;
- (void)addTemporaryPhotoContentView;
- (void)applyLayoutAttributes:(id)a3;
- (void)dragStateDidChange:(int64_t)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)removeTemporaryPhotoContentView;
- (void)setCloudIconVisible:(BOOL)a3;
- (void)setFillerEdgeInsets:(UIEdgeInsets)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setProgress:(id)a3 immediately:(BOOL)a4;
- (void)setSelectionBadgeVisible:(BOOL)a3;
- (void)setTemporaryPhotoImage:(id)a3 with:(int64_t)a4;
- (void)setTransitionFillerViewEnabled:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation PUPhotosGridCell

- (UIEdgeInsets)fillerEdgeInsets
{
  top = self->_fillerEdgeInsets.top;
  left = self->_fillerEdgeInsets.left;
  bottom = self->_fillerEdgeInsets.bottom;
  right = self->_fillerEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setProgress:(id)a3 immediately:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_progress != v7)
  {
    v8 = v7;
    objc_storeStrong(&self->_progress, a3);
    [(PUPhotosGridCell *)self _updateProgressImmediately:v4];
    v7 = v8;
  }
}

- (void)dragStateDidChange:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PUPhotosGridCell;
  [(PUPhotosGridCell *)&v5 dragStateDidChange:?];
  if ([(PUPhotosGridCell *)self dragState]!= a3)
  {
    [(PUPhotosGridCell *)self setDragState:a3];
    [(PUPhotosGridCell *)self _updateSelectionBadge];
  }
}

- (void)setCloudIconVisible:(BOOL)a3
{
  if (self->_cloudIconVisible != a3)
  {
    self->_cloudIconVisible = a3;
    [(PUPhotosGridCell *)self _updateCloudIcon];
  }
}

- (void)setSelectionBadgeVisible:(BOOL)a3
{
  if (self->_selectionBadgeVisible != a3)
  {
    self->_selectionBadgeVisible = a3;
    [(PUPhotosGridCell *)self _updateSelectionBadge];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(PUPhotosGridCell *)self isHighlighted]!= a3)
  {
    v5.receiver = self;
    v5.super_class = PUPhotosGridCell;
    [(PUPhotosGridCell *)&v5 setHighlighted:v3];
    [(PUPhotosGridCell *)self _updateHighlight];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PUPhotosGridCell;
  [(PUPhotosGridCell *)&v3 prepareForReuse];
  [(PUPhotosGridCell *)self removeTemporaryPhotoContentView];
  [(PUPhotosGridCell *)self setSelectionBadgeVisible:0];
  [(PUPhotosGridCell *)self setHighlighted:0];
  [(PUPhotosGridCell *)self setCloudIconVisible:0];
  [(PUPhotosGridCell *)self setDraggable:0];
  [(PUPhotosGridCell *)self setProgress:0 immediately:1];
}

- (void)applyLayoutAttributes:(id)a3
{
  v13 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v13 interactiveTransitionProgress];
    if (v4 >= 0.0)
    {
      v5 = [(PUPhotosGridCell *)self transitionIsAppearing];
      [v13 interactiveTransitionProgress];
      v7 = fmin(v6, 1.0);
      v8 = [(PUPhotosGridCell *)self transitionFillerView];
      v9 = v8;
      if (v8)
      {
        v10 = 1.0 - v7;
        if (v5)
        {
          v10 = v7;
        }

        [v8 setAlpha:v10];
      }

      temporaryPhotoContentView = self->_temporaryPhotoContentView;
      if (temporaryPhotoContentView)
      {
        v12 = 1.0 - v7;
        if (!v5)
        {
          v12 = v7;
        }

        [(PUPhotoView *)temporaryPhotoContentView setAlpha:v12];
      }
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(PUPhotosGridCell *)self photoContentView];
  v6 = [v5 contentHelper];
  [v6 contentViewSizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)updateConstraints
{
  v7.receiver = self;
  v7.super_class = PUPhotosGridCell;
  [(PUPhotosGridCell *)&v7 updateConstraints];
  if (self->_progressIndicatorView)
  {
    if (!self->_progressIndicatorViewConstraints)
    {
      v3 = [MEMORY[0x1E695DF70] array];
      v4 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_progressIndicatorView attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
      [(NSArray *)v3 addObject:v4];

      v5 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_progressIndicatorView attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
      [(NSArray *)v3 addObject:v5];

      [(PUPhotosGridCell *)self addConstraints:v3];
      progressIndicatorViewConstraints = self->_progressIndicatorViewConstraints;
      self->_progressIndicatorViewConstraints = v3;
    }
  }
}

- (void)_layoutTransitionFillerView
{
  if (self->_transitionFillerView)
  {
    v3 = [(PUPhotosGridCell *)self contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [(UIView *)self->_transitionFillerView setFrame:v5 + self->_fillerEdgeInsets.left, v7 + self->_fillerEdgeInsets.top, v9 - (self->_fillerEdgeInsets.left + self->_fillerEdgeInsets.right), v11 - (self->_fillerEdgeInsets.top + self->_fillerEdgeInsets.bottom)];
    v12 = (self->_fillerEdgeInsets.right - self->_fillerEdgeInsets.left) * 0.5;
    v13 = (self->_fillerEdgeInsets.bottom - self->_fillerEdgeInsets.top) * 0.5;
    memset(&v16, 0, sizeof(v16));
    CGAffineTransformMakeTranslation(&v16, v12, v13);
    v14 = [(UIView *)self->_transitionFillerView layer];
    v15 = v16;
    [v14 setContentsTransform:&v15];
  }
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = PUPhotosGridCell;
  [(PUPhotosGridCell *)&v34 layoutSubviews];
  [(PUPhotosGridCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PUPhotosGridCell *)self contentView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(PUPhotoView *)self->_temporaryPhotoContentView setFrame:v4, v6, v8, v10];
  v12 = [(PUPhotosGridCell *)self photoContentView];
  v13 = [v12 contentHelper];
  [v13 imageContentFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [(UIView *)self->_highlightOverlayView setFrame:v15, v17, v19, v21];
  [(UIView *)self->_selectionOverlayView setFrame:v15, v17, v19, v21];
  [(UIView *)self->_selectionBadgeView bounds];
  v23 = v22;
  v25 = v24;
  v35.origin.x = v15;
  v35.origin.y = v17;
  v35.size.width = v19;
  v35.size.height = v21;
  v26 = CGRectGetMaxX(v35) - v23 + -3.5;
  v36.origin.x = v15;
  v36.origin.y = v17;
  v36.size.width = v19;
  v36.size.height = v21;
  [(UIView *)self->_selectionBadgeView setFrame:v26, CGRectGetMaxY(v36) - v25 + -3.5, v23, v25];
  [(UIImageView *)self->_cloudIconImageView bounds];
  v28 = v27;
  v30 = v29;
  v37.origin.x = v15;
  v37.origin.y = v17;
  v37.size.width = v19;
  v37.size.height = v21;
  v31 = CGRectGetMaxX(v37) - v28 + -8.0;
  v38.origin.x = v15;
  v38.origin.y = v17;
  v38.size.width = v19;
  v38.size.height = v21;
  [(UIImageView *)self->_cloudIconImageView setFrame:v31, CGRectGetMaxY(v38) - v30 + -5.0, v28, v30];
  v32 = [(PUPhotosGridCell *)self photoContentView];
  v33 = [v32 contentHelper];
  [v33 layoutSubviewsOfContentView];

  [(PUPhotosGridCell *)self _layoutTransitionFillerView];
}

- (void)_updateContentViewClipsToBounds
{
  transitionFillerView = self->_transitionFillerView;
  if ([(PUPhotosGridCell *)self clipsToBounds]!= (transitionFillerView == 0))
  {

    [(PUPhotosGridCell *)self setClipsToBounds:transitionFillerView == 0];
  }
}

- (void)_updateSubviewOrdering
{
  [(PUPhotosGridCell *)self sendSubviewToBack:self->_transitionFillerView];
  [(PUPhotosGridCell *)self bringSubviewToFront:self->_selectionOverlayView];
  [(PUPhotosGridCell *)self bringSubviewToFront:self->_selectionBadgeView];
  [(PUPhotosGridCell *)self bringSubviewToFront:self->_cloudIconImageView];
  [(PUPhotosGridCell *)self bringSubviewToFront:self->_progressIndicatorView];
  [(PUPhotosGridCell *)self bringSubviewToFront:self->_highlightOverlayView];
  temporaryPhotoContentView = self->_temporaryPhotoContentView;

  [(PUPhotosGridCell *)self bringSubviewToFront:temporaryPhotoContentView];
}

- (void)_updateProgressImmediately:(BOOL)a3
{
  v3 = a3;
  progress = self->_progress;
  progressIndicatorView = self->_progressIndicatorView;
  if (!progress)
  {
    if (!progressIndicatorView)
    {
      return;
    }

    v9 = progressIndicatorView;
    v10 = self->_progressIndicatorView;
    self->_progressIndicatorView = 0;

    progressIndicatorViewConstraints = self->_progressIndicatorViewConstraints;
    self->_progressIndicatorViewConstraints = 0;

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__PUPhotosGridCell__updateProgressImmediately___block_invoke;
    v15[3] = &unk_1E7B80DD0;
    v16 = v9;
    v12 = v9;
    [(PUProgressIndicatorView *)v12 endShowingProgressImmediately:v3 animated:v3 ^ 1 withCompletionHandler:v15];

LABEL_6:
    progressIndicatorView = self->_progressIndicatorView;
    if (!progressIndicatorView)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!progressIndicatorView)
  {
    v7 = [[PUProgressIndicatorView alloc] initWithStyle:1];
    v8 = self->_progressIndicatorView;
    self->_progressIndicatorView = v7;

    [(PUProgressIndicatorView *)self->_progressIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUProgressIndicatorView *)self->_progressIndicatorView beginShowingProgressImmediately:v3 animated:v3 ^ 1];
    [(PUPhotosGridCell *)self addSubview:self->_progressIndicatorView];
    [(PUPhotosGridCell *)self _updateSubviewOrdering];
    [(PUPhotosGridCell *)self setNeedsUpdateConstraints];
    goto LABEL_6;
  }

LABEL_7:
  [(PUProgressIndicatorView *)progressIndicatorView setDeterminate:1];
  v13 = self->_progressIndicatorView;
  [(NSNumber *)self->_progress floatValue];
  [(PUProgressIndicatorView *)v13 setCurrentProgress:v14];
}

- (void)_updateCloudIcon
{
  if (![(PUPhotosGridCell *)self isCloudIconVisible]|| [(PUPhotosGridCell *)self isSelectionBadgeVisible])
  {
    v6 = 1;
  }

  else
  {
    if (!self->_cloudIconImageView)
    {
      v3 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:@"Thumbnail_Loading.png"];
      v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v3];
      cloudIconImageView = self->_cloudIconImageView;
      self->_cloudIconImageView = v4;

      [v3 size];
      PXRectWithOriginAndSize();
      [(UIImageView *)self->_cloudIconImageView setFrame:?];
      [(UIImageView *)self->_cloudIconImageView setUserInteractionEnabled:0];
      [(PUPhotosGridCell *)self addSubview:self->_cloudIconImageView];
      [(PUPhotosGridCell *)self _updateSubviewOrdering];
    }

    v6 = 0;
  }

  [(UIImageView *)self->_cloudIconImageView setHidden:v6];

  [(PUPhotosGridCell *)self setNeedsLayout];
}

- (void)_updateSelectionBadge
{
  if ([(PUPhotosGridCell *)self isSelectionBadgeVisible]&& [(PUPhotosGridCell *)self dragState]!= 1)
  {
    selectionOverlayView = self->_selectionOverlayView;
    v3 = selectionOverlayView == 0;
    if (!selectionOverlayView)
    {
      v8 = objc_alloc(MEMORY[0x1E69DD250]);
      [(PUPhotosGridCell *)self bounds];
      v9 = [v8 initWithFrame:?];
      v10 = self->_selectionOverlayView;
      self->_selectionOverlayView = v9;

      [(UIView *)self->_selectionOverlayView setUserInteractionEnabled:0];
      v11 = self->_selectionOverlayView;
      v12 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [(UIView *)v11 setBackgroundColor:v12];

      [(UIView *)self->_selectionOverlayView setAlpha:0.25];
      [(PUPhotosGridCell *)self addSubview:self->_selectionOverlayView];
    }

    if (self->_selectionBadgeView)
    {
      v4 = 0;
    }

    else
    {
      v13 = MEMORY[0x1E69DD250];
      v14 = [MEMORY[0x1E69DC888] systemBlueColor];
      v15 = [v13 px_circularGlyphViewWithName:@"checkmark.circle" backgroundColor:v14];
      selectionBadgeView = self->_selectionBadgeView;
      self->_selectionBadgeView = v15;

      [(UIView *)self->_selectionBadgeView setUserInteractionEnabled:0];
      [(PUPhotosGridCell *)self addSubview:self->_selectionBadgeView];
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 1;
  }

  v5 = [MEMORY[0x1E69C35C0] sharedInstance];
  v6 = [v5 disableSelectionOverlayView];

  [(UIView *)self->_selectionOverlayView setHidden:v4 | v6];
  [(UIView *)self->_selectionBadgeView setHidden:v4];
  [(PUPhotosGridCell *)self _updateCloudIcon];
  if (v3)
  {
    [(PUPhotosGridCell *)self _updateSubviewOrdering];
  }

  [(PUPhotosGridCell *)self setNeedsLayout];
}

- (void)_updateHighlight
{
  if ([(PUPhotosGridCell *)self isHighlighted]&& ![(PUPhotosGridCell *)self isDraggable])
  {
    highlightOverlayView = self->_highlightOverlayView;
    if (!highlightOverlayView)
    {
      v4 = objc_alloc(MEMORY[0x1E69DD250]);
      [(PUPhotosGridCell *)self bounds];
      v5 = [v4 initWithFrame:?];
      v6 = self->_highlightOverlayView;
      self->_highlightOverlayView = v5;

      [(UIView *)self->_highlightOverlayView setUserInteractionEnabled:0];
      v7 = self->_highlightOverlayView;
      v8 = [MEMORY[0x1E69DC888] labelColor];
      [(UIView *)v7 setBackgroundColor:v8];

      [(UIView *)self->_highlightOverlayView setAlpha:0.5];
      [(PUPhotosGridCell *)self addSubview:self->_highlightOverlayView];
      highlightOverlayView = self->_highlightOverlayView;
    }

    [(UIView *)highlightOverlayView setHidden:0];
    [(PUPhotosGridCell *)self _updateSubviewOrdering];
  }

  else
  {
    [(UIView *)self->_highlightOverlayView setHidden:1];
  }

  [(PUPhotosGridCell *)self setNeedsLayout];
}

- (void)setFillerEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_fillerEdgeInsets.top, v3), vceqq_f64(*&self->_fillerEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_fillerEdgeInsets = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__PUPhotosGridCell_setFillerEdgeInsets___block_invoke;
    v5[3] = &unk_1E7B80DD0;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

- (void)setTransitionFillerViewEnabled:(BOOL)a3
{
  if (self->_transitionFillerViewEnabled != a3)
  {
    self->_transitionFillerViewEnabled = a3;
    if (a3)
    {
      v5 = objc_alloc(MEMORY[0x1E69DD250]);
      v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      transitionFillerView = self->_transitionFillerView;
      self->_transitionFillerView = v6;

      [(PUPhotosGridCell *)self addSubview:self->_transitionFillerView];
      [(PUPhotosGridCell *)self setNeedsLayout];
      [(PUPhotosGridCell *)self _updateSubviewOrdering];
      v8 = +[PUInterfaceManager currentTheme];
      v9 = self->_transitionFillerView;
      v10 = [v8 photoCollectionViewBackgroundColor];
      [(UIView *)v9 setBackgroundColor:v10];

      [(UIView *)self->_transitionFillerView setOpaque:1];
    }

    else
    {
      [(UIView *)self->_transitionFillerView removeFromSuperview];
      v8 = self->_transitionFillerView;
      self->_transitionFillerView = 0;
    }

    [(PUPhotosGridCell *)self _updateContentViewClipsToBounds];
  }
}

- (void)setTemporaryPhotoImage:(id)a3 with:(int64_t)a4
{
  temporaryPhotoContentView = self->_temporaryPhotoContentView;
  v7 = a3;
  v8 = [(PUPhotoView *)temporaryPhotoContentView contentHelper];
  [v8 setPhotoImage:v7];

  v9 = [(PUPhotoView *)self->_temporaryPhotoContentView contentHelper];
  v10 = [(PUPhotosGridCell *)self photoContentView];
  v11 = [v10 contentHelper];
  [v11 photoSize];
  [v9 setPhotoSize:?];

  v12 = [(PUPhotoView *)self->_temporaryPhotoContentView contentHelper];
  [v12 setFillMode:a4];
}

- (void)removeTemporaryPhotoContentView
{
  [(PUPhotoView *)self->_temporaryPhotoContentView removeFromSuperview];
  temporaryPhotoContentView = self->_temporaryPhotoContentView;
  self->_temporaryPhotoContentView = 0;
}

- (void)addTemporaryPhotoContentView
{
  if (!self->_temporaryPhotoContentView)
  {
    v3 = [PUPhotoView alloc];
    v4 = [(PUPhotosGridCell *)self contentView];
    [v4 bounds];
    v5 = [(PUPhotoView *)v3 initWithFrame:?];
    temporaryPhotoContentView = self->_temporaryPhotoContentView;
    self->_temporaryPhotoContentView = v5;

    v7 = [(PUPhotoView *)self->_temporaryPhotoContentView contentHelper];
    [v7 setAvoidsImageViewIfPossible:1];

    [(PUPhotoView *)self->_temporaryPhotoContentView setAlpha:0.0];
    v8 = [(PUPhotoView *)self->_temporaryPhotoContentView layer];
    [v8 setAllowsGroupOpacity:0];

    [(PUPhotosGridCell *)self addSubview:self->_temporaryPhotoContentView];

    [(PUPhotosGridCell *)self _updateSubviewOrdering];
  }
}

- (PUPhotosGridCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = PUPhotosGridCell;
  v4 = [(PUPhotosGridCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    v6 = [(PUPhotosGridCell *)v4 contentView];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:v5 file:@"PUPhotosGridCell.m" lineNumber:63 description:{@"The content view must be a PUPhotoView: %@", v6}];
    }

    [(PUPhotosGridCell *)v5 setPhotoContentView:v6];
    v7 = [(PUPhotosGridCell *)v5 layer];
    [v7 setAllowsGroupOpacity:0];
  }

  return v5;
}

@end