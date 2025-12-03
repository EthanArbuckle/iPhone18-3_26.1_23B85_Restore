@interface VideosExtrasImageViewController
- (BOOL)prefersStatusBarHidden;
- (UIImage)image;
- (void)_handleDoubleTap:(id)tap;
- (void)_handlePinch:(id)pinch;
- (void)_handleSingleTap:(id)tap;
- (void)dealloc;
- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished;
- (void)performZoomingImageTransitionWithContext:(id)context;
- (void)prepareZoomingImageTransitionWithContext:(id)context;
- (void)setAllowsPinchingImageForInteractiveZoomingImageTransition:(BOOL)transition;
- (void)setDescriptionString:(id)string;
- (void)setImage:(id)image;
- (void)setImageIndex:(unint64_t)index;
- (void)setOverlayHidden:(BOOL)hidden;
- (void)setSubtitleString:(id)string;
- (void)setTitleString:(id)string;
- (void)setZoomingImageTransitionIdentifier:(id)identifier;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VideosExtrasImageViewController

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  gestureRecognizers = [(VideosExtrasImageViewController *)self gestureRecognizers];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [gestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(gestureRecognizers);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeTarget:self action:0];
      }

      while (v5 != v7);
      v5 = [gestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = VideosExtrasImageViewController;
  [(VideosExtrasImageViewController *)&v8 dealloc];
}

- (BOOL)prefersStatusBarHidden
{
  navigationController = [(VideosExtrasImageViewController *)self navigationController];
  isNavigationBarHidden = [navigationController isNavigationBarHidden];

  return isNavigationBarHidden;
}

