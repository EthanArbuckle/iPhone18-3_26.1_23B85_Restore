@interface VideosExtrasImageViewController
- (BOOL)prefersStatusBarHidden;
- (UIImage)image;
- (void)_handleDoubleTap:(id)a3;
- (void)_handlePinch:(id)a3;
- (void)_handleSingleTap:(id)a3;
- (void)dealloc;
- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4;
- (void)performZoomingImageTransitionWithContext:(id)a3;
- (void)prepareZoomingImageTransitionWithContext:(id)a3;
- (void)setAllowsPinchingImageForInteractiveZoomingImageTransition:(BOOL)a3;
- (void)setDescriptionString:(id)a3;
- (void)setImage:(id)a3;
- (void)setImageIndex:(unint64_t)a3;
- (void)setOverlayHidden:(BOOL)a3;
- (void)setSubtitleString:(id)a3;
- (void)setTitleString:(id)a3;
- (void)setZoomingImageTransitionIdentifier:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation VideosExtrasImageViewController

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(VideosExtrasImageViewController *)self gestureRecognizers];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeTarget:self action:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = VideosExtrasImageViewController;
  [(VideosExtrasImageViewController *)&v8 dealloc];
}

- (BOOL)prefersStatusBarHidden
{
  v2 = [(VideosExtrasImageViewController *)self navigationController];
  v3 = [v2 isNavigationBarHidden];

  return v3;
}

