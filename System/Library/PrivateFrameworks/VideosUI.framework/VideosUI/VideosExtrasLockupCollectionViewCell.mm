@interface VideosExtrasLockupCollectionViewCell
- (CGSize)thumbnailMaxSize;
- (IKLockupElement)lockup;
- (VideosExtrasLockupCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)thumbnailImage;
- (void)_handlePinchGesture:(id)gesture;
- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished;
- (void)performZoomingImageTransitionWithContext:(id)context;
- (void)prepareForReuse;
- (void)prepareZoomingImageTransitionWithContext:(id)context;
- (void)setAllowsPinchingThumbnailImageForInteractiveZoomingImageTransition:(BOOL)transition;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setThumbnailBorderColor:(id)color;
- (void)setThumbnailImage:(id)image;
- (void)setThumbnailImageAccessibilityText:(id)text;
- (void)setThumbnailImagePlaceholder:(id)placeholder;
- (void)setThumbnailMaxSize:(CGSize)size;
- (void)setThumbnailOverlayImage:(id)image;
- (void)setZoomingImageTransitionIdentifier:(id)identifier;
- (void)updateConstraints;
@end

@implementation VideosExtrasLockupCollectionViewCell

- (VideosExtrasLockupCollectionViewCell)initWithFrame:(CGRect)frame
{
  v59.receiver = self;
  v59.super_class = VideosExtrasLockupCollectionViewCell;
  v3 = [(VideosExtrasLockupCollectionViewCell *)&v59 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    initForAutolayout = [[VideosExtrasConstrainedArtworkContainerView alloc] initForAutolayout];
    artworkContainerView = v3->_artworkContainerView;
    v3->_artworkContainerView = initForAutolayout;

    [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainerView setUserInteractionEnabled:1];
    [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainerView setMultipleTouchEnabled:1];
    artworkView = [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainerView artworkView];
    [artworkView setUserInteractionEnabled:1];

    artworkView2 = [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainerView artworkView];
    [artworkView2 setMultipleTouchEnabled:1];

    artworkView3 = [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainerView artworkView];
    [artworkView3 setDimsWhenHighlighted:1];

    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.2 alpha:1.0];
    cGColor = [v9 CGColor];
    artworkView4 = [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainerView artworkView];
    layer = [artworkView4 layer];
    [layer setBorderColor:cGColor];

    [(VideosExtrasLockupCollectionViewCell *)v3 addSubview:v3->_artworkContainerView];
    initForAutolayout2 = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
    textContainerView = v3->_textContainerView;
    v3->_textContainerView = initForAutolayout2;

    [(VideosExtrasLockupCollectionViewCell *)v3 addSubview:v3->_textContainerView];
    initForAutolayout3 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = initForAutolayout3;

    LODWORD(v17) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:1 forAxis:v17];
    [(UILabel *)v3->_titleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(UILabel *)v3->_titleLabel setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v3->_titleLabel setBackgroundColor:clearColor];

    [(VideosExtrasLockupCollectionViewCell *)v3 addSubview:v3->_titleLabel];
    initForAutolayout4 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = initForAutolayout4;

    LODWORD(v21) = 1148846080;
    [(UILabel *)v3->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v21];
    [(UILabel *)v3->_subtitleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(UILabel *)v3->_subtitleLabel setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)v3->_subtitleLabel setNumberOfLines:0];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v3->_subtitleLabel setBackgroundColor:clearColor2];

    [(VideosExtrasLockupCollectionViewCell *)v3 addSubview:v3->_subtitleLabel];
    initForAutolayout5 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = initForAutolayout5;

    LODWORD(v25) = 1144750080;
    [(UILabel *)v3->_descriptionLabel setContentCompressionResistancePriority:1 forAxis:v25];
    [(UILabel *)v3->_descriptionLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(UILabel *)v3->_descriptionLabel setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)v3->_descriptionLabel setNumberOfLines:0];
    clearColor3 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v3->_descriptionLabel setBackgroundColor:clearColor3];

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
    subtitleTextStyle = [(VideosExtrasLockupCollectionViewCell *)v3 subtitleTextStyle];
    v42 = [v38 constraintWithAutoupdatingBaselineOfView:v39 toView:v40 attribute:11 withTextStyle:subtitleTextStyle nonStandardLeading:20.0];

    v47 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v3->_subtitleLabel toView:v3->_textContainerView alongEdges:10 insets:{v34, v35, v36, v37}];
    v46 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v3->_descriptionLabel toView:v3->_textContainerView alongEdges:10 insets:{v34, v35, v36, v37}];
    v43 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_descriptionLabel attribute:4 relatedBy:-1 toItem:v3->_textContainerView attribute:4 multiplier:1.0 constant:0.0];
    array = [MEMORY[0x1E695DF70] array];
    [array addObject:v58];
    [array addObject:v57];
    [array addObject:v56];
    [array addObject:v3->_artworkContainerWidthConstraint];
    [array addObject:v3->_artworkContainerHeightConstraint];
    [array addObject:v55];
    [array addObject:v54];
    [array addObject:v53];
    [array addObject:v52];
    [array addObject:v51];
    [array addObject:v50];
    [array addObject:v49];
    [array addObjectsFromArray:v48];
    [array addObject:v42];
    [array addObjectsFromArray:v47];
    [array addObjectsFromArray:v46];
    [array addObject:v43];
    [(VideosExtrasLockupCollectionViewCell *)v3 addConstraints:array];
  }

  return v3;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = VideosExtrasLockupCollectionViewCell;
  [(VideosExtrasLockupCollectionViewCell *)&v5 prepareForReuse];
  artworkView = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
  [artworkView setPlaceholderImage:0];

  artworkView2 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
  [artworkView2 setImage:0];

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

