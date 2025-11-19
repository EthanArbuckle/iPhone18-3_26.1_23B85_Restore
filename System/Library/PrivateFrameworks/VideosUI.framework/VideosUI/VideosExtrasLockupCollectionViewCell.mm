@interface VideosExtrasLockupCollectionViewCell
- (CGSize)thumbnailMaxSize;
- (IKLockupElement)lockup;
- (VideosExtrasLockupCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)thumbnailImage;
- (void)_handlePinchGesture:(id)a3;
- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4;
- (void)performZoomingImageTransitionWithContext:(id)a3;
- (void)prepareForReuse;
- (void)prepareZoomingImageTransitionWithContext:(id)a3;
- (void)setAllowsPinchingThumbnailImageForInteractiveZoomingImageTransition:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setThumbnailBorderColor:(id)a3;
- (void)setThumbnailImage:(id)a3;
- (void)setThumbnailImageAccessibilityText:(id)a3;
- (void)setThumbnailImagePlaceholder:(id)a3;
- (void)setThumbnailMaxSize:(CGSize)a3;
- (void)setThumbnailOverlayImage:(id)a3;
- (void)setZoomingImageTransitionIdentifier:(id)a3;
- (void)updateConstraints;
@end

@implementation VideosExtrasLockupCollectionViewCell