- (void)viewDidLoad
{
  v53.receiver = self;
  v53.super_class = VideosExtrasImageViewController;
  [(VideosExtrasImageViewController *)&v53 viewDidLoad];
  v3 = [(VideosExtrasImageViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = objc_alloc_init(VideosExtrasZoomableImageView);
  [(VideosExtrasZoomableImageView *)v12 setFrame:v5, v7, v9, v11];
  [(VideosExtrasZoomableImageView *)v12 setAutoresizingMask:18];
  v13 = v3;
  [v3 addSubview:v12];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleDoubleTap_];
  [v15 setNumberOfTapsRequired:2];
  [(VideosExtrasZoomableImageView *)v12 addGestureRecognizer:v15];
  [v14 addObject:v15];
  v16 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleSingleTap_];
  v49 = v15;
  [v16 requireGestureRecognizerToFail:v15];
  [(VideosExtrasZoomableImageView *)v12 addGestureRecognizer:v16];
  v48 = v16;
  [v14 addObject:v16];
  if ([(VideosExtrasImageViewController *)self allowsPinchingImageForInteractiveZoomingImageTransition])
  {
    v17 = [(VideosExtrasZoomableImageView *)v12 pinchGestureRecognizer];
    [v17 addTarget:self action:sel__handlePinch_];
    [v14 addObject:v17];
  }

  [(VideosExtrasImageViewController *)self setGestureRecognizers:v14];
  v47 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [v47 sizeToFit];
  v54.origin.x = v5;
  v54.origin.y = v7;
  v54.size.width = v9;
  v54.size.height = v11;
  MidX = CGRectGetMidX(v54);
  v55.origin.x = v5;
  v55.origin.y = v7;
  v55.size.width = v9;
  v55.size.height = v11;
  [v47 setCenter:{MidX, CGRectGetMidY(v55)}];
  [v47 setAutoresizingMask:45];
  [v13 addSubview:v47];
  [v47 startAnimating];
  [(VideosExtrasImageViewController *)self setActivityIndicatorView:v47];
  v45 = v12;
  [(VideosExtrasImageViewController *)self setZoomableImageView:v12];
  v19 = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
  [v13 addSubview:v19];
  v20 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
  [v20 MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  [v20 setNumberOfLines:0];
  LODWORD(v21) = 1148846080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v21];
  v44 = v20;
  [v19 addSubview:v20];
  v22 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
  [v22 MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  [v22 setNumberOfLines:0];
  LODWORD(v23) = 1148829696;
  [v22 setContentCompressionResistancePriority:1 forAxis:v23];
  [v19 addSubview:v22];
  v46 = v14;
  v24 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
  [v24 MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  [v24 setNumberOfLines:0];
  LODWORD(v25) = 1148813312;
  [v24 setContentCompressionResistancePriority:1 forAxis:v25];
  [v19 addSubview:v24];
  v26 = *MEMORY[0x1E69DDCE0];
  v27 = *(MEMORY[0x1E69DDCE0] + 8);
  v28 = *(MEMORY[0x1E69DDCE0] + 16);
  v29 = *(MEMORY[0x1E69DDCE0] + 24);
  v52 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v20 toView:v19 alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], v27, v28, v29}];
  v51 = [MEMORY[0x1E696ACD8] constraintWithItem:v20 attribute:3 relatedBy:1 toItem:v19 attribute:3 multiplier:1.0 constant:0.0];
  v50 = [MEMORY[0x1E696ACD8] constraintWithItem:v20 attribute:11 relatedBy:-1 toItem:v19 attribute:4 multiplier:1.0 constant:0.0];
  v42 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v22 toView:v19 alongEdges:10 insets:{v26, v27, v28, v29}];
  v43 = v22;
  v41 = [MEMORY[0x1E696ACD8] constraintWithItem:v22 attribute:3 relatedBy:1 toItem:v19 attribute:3 multiplier:1.0 constant:0.0];
  v40 = [MEMORY[0x1E696ACD8] constraintWithItem:v22 attribute:11 relatedBy:-1 toItem:v19 attribute:4 multiplier:1.0 constant:0.0];
  v39 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v24 toView:v19 alongEdges:10 insets:{v26, v27, v28, v29}];
  v38 = [MEMORY[0x1E696ACD8] constraintWithItem:v24 attribute:3 relatedBy:1 toItem:v19 attribute:3 multiplier:1.0 constant:0.0];
  v30 = [MEMORY[0x1E696ACD8] constraintWithItem:v24 attribute:11 relatedBy:-1 toItem:v19 attribute:4 multiplier:1.0 constant:0.0];
  [v19 addConstraints:v52];
  [v19 addConstraint:v51];
  [v19 addConstraint:v50];
  [v19 addConstraints:v42];
  [v19 addConstraint:v41];
  [v19 addConstraint:v40];
  [v19 addConstraints:v39];
  [v19 addConstraint:v38];
  v31 = v30;
  [v19 addConstraint:v30];
  v32 = [MEMORY[0x1E696ACD8] constraintWithItem:v19 attribute:9 relatedBy:0 toItem:v13 attribute:9 multiplier:1.0 constant:0.0];
  v33 = [MEMORY[0x1E696ACD8] constraintWithItem:v19 attribute:7 relatedBy:0 toItem:v13 attribute:7 multiplier:0.75 constant:0.0];
  v34 = MEMORY[0x1E696ACD8];
  v35 = [(VideosExtrasImageViewController *)self view];
  v36 = [v35 safeAreaLayoutGuide];
  v37 = [v34 constraintWithItem:v19 attribute:4 relatedBy:0 toItem:v36 attribute:4 multiplier:1.0 constant:-20.0];

  [v13 addConstraint:v32];
  [v13 addConstraint:v33];
  [v13 addConstraint:v37];
  [(VideosExtrasImageViewController *)self setTextContainmentView:v19];
  [(VideosExtrasImageViewController *)self setTitleLabel:v44];
  [(VideosExtrasImageViewController *)self setSubtitleLabel:v43];
  [(VideosExtrasImageViewController *)self setDescriptionLabel:v24];
}