- (void)setThumbnailImage:(id)image
{
  artworkContainerView = self->_artworkContainerView;
  imageCopy = image;
  artworkView = [(VideosExtrasConstrainedArtworkContainerView *)artworkContainerView artworkView];
  [artworkView setImage:imageCopy];

  image = [artworkView image];
  if (image)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v8 = 1.0 / v7;
  }

  else
  {
    v8 = 0.0;
  }

  layer = [artworkView layer];
  [layer setBorderWidth:v8];
}

- (void)setThumbnailBorderColor:(id)color
{
  colorCopy = color;
  cGColor = [color CGColor];
  artworkView = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
  layer = [artworkView layer];
  [layer setBorderColor:cGColor];
}

- (void)setThumbnailImagePlaceholder:(id)placeholder
{
  artworkContainerView = self->_artworkContainerView;
  placeholderCopy = placeholder;
  artworkView = [(VideosExtrasConstrainedArtworkContainerView *)artworkContainerView artworkView];
  [artworkView setPlaceholderImage:placeholderCopy];
}

- (void)setThumbnailImageAccessibilityText:(id)text
{
  artworkContainerView = self->_artworkContainerView;
  textCopy = text;
  artworkView = [(VideosExtrasConstrainedArtworkContainerView *)artworkContainerView artworkView];
  [artworkView setAccessibilityLabel:textCopy];
}

- (void)setAllowsPinchingThumbnailImageForInteractiveZoomingImageTransition:(BOOL)transition
{
  if (self->_allowsPinchingThumbnailImageForInteractiveZoomingImageTransition != transition)
  {
    self->_allowsPinchingThumbnailImageForInteractiveZoomingImageTransition = transition;
    if (transition)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel__handlePinchGesture_];
      artworkView = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
      [artworkView addGestureRecognizer:v5];

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
      artworkView2 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
      [artworkView2 removeGestureRecognizer:self->_pinchGestureRecognizer];

      [(UIPinchGestureRecognizer *)self->_pinchGestureRecognizer removeTarget:self action:0];
      v12 = self->_pinchGestureRecognizer;
      self->_pinchGestureRecognizer = 0;

      v10 = self->_interactiveTransitionSourceContext;
      self->_interactiveTransitionSourceContext = 0;
    }
  }
}

- (void)_handlePinchGesture:(id)gesture
{
  v4 = self->_interactiveTransitionSourceContext;
  v5 = [(VideosExtrasLockupCollectionViewCell *)self targetForAction:sel_handlePinchGestureForZoomingImageInteractiveTransitionWithContext_ withSender:v4];
  [v5 handlePinchGestureForZoomingImageInteractiveTransitionWithContext:v4];
}

- (id)thumbnailImage
{
  artworkView = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
  image = [artworkView image];

  return image;
}