- (VideosExtrasLockupCollectionViewCell)initWithFrame:(CGRect)a3
{
  v59.receiver = self;
  v59.super_class = VideosExtrasLockupCollectionViewCell;
  v3 = [(VideosExtrasLockupCollectionViewCell *)&v59 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[VideosExtrasConstrainedArtworkContainerView alloc] initForAutolayout];
    artworkContainerView = v3->_artworkContainerView;
    v3->_artworkContainerView = v4;

    [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainerView setUserInteractionEnabled:1];
    [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainerView setMultipleTouchEnabled:1];
    v6 = [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainerView artworkView];
    [v6 setUserInteractionEnabled:1];

    v7 = [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainerView artworkView];
    [v7 setMultipleTouchEnabled:1];

    v8 = [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainerView artworkView];
    [v8 setDimsWhenHighlighted:1];

    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.2 alpha:1.0];
    v10 = [v9 CGColor];
    v11 = [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainerView artworkView];
    v12 = [v11 layer];
    [v12 setBorderColor:v10];

    [(VideosExtrasLockupCollectionViewCell *)v3 addSubview:v3->_artworkContainerView];
    v13 = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
    textContainerView = v3->_textContainerView;
    v3->_textContainerView = v13;

    [(VideosExtrasLockupCollectionViewCell *)v3 addSubview:v3->_textContainerView];
    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v15;

    LODWORD(v17) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:1 forAxis:v17];
    [(UILabel *)v3->_titleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(UILabel *)v3->_titleLabel setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    v18 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v3->_titleLabel setBackgroundColor:v18];

    [(VideosExtrasLockupCollectionViewCell *)v3 addSubview:v3->_titleLabel];
    v19 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v19;

    LODWORD(v21) = 1148846080;
    [(UILabel *)v3->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v21];
    [(UILabel *)v3->_subtitleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(UILabel *)v3->_subtitleLabel setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)v3->_subtitleLabel setNumberOfLines:0];
    v22 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v3->_subtitleLabel setBackgroundColor:v22];

    [(VideosExtrasLockupCollectionViewCell *)v3 addSubview:v3->_subtitleLabel];
    v23 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v23;

    LODWORD(v25) = 1144750080;
    [(UILabel *)v3->_descriptionLabel setContentCompressionResistancePriority:1 forAxis:v25];
    [(UILabel *)v3->_descriptionLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(UILabel *)v3->_descriptionLabel setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)v3->_descriptionLabel setNumberOfLines:0];
    v26 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v3->_descriptionLabel setBackgroundColor:v26];

    [(VideosExtrasLockupCollectionViewCell *)v3 addSubview:v3->_descriptionLabel];
    v58 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_artworkContainerView attribute:5 relatedBy:0 toItem:v3 attribute:5 multiplier:1.0 constant:0.0];
    v57 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_artworkContainerView attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    v56 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_artworkContainerView attribute:8 relatedBy:-1 toItem:v3 attribute:8 multiplier:1.0 constant:0.0];
    v27 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_artworkContainerView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v3->_artworkSize.width];
    artworkContainerWidthConstraint = v3->_artworkContainerWidthConstraint;
    v3->_artworkContainerWidthConstraint = v27;

    LODWORD(v29) = 1148829696;
    [(NSLayoutConstraint *)v3->_artworkContainerWidthConstraint setPriority:v29];
    v30 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_artworkContainerView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v3->_artworkSize.height];
    artworkContainerHeightConstraint = v3->_artworkContainerHeightConstraint;
    v3->_artworkContainerHeightConstraint = v30;

    LODWORD(v32) = 1148829696;
    [(NSLayoutConstraint *)v3->_artworkContainerHeightConstraint setPriority:v32];
    v55 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_textContainerView attribute:8 relatedBy:-1 toItem:v3->_artworkContainerView attribute:8 multiplier:1.0 constant:0.0];
    v54 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_textContainerView attribute:3 relatedBy:1 toItem:v3 attribute:3 multiplier:1.0 constant:0.0];
    v53 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_textContainerView attribute:4 relatedBy:-1 toItem:v3 attribute:4 multiplier:1.0 constant:0.0];
    v52 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_textContainerView attribute:5 relatedBy:0 toItem:v3->_artworkContainerView attribute:6 multiplier:1.0 constant:20.0];
    v51 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_textContainerView attribute:6 relatedBy:0 toItem:v3 attribute:6 multiplier:1.0 constant:-20.0];
    v50 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_textContainerView attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    if ([MEMORY[0x1E69DF6F0] isPhone])
    {
      v33 = 10.0;
    }

    else
    {
      v33 = 0.0;
    }

    v49 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_titleLabel attribute:3 relatedBy:0 toItem:v3->_textContainerView attribute:3 multiplier:1.0 constant:v33];
    v34 = *MEMORY[0x1E69DDCE0];
    v35 = *(MEMORY[0x1E69DDCE0] + 8);
    v36 = *(MEMORY[0x1E69DDCE0] + 16);
    v37 = *(MEMORY[0x1E69DDCE0] + 24);
    v48 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v3->_titleLabel toView:v3->_textContainerView alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], v35, v36, v37}];
    v38 = MEMORY[0x1E69AD980];
    v39 = v3->_subtitleLabel;
    v40 = v3->_titleLabel;
    v41 = [(VideosExtrasLockupCollectionViewCell *)v3 subtitleTextStyle];
    v42 = [v38 constraintWithAutoupdatingBaselineOfView:v39 toView:v40 attribute:11 withTextStyle:v41 nonStandardLeading:20.0];

    v47 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v3->_subtitleLabel toView:v3->_textContainerView alongEdges:10 insets:{v34, v35, v36, v37}];
    v46 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v3->_descriptionLabel toView:v3->_textContainerView alongEdges:10 insets:{v34, v35, v36, v37}];
    v43 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_descriptionLabel attribute:4 relatedBy:-1 toItem:v3->_textContainerView attribute:4 multiplier:1.0 constant:0.0];
    v44 = [MEMORY[0x1E695DF70] array];
    [v44 addObject:v58];
    [v44 addObject:v57];
    [v44 addObject:v56];
    [v44 addObject:v3->_artworkContainerWidthConstraint];
    [v44 addObject:v3->_artworkContainerHeightConstraint];
    [v44 addObject:v55];
    [v44 addObject:v54];
    [v44 addObject:v53];
    [v44 addObject:v52];
    [v44 addObject:v51];
    [v44 addObject:v50];
    [v44 addObject:v49];
    [v44 addObjectsFromArray:v48];
    [v44 addObject:v42];
    [v44 addObjectsFromArray:v47];
    [v44 addObjectsFromArray:v46];
    [v44 addObject:v43];
    [(VideosExtrasLockupCollectionViewCell *)v3 addConstraints:v44];
  }

  return v3;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = VideosExtrasLockupCollectionViewCell;
  [(VideosExtrasLockupCollectionViewCell *)&v5 prepareForReuse];
  v3 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
  [v3 setPlaceholderImage:0];

  v4 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
  [v4 setImage:0];

  [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView setOverlayImage:0];
  [(UILabel *)self->_titleLabel setText:0];
  [(UILabel *)self->_titleLabel setAttributedText:0];
  [(UILabel *)self->_titleLabel setFont:0];
  [(UILabel *)self->_subtitleLabel setText:0];
  [(UILabel *)self->_subtitleLabel setAttributedText:0];
  [(UILabel *)self->_subtitleLabel setFont:0];
  [(UILabel *)self->_descriptionLabel setText:0];
  [(UILabel *)self->_descriptionLabel setAttributedText:0];
  [(UILabel *)self->_descriptionLabel setFont:0];
}

- (void)setThumbnailImage:(id)a3
{
  artworkContainerView = self->_artworkContainerView;
  v4 = a3;
  v10 = [(VideosExtrasConstrainedArtworkContainerView *)artworkContainerView artworkView];
  [v10 setImage:v4];

  v5 = [v10 image];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 scale];
    v8 = 1.0 / v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [v10 layer];
  [v9 setBorderWidth:v8];
}