- (void)updateViewConstraints
{
  v3 = [(VideosExtrasImageViewController *)self view];
  v4 = [(VideosExtrasImageViewController *)self titleLabel];
  v5 = [(VideosExtrasImageViewController *)self subtitleLabel];
  v6 = [(VideosExtrasImageViewController *)self descriptionLabel];
  v7 = [v4 attributedText];
  if ([v7 length])
  {
    goto LABEL_4;
  }

  v8 = [v5 attributedText];
  if ([v8 length])
  {

LABEL_4:
    goto LABEL_5;
  }

  v51 = [v6 attributedText];
  v52 = [v51 length];

  if (v52)
  {
LABEL_5:
    v9 = [v6 attributedText];
    v10 = [v9 length];

    v11 = MEMORY[0x1E69DDD08];
    v12 = v6;
    if (!v10)
    {
      v13 = [v5 attributedText];
      v14 = [v13 length];

      if (v14)
      {
        v12 = v5;
      }

      else
      {
        v12 = v4;
      }

      if (v14)
      {
        v11 = MEMORY[0x1E69DDD00];
      }

      else
      {
        v11 = MEMORY[0x1E69DDCF8];
      }
    }

    v15 = v12;
    v16 = *v11;
    v17 = [(VideosExtrasImageViewController *)self bottomLabelConstraint];
    if (v17)
    {
      v18 = v17;
      v19 = v16;
      v65 = v5;
      v20 = v4;
      v21 = v3;
      v22 = v6;
      v23 = [(VideosExtrasImageViewController *)self bottomLabelConstraint];
      v24 = [v23 firstItem];
      v25 = v24;
      if (v24 == v15)
      {
        [(VideosExtrasImageViewController *)self bottomLabelConstraint];
        v26 = v64 = v15;
        v27 = [v26 textStyle];
        v63 = [v27 isEqualToString:v19];

        v15 = v64;
        v16 = v19;

        v6 = v22;
        v3 = v21;
        v4 = v20;
        v5 = v65;
        if (v63)
        {
          goto LABEL_17;
        }
      }

      else
      {

        v6 = v22;
        v3 = v21;
        v4 = v20;
        v5 = v65;
        v16 = v19;
      }

      v28 = [(VideosExtrasImageViewController *)self bottomLabelConstraint];
      [v3 removeConstraint:v28];

      [(VideosExtrasImageViewController *)self setBottomLabelConstraint:0];
    }

LABEL_17:
    v29 = [(VideosExtrasImageViewController *)self bottomLabelConstraint];

    if (!v29)
    {
      v30 = MEMORY[0x1E69AD980];
      v31 = [(VideosExtrasImageViewController *)self textContainmentView];
      v32 = [v30 contentSizeAutoupdatingConstraintWithItem:v15 attribute:11 relatedBy:0 toItem:v31 attribute:4 multiplier:v16 textStyle:1.0 defaultSizeConstant:-10.0];
      [(VideosExtrasImageViewController *)self setBottomLabelConstraint:v32];

      v33 = [(VideosExtrasImageViewController *)self bottomLabelConstraint];
      [v3 addConstraint:v33];
    }

    v34 = [v4 attributedText];
    if ([v34 length])
    {
      v35 = [v5 attributedText];
      v36 = [v35 length];

      if (v36)
      {
LABEL_24:
        v38 = [(VideosExtrasImageViewController *)self subtitleLeadingConstraint];
        if (!v38)
        {
          v38 = [v4 attributedText];
          if ([v38 length])
          {
            v48 = [v5 attributedText];
            v49 = [v48 length];

            if (!v49)
            {
              goto LABEL_26;
            }

            v50 = [MEMORY[0x1E69AD980] constraintWithAutoupdatingBaselineOfView:v5 toView:v4 attribute:11 withTextStyle:*MEMORY[0x1E69DDD00] nonStandardLeading:25.0];
            [(VideosExtrasImageViewController *)self setSubtitleLeadingConstraint:v50];

            v38 = [(VideosExtrasImageViewController *)self subtitleLeadingConstraint];
            [v3 addConstraint:v38];
          }
        }

LABEL_26:
        v39 = [v5 attributedText];
        v40 = [v39 length];

        v41 = v5;
        if (v40 || ([v4 attributedText], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "length"), v42, v41 = v4, v43))
        {
          v44 = v41;
          if (v44)
          {
            v45 = [(VideosExtrasImageViewController *)self descriptionLeadingConstraint];
            v46 = [v45 secondItem];

            if (v46 == v44)
            {
              goto LABEL_44;
            }

            v47 = 0;
LABEL_43:
            v59 = [(VideosExtrasImageViewController *)self descriptionLeadingConstraint];
            [v3 removeConstraint:v59];

            [(VideosExtrasImageViewController *)self setDescriptionLeadingConstraint:0];
            if (v47)
            {
LABEL_46:

              goto LABEL_47;
            }

LABEL_44:
            v60 = [(VideosExtrasImageViewController *)self descriptionLeadingConstraint];

            if (!v60)
            {
              v61 = [MEMORY[0x1E69AD980] constraintWithAutoupdatingBaselineOfView:v6 toView:v44 attribute:11 withTextStyle:*MEMORY[0x1E69DDD08] nonStandardLeading:30.0];
              [(VideosExtrasImageViewController *)self setDescriptionLeadingConstraint:v61];

              v62 = [(VideosExtrasImageViewController *)self descriptionLeadingConstraint];
              [v3 addConstraint:v62];
            }

            goto LABEL_46;
          }
        }

        else
        {
          v44 = 0;
        }

        v47 = 1;
        goto LABEL_43;
      }
    }

    else
    {
    }

    v37 = [(VideosExtrasImageViewController *)self subtitleLeadingConstraint];
    [v3 removeConstraint:v37];

    [(VideosExtrasImageViewController *)self setSubtitleLeadingConstraint:0];
    goto LABEL_24;
  }

  v53 = [(VideosExtrasImageViewController *)self bottomLabelConstraint];

  if (v53)
  {
    v54 = [(VideosExtrasImageViewController *)self bottomLabelConstraint];
    [v3 removeConstraint:v54];

    [(VideosExtrasImageViewController *)self setBottomLabelConstraint:0];
  }

  v55 = [(VideosExtrasImageViewController *)self subtitleLeadingConstraint];

  if (v55)
  {
    v56 = [(VideosExtrasImageViewController *)self subtitleLeadingConstraint];
    [v3 removeConstraint:v56];

    [(VideosExtrasImageViewController *)self setSubtitleLeadingConstraint:0];
  }

  v57 = [(VideosExtrasImageViewController *)self descriptionLeadingConstraint];

  if (v57)
  {
    v58 = [(VideosExtrasImageViewController *)self descriptionLeadingConstraint];
    [v3 removeConstraint:v58];

    [(VideosExtrasImageViewController *)self setDescriptionLeadingConstraint:0];
  }

