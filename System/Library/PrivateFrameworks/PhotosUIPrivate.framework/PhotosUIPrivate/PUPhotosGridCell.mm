@interface PUPhotosGridCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PUPhotosGridCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)fillerEdgeInsets;
- (void)_layoutTransitionFillerView;
- (void)_updateCloudIcon;
- (void)_updateContentViewClipsToBounds;
- (void)_updateHighlight;
- (void)_updateProgressImmediately:(BOOL)immediately;
- (void)_updateSelectionBadge;
- (void)_updateSubviewOrdering;
- (void)addTemporaryPhotoContentView;
- (void)applyLayoutAttributes:(id)attributes;
- (void)dragStateDidChange:(int64_t)change;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)removeTemporaryPhotoContentView;
- (void)setCloudIconVisible:(BOOL)visible;
- (void)setFillerEdgeInsets:(UIEdgeInsets)insets;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setProgress:(id)progress immediately:(BOOL)immediately;
- (void)setSelectionBadgeVisible:(BOOL)visible;
- (void)setTemporaryPhotoImage:(id)image with:(int64_t)with;
- (void)setTransitionFillerViewEnabled:(BOOL)enabled;
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

- (void)setProgress:(id)progress immediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  progressCopy = progress;
  if (self->_progress != progressCopy)
  {
    v8 = progressCopy;
    objc_storeStrong(&self->_progress, progress);
    [(PUPhotosGridCell *)self _updateProgressImmediately:immediatelyCopy];
    progressCopy = v8;
  }
}

- (void)dragStateDidChange:(int64_t)change
{
  v5.receiver = self;
  v5.super_class = PUPhotosGridCell;
  [(PUPhotosGridCell *)&v5 dragStateDidChange:?];
  if ([(PUPhotosGridCell *)self dragState]!= change)
  {
    [(PUPhotosGridCell *)self setDragState:change];
    [(PUPhotosGridCell *)self _updateSelectionBadge];
  }
}

- (void)setCloudIconVisible:(BOOL)visible
{
  if (self->_cloudIconVisible != visible)
  {
    self->_cloudIconVisible = visible;
    [(PUPhotosGridCell *)self _updateCloudIcon];
  }
}

- (void)setSelectionBadgeVisible:(BOOL)visible
{
  if (self->_selectionBadgeVisible != visible)
  {
    self->_selectionBadgeVisible = visible;
    [(PUPhotosGridCell *)self _updateSelectionBadge];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(PUPhotosGridCell *)self isHighlighted]!= highlighted)
  {
    v5.receiver = self;
    v5.super_class = PUPhotosGridCell;
    [(PUPhotosGridCell *)&v5 setHighlighted:highlightedCopy];
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

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [attributesCopy interactiveTransitionProgress];
    if (v4 >= 0.0)
    {
      transitionIsAppearing = [(PUPhotosGridCell *)self transitionIsAppearing];
      [attributesCopy interactiveTransitionProgress];
      v7 = fmin(v6, 1.0);
      transitionFillerView = [(PUPhotosGridCell *)self transitionFillerView];
      v9 = transitionFillerView;
      if (transitionFillerView)
      {
        v10 = 1.0 - v7;
        if (transitionIsAppearing)
        {
          v10 = v7;
        }

        [transitionFillerView setAlpha:v10];
      }

      temporaryPhotoContentView = self->_temporaryPhotoContentView;
      if (temporaryPhotoContentView)
      {
        v12 = 1.0 - v7;
        if (!transitionIsAppearing)
        {
          v12 = v7;
        }

        [(PUPhotoView *)temporaryPhotoContentView setAlpha:v12];
      }
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  photoContentView = [(PUPhotosGridCell *)self photoContentView];
  contentHelper = [photoContentView contentHelper];
  [contentHelper contentViewSizeThatFits:{width, height}];
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
      array = [MEMORY[0x1E695DF70] array];
      v4 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_progressIndicatorView attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
      [(NSArray *)array addObject:v4];

      v5 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_progressIndicatorView attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
      [(NSArray *)array addObject:v5];

      [(PUPhotosGridCell *)self addConstraints:array];
      progressIndicatorViewConstraints = self->_progressIndicatorViewConstraints;
      self->_progressIndicatorViewConstraints = array;
    }
  }
}

