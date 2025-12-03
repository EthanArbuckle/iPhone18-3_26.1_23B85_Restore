@interface UIAccessibilityLargeTextSegmentedViewController
- (UIAccessibilityLargeTextSegmentedViewController)initWithSegmentedControl:(id)control segments:(id)segments delegate:(id)delegate;
- (id)segmentFromSegment:(id)segment;
- (void)_configureSegmentViews;
- (void)buttonPress:(id)press;
- (void)buttonTouchDown:(id)down;
- (void)buttonTouchUp:(id)up;
- (void)viewDidLayoutSubviews;
@end

@implementation UIAccessibilityLargeTextSegmentedViewController

- (id)segmentFromSegment:(id)segment
{
  segmentCopy = segment;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:segmentCopy requiringSecureCoding:0 error:0];
  v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:0];
  [v5 setRequiresSecureCoding:0];
  v6 = [v5 decodeObjectForKey:*MEMORY[0x1E696A508]];
  backgroundColor = [segmentCopy backgroundColor];
  [v6 setBackgroundColor:backgroundColor];

  tintColor = [segmentCopy tintColor];
  [v6 setTintColor:tintColor];

  [v6 setEnabled:{objc_msgSend(segmentCopy, "isEnabled")}];
  objc_storeStrong(v6 + 70, segmentCopy[70]);
  if ((segmentCopy[80] & 0x20) != 0)
  {
    objectValue = [segmentCopy objectValue];
    v10 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody"];
    v11 = [objectValue imageWithConfiguration:v10];
    [v6 setObjectValue:v11];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6[64] setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  }

  accessibilityLabel = [segmentCopy accessibilityLabel];
  [v6 setAccessibilityLabel:accessibilityLabel];

  return v6;
}

- (UIAccessibilityLargeTextSegmentedViewController)initWithSegmentedControl:(id)control segments:(id)segments delegate:(id)delegate
{
  v55 = *MEMORY[0x1E69E9840];
  controlCopy = control;
  segmentsCopy = segments;
  delegateCopy = delegate;
  v53.receiver = self;
  v53.super_class = UIAccessibilityLargeTextSegmentedViewController;
  v12 = [(UIViewController *)&v53 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_segmentedControl, control);
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    segmentButtons = v13->_segmentButtons;
    v13->_segmentButtons = v14;

    [(UIViewController *)v13 setModalPresentationStyle:7];
    popoverPresentationController = [(UIViewController *)v13 popoverPresentationController];
    v48 = delegateCopy;
    [popoverPresentationController setDelegate:delegateCopy];
    [popoverPresentationController setSourceView:v13->_segmentedControl];
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      [(UISegmentedControl *)v13->_segmentedControl bounds];
      [popoverPresentationController setSourceRect:?];
    }

    [popoverPresentationController setPermittedArrowDirections:3];
    v17 = objc_opt_class();
    traitCollection = [controlCopy traitCollection];
    v19 = UISegmentedControlStyleProviderForIdiom(v17, [traitCollection userInterfaceIdiom]);

    v47 = v19;
    if (([v19 useSelectionIndicatorStyling] & 1) == 0)
    {
      tintColor = [(UIView *)v13->_segmentedControl tintColor];
      [popoverPresentationController setArrowBackgroundColor:tintColor];

      backgroundColor = [(UIView *)v13->_segmentedControl backgroundColor];
      v22 = segmentsCopy;
      cGColor = [backgroundColor CGColor];
      view = [(UIViewController *)v13 view];
      layer = [view layer];
      [layer setBackgroundColor:cGColor];

      tintColor2 = [(UIView *)v13->_segmentedControl tintColor];
      cGColor2 = [tintColor2 CGColor];
      view2 = [(UIViewController *)v13 view];
      layer2 = [view2 layer];
      [layer2 setBorderColor:cGColor2];

      view3 = [(UIViewController *)v13 view];
      layer3 = [view3 layer];
      [layer3 setBorderWidth:1.0];

      view4 = [(UIViewController *)v13 view];
      layer4 = [view4 layer];
      [layer4 setCornerRadius:13.0];

      segmentsCopy = v22;
    }

    view5 = [(UIViewController *)v13 view];
    [view5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v36 = segmentsCopy;
    v37 = segmentsCopy;
    v38 = [v37 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v50;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v50 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = [(UIAccessibilityLargeTextSegmentedViewController *)v13 segmentFromSegment:*(*(&v49 + 1) + 8 * i)];
          [(NSArray *)v35 addObject:v42];
        }

        v39 = [v37 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v39);
    }

    segments = v13->_segments;
    v13->_segments = v35;
    v44 = v35;

    [(UIAccessibilityLargeTextSegmentedViewController *)v13 _configureSegmentViews];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__orientationChanged_ name:@"UIDeviceOrientationDidChangeNotification" object:0];

    segmentsCopy = v36;
    delegateCopy = v48;
  }

  return v13;
}

