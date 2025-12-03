@interface VideosExtrasCarouselCollectionViewCell
- (CGSize)thumbnailMaxSize;
- (CGSize)windowSize;
- (double)_descriptionLabelTopInset;
- (double)thumbnailImageContainerHeight;
- (id)descriptionText;
- (id)subtitleText;
- (id)thumbnailImage;
- (id)thumbnailImageAccessibilityText;
- (id)thumbnailImagePlaceholder;
- (id)titleText;
- (void)_handlePinchGesture:(id)gesture;
- (void)_setupDescriptionLabelWithConstraintsAccumulator:(id)accumulator;
- (void)_setupSubtitleLabelWithConstraintsAccumulator:(id)accumulator;
- (void)_setupThumbnailImageContainerViewWithConstraintsAccumulator:(id)accumulator;
- (void)_setupTitleLabelWithConstraintsAccumulator:(id)accumulator;
- (void)_updateThumbnailArtworkViewBorder;
- (void)dealloc;
- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished;
- (void)performZoomingImageTransitionWithContext:(id)context;
- (void)prepareForReuse;
- (void)prepareZoomingImageTransitionWithContext:(id)context;
- (void)setAllowsPinchingThumbnailImageForInteractiveZoomingImageTransition:(BOOL)transition;
- (void)setDescriptionText:(id)text;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setItemIndex:(unint64_t)index;
- (void)setSubtitleText:(id)text;
- (void)setThumbnailBorderColor:(id)color;
- (void)setThumbnailImage:(id)image;
- (void)setThumbnailImageAccessibilityText:(id)text;
- (void)setThumbnailImagePlaceholder:(id)placeholder;
- (void)setThumbnailOverlayImage:(id)image;
- (void)setTitleText:(id)text;
- (void)setWindowSize:(CGSize)size;
- (void)setZoomingImageTransitionIdentifier:(id)identifier;
- (void)updateConstraints;
@end

@implementation VideosExtrasCarouselCollectionViewCell

- (void)dealloc
{
  pinchGestureRecognizer = [(VideosExtrasCarouselCollectionViewCell *)self pinchGestureRecognizer];
  [pinchGestureRecognizer removeTarget:self action:0];

  v4.receiver = self;
  v4.super_class = VideosExtrasCarouselCollectionViewCell;
  [(VideosExtrasCarouselCollectionViewCell *)&v4 dealloc];
}

