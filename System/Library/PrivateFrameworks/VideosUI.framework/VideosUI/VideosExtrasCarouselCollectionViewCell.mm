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
- (void)_handlePinchGesture:(id)a3;
- (void)_setupDescriptionLabelWithConstraintsAccumulator:(id)a3;
- (void)_setupSubtitleLabelWithConstraintsAccumulator:(id)a3;
- (void)_setupThumbnailImageContainerViewWithConstraintsAccumulator:(id)a3;
- (void)_setupTitleLabelWithConstraintsAccumulator:(id)a3;
- (void)_updateThumbnailArtworkViewBorder;
- (void)dealloc;
- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4;
- (void)performZoomingImageTransitionWithContext:(id)a3;
- (void)prepareForReuse;
- (void)prepareZoomingImageTransitionWithContext:(id)a3;
- (void)setAllowsPinchingThumbnailImageForInteractiveZoomingImageTransition:(BOOL)a3;
- (void)setDescriptionText:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setItemIndex:(unint64_t)a3;
- (void)setSubtitleText:(id)a3;
- (void)setThumbnailBorderColor:(id)a3;
- (void)setThumbnailImage:(id)a3;
- (void)setThumbnailImageAccessibilityText:(id)a3;
- (void)setThumbnailImagePlaceholder:(id)a3;
- (void)setThumbnailOverlayImage:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setWindowSize:(CGSize)a3;
- (void)setZoomingImageTransitionIdentifier:(id)a3;
- (void)updateConstraints;
@end

@implementation VideosExtrasCarouselCollectionViewCell

- (void)dealloc
{
  v3 = [(VideosExtrasCarouselCollectionViewCell *)self pinchGestureRecognizer];
  [v3 removeTarget:self action:0];

  v4.receiver = self;
  v4.super_class = VideosExtrasCarouselCollectionViewCell;
  [(VideosExtrasCarouselCollectionViewCell *)&v4 dealloc];
}