- (void)setThumbnailMaxSize:(CGSize)size
{
  if (self->_artworkSize.width != size.width || self->_artworkSize.height != size.height)
  {
    self->_artworkSize = size;
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

- (void)setThumbnailOverlayImage:(id)image
{
  [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView setOverlayImage:image];
  artworkContainerView = self->_artworkContainerView;

  [(VideosExtrasConstrainedArtworkContainerView *)artworkContainerView setOverlayScale:0.2];
}

- (void)updateConstraints
{
  p_artworkSize = &self->_artworkSize;
  [(NSLayoutConstraint *)self->_artworkContainerWidthConstraint setConstant:self->_artworkSize.width];
  [(NSLayoutConstraint *)self->_artworkContainerHeightConstraint setConstant:p_artworkSize->height];
  text = [(UILabel *)self->_titleLabel text];
  v5 = [text length];

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
    secondItem = [(NSLayoutConstraint *)subtitleBaselineConstraint secondItem];
    v11 = secondItem;
    if (secondItem == v8)
    {
      secondAttribute = [(NSLayoutConstraint *)self->_subtitleBaselineConstraint secondAttribute];

      if (secondAttribute == v7)
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
  subtitleTextStyle = [(VideosExtrasLockupCollectionViewCell *)self subtitleTextStyle];
  v17 = [v14 constraintWithAutoupdatingBaselineOfView:subtitleLabel relation:0 toView:v8 attribute:v7 withTextStyle:subtitleTextStyle multiplier:1.0 nonStandardLeading:20.0];
  v18 = self->_subtitleBaselineConstraint;
  self->_subtitleBaselineConstraint = v17;

LABEL_11:
  text2 = [(UILabel *)self->_subtitleLabel text];
  if ([text2 length])
  {
    p_subtitleLabel = &self->_subtitleLabel;
  }

  else
  {
    p_subtitleLabel = &self->_titleLabel;
  }

  v21 = *p_subtitleLabel;

  text3 = [(UILabel *)v21 text];
  v23 = [text3 length];

  if (v23)
  {
    selfCopy = v21;
  }

  else
  {
    selfCopy = self;
  }

  if (v23)
  {
    v25 = 11;
  }

  else
  {
    v25 = 3;
  }

  v26 = selfCopy;
  descriptionBaselineConstraint = self->_descriptionBaselineConstraint;
  if (!descriptionBaselineConstraint)
  {
    goto LABEL_26;
  }

  secondItem2 = [(NSLayoutConstraint *)descriptionBaselineConstraint secondItem];
  v29 = secondItem2;
  if (secondItem2 == v26)
  {
    secondAttribute2 = [(NSLayoutConstraint *)self->_descriptionBaselineConstraint secondAttribute];

    if (secondAttribute2 == v25)
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
    descriptionTextStyle = [(VideosExtrasLockupCollectionViewCell *)self descriptionTextStyle];
    v35 = [v32 constraintWithAutoupdatingBaselineOfView:descriptionLabel toView:v26 attribute:v25 withTextStyle:descriptionTextStyle nonStandardLeading:30.0];
    v36 = self->_descriptionBaselineConstraint;
    self->_descriptionBaselineConstraint = v35;

    [(VideosExtrasLockupCollectionViewCell *)self addConstraint:self->_descriptionBaselineConstraint];
  }

  v37.receiver = self;
  v37.super_class = VideosExtrasLockupCollectionViewCell;
  [(VideosExtrasLockupCollectionViewCell *)&v37 updateConstraints];
}

- (void)setZoomingImageTransitionIdentifier:(id)identifier
{
  if (self->_zoomingImageTransitionIdentifier != identifier)
  {
    v4 = [identifier copy];
    zoomingImageTransitionIdentifier = self->_zoomingImageTransitionIdentifier;
    self->_zoomingImageTransitionIdentifier = v4;

    interactiveTransitionSourceContext = self->_interactiveTransitionSourceContext;
    v7 = self->_zoomingImageTransitionIdentifier;

    [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)interactiveTransitionSourceContext setIdentifier:v7];
  }
}

- (void)prepareZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  if ([contextCopy appearState] == 1)
  {
    zoomingImageView = [contextCopy zoomingImageView];
    artworkView = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
    [zoomingImageView replicateStateFromImageView:artworkView];
  }

  artworkView2 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
  [artworkView2 setHidden:1];
}

- (void)performZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  if (![contextCopy appearState])
  {
    zoomingImageView = [contextCopy zoomingImageView];
    artworkView = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
    [zoomingImageView replicateStateFromImageView:artworkView];
  }
}

- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished
{
  v4 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView:context];
  [v4 setHidden:0];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = VideosExtrasLockupCollectionViewCell;
  [(VideosExtrasLockupCollectionViewCell *)&v6 setHighlighted:?];
  artworkView = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainerView artworkView];
  [artworkView setHighlighted:highlightedCopy];
}

- (IKLockupElement)lockup
{
  WeakRetained = objc_loadWeakRetained(&self->_lockup);

  return WeakRetained;
}

@end