- (void)updateConstraints
{
  thumbnailImageContainerViewHeightConstraint = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerViewHeightConstraint];
  [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerHeight];
  [thumbnailImageContainerViewHeightConstraint setConstant:?];

  contentView = [(VideosExtrasCarouselCollectionViewCell *)self contentView];
  titleLabel = [(VideosExtrasCarouselCollectionViewCell *)self titleLabel];
  subtitleLabel = [(VideosExtrasCarouselCollectionViewCell *)self subtitleLabel];
  descriptionLabel = [(VideosExtrasCarouselCollectionViewCell *)self descriptionLabel];
  thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  text = [titleLabel text];
  v53 = titleLabel;
  if ([text length])
  {

    v9 = 11;
  }

  else
  {
    attributedText = [titleLabel attributedText];
    v11 = [attributedText length];

    if (v11)
    {
      v9 = 11;
    }

    else
    {
      titleLabel = thumbnailImageContainerView;
      v9 = 4;
    }
  }

  v12 = titleLabel;
  subtitleBaselineConstraint = [(VideosExtrasCarouselCollectionViewCell *)self subtitleBaselineConstraint];
  if (subtitleBaselineConstraint)
  {
    v14 = subtitleBaselineConstraint;
    secondItem = [subtitleBaselineConstraint secondItem];
    v16 = secondItem;
    if (secondItem == v12)
    {
      secondAttribute = [v14 secondAttribute];

      if (secondAttribute == v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    [contentView removeConstraint:v14];

    [(VideosExtrasCarouselCollectionViewCell *)self setSubtitleBaselineConstraint:0];
  }

  v18 = MEMORY[0x1E69AD980];
  subtitleTextStyle = [(VideosExtrasCarouselCollectionViewCell *)self subtitleTextStyle];
  v14 = [v18 constraintWithAutoupdatingBaselineOfView:subtitleLabel toView:v12 attribute:v9 withTextStyle:subtitleTextStyle nonStandardLeading:25.0];

  [contentView addConstraint:v14];
  [(VideosExtrasCarouselCollectionViewCell *)self setSubtitleBaselineConstraint:v14];
LABEL_12:
  text2 = [subtitleLabel text];
  v51 = thumbnailImageContainerView;
  v52 = subtitleLabel;
  if ([text2 length])
  {
    v21 = subtitleLabel;
LABEL_14:

    v22 = 11;
    goto LABEL_17;
  }

  attributedText2 = [subtitleLabel attributedText];
  v24 = [attributedText2 length];

  if (v24)
  {
    v22 = 11;
    v21 = subtitleLabel;
  }

  else
  {
    v21 = v53;
    text2 = [v53 text];
    if ([text2 length])
    {
      goto LABEL_14;
    }

    attributedText3 = [v53 attributedText];
    v39 = [attributedText3 length];

    if (v39)
    {
      v22 = 11;
    }

    else
    {
      v21 = thumbnailImageContainerView;
      v22 = 4;
    }
  }

LABEL_17:
  v25 = v21;
  descriptionLabelBaselineConstraint = [(VideosExtrasCarouselCollectionViewCell *)self descriptionLabelBaselineConstraint];
  v27 = v12;
  if (descriptionLabelBaselineConstraint)
  {
    v28 = descriptionLabelBaselineConstraint;
    secondItem2 = [descriptionLabelBaselineConstraint secondItem];
    v30 = secondItem2;
    if (secondItem2 == v25)
    {
      secondAttribute2 = [v28 secondAttribute];

      if (secondAttribute2 == v22)
      {
        v32 = v27;
        goto LABEL_24;
      }
    }

    else
    {
    }

    [contentView removeConstraint:v28];

    [(VideosExtrasCarouselCollectionViewCell *)self setDescriptionLabelBaselineConstraint:0];
  }

  v33 = MEMORY[0x1E69AD980];
  descriptionTextStyle = [(VideosExtrasCarouselCollectionViewCell *)self descriptionTextStyle];
  v28 = [v33 constraintWithAutoupdatingBaselineOfView:descriptionLabel toView:v25 attribute:v22 withTextStyle:descriptionTextStyle nonStandardLeading:40.0];

  v32 = v27;
  [contentView addConstraint:v28];
  [(VideosExtrasCarouselCollectionViewCell *)self setDescriptionLabelBaselineConstraint:v28];
LABEL_24:
  v35 = v53;
  text3 = [v53 text];
  if (![text3 length])
  {
    attributedText4 = [v53 attributedText];
    if ([attributedText4 length])
    {
LABEL_27:
      v37 = v52;
LABEL_37:
      v42 = attributedText4;
LABEL_38:

      goto LABEL_39;
    }

    text4 = [v52 text];
    if ([text4 length])
    {

      v37 = v52;
    }

    else
    {
      attributedText5 = [v52 attributedText];
      if (![attributedText5 length])
      {
        v49 = attributedText5;
        text5 = [descriptionLabel text];
        v35 = v53;
        if (![text5 length])
        {
          attributedText6 = [descriptionLabel attributedText];
          v47 = [attributedText6 length];

          v32 = v27;
          v37 = v52;
          if (v47)
          {
            goto LABEL_40;
          }

          thumbnailImageContainerViewConstraints = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerViewConstraints];
          [contentView removeConstraints:thumbnailImageContainerViewConstraints];

          v45 = MEMORY[0x1E696ACD8];
          text3 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
          v46 = v45;
          v35 = v53;
          v42 = [v46 constraintsByAttachingView:text3 toView:contentView alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
          [contentView addConstraints:v42];
          goto LABEL_38;
        }

        v32 = v27;
        goto LABEL_27;
      }

      v37 = v52;
    }

    v35 = v53;
    goto LABEL_37;
  }

  v37 = v52;
LABEL_39:

LABEL_40:
  v55.receiver = self;
  v55.super_class = VideosExtrasCarouselCollectionViewCell;
  [(VideosExtrasCarouselCollectionViewCell *)&v55 updateConstraints];
}

- (void)prepareForReuse
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__VideosExtrasCarouselCollectionViewCell_prepareForReuse__block_invoke;
  v4[3] = &unk_1E872D768;
  v4[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v4];
  v3.receiver = self;
  v3.super_class = VideosExtrasCarouselCollectionViewCell;
  [(VideosExtrasCarouselCollectionViewCell *)&v3 prepareForReuse];
  [(VideosExtrasCarouselCollectionViewCell *)self setTitleText:0];
  [(VideosExtrasCarouselCollectionViewCell *)self setSubtitleText:0];
  [(VideosExtrasCarouselCollectionViewCell *)self setDescriptionText:0];
  [(VideosExtrasCarouselCollectionViewCell *)self setThumbnailImage:0];
  [(VideosExtrasCarouselCollectionViewCell *)self setThumbnailImagePlaceholder:0];
  [(VideosExtrasCarouselCollectionViewCell *)self setItemIndex:0];
  [(VideosExtrasCarouselCollectionViewCell *)self setThumbnailOverlayImage:0];
  [(VideosExtrasCarouselCollectionViewCell *)self clearArtworkCatalogs];
}