- (void)_layoutTransitionFillerView
{
  if (self->_transitionFillerView)
  {
    contentView = [(PUPhotosGridCell *)self contentView];
    [contentView bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [(UIView *)self->_transitionFillerView setFrame:v5 + self->_fillerEdgeInsets.left, v7 + self->_fillerEdgeInsets.top, v9 - (self->_fillerEdgeInsets.left + self->_fillerEdgeInsets.right), v11 - (self->_fillerEdgeInsets.top + self->_fillerEdgeInsets.bottom)];
    v12 = (self->_fillerEdgeInsets.right - self->_fillerEdgeInsets.left) * 0.5;
    v13 = (self->_fillerEdgeInsets.bottom - self->_fillerEdgeInsets.top) * 0.5;
    memset(&v16, 0, sizeof(v16));
    CGAffineTransformMakeTranslation(&v16, v12, v13);
    layer = [(UIView *)self->_transitionFillerView layer];
    v15 = v16;
    [layer setContentsTransform:&v15];
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
  contentView = [(PUPhotosGridCell *)self contentView];
  [contentView setFrame:{v4, v6, v8, v10}];

  [(PUPhotoView *)self->_temporaryPhotoContentView setFrame:v4, v6, v8, v10];
  photoContentView = [(PUPhotosGridCell *)self photoContentView];
  contentHelper = [photoContentView contentHelper];
  [contentHelper imageContentFrame];
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
  photoContentView2 = [(PUPhotosGridCell *)self photoContentView];
  contentHelper2 = [photoContentView2 contentHelper];
  [contentHelper2 layoutSubviewsOfContentView];

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

- (void)_updateProgressImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
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
    [(PUProgressIndicatorView *)v12 endShowingProgressImmediately:immediatelyCopy animated:immediatelyCopy ^ 1 withCompletionHandler:v15];

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
    [(PUProgressIndicatorView *)self->_progressIndicatorView beginShowingProgressImmediately:immediatelyCopy animated:immediatelyCopy ^ 1];
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
      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [(UIView *)v11 setBackgroundColor:systemBackgroundColor];

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
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      v15 = [v13 px_circularGlyphViewWithName:@"checkmark.circle" backgroundColor:systemBlueColor];
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

  mEMORY[0x1E69C35C0] = [MEMORY[0x1E69C35C0] sharedInstance];
  disableSelectionOverlayView = [mEMORY[0x1E69C35C0] disableSelectionOverlayView];

  [(UIView *)self->_selectionOverlayView setHidden:v4 | disableSelectionOverlayView];
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
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(UIView *)v7 setBackgroundColor:labelColor];

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

- (void)setFillerEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_fillerEdgeInsets.top, v3), vceqq_f64(*&self->_fillerEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_fillerEdgeInsets = insets;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__PUPhotosGridCell_setFillerEdgeInsets___block_invoke;
    v5[3] = &unk_1E7B80DD0;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

- (void)setTransitionFillerViewEnabled:(BOOL)enabled
{
  if (self->_transitionFillerViewEnabled != enabled)
  {
    self->_transitionFillerViewEnabled = enabled;
    if (enabled)
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
      photoCollectionViewBackgroundColor = [v8 photoCollectionViewBackgroundColor];
      [(UIView *)v9 setBackgroundColor:photoCollectionViewBackgroundColor];

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

- (void)setTemporaryPhotoImage:(id)image with:(int64_t)with
{
  temporaryPhotoContentView = self->_temporaryPhotoContentView;
  imageCopy = image;
  contentHelper = [(PUPhotoView *)temporaryPhotoContentView contentHelper];
  [contentHelper setPhotoImage:imageCopy];

  contentHelper2 = [(PUPhotoView *)self->_temporaryPhotoContentView contentHelper];
  photoContentView = [(PUPhotosGridCell *)self photoContentView];
  contentHelper3 = [photoContentView contentHelper];
  [contentHelper3 photoSize];
  [contentHelper2 setPhotoSize:?];

  contentHelper4 = [(PUPhotoView *)self->_temporaryPhotoContentView contentHelper];
  [contentHelper4 setFillMode:with];
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
    contentView = [(PUPhotosGridCell *)self contentView];
    [contentView bounds];
    v5 = [(PUPhotoView *)v3 initWithFrame:?];
    temporaryPhotoContentView = self->_temporaryPhotoContentView;
    self->_temporaryPhotoContentView = v5;

    contentHelper = [(PUPhotoView *)self->_temporaryPhotoContentView contentHelper];
    [contentHelper setAvoidsImageViewIfPossible:1];

    [(PUPhotoView *)self->_temporaryPhotoContentView setAlpha:0.0];
    layer = [(PUPhotoView *)self->_temporaryPhotoContentView layer];
    [layer setAllowsGroupOpacity:0];

    [(PUPhotosGridCell *)self addSubview:self->_temporaryPhotoContentView];

    [(PUPhotosGridCell *)self _updateSubviewOrdering];
  }
}

- (PUPhotosGridCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PUPhotosGridCell;
  v4 = [(PUPhotosGridCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    contentView = [(PUPhotosGridCell *)v4 contentView];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v5 file:@"PUPhotosGridCell.m" lineNumber:63 description:{@"The content view must be a PUPhotoView: %@", contentView}];
    }

    [(PUPhotosGridCell *)v5 setPhotoContentView:contentView];
    layer = [(PUPhotosGridCell *)v5 layer];
    [layer setAllowsGroupOpacity:0];
  }

  return v5;
}

@end