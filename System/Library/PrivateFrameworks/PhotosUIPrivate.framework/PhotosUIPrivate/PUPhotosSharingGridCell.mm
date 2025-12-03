@interface PUPhotosSharingGridCell
- (PUPhotosSharingGridCell)initWithFrame:(CGRect)frame;
- (void)_updateHighlight;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation PUPhotosSharingGridCell

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(PUPhotosSharingGridCell *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = PUPhotosSharingGridCell;
  [(PUPhotosSharingGridCell *)&v6 setHighlighted:highlightedCopy];
  if (isHighlighted != [(PUPhotosSharingGridCell *)self isHighlighted])
  {
    [(PUPhotosSharingGridCell *)self _updateHighlight];
  }
}

- (void)layoutSubviews
{
  [(PUPhotosSharingGridCell *)self bounds];
  v4 = v3;
  v6 = v5;
  photoView = [(PUPhotosSharingGridCell *)self photoView];
  [photoView sizeThatFits:{v4, v6}];
  v9 = v8;
  v11 = v10;

  v12 = (v4 - v9) * 0.5;
  v13 = (v6 - v11) * 0.5;
  [(PUPhotoView *)self->_photoView setFrame:v12, v13, v9, v11];
  highlightOverlayView = self->_highlightOverlayView;

  [(UIView *)highlightOverlayView setFrame:v12, v13, v9, v11];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PUPhotosSharingGridCell;
  [(PUPhotosSharingGridCell *)&v5 prepareForReuse];
  photoView = [(PUPhotosSharingGridCell *)self photoView];
  contentHelper = [photoView contentHelper];

  [contentHelper setPhotoImage:0];
  [contentHelper setPlaceHolderImage:0];
  [contentHelper setLivePhoto:0];
  [contentHelper setLoopingVideoAsset:0];
  [(PUPhotosSharingGridCell *)self setCurrentImageRequestID:0];
}

- (void)_updateHighlight
{
  if (-[PUPhotosSharingGridCell isHighlighted](self, "isHighlighted") & 1) == 0 || (-[PUPhotoView contentHelper](self->_photoView, "contentHelper"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 providesVisualFeedbackOnPress], v3, (v4))
  {
    v10 = 1;
  }

  else
  {
    if (!self->_highlightOverlayView)
    {
      v5 = objc_alloc(MEMORY[0x1E69DD250]);
      [(PUPhotosSharingGridCell *)self bounds];
      v6 = [v5 initWithFrame:?];
      highlightOverlayView = self->_highlightOverlayView;
      self->_highlightOverlayView = v6;

      [(UIView *)self->_highlightOverlayView setUserInteractionEnabled:0];
      v8 = self->_highlightOverlayView;
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(UIView *)v8 setBackgroundColor:labelColor];

      [(UIView *)self->_highlightOverlayView setAlpha:0.5];
      [(PUPhotosSharingGridCell *)self addSubview:self->_highlightOverlayView];
    }

    v10 = 0;
  }

  [(UIView *)self->_highlightOverlayView setHidden:v10];
  [(PUPhotosSharingGridCell *)self _updateSubviewOrdering];

  [(PUPhotosSharingGridCell *)self setNeedsLayout];
}

- (PUPhotosSharingGridCell)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = PUPhotosSharingGridCell;
  v3 = [(PUPhotosSharingGridCell *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(PUPhotosSharingGridCell *)v3 contentView];
    [contentView bounds];
    v10 = [[PUPhotoView alloc] initWithFrame:v6, v7, v8, v9];
    photoView = v4->_photoView;
    v4->_photoView = v10;

    contentHelper = [(PUPhotoView *)v4->_photoView contentHelper];
    [contentHelper setFillMode:1];

    [contentView addSubview:v4->_photoView];
  }

  return v4;
}

@end