- (void)setThumbnailBorderColor:(id)a3
{
  v5 = a3;
  v6 = [a3 CGColor];
  v8 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
  v7 = [v8 layer];
  [v7 setBorderColor:v6];
}

- (void)setThumbnailImagePlaceholder:(id)a3
{
  artworkContainerView = self->_artworkContainerView;
  v4 = a3;
  v5 = [(VideosExtrasConstrainedArtworkContainerView *)artworkContainerView artworkView];
  [v5 setPlaceholderImage:v4];
}

- (void)setThumbnailImageAccessibilityText:(id)a3
{
  artworkContainerView = self->_artworkContainerView;
  v4 = a3;
  v5 = [(VideosExtrasConstrainedArtworkContainerView *)artworkContainerView artworkView];
  [v5 setAccessibilityLabel:v4];
}

- (void)setAllowsPinchingThumbnailImageForInteractiveZoomingImageTransition:(BOOL)a3
{
  if (self->_allowsPinchingThumbnailImageForInteractiveZoomingImageTransition != a3)
  {
    self->_allowsPinchingThumbnailImageForInteractiveZoomingImageTransition = a3;
    if (a3)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel__handlePinchGesture_];
      v6 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
      [v6 addGestureRecognizer:v5];

      pinchGestureRecognizer = self->_pinchGestureRecognizer;
      self->_pinchGestureRecognizer = v5;
      v13 = v5;

      v8 = objc_alloc_init(VideosExtrasZoomingImageInteractiveTransitionSourceContext);
      [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v8 setPinchGestureRecognizer:v13];
      [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v8 setItemIndex:[(VideosExtrasLockupCollectionViewCell *)self itemIndex]];
      [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v8 setSupportedZoomingImageTransitionDirections:3];
      [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v8 setIdentifier:self->_zoomingImageTransitionIdentifier];
      interactiveTransitionSourceContext = self->_interactiveTransitionSourceContext;
      self->_interactiveTransitionSourceContext = v8;

      v10 = v13;
    }

    else
    {
      v11 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
      [v11 removeGestureRecognizer:self->_pinchGestureRecognizer];

      [(UIPinchGestureRecognizer *)self->_pinchGestureRecognizer removeTarget:self action:0];
      v12 = self->_pinchGestureRecognizer;
      self->_pinchGestureRecognizer = 0;

      v10 = self->_interactiveTransitionSourceContext;
      self->_interactiveTransitionSourceContext = 0;
    }
  }
}

- (void)_handlePinchGesture:(id)a3
{
  v4 = self->_interactiveTransitionSourceContext;
  v5 = [(VideosExtrasLockupCollectionViewCell *)self targetForAction:sel_handlePinchGestureForZoomingImageInteractiveTransitionWithContext_ withSender:v4];
  [v5 handlePinchGestureForZoomingImageInteractiveTransitionWithContext:v4];
}

- (id)thumbnailImage
{
  v2 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
  v3 = [v2 image];

  return v3;
}

- (void)setThumbnailMaxSize:(CGSize)a3
{
  if (self->_artworkSize.width != a3.width || self->_artworkSize.height != a3.height)
  {
    self->_artworkSize = a3;
    [(VideosExtrasLockupCollectionViewCell *)self setNeedsUpdateConstraints];
  }
}