void __57__VideosExtrasCarouselCollectionViewCell_prepareForReuse__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) thumbnailImageContainerView];
  v1 = [v2 artworkView];
  [v1 setHighlighted:0];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = VideosExtrasCarouselCollectionViewCell;
  [(VideosExtrasCarouselCollectionViewCell *)&v7 setHighlighted:?];
  thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  artworkView = [thumbnailImageContainerView artworkView];
  [artworkView setHighlighted:highlightedCopy animated:highlightedCopy ^ 1];
}

- (void)prepareZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  artworkView = [thumbnailImageContainerView artworkView];

  if ([contextCopy appearState] == 1)
  {
    zoomingImageView = [contextCopy zoomingImageView];
    [zoomingImageView replicateStateFromImageView:artworkView];
  }

  [artworkView setHidden:1];
}

- (void)performZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  if (![contextCopy appearState])
  {
    zoomingImageView = [contextCopy zoomingImageView];
    thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
    artworkView = [thumbnailImageContainerView artworkView];
    [zoomingImageView replicateStateFromImageView:artworkView];
  }
}

- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished
{
  v5 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView:context];
  artworkView = [v5 artworkView];
  [artworkView setHidden:0];
}

- (id)thumbnailImage
{
  thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  artworkView = [thumbnailImageContainerView artworkView];
  image = [artworkView image];

  return image;
}

- (void)setThumbnailImage:(id)image
{
  imageCopy = image;
  thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  artworkView = [thumbnailImageContainerView artworkView];
  [artworkView setImage:imageCopy];

  [(VideosExtrasCarouselCollectionViewCell *)self _updateThumbnailArtworkViewBorder];
}

- (void)setThumbnailBorderColor:(id)color
{
  colorCopy = color;
  thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  artworkView = [thumbnailImageContainerView artworkView];
  layer = [artworkView layer];
  cGColor = [colorCopy CGColor];

  [layer setBorderColor:cGColor];
}

- (id)thumbnailImagePlaceholder
{
  thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  artworkView = [thumbnailImageContainerView artworkView];
  placeholderImage = [artworkView placeholderImage];

  return placeholderImage;
}

- (void)setThumbnailImagePlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  artworkView = [thumbnailImageContainerView artworkView];
  [artworkView setPlaceholderImage:placeholderCopy];

  [(VideosExtrasCarouselCollectionViewCell *)self _updateThumbnailArtworkViewBorder];
}