- (void)updateConstraints
{
  v3 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerViewHeightConstraint];
  [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerHeight];
  [v3 setConstant:?];

  v4 = [(VideosExtrasCarouselCollectionViewCell *)self contentView];
  v5 = [(VideosExtrasCarouselCollectionViewCell *)self titleLabel];
  v6 = [(VideosExtrasCarouselCollectionViewCell *)self subtitleLabel];
  v54 = [(VideosExtrasCarouselCollectionViewCell *)self descriptionLabel];
  v7 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  v8 = [v5 text];
  v53 = v5;
  if ([v8 length])
  {

    v9 = 11;
  }

  else
  {
    v10 = [v5 attributedText];
    v11 = [v10 length];

    if (v11)
    {
      v9 = 11;
    }

    else
    {
      v5 = v7;
      v9 = 4;
    }
  }

  v12 = v5;
  v13 = [(VideosExtrasCarouselCollectionViewCell *)self subtitleBaselineConstraint];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 secondItem];
    v16 = v15;
    if (v15 == v12)
    {
      v17 = [v14 secondAttribute];

      if (v17 == v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    [v4 removeConstraint:v14];

    [(VideosExtrasCarouselCollectionViewCell *)self setSubtitleBaselineConstraint:0];
  }

  v18 = MEMORY[0x1E69AD980];
  v19 = [(VideosExtrasCarouselCollectionViewCell *)self subtitleTextStyle];
  v14 = [v18 constraintWithAutoupdatingBaselineOfView:v6 toView:v12 attribute:v9 withTextStyle:v19 nonStandardLeading:25.0];

  [v4 addConstraint:v14];
  [(VideosExtrasCarouselCollectionViewCell *)self setSubtitleBaselineConstraint:v14];
LABEL_12:
  v20 = [v6 text];
  v51 = v7;
  v52 = v6;
  if ([v20 length])
  {
    v21 = v6;
LABEL_14:

    v22 = 11;
    goto LABEL_17;
  }

  v23 = [v6 attributedText];
  v24 = [v23 length];

  if (v24)
  {
    v22 = 11;
    v21 = v6;
  }

  else
  {
    v21 = v53;
    v20 = [v53 text];
    if ([v20 length])
    {
      goto LABEL_14;
    }

    v38 = [v53 attributedText];
    v39 = [v38 length];

    if (v39)
    {
      v22 = 11;
    }

    else
    {
      v21 = v7;
      v22 = 4;
    }
  }

LABEL_17:
  v25 = v21;
  v26 = [(VideosExtrasCarouselCollectionViewCell *)self descriptionLabelBaselineConstraint];
  v27 = v12;
  if (v26)
  {
    v28 = v26;
    v29 = [v26 secondItem];
    v30 = v29;
    if (v29 == v25)
    {
      v31 = [v28 secondAttribute];

      if (v31 == v22)
      {
        v32 = v27;
        goto LABEL_24;
      }
    }

    else
    {
    }

    [v4 removeConstraint:v28];

    [(VideosExtrasCarouselCollectionViewCell *)self setDescriptionLabelBaselineConstraint:0];
  }

  v33 = MEMORY[0x1E69AD980];
  v34 = [(VideosExtrasCarouselCollectionViewCell *)self descriptionTextStyle];
  v28 = [v33 constraintWithAutoupdatingBaselineOfView:v54 toView:v25 attribute:v22 withTextStyle:v34 nonStandardLeading:40.0];

  v32 = v27;
  [v4 addConstraint:v28];
  [(VideosExtrasCarouselCollectionViewCell *)self setDescriptionLabelBaselineConstraint:v28];
LABEL_24:
  v35 = v53;
  v36 = [v53 text];
  if (![v36 length])
  {
    v50 = [v53 attributedText];
    if ([v50 length])
    {
LABEL_27:
      v37 = v52;
LABEL_37:
      v42 = v50;
LABEL_38:

      goto LABEL_39;
    }

    v40 = [v52 text];
    if ([v40 length])
    {

      v37 = v52;
    }

    else
    {
      v41 = [v52 attributedText];
      if (![v41 length])
      {
        v49 = v41;
        v48 = [v54 text];
        v35 = v53;
        if (![v48 length])
        {
          v43 = [v54 attributedText];
          v47 = [v43 length];

          v32 = v27;
          v37 = v52;
          if (v47)
          {
            goto LABEL_40;
          }

          v44 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerViewConstraints];
          [v4 removeConstraints:v44];

          v45 = MEMORY[0x1E696ACD8];
          v36 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
          v46 = v45;
          v35 = v53;
          v42 = [v46 constraintsByAttachingView:v36 toView:v4 alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
          [v4 addConstraints:v42];
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

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = VideosExtrasCarouselCollectionViewCell;
  [(VideosExtrasCarouselCollectionViewCell *)&v7 setHighlighted:?];
  v5 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  v6 = [v5 artworkView];
  [v6 setHighlighted:v3 animated:v3 ^ 1];
}

- (void)prepareZoomingImageTransitionWithContext:(id)a3
{
  v7 = a3;
  v4 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  v5 = [v4 artworkView];

  if ([v7 appearState] == 1)
  {
    v6 = [v7 zoomingImageView];
    [v6 replicateStateFromImageView:v5];
  }

  [v5 setHidden:1];
}

- (void)performZoomingImageTransitionWithContext:(id)a3
{
  v7 = a3;
  if (![v7 appearState])
  {
    v4 = [v7 zoomingImageView];
    v5 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
    v6 = [v5 artworkView];
    [v4 replicateStateFromImageView:v6];
  }
}

- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4
{
  v5 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView:a3];
  v4 = [v5 artworkView];
  [v4 setHidden:0];
}

- (id)thumbnailImage
{
  v2 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  v3 = [v2 artworkView];
  v4 = [v3 image];

  return v4;
}

- (void)setThumbnailImage:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  v6 = [v5 artworkView];
  [v6 setImage:v4];

  [(VideosExtrasCarouselCollectionViewCell *)self _updateThumbnailArtworkViewBorder];
}

- (void)setThumbnailBorderColor:(id)a3
{
  v4 = a3;
  v8 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  v5 = [v8 artworkView];
  v6 = [v5 layer];
  v7 = [v4 CGColor];

  [v6 setBorderColor:v7];
}

- (id)thumbnailImagePlaceholder
{
  v2 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  v3 = [v2 artworkView];
  v4 = [v3 placeholderImage];

  return v4;
}

- (void)setThumbnailImagePlaceholder:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  v6 = [v5 artworkView];
  [v6 setPlaceholderImage:v4];

  [(VideosExtrasCarouselCollectionViewCell *)self _updateThumbnailArtworkViewBorder];
}

- (void)setThumbnailOverlayImage:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  [v5 setOverlayImage:v4];

  v6 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  [v6 setOverlayScale:0.2];
}

- (id)thumbnailImageAccessibilityText
{
  v2 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  v3 = [v2 artworkView];
  v4 = [v3 accessibilityLabel];

  return v4;
}

- (void)setThumbnailImageAccessibilityText:(id)a3
{
  v4 = a3;
  v6 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  v5 = [v6 artworkView];
  [v5 setAccessibilityLabel:v4];
}

- (id)titleText
{
  v2 = [(VideosExtrasCarouselCollectionViewCell *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasCarouselCollectionViewCell *)self titleLabel];
  [v5 setAttributedText:v4];
}