LABEL_47:
  v66.receiver = self;
  v66.super_class = VideosExtrasImageViewController;
  [(VideosExtrasImageViewController *)&v66 updateViewConstraints];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VideosExtrasImageViewController;
  [(VideosExtrasImageViewController *)&v4 viewWillAppear:a3];
  [(VideosExtrasImageViewController *)self setOverlayHidden:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = VideosExtrasImageViewController;
  [(VideosExtrasImageViewController *)&v6 viewDidAppear:a3];
  v4 = [(VideosExtrasImageViewController *)self view];
  v5 = [(VideosExtrasImageViewController *)self titleLabel];
  [v4 bringSubviewToFront:v5];
}

- (void)prepareZoomingImageTransitionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasImageViewController *)self zoomableImageView];
  [v5 prepareZoomingImageTransitionWithContext:v4];

  v6 = [v4 appearState];
  if (v6 == 1)
  {

    [(VideosExtrasImageViewController *)self setOverlayHidden:0];
  }
}

- (void)performZoomingImageTransitionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasImageViewController *)self zoomableImageView];
  [v5 performZoomingImageTransitionWithContext:v4];
}

- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(VideosExtrasImageViewController *)self zoomableImageView];
  [v7 finalizeZoomingImageTransitionWithContext:v6 transitionFinished:v4];
}