- (void)setThumbnailOverlayImage:(id)image
{
  imageCopy = image;
  thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  [thumbnailImageContainerView setOverlayImage:imageCopy];

  thumbnailImageContainerView2 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  [thumbnailImageContainerView2 setOverlayScale:0.2];
}

- (id)thumbnailImageAccessibilityText
{
  thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  artworkView = [thumbnailImageContainerView artworkView];
  accessibilityLabel = [artworkView accessibilityLabel];

  return accessibilityLabel;
}

- (void)setThumbnailImageAccessibilityText:(id)text
{
  textCopy = text;
  thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  artworkView = [thumbnailImageContainerView artworkView];
  [artworkView setAccessibilityLabel:textCopy];
}

- (id)titleText
{
  titleLabel = [(VideosExtrasCarouselCollectionViewCell *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleLabel = [(VideosExtrasCarouselCollectionViewCell *)self titleLabel];
  [titleLabel setAttributedText:textCopy];
}

- (id)subtitleText
{
  subtitleLabel = [(VideosExtrasCarouselCollectionViewCell *)self subtitleLabel];
  text = [subtitleLabel text];

  return text;
}

- (void)setSubtitleText:(id)text
{
  textCopy = text;
  subtitleLabel = [(VideosExtrasCarouselCollectionViewCell *)self subtitleLabel];
  [subtitleLabel setAttributedText:textCopy];
}

- (id)descriptionText
{
  descriptionLabel = [(VideosExtrasCarouselCollectionViewCell *)self descriptionLabel];
  text = [descriptionLabel text];

  return text;
}

- (void)setDescriptionText:(id)text
{
  textCopy = text;
  descriptionLabel = [(VideosExtrasCarouselCollectionViewCell *)self descriptionLabel];
  [descriptionLabel setAttributedText:textCopy];
}

- (void)setAllowsPinchingThumbnailImageForInteractiveZoomingImageTransition:(BOOL)transition
{
  if (self->_allowsPinchingThumbnailImageForInteractiveZoomingImageTransition != transition)
  {
    self->_allowsPinchingThumbnailImageForInteractiveZoomingImageTransition = transition;
    if (transition)
    {
      pinchGestureRecognizer = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel__handlePinchGesture_];
      thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
      artworkView = [thumbnailImageContainerView artworkView];
      [artworkView addGestureRecognizer:pinchGestureRecognizer];

      [(VideosExtrasCarouselCollectionViewCell *)self setPinchGestureRecognizer:pinchGestureRecognizer];
      v7 = objc_alloc_init(VideosExtrasZoomingImageInteractiveTransitionSourceContext);
      [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v7 setPinchGestureRecognizer:pinchGestureRecognizer];
      [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v7 setItemIndex:[(VideosExtrasCarouselCollectionViewCell *)self itemIndex]];
      [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v7 setSupportedZoomingImageTransitionDirections:3];
      zoomingImageTransitionIdentifier = [(VideosExtrasCarouselCollectionViewCell *)self zoomingImageTransitionIdentifier];
      [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v7 setIdentifier:zoomingImageTransitionIdentifier];

      [(VideosExtrasCarouselCollectionViewCell *)self setInteractiveTransitionSourceContext:v7];
    }

    else
    {
      pinchGestureRecognizer = [(VideosExtrasCarouselCollectionViewCell *)self pinchGestureRecognizer];
      thumbnailImageContainerView2 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
      artworkView2 = [thumbnailImageContainerView2 artworkView];
      [artworkView2 removeGestureRecognizer:pinchGestureRecognizer];

      [pinchGestureRecognizer removeTarget:self action:0];
      [(VideosExtrasCarouselCollectionViewCell *)self setPinchGestureRecognizer:0];
      [(VideosExtrasCarouselCollectionViewCell *)self setInteractiveTransitionSourceContext:0];
    }
  }
}

- (void)setZoomingImageTransitionIdentifier:(id)identifier
{
  if (self->_zoomingImageTransitionIdentifier != identifier)
  {
    identifierCopy = identifier;
    v5 = [identifierCopy copy];
    zoomingImageTransitionIdentifier = self->_zoomingImageTransitionIdentifier;
    self->_zoomingImageTransitionIdentifier = v5;

    interactiveTransitionSourceContext = [(VideosExtrasCarouselCollectionViewCell *)self interactiveTransitionSourceContext];
    [interactiveTransitionSourceContext setIdentifier:identifierCopy];
  }
}

- (CGSize)thumbnailMaxSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setWindowSize:(CGSize)size
{
  width = self->_windowSize.width;
  height = self->_windowSize.height;
  if (width != size.width || height != size.height)
  {
    self->_windowSize = size;
    if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(VideosExtrasCarouselCollectionViewCell *)self _setupThumbnailImageContainerViewWithConstraintsAccumulator:v9];
      [(VideosExtrasCarouselCollectionViewCell *)self _setupTitleLabelWithConstraintsAccumulator:v9];
      [(VideosExtrasCarouselCollectionViewCell *)self _setupSubtitleLabelWithConstraintsAccumulator:v9];
      [(VideosExtrasCarouselCollectionViewCell *)self _setupDescriptionLabelWithConstraintsAccumulator:v9];
      contentView = [(VideosExtrasCarouselCollectionViewCell *)self contentView];
      [contentView addConstraints:v9];
    }

    [(VideosExtrasCarouselCollectionViewCell *)self setNeedsUpdateConstraints];
  }
}