- (id)subtitleText
{
  v2 = [(VideosExtrasCarouselCollectionViewCell *)self subtitleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setSubtitleText:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasCarouselCollectionViewCell *)self subtitleLabel];
  [v5 setAttributedText:v4];
}

- (id)descriptionText
{
  v2 = [(VideosExtrasCarouselCollectionViewCell *)self descriptionLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setDescriptionText:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasCarouselCollectionViewCell *)self descriptionLabel];
  [v5 setAttributedText:v4];
}

- (void)setAllowsPinchingThumbnailImageForInteractiveZoomingImageTransition:(BOOL)a3
{
  if (self->_allowsPinchingThumbnailImageForInteractiveZoomingImageTransition != a3)
  {
    self->_allowsPinchingThumbnailImageForInteractiveZoomingImageTransition = a3;
    if (a3)
    {
      v11 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel__handlePinchGesture_];
      v5 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
      v6 = [v5 artworkView];
      [v6 addGestureRecognizer:v11];

      [(VideosExtrasCarouselCollectionViewCell *)self setPinchGestureRecognizer:v11];
      v7 = objc_alloc_init(VideosExtrasZoomingImageInteractiveTransitionSourceContext);
      [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v7 setPinchGestureRecognizer:v11];
      [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v7 setItemIndex:[(VideosExtrasCarouselCollectionViewCell *)self itemIndex]];
      [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v7 setSupportedZoomingImageTransitionDirections:3];
      v8 = [(VideosExtrasCarouselCollectionViewCell *)self zoomingImageTransitionIdentifier];
      [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v7 setIdentifier:v8];

      [(VideosExtrasCarouselCollectionViewCell *)self setInteractiveTransitionSourceContext:v7];
    }

    else
    {
      v11 = [(VideosExtrasCarouselCollectionViewCell *)self pinchGestureRecognizer];
      v9 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
      v10 = [v9 artworkView];
      [v10 removeGestureRecognizer:v11];

      [v11 removeTarget:self action:0];
      [(VideosExtrasCarouselCollectionViewCell *)self setPinchGestureRecognizer:0];
      [(VideosExtrasCarouselCollectionViewCell *)self setInteractiveTransitionSourceContext:0];
    }
  }
}