- (void)_configureSegmentViews
{
  v3 = objc_alloc_init(UIScrollView);
  [(UIView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)v3 setBounces:0];
  v67 = objc_alloc_init(UIStackView);
  [(UIStackView *)v67 setAxis:1];
  [(UIStackView *)v67 setDistribution:3];
  [(UIStackView *)v67 setAlignment:0];
  [(UIStackView *)v67 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(UIViewController *)self view];
  [view addSubview:v3];

  [(UIView *)v3 addSubview:v67];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  centerXAnchor = [(UIView *)v3 centerXAnchor];
  view2 = [(UIViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v5 addObject:v9];

  leadingAnchor = [(UIView *)v3 leadingAnchor];
  view3 = [(UIViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
  [v5 addObject:v14];

  trailingAnchor = [(UIView *)v3 trailingAnchor];
  view4 = [(UIViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-4.0];
  [v5 addObject:v19];

  topAnchor = [(UIView *)v3 topAnchor];
  view5 = [(UIViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v5 addObject:v24];

  centerXAnchor3 = [(UIView *)v67 centerXAnchor];
  centerXAnchor4 = [(UIView *)v3 centerXAnchor];
  v27 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v5 addObject:v27];

  widthAnchor = [(UIView *)v67 widthAnchor];
  widthAnchor2 = [(UIView *)v3 widthAnchor];
  v30 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v5 addObject:v30];

  topAnchor3 = [(UIView *)v67 topAnchor];
  topAnchor4 = [(UIView *)v3 topAnchor];
  v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v5 addObject:v33];

  bottomAnchor = [(UIView *)v67 bottomAnchor];
  v63 = v3;
  bottomAnchor2 = [(UIView *)v3 bottomAnchor];
  v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v5 addObject:v36];

  v66 = [(NSArray *)self->_segments count];
  if (v66)
  {
    v37 = 0;
    v64 = *(MEMORY[0x1E695F060] + 8);
    v65 = *MEMORY[0x1E695F060];
    v38 = 0.0;
    v39 = &OBJC_IVAR___UITextHighlightView__contentClippingEffectView;
    while (1)
    {
      v40 = [(NSArray *)self->_segments objectAtIndex:v37];
      [v40 setUsesAXTextSize:1];
      [v40 setSegmentPosition:1];
      if (v37 == [(UISegmentedControl *)self->_segmentedControl selectedSegmentIndex])
      {
        objc_storeStrong(&self->_originalSelectedSegment, v40);
        [v40 setSelected:1];
      }

      v41 = *&v40[v39[34]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v41 setNumberOfLines:0];
        [v41 setLineBreakMode:0];
      }

      v42 = [UISegmentAccessibilityButton buttonWithSegment:v40];
      [v42 addTarget:self action:sel_buttonPress_ forControlEvents:64];
      [v42 addTarget:self action:sel_buttonTouchDown_ forControlEvents:1];
      [v42 addTarget:self action:sel_buttonTouchDown_ forControlEvents:16];
      [v42 addTarget:self action:sel_buttonTouchUp_ forControlEvents:128];
      [v42 addTarget:self action:sel_buttonTouchUp_ forControlEvents:32];
      v43 = v39;
      v44 = *&v40[v39[34]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v40 _maximumTextSize];
      }

      else
      {
        v46 = v64;
        v47 = v65;
        if (!v44)
        {
          goto LABEL_12;
        }

        [v44 intrinsicContentSize];
      }

      v47 = v45;
LABEL_12:
      v48 = v46 + 16.0;
      if (!v37)
      {
        window = [(UIView *)self->_segmentedControl window];
        [window bounds];
        v51 = v50;

        if (v51 < v48 + v48)
        {
          [(UIViewController *)self dismissViewControllerAnimated:0 completion:0];
        }
      }

      [(UIStackView *)v67 addArrangedSubview:v42];
      heightAnchor = [v42 heightAnchor];
      v53 = [heightAnchor constraintEqualToConstant:v48];
      [v5 addObject:v53];

      [(NSMutableArray *)self->_segmentButtons addObject:v42];
      if (v38 < v47 + 32.0 + 8.0)
      {
        v38 = v47 + 32.0 + 8.0;
      }

      ++v37;
      v39 = v43;
      if (v66 == v37)
      {
        goto LABEL_20;
      }
    }
  }

  v38 = 0.0;
LABEL_20:
  [(UIViewController *)self setPreferredContentSize:v38, 0.0];
  heightAnchor2 = [(UIView *)v63 heightAnchor];
  heightAnchor3 = [(UIView *)v67 heightAnchor];
  v56 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];

  LODWORD(v57) = 1148829696;
  [v56 setPriority:v57];
  [v5 addObject:v56];
  heightAnchor4 = [(UIView *)v63 heightAnchor];
  view6 = [(UIViewController *)self view];
  heightAnchor5 = [view6 heightAnchor];
  v61 = [heightAnchor4 constraintLessThanOrEqualToAnchor:heightAnchor5 multiplier:1.0];
  [v5 addObject:v61];

  [MEMORY[0x1E69977A0] activateConstraints:v5];
  mainScrollView = self->_mainScrollView;
  self->_mainScrollView = v63;
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = UIAccessibilityLargeTextSegmentedViewController;
  [(UIViewController *)&v6 viewDidLayoutSubviews];
  [(UIViewController *)self preferredContentSize];
  v4 = v3;
  [(UIView *)self->_mainScrollView frame];
  [(UIViewController *)self setPreferredContentSize:v4, v5];
}

- (void)buttonPress:(id)press
{
  pressCopy = press;
  originalSelectedSegment = [(UIAccessibilityLargeTextSegmentedViewController *)self originalSelectedSegment];
  [originalSelectedSegment setSelected:0];

  segment = [pressCopy segment];
  [segment setSelected:1];

  segmentedControl = [(UIAccessibilityLargeTextSegmentedViewController *)self segmentedControl];
  v8 = [(NSMutableArray *)self->_segmentButtons indexOfObject:pressCopy];

  [segmentedControl setSelectedSegmentIndex:v8];
  segmentedControl2 = [(UIAccessibilityLargeTextSegmentedViewController *)self segmentedControl];
  [segmentedControl2 _sendValueChanged];

  [(UIViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)buttonTouchDown:(id)down
{
  segment = [down segment];
  [segment setHighlighted:1];
}

- (void)buttonTouchUp:(id)up
{
  segment = [up segment];
  [segment setHighlighted:0];
}

@end