- (CGSize)thumbnailMaxSize
{
  width = self->_artworkSize.width;
  height = self->_artworkSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setThumbnailOverlayImage:(id)a3
{
  [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView setOverlayImage:a3];
  artworkContainerView = self->_artworkContainerView;

  [(VideosExtrasConstrainedArtworkContainerView *)artworkContainerView setOverlayScale:0.2];
}

- (void)updateConstraints
{
  p_artworkSize = &self->_artworkSize;
  [(NSLayoutConstraint *)self->_artworkContainerWidthConstraint setConstant:self->_artworkSize.width];
  [(NSLayoutConstraint *)self->_artworkContainerHeightConstraint setConstant:p_artworkSize->height];
  v4 = [(UILabel *)self->_titleLabel text];
  v5 = [v4 length];

  if (v5)
  {
    titleLabel = self->_titleLabel;
    v7 = 11;
  }

  else
  {
    v7 = 3;
    titleLabel = self;
  }

  v8 = titleLabel;
  subtitleBaselineConstraint = self->_subtitleBaselineConstraint;
  if (subtitleBaselineConstraint)
  {
    v10 = [(NSLayoutConstraint *)subtitleBaselineConstraint secondItem];
    v11 = v10;
    if (v10 == v8)
    {
      v12 = [(NSLayoutConstraint *)self->_subtitleBaselineConstraint secondAttribute];

      if (v12 == v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    [(VideosExtrasLockupCollectionViewCell *)self removeConstraint:self->_subtitleBaselineConstraint];
    v13 = self->_subtitleBaselineConstraint;
    self->_subtitleBaselineConstraint = 0;

LABEL_9:
    if (self->_subtitleBaselineConstraint)
    {
      goto LABEL_11;
    }
  }

  v14 = MEMORY[0x1E69AD980];
  subtitleLabel = self->_subtitleLabel;
  v16 = [(VideosExtrasLockupCollectionViewCell *)self subtitleTextStyle];
  v17 = [v14 constraintWithAutoupdatingBaselineOfView:subtitleLabel relation:0 toView:v8 attribute:v7 withTextStyle:v16 multiplier:1.0 nonStandardLeading:20.0];
  v18 = self->_subtitleBaselineConstraint;
  self->_subtitleBaselineConstraint = v17;

LABEL_11:
  v19 = [(UILabel *)self->_subtitleLabel text];
  if ([v19 length])
  {
    p_subtitleLabel = &self->_subtitleLabel;
  }

  else
  {
    p_subtitleLabel = &self->_titleLabel;
  }

  v21 = *p_subtitleLabel;

  v22 = [(UILabel *)v21 text];
  v23 = [v22 length];

  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = self;
  }

  if (v23)
  {
    v25 = 11;
  }

  else
  {
    v25 = 3;
  }

  v26 = v24;
  descriptionBaselineConstraint = self->_descriptionBaselineConstraint;
  if (!descriptionBaselineConstraint)
  {
    goto LABEL_26;
  }

  v28 = [(NSLayoutConstraint *)descriptionBaselineConstraint secondItem];
  v29 = v28;
  if (v28 == v26)
  {
    v30 = [(NSLayoutConstraint *)self->_descriptionBaselineConstraint secondAttribute];

    if (v30 == v25)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  [(VideosExtrasLockupCollectionViewCell *)self removeConstraint:self->_descriptionBaselineConstraint];
  v31 = self->_descriptionBaselineConstraint;
  self->_descriptionBaselineConstraint = 0;

LABEL_25:
  if (!self->_descriptionBaselineConstraint)
  {
LABEL_26:
    v32 = MEMORY[0x1E69AD980];
    descriptionLabel = self->_descriptionLabel;
    v34 = [(VideosExtrasLockupCollectionViewCell *)self descriptionTextStyle];
    v35 = [v32 constraintWithAutoupdatingBaselineOfView:descriptionLabel toView:v26 attribute:v25 withTextStyle:v34 nonStandardLeading:30.0];
    v36 = self->_descriptionBaselineConstraint;
    self->_descriptionBaselineConstraint = v35;

    [(VideosExtrasLockupCollectionViewCell *)self addConstraint:self->_descriptionBaselineConstraint];
  }

  v37.receiver = self;
  v37.super_class = VideosExtrasLockupCollectionViewCell;
  [(VideosExtrasLockupCollectionViewCell *)&v37 updateConstraints];
}

- (void)setZoomingImageTransitionIdentifier:(id)a3
{
  if (self->_zoomingImageTransitionIdentifier != a3)
  {
    v4 = [a3 copy];
    zoomingImageTransitionIdentifier = self->_zoomingImageTransitionIdentifier;
    self->_zoomingImageTransitionIdentifier = v4;

    interactiveTransitionSourceContext = self->_interactiveTransitionSourceContext;
    v7 = self->_zoomingImageTransitionIdentifier;

    [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)interactiveTransitionSourceContext setIdentifier:v7];
  }
}

- (void)prepareZoomingImageTransitionWithContext:(id)a3
{
  v7 = a3;
  if ([v7 appearState] == 1)
  {
    v4 = [v7 zoomingImageView];
    v5 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
    [v4 replicateStateFromImageView:v5];
  }

  v6 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
  [v6 setHidden:1];
}

- (void)performZoomingImageTransitionWithContext:(id)a3
{
  v6 = a3;
  if (![v6 appearState])
  {
    v4 = [v6 zoomingImageView];
    v5 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
    [v4 replicateStateFromImageView:v5];
  }
}

- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4
{
  v4 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView:a3];
  [v4 setHidden:0];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = VideosExtrasLockupCollectionViewCell;
  [(VideosExtrasLockupCollectionViewCell *)&v6 setHighlighted:?];
  v5 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
  [v5 setHighlighted:v3];
}

- (IKLockupElement)lockup
{
  WeakRetained = objc_loadWeakRetained(&self->_lockup);

  return WeakRetained;
}

@end