- (UIImage)image
{
  v2 = [(VideosExtrasImageViewController *)self zoomableImageView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3
{
  v8 = a3;
  if (([(VideosExtrasImageViewController *)self isViewLoaded]& 1) == 0)
  {
    v4 = [(VideosExtrasImageViewController *)self view];
  }

  v5 = [(VideosExtrasImageViewController *)self zoomableImageView];
  v6 = [v5 image];

  if (v6 != v8)
  {
    [v5 setImage:v8];
    v7 = [(VideosExtrasImageViewController *)self activityIndicatorView];
    if ((((v8 != 0) ^ [v7 isAnimating]) & 1) == 0)
    {
      if (v8)
      {
        [v7 stopAnimating];
      }

      else
      {
        [v7 startAnimating];
      }
    }
  }
}

- (void)setTitleString:(id)a3
{
  v6 = a3;
  if (([(VideosExtrasImageViewController *)self isViewLoaded]& 1) == 0)
  {
    v4 = [(VideosExtrasImageViewController *)self view];
  }

  [(UILabel *)self->_titleLabel setAttributedText:v6];
  v5 = [(VideosExtrasImageViewController *)self view];
  [v5 setNeedsUpdateConstraints];
}

- (void)setSubtitleString:(id)a3
{
  v6 = a3;
  if (([(VideosExtrasImageViewController *)self isViewLoaded]& 1) == 0)
  {
    v4 = [(VideosExtrasImageViewController *)self view];
  }

  [(UILabel *)self->_subtitleLabel setAttributedText:v6];
  v5 = [(VideosExtrasImageViewController *)self view];
  [v5 setNeedsUpdateConstraints];
}

- (void)setDescriptionString:(id)a3
{
  v6 = a3;
  if (([(VideosExtrasImageViewController *)self isViewLoaded]& 1) == 0)
  {
    v4 = [(VideosExtrasImageViewController *)self view];
  }

  [(UILabel *)self->_descriptionLabel setAttributedText:v6];
  v5 = [(VideosExtrasImageViewController *)self view];
  [v5 setNeedsUpdateConstraints];
}

- (void)setImageIndex:(unint64_t)a3
{
  self->_imageIndex = a3;
  v4 = [(VideosExtrasImageViewController *)self interactiveTransitionSourceContext];
  [v4 setItemIndex:a3];
}

- (void)setAllowsPinchingImageForInteractiveZoomingImageTransition:(BOOL)a3
{
  if (self->_allowsPinchingImageForInteractiveZoomingImageTransition != a3)
  {
    v4 = a3;
    self->_allowsPinchingImageForInteractiveZoomingImageTransition = a3;
    v6 = [(VideosExtrasImageViewController *)self zoomableImageView];
    v10 = [v6 pinchGestureRecognizer];

    if (v10)
    {
      if (v4)
      {
        [v10 addTarget:self action:sel__handlePinch_];
        v7 = [(VideosExtrasImageViewController *)self gestureRecognizers];
        v8 = [v7 arrayByAddingObject:v10];
        [(VideosExtrasImageViewController *)self setGestureRecognizers:v8];
      }

      else
      {
        [v10 removeTarget:self action:0];
        v9 = [(VideosExtrasImageViewController *)self gestureRecognizers];
        v7 = [v9 mutableCopy];

        [v7 removeObject:v10];
        [(VideosExtrasImageViewController *)self setGestureRecognizers:v7];
      }
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

    v7 = [(VideosExtrasImageViewController *)self interactiveTransitionSourceContext];
    [v7 setIdentifier:v4];
  }
}

- (void)_handleDoubleTap:(id)a3
{
  v8 = a3;
  if ([v8 state] == 3)
  {
    v4 = [(VideosExtrasImageViewController *)self zoomableImageView];
    [v4 zoomScale];
    v6 = v5;
    [v4 minimumZoomScale];
    if (v6 >= v7 + 0.00000011920929)
    {
      [v4 setZoomScale:1 animated:?];
    }

    else
    {
      [v8 locationInView:v4];
      [v4 zoomToPoint:1 animated:?];
    }
  }
}

- (void)_handlePinch:(id)a3
{
  v7 = a3;
  v4 = [(VideosExtrasImageViewController *)self interactiveTransitionSourceContext];
  if (!v4)
  {
    v4 = objc_alloc_init(VideosExtrasZoomingImageInteractiveTransitionSourceContext);
    [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v4 setItemIndex:[(VideosExtrasImageViewController *)self imageIndex]];
    [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v4 setPinchGestureRecognizer:v7];
    [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v4 setSupportedZoomingImageTransitionDirections:2];
    v5 = [(VideosExtrasImageViewController *)self zoomingImageTransitionIdentifier];
    [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)v4 setIdentifier:v5];

    [(VideosExtrasImageViewController *)self setInteractiveTransitionSourceContext:v4];
  }

  v6 = [(VideosExtrasImageViewController *)self targetForAction:sel_handlePinchGestureForZoomingImageInteractiveTransitionWithContext_ withSender:v4];
  [v6 handlePinchGestureForZoomingImageInteractiveTransitionWithContext:v4];
}

- (void)_handleSingleTap:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(VideosExtrasImageViewController *)self overlayHidden]^ 1;

    [(VideosExtrasImageViewController *)self setOverlayHidden:v4];
  }
}

- (void)setOverlayHidden:(BOOL)a3
{
  v3 = a3;
  self->_overlayHidden = a3;
  v5 = [(VideosExtrasImageViewController *)self navigationController];
  [v5 _setNavigationBarHidden:v3 edge:15 duration:0.3];

  textContainmentView = self->_textContainmentView;

  [(UIView *)textContainmentView setHidden:v3];
}

@end