- (void)setZoomingImageTransitionIdentifier:(id)a3
{
  if (self->_zoomingImageTransitionIdentifier != a3)
  {
    v4 = a3;
    v5 = [v4 copy];
    zoomingImageTransitionIdentifier = self->_zoomingImageTransitionIdentifier;
    self->_zoomingImageTransitionIdentifier = v5;

    v7 = [(VideosExtrasCarouselCollectionViewCell *)self interactiveTransitionSourceContext];
    [v7 setIdentifier:v4];
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

- (void)setWindowSize:(CGSize)a3
{
  width = self->_windowSize.width;
  height = self->_windowSize.height;
  if (width != a3.width || height != a3.height)
  {
    self->_windowSize = a3;
    if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(VideosExtrasCarouselCollectionViewCell *)self _setupThumbnailImageContainerViewWithConstraintsAccumulator:v9];
      [(VideosExtrasCarouselCollectionViewCell *)self _setupTitleLabelWithConstraintsAccumulator:v9];
      [(VideosExtrasCarouselCollectionViewCell *)self _setupSubtitleLabelWithConstraintsAccumulator:v9];
      [(VideosExtrasCarouselCollectionViewCell *)self _setupDescriptionLabelWithConstraintsAccumulator:v9];
      v10 = [(VideosExtrasCarouselCollectionViewCell *)self contentView];
      [v10 addConstraints:v9];
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

- (void)setItemIndex:(unint64_t)a3
{
  self->_itemIndex = a3;
  v4 = [(VideosExtrasCarouselCollectionViewCell *)self interactiveTransitionSourceContext];
  [v4 setItemIndex:a3];
}

- (void)_handlePinchGesture:(id)a3
{
  v5 = [(VideosExtrasCarouselCollectionViewCell *)self interactiveTransitionSourceContext];
  v4 = [(VideosExtrasCarouselCollectionViewCell *)self targetForAction:sel_handlePinchGestureForZoomingImageInteractiveTransitionWithContext_ withSender:v5];
  [v4 handlePinchGestureForZoomingImageInteractiveTransitionWithContext:v5];
}

- (double)_descriptionLabelTopInset
{
  [(VideosExtrasCarouselCollectionViewCell *)self windowSize];
  MPULayoutLinearRelationMake();

  MPULayoutLinearRelationEvaluate();
  return result;
}

- (void)_setupThumbnailImageContainerViewWithConstraintsAccumulator:(id)a3
{
  v4 = a3;
  v9 = [(VideosExtrasCarouselCollectionViewCell *)self contentView];
  v5 = [[VideosExtrasConstrainedArtworkContainerView alloc] initForAutolayout];
  v6 = [v5 artworkView];
  [v6 setDimsWhenHighlighted:1];
  [v6 setForcesAnimatedUnhighlighting:1];
  [v6 setMultipleTouchEnabled:1];
  [v6 setUserInteractionEnabled:1];
  [v6 setIsAccessibilityElement:1];
  [v9 addSubview:v5];
  v7 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v5 toView:v9 alongEdges:11 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [(VideosExtrasCarouselCollectionViewCell *)self setThumbnailImageContainerViewConstraints:v7];
  [v4 addObjectsFromArray:v7];

  v8 = [MEMORY[0x1E696ACD8] constraintWithItem:v5 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
  [v5 addConstraint:v8];
  [(VideosExtrasCarouselCollectionViewCell *)self setThumbnailImageContainerViewHeightConstraint:v8];
  [(VideosExtrasCarouselCollectionViewCell *)self setThumbnailImageContainerView:v5];
}

- (void)_setupTitleLabelWithConstraintsAccumulator:(id)a3
{
  v4 = a3;
  v15 = [(VideosExtrasCarouselCollectionViewCell *)self contentView];
  v5 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  v6 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
  [v6 MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  v7 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
  [v6 setFont:v7];
  v8 = [MEMORY[0x1E69DC888] whiteColor];
  [v6 setTextColor:v8];

  [v15 insertSubview:v6 belowSubview:v5];
  LODWORD(v9) = 1144750080;
  [v6 setContentHuggingPriority:1 forAxis:v9];
  v10 = MEMORY[0x1E69AD980];
  v11 = [(VideosExtrasCarouselCollectionViewCell *)self titleTextStyle];
  v12 = [v10 constraintWithAutoupdatingBaselineOfView:v6 relation:0 toView:v5 attribute:4 withTextStyle:v11 multiplier:1.0 nonStandardLeading:34.0];
  [v4 addObject:v12];

  v13 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v6 toView:v15 alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v4 addObjectsFromArray:v13];

  v14 = [MEMORY[0x1E696ACD8] constraintWithItem:v6 attribute:4 relatedBy:-1 toItem:v15 attribute:4 multiplier:1.0 constant:0.0];
  [v4 addObject:v14];

  [(VideosExtrasCarouselCollectionViewCell *)self setTitleLabel:v6];
}

- (void)_setupSubtitleLabelWithConstraintsAccumulator:(id)a3
{
  v4 = a3;
  v12 = [(VideosExtrasCarouselCollectionViewCell *)self contentView];
  v5 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  v6 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
  [v6 MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  v7 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
  [v6 setFont:v7];
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
  [v6 setTextColor:v8];

  [v12 insertSubview:v6 belowSubview:v5];
  LODWORD(v9) = 1144733696;
  [v6 setContentHuggingPriority:1 forAxis:v9];
  v10 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v6 toView:v12 alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v4 addObjectsFromArray:v10];

  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:v6 attribute:4 relatedBy:-1 toItem:v12 attribute:4 multiplier:1.0 constant:0.0];
  [v4 addObject:v11];

  [(VideosExtrasCarouselCollectionViewCell *)self setSubtitleLabel:v6];
}

- (void)_setupDescriptionLabelWithConstraintsAccumulator:(id)a3
{
  v4 = a3;
  v12 = [(VideosExtrasCarouselCollectionViewCell *)self contentView];
  v5 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
  [v5 MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  v6 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
  [v5 setFont:v6];
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.7 alpha:1.0];
  [v5 setTextColor:v7];

  [v5 setNumberOfLines:0];
  v8 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  [v12 insertSubview:v5 belowSubview:v8];

  LODWORD(v9) = 1144717312;
  [v5 setContentHuggingPriority:1 forAxis:v9];
  v10 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v5 toView:v12 alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v4 addObjectsFromArray:v10];

  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:v5 attribute:4 relatedBy:-1 toItem:v12 attribute:4 multiplier:1.0 constant:0.0];
  [v4 addObject:v11];

  [(VideosExtrasCarouselCollectionViewCell *)self setDescriptionLabel:v5];
}

- (void)_updateThumbnailArtworkViewBorder
{
  v2 = [(VideosExtrasCarouselCollectionViewCell *)self thumbnailImageContainerView];
  v8 = [v2 artworkView];

  v3 = [v8 image];

  v4 = [v8 layer];
  v5 = v4;
  if (v3)
  {
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 scale];
    [v5 setBorderWidth:1.0 / v7];
  }

  else
  {
    [v4 setBorderWidth:0.0];
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