- (void)viewDidLoad
{
  v53.receiver = self;
  v53.super_class = VideosExtrasImageViewController;
  [(VideosExtrasImageViewController *)&v53 viewDidLoad];
  view = [(VideosExtrasImageViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = objc_alloc_init(VideosExtrasZoomableImageView);
  [(VideosExtrasZoomableImageView *)v12 setFrame:v5, v7, v9, v11];
  [(VideosExtrasZoomableImageView *)v12 setAutoresizingMask:18];
  v13 = view;
  [view addSubview:v12];
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
    pinchGestureRecognizer = [(VideosExtrasZoomableImageView *)v12 pinchGestureRecognizer];
    [pinchGestureRecognizer addTarget:self action:sel__handlePinch_];
    [v14 addObject:pinchGestureRecognizer];
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
  initForAutolayout = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
  [v13 addSubview:initForAutolayout];
  initForAutolayout2 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
  [initForAutolayout2 MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  [initForAutolayout2 setNumberOfLines:0];
  LODWORD(v21) = 1148846080;
  [initForAutolayout2 setContentCompressionResistancePriority:1 forAxis:v21];
  v44 = initForAutolayout2;
  [initForAutolayout addSubview:initForAutolayout2];
  initForAutolayout3 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
  [initForAutolayout3 MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  [initForAutolayout3 setNumberOfLines:0];
  LODWORD(v23) = 1148829696;
  [initForAutolayout3 setContentCompressionResistancePriority:1 forAxis:v23];
  [initForAutolayout addSubview:initForAutolayout3];
  v46 = v14;
  initForAutolayout4 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
  [initForAutolayout4 MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
  [initForAutolayout4 setNumberOfLines:0];
  LODWORD(v25) = 1148813312;
  [initForAutolayout4 setContentCompressionResistancePriority:1 forAxis:v25];
  [initForAutolayout addSubview:initForAutolayout4];
  v26 = *MEMORY[0x1E69DDCE0];
  v27 = *(MEMORY[0x1E69DDCE0] + 8);
  v28 = *(MEMORY[0x1E69DDCE0] + 16);
  v29 = *(MEMORY[0x1E69DDCE0] + 24);
  v52 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:initForAutolayout2 toView:initForAutolayout alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], v27, v28, v29}];
  v51 = [MEMORY[0x1E696ACD8] constraintWithItem:initForAutolayout2 attribute:3 relatedBy:1 toItem:initForAutolayout attribute:3 multiplier:1.0 constant:0.0];
  v50 = [MEMORY[0x1E696ACD8] constraintWithItem:initForAutolayout2 attribute:11 relatedBy:-1 toItem:initForAutolayout attribute:4 multiplier:1.0 constant:0.0];
  v42 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:initForAutolayout3 toView:initForAutolayout alongEdges:10 insets:{v26, v27, v28, v29}];
  v43 = initForAutolayout3;
  v41 = [MEMORY[0x1E696ACD8] constraintWithItem:initForAutolayout3 attribute:3 relatedBy:1 toItem:initForAutolayout attribute:3 multiplier:1.0 constant:0.0];
  v40 = [MEMORY[0x1E696ACD8] constraintWithItem:initForAutolayout3 attribute:11 relatedBy:-1 toItem:initForAutolayout attribute:4 multiplier:1.0 constant:0.0];
  v39 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:initForAutolayout4 toView:initForAutolayout alongEdges:10 insets:{v26, v27, v28, v29}];
  v38 = [MEMORY[0x1E696ACD8] constraintWithItem:initForAutolayout4 attribute:3 relatedBy:1 toItem:initForAutolayout attribute:3 multiplier:1.0 constant:0.0];
  v30 = [MEMORY[0x1E696ACD8] constraintWithItem:initForAutolayout4 attribute:11 relatedBy:-1 toItem:initForAutolayout attribute:4 multiplier:1.0 constant:0.0];
  [initForAutolayout addConstraints:v52];
  [initForAutolayout addConstraint:v51];
  [initForAutolayout addConstraint:v50];
  [initForAutolayout addConstraints:v42];
  [initForAutolayout addConstraint:v41];
  [initForAutolayout addConstraint:v40];
  [initForAutolayout addConstraints:v39];
  [initForAutolayout addConstraint:v38];
  v31 = v30;
  [initForAutolayout addConstraint:v30];
  v32 = [MEMORY[0x1E696ACD8] constraintWithItem:initForAutolayout attribute:9 relatedBy:0 toItem:v13 attribute:9 multiplier:1.0 constant:0.0];
  v33 = [MEMORY[0x1E696ACD8] constraintWithItem:initForAutolayout attribute:7 relatedBy:0 toItem:v13 attribute:7 multiplier:0.75 constant:0.0];
  v34 = MEMORY[0x1E696ACD8];
  view2 = [(VideosExtrasImageViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  v37 = [v34 constraintWithItem:initForAutolayout attribute:4 relatedBy:0 toItem:safeAreaLayoutGuide attribute:4 multiplier:1.0 constant:-20.0];

  [v13 addConstraint:v32];
  [v13 addConstraint:v33];
  [v13 addConstraint:v37];
  [(VideosExtrasImageViewController *)self setTextContainmentView:initForAutolayout];
  [(VideosExtrasImageViewController *)self setTitleLabel:v44];
  [(VideosExtrasImageViewController *)self setSubtitleLabel:v43];
  [(VideosExtrasImageViewController *)self setDescriptionLabel:initForAutolayout4];
}

- (void)updateViewConstraints
{
  view = [(VideosExtrasImageViewController *)self view];
  titleLabel = [(VideosExtrasImageViewController *)self titleLabel];
  subtitleLabel = [(VideosExtrasImageViewController *)self subtitleLabel];
  descriptionLabel = [(VideosExtrasImageViewController *)self descriptionLabel];
  attributedText = [titleLabel attributedText];
  if ([attributedText length])
  {
    goto LABEL_4;
  }

  attributedText2 = [subtitleLabel attributedText];
  if ([attributedText2 length])
  {

LABEL_4:
    goto LABEL_5;
  }

  attributedText3 = [descriptionLabel attributedText];
  v52 = [attributedText3 length];

  if (v52)
  {
LABEL_5:
    attributedText4 = [descriptionLabel attributedText];
    v10 = [attributedText4 length];

    v11 = MEMORY[0x1E69DDD08];
    v12 = descriptionLabel;
    if (!v10)
    {
      attributedText5 = [subtitleLabel attributedText];
      v14 = [attributedText5 length];

      if (v14)
      {
        v12 = subtitleLabel;
      }

      else
      {
        v12 = titleLabel;
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
    bottomLabelConstraint = [(VideosExtrasImageViewController *)self bottomLabelConstraint];
    if (bottomLabelConstraint)
    {
      v18 = bottomLabelConstraint;
      v19 = v16;
      v65 = subtitleLabel;
      v20 = titleLabel;
      v21 = view;
      v22 = descriptionLabel;
      bottomLabelConstraint2 = [(VideosExtrasImageViewController *)self bottomLabelConstraint];
      firstItem = [bottomLabelConstraint2 firstItem];
      v25 = firstItem;
      if (firstItem == v15)
      {
        [(VideosExtrasImageViewController *)self bottomLabelConstraint];
        v26 = v64 = v15;
        textStyle = [v26 textStyle];
        v63 = [textStyle isEqualToString:v19];

        v15 = v64;
        v16 = v19;

        descriptionLabel = v22;
        view = v21;
        titleLabel = v20;
        subtitleLabel = v65;
        if (v63)
        {
          goto LABEL_17;
        }
      }

      else
      {

        descriptionLabel = v22;
        view = v21;
        titleLabel = v20;
        subtitleLabel = v65;
        v16 = v19;
      }

      bottomLabelConstraint3 = [(VideosExtrasImageViewController *)self bottomLabelConstraint];
      [view removeConstraint:bottomLabelConstraint3];

      [(VideosExtrasImageViewController *)self setBottomLabelConstraint:0];
    }

LABEL_17:
    bottomLabelConstraint4 = [(VideosExtrasImageViewController *)self bottomLabelConstraint];

    if (!bottomLabelConstraint4)
    {
      v30 = MEMORY[0x1E69AD980];
      textContainmentView = [(VideosExtrasImageViewController *)self textContainmentView];
      v32 = [v30 contentSizeAutoupdatingConstraintWithItem:v15 attribute:11 relatedBy:0 toItem:textContainmentView attribute:4 multiplier:v16 textStyle:1.0 defaultSizeConstant:-10.0];
      [(VideosExtrasImageViewController *)self setBottomLabelConstraint:v32];

      bottomLabelConstraint5 = [(VideosExtrasImageViewController *)self bottomLabelConstraint];
      [view addConstraint:bottomLabelConstraint5];
    }

    attributedText6 = [titleLabel attributedText];
    if ([attributedText6 length])
    {
      attributedText7 = [subtitleLabel attributedText];
      v36 = [attributedText7 length];

      if (v36)
      {
LABEL_24:
        subtitleLeadingConstraint = [(VideosExtrasImageViewController *)self subtitleLeadingConstraint];
        if (!subtitleLeadingConstraint)
        {
          subtitleLeadingConstraint = [titleLabel attributedText];
          if ([subtitleLeadingConstraint length])
          {
            attributedText8 = [subtitleLabel attributedText];
            v49 = [attributedText8 length];

            if (!v49)
            {
              goto LABEL_26;
            }

            v50 = [MEMORY[0x1E69AD980] constraintWithAutoupdatingBaselineOfView:subtitleLabel toView:titleLabel attribute:11 withTextStyle:*MEMORY[0x1E69DDD00] nonStandardLeading:25.0];
            [(VideosExtrasImageViewController *)self setSubtitleLeadingConstraint:v50];

            subtitleLeadingConstraint = [(VideosExtrasImageViewController *)self subtitleLeadingConstraint];
            [view addConstraint:subtitleLeadingConstraint];
          }
        }

LABEL_26:
        attributedText9 = [subtitleLabel attributedText];
        v40 = [attributedText9 length];

        v41 = subtitleLabel;
        if (v40 || ([titleLabel attributedText], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "length"), v42, v41 = titleLabel, v43))
        {
          v44 = v41;
          if (v44)
          {
            descriptionLeadingConstraint = [(VideosExtrasImageViewController *)self descriptionLeadingConstraint];
            secondItem = [descriptionLeadingConstraint secondItem];

            if (secondItem == v44)
            {
              goto LABEL_44;
            }

            v47 = 0;
LABEL_43:
            descriptionLeadingConstraint2 = [(VideosExtrasImageViewController *)self descriptionLeadingConstraint];
            [view removeConstraint:descriptionLeadingConstraint2];

            [(VideosExtrasImageViewController *)self setDescriptionLeadingConstraint:0];
            if (v47)
            {
LABEL_46:

              goto LABEL_47;
            }

LABEL_44:
            descriptionLeadingConstraint3 = [(VideosExtrasImageViewController *)self descriptionLeadingConstraint];

            if (!descriptionLeadingConstraint3)
            {
              v61 = [MEMORY[0x1E69AD980] constraintWithAutoupdatingBaselineOfView:descriptionLabel toView:v44 attribute:11 withTextStyle:*MEMORY[0x1E69DDD08] nonStandardLeading:30.0];
              [(VideosExtrasImageViewController *)self setDescriptionLeadingConstraint:v61];

              descriptionLeadingConstraint4 = [(VideosExtrasImageViewController *)self descriptionLeadingConstraint];
              [view addConstraint:descriptionLeadingConstraint4];
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

    subtitleLeadingConstraint2 = [(VideosExtrasImageViewController *)self subtitleLeadingConstraint];
    [view removeConstraint:subtitleLeadingConstraint2];

    [(VideosExtrasImageViewController *)self setSubtitleLeadingConstraint:0];
    goto LABEL_24;
  }

  bottomLabelConstraint6 = [(VideosExtrasImageViewController *)self bottomLabelConstraint];

  if (bottomLabelConstraint6)
  {
    bottomLabelConstraint7 = [(VideosExtrasImageViewController *)self bottomLabelConstraint];
    [view removeConstraint:bottomLabelConstraint7];

    [(VideosExtrasImageViewController *)self setBottomLabelConstraint:0];
  }

  subtitleLeadingConstraint3 = [(VideosExtrasImageViewController *)self subtitleLeadingConstraint];

  if (subtitleLeadingConstraint3)
  {
    subtitleLeadingConstraint4 = [(VideosExtrasImageViewController *)self subtitleLeadingConstraint];
    [view removeConstraint:subtitleLeadingConstraint4];

    [(VideosExtrasImageViewController *)self setSubtitleLeadingConstraint:0];
  }

  descriptionLeadingConstraint5 = [(VideosExtrasImageViewController *)self descriptionLeadingConstraint];

  if (descriptionLeadingConstraint5)
  {
    descriptionLeadingConstraint6 = [(VideosExtrasImageViewController *)self descriptionLeadingConstraint];
    [view removeConstraint:descriptionLeadingConstraint6];

    [(VideosExtrasImageViewController *)self setDescriptionLeadingConstraint:0];
  }

LABEL_47:
  v66.receiver = self;
  v66.super_class = VideosExtrasImageViewController;
  [(VideosExtrasImageViewController *)&v66 updateViewConstraints];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VideosExtrasImageViewController;
  [(VideosExtrasImageViewController *)&v4 viewWillAppear:appear];
  [(VideosExtrasImageViewController *)self setOverlayHidden:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = VideosExtrasImageViewController;
  [(VideosExtrasImageViewController *)&v6 viewDidAppear:appear];
  view = [(VideosExtrasImageViewController *)self view];
  titleLabel = [(VideosExtrasImageViewController *)self titleLabel];
  [view bringSubviewToFront:titleLabel];
}

- (void)prepareZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  zoomableImageView = [(VideosExtrasImageViewController *)self zoomableImageView];
  [zoomableImageView prepareZoomingImageTransitionWithContext:contextCopy];

  appearState = [contextCopy appearState];
  if (appearState == 1)
  {

    [(VideosExtrasImageViewController *)self setOverlayHidden:0];
  }
}

- (void)performZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  zoomableImageView = [(VideosExtrasImageViewController *)self zoomableImageView];
  [zoomableImageView performZoomingImageTransitionWithContext:contextCopy];
}

- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished
{
  finishedCopy = finished;
  contextCopy = context;
  zoomableImageView = [(VideosExtrasImageViewController *)self zoomableImageView];
  [zoomableImageView finalizeZoomingImageTransitionWithContext:contextCopy transitionFinished:finishedCopy];
}

- (UIImage)image
{
  zoomableImageView = [(VideosExtrasImageViewController *)self zoomableImageView];
  image = [zoomableImageView image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (([(VideosExtrasImageViewController *)self isViewLoaded]& 1) == 0)
  {
    view = [(VideosExtrasImageViewController *)self view];
  }

  zoomableImageView = [(VideosExtrasImageViewController *)self zoomableImageView];
  image = [zoomableImageView image];

  if (image != imageCopy)
  {
    [zoomableImageView setImage:imageCopy];
    activityIndicatorView = [(VideosExtrasImageViewController *)self activityIndicatorView];
    if ((((imageCopy != 0) ^ [activityIndicatorView isAnimating]) & 1) == 0)
    {
      if (imageCopy)
      {
        [activityIndicatorView stopAnimating];
      }

      else
      {
        [activityIndicatorView startAnimating];
      }
    }
  }
}

- (void)setTitleString:(id)string
{
  stringCopy = string;
  if (([(VideosExtrasImageViewController *)self isViewLoaded]& 1) == 0)
  {
    view = [(VideosExtrasImageViewController *)self view];
  }

  [(UILabel *)self->_titleLabel setAttributedText:stringCopy];
  view2 = [(VideosExtrasImageViewController *)self view];
  [view2 setNeedsUpdateConstraints];
}

- (void)setSubtitleString:(id)string
{
  stringCopy = string;
  if (([(VideosExtrasImageViewController *)self isViewLoaded]& 1) == 0)
  {
    view = [(VideosExtrasImageViewController *)self view];
  }

  [(UILabel *)self->_subtitleLabel setAttributedText:stringCopy];
  view2 = [(VideosExtrasImageViewController *)self view];
  [view2 setNeedsUpdateConstraints];
}

- (void)setDescriptionString:(id)string
{
  stringCopy = string;
  if (([(VideosExtrasImageViewController *)self isViewLoaded]& 1) == 0)
  {
    view = [(VideosExtrasImageViewController *)self view];
  }

  [(UILabel *)self->_descriptionLabel setAttributedText:stringCopy];
  view2 = [(VideosExtrasImageViewController *)self view];
  [view2 setNeedsUpdateConstraints];
}

- (void)setImageIndex:(unint64_t)index
{
  self->_imageIndex = index;
  interactiveTransitionSourceContext = [(VideosExtrasImageViewController *)self interactiveTransitionSourceContext];
  [interactiveTransitionSourceContext setItemIndex:index];
}

- (void)setAllowsPinchingImageForInteractiveZoomingImageTransition:(BOOL)transition
{
  if (self->_allowsPinchingImageForInteractiveZoomingImageTransition != transition)
  {
    transitionCopy = transition;
    self->_allowsPinchingImageForInteractiveZoomingImageTransition = transition;
    zoomableImageView = [(VideosExtrasImageViewController *)self zoomableImageView];
    pinchGestureRecognizer = [zoomableImageView pinchGestureRecognizer];

    if (pinchGestureRecognizer)
    {
      if (transitionCopy)
      {
        [pinchGestureRecognizer addTarget:self action:sel__handlePinch_];
        gestureRecognizers = [(VideosExtrasImageViewController *)self gestureRecognizers];
        v8 = [gestureRecognizers arrayByAddingObject:pinchGestureRecognizer];
        [(VideosExtrasImageViewController *)self setGestureRecognizers:v8];
      }

      else
      {
        [pinchGestureRecognizer removeTarget:self action:0];
        gestureRecognizers2 = [(VideosExtrasImageViewController *)self gestureRecognizers];
        gestureRecognizers = [gestureRecognizers2 mutableCopy];

        [gestureRecognizers removeObject:pinchGestureRecognizer];
        [(VideosExtrasImageViewController *)self setGestureRecognizers:gestureRecognizers];
      }
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

    interactiveTransitionSourceContext = [(VideosExtrasImageViewController *)self interactiveTransitionSourceContext];
    [interactiveTransitionSourceContext setIdentifier:identifierCopy];
  }
}

- (void)_handleDoubleTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    zoomableImageView = [(VideosExtrasImageViewController *)self zoomableImageView];
    [zoomableImageView zoomScale];
    v6 = v5;
    [zoomableImageView minimumZoomScale];
    if (v6 >= v7 + 0.00000011920929)
    {
      [zoomableImageView setZoomScale:1 animated:?];
    }

    else
    {
      [tapCopy locationInView:zoomableImageView];
      [zoomableImageView zoomToPoint:1 animated:?];
    }
  }
}

- (void)_handlePinch:(id)pinch
{
  pinchCopy = pinch;
  interactiveTransitionSourceContext = [(VideosExtrasImageViewController *)self interactiveTransitionSourceContext];
  if (!interactiveTransitionSourceContext)
  {
    interactiveTransitionSourceContext = objc_alloc_init(VideosExtrasZoomingImageInteractiveTransitionSourceContext);
    [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)interactiveTransitionSourceContext setItemIndex:[(VideosExtrasImageViewController *)self imageIndex]];
    [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)interactiveTransitionSourceContext setPinchGestureRecognizer:pinchCopy];
    [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)interactiveTransitionSourceContext setSupportedZoomingImageTransitionDirections:2];
    zoomingImageTransitionIdentifier = [(VideosExtrasImageViewController *)self zoomingImageTransitionIdentifier];
    [(VideosExtrasZoomingImageInteractiveTransitionSourceContext *)interactiveTransitionSourceContext setIdentifier:zoomingImageTransitionIdentifier];

    [(VideosExtrasImageViewController *)self setInteractiveTransitionSourceContext:interactiveTransitionSourceContext];
  }

  v6 = [(VideosExtrasImageViewController *)self targetForAction:sel_handlePinchGestureForZoomingImageInteractiveTransitionWithContext_ withSender:interactiveTransitionSourceContext];
  [v6 handlePinchGestureForZoomingImageInteractiveTransitionWithContext:interactiveTransitionSourceContext];
}

- (void)_handleSingleTap:(id)tap
{
  if ([tap state] == 3)
  {
    v4 = [(VideosExtrasImageViewController *)self overlayHidden]^ 1;

    [(VideosExtrasImageViewController *)self setOverlayHidden:v4];
  }
}

- (void)setOverlayHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  self->_overlayHidden = hidden;
  navigationController = [(VideosExtrasImageViewController *)self navigationController];
  [navigationController _setNavigationBarHidden:hiddenCopy edge:15 duration:0.3];

  textContainmentView = self->_textContainmentView;

  [(UIView *)textContainmentView setHidden:hiddenCopy];
}

@end