- (double)thumbnailImageContainerHeight
{
  [(VideosExtrasCarouselCollectionViewCell *)self windowSize];
  MPULayoutLinearRelationMake();

  MPULayoutLinearRelationEvaluate();
  return result;
}

- (void)setItemIndex:(unint64_t)index
{
  self->_itemIndex = index;
  interactiveTransitionSourceContext = [(VideosExtrasCarouselCollectionViewCell *)self interactiveTransitionSourceContext];
  [interactiveTransitionSourceContext setItemIndex:index];
}

- (void)_handlePinchGesture:(id)gesture
{
  interactiveTransitionSourceContext = [(VideosExtrasCarouselCollectionViewCell *)self interactiveTransitionSourceContext];
  v4 = [(VideosExtrasCarouselCollectionViewCell *)self targetForAction:sel_handlePinchGestureForZoomingImageInteractiveTransitionWithContext_ withSender:interactiveTransitionSourceContext];
  [v4 handlePinchGestureForZoomingImageInteractiveTransitionWithContext:interactiveTransitionSourceContext];
}

- (double)_descriptionLabelTopInset
{
  [(VideosExtrasCarouselCollectionViewCell *)self windowSize];
  MPULayoutLinearRelationMake();

  MPULayoutLinearRelationEvaluate();
  return result;
}

- (void)_setupThumbnailImageContainerViewWithConstraintsAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  contentView = [(VideosExtrasCarouselCollectionViewCell *)self contentView];
  initForAutolayout = [[VideosExtrasConstrainedArtworkContainerView alloc] initForAutolayout];
  artworkView = [initForAutolayout artworkView];
  [artworkView setDimsWhenHighlighted:1];
  [artworkView setForcesAnimatedUnhighlighting:1];
  [artworkView setMultipleTouchEnabled:1];
  [artworkView setUserInteractionEnabled:1];
  [artworkView setIsAccessibilityElement:1];
  [contentView addSubview:initForAutolayout];
  v7 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:initForAutolayout toView:contentView alongEdges:11 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [(VideosExtrasCarouselCollectionViewCell *)self setThumbnailImageContainerViewConstraints:v7];
  [accumulatorCopy addObjectsFromArray:v7];

  v8 = [MEMORY[0x1E696ACD8] constraintWithItem:initForAutolayout attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
  [initForAutolayout addConstraint:v8];
  [(VideosExtrasCarouselCollectionViewCell *)self setThumbnailImageContainerViewHeightConstraint:v8];
  [(VideosExtrasCarouselCollectionViewCell *)self setThumbnailImageContainerView:initForAutolayout];
}

- (void)_setupTitleLabelWithConstraintsAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  contentView = [(VideosExtrasCarouselCollectionViewCell *)self contentView];
  thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  initForAutolayout = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
  [initForAutolayout MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  v7 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
  [initForAutolayout setFont:v7];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [initForAutolayout setTextColor:whiteColor];

  [contentView insertSubview:initForAutolayout belowSubview:thumbnailImageContainerView];
  LODWORD(v9) = 1144750080;
  [initForAutolayout setContentHuggingPriority:1 forAxis:v9];
  v10 = MEMORY[0x1E69AD980];
  titleTextStyle = [(VideosExtrasCarouselCollectionViewCell *)self titleTextStyle];
  v12 = [v10 constraintWithAutoupdatingBaselineOfView:initForAutolayout relation:0 toView:thumbnailImageContainerView attribute:4 withTextStyle:titleTextStyle multiplier:1.0 nonStandardLeading:34.0];
  [accumulatorCopy addObject:v12];

  v13 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:initForAutolayout toView:contentView alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [accumulatorCopy addObjectsFromArray:v13];

  v14 = [MEMORY[0x1E696ACD8] constraintWithItem:initForAutolayout attribute:4 relatedBy:-1 toItem:contentView attribute:4 multiplier:1.0 constant:0.0];
  [accumulatorCopy addObject:v14];

  [(VideosExtrasCarouselCollectionViewCell *)self setTitleLabel:initForAutolayout];
}

- (void)_setupSubtitleLabelWithConstraintsAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  contentView = [(VideosExtrasCarouselCollectionViewCell *)self contentView];
  thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  initForAutolayout = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
  [initForAutolayout MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  v7 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
  [initForAutolayout setFont:v7];
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
  [initForAutolayout setTextColor:v8];

  [contentView insertSubview:initForAutolayout belowSubview:thumbnailImageContainerView];
  LODWORD(v9) = 1144733696;
  [initForAutolayout setContentHuggingPriority:1 forAxis:v9];
  v10 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:initForAutolayout toView:contentView alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [accumulatorCopy addObjectsFromArray:v10];

  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:initForAutolayout attribute:4 relatedBy:-1 toItem:contentView attribute:4 multiplier:1.0 constant:0.0];
  [accumulatorCopy addObject:v11];

  [(VideosExtrasCarouselCollectionViewCell *)self setSubtitleLabel:initForAutolayout];
}

- (void)_setupDescriptionLabelWithConstraintsAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  contentView = [(VideosExtrasCarouselCollectionViewCell *)self contentView];
  initForAutolayout = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
  [initForAutolayout MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  v6 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
  [initForAutolayout setFont:v6];
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.7 alpha:1.0];
  [initForAutolayout setTextColor:v7];

  [initForAutolayout setNumberOfLines:0];
  thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  [contentView insertSubview:initForAutolayout belowSubview:thumbnailImageContainerView];

  LODWORD(v9) = 1144717312;
  [initForAutolayout setContentHuggingPriority:1 forAxis:v9];
  v10 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:initForAutolayout toView:contentView alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [accumulatorCopy addObjectsFromArray:v10];

  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:initForAutolayout attribute:4 relatedBy:-1 toItem:contentView attribute:4 multiplier:1.0 constant:0.0];
  [accumulatorCopy addObject:v11];

  [(VideosExtrasCarouselCollectionViewCell *)self setDescriptionLabel:initForAutolayout];
}

- (void)_updateThumbnailArtworkViewBorder
{
  thumbnailImageContainerView = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  artworkView = [thumbnailImageContainerView artworkView];

  image = [artworkView image];

  layer = [artworkView layer];
  v5 = layer;
  if (image)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    [v5 setBorderWidth:1.0 / v7];
  }

  else
  {
    [layer setBorderWidth:0.0];
  }
}

- (CGSize)windowSize
{
  width = self->_windowSize.width;
  height = self->_windowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end