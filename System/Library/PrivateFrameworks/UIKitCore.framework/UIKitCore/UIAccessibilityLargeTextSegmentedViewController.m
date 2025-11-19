@interface UIAccessibilityLargeTextSegmentedViewController
- (UIAccessibilityLargeTextSegmentedViewController)initWithSegmentedControl:(id)a3 segments:(id)a4 delegate:(id)a5;
- (id)segmentFromSegment:(id)a3;
- (void)_configureSegmentViews;
- (void)buttonPress:(id)a3;
- (void)buttonTouchDown:(id)a3;
- (void)buttonTouchUp:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation UIAccessibilityLargeTextSegmentedViewController

- (id)segmentFromSegment:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:0 error:0];
  v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:0];
  [v5 setRequiresSecureCoding:0];
  v6 = [v5 decodeObjectForKey:*MEMORY[0x1E696A508]];
  v7 = [v3 backgroundColor];
  [v6 setBackgroundColor:v7];

  v8 = [v3 tintColor];
  [v6 setTintColor:v8];

  [v6 setEnabled:{objc_msgSend(v3, "isEnabled")}];
  objc_storeStrong(v6 + 70, v3[70]);
  if ((v3[80] & 0x20) != 0)
  {
    v9 = [v3 objectValue];
    v10 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody"];
    v11 = [v9 imageWithConfiguration:v10];
    [v6 setObjectValue:v11];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6[64] setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  }

  v12 = [v3 accessibilityLabel];
  [v6 setAccessibilityLabel:v12];

  return v6;
}

- (UIAccessibilityLargeTextSegmentedViewController)initWithSegmentedControl:(id)a3 segments:(id)a4 delegate:(id)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v53.receiver = self;
  v53.super_class = UIAccessibilityLargeTextSegmentedViewController;
  v12 = [(UIViewController *)&v53 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_segmentedControl, a3);
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    segmentButtons = v13->_segmentButtons;
    v13->_segmentButtons = v14;

    [(UIViewController *)v13 setModalPresentationStyle:7];
    v16 = [(UIViewController *)v13 popoverPresentationController];
    v48 = v11;
    [v16 setDelegate:v11];
    [v16 setSourceView:v13->_segmentedControl];
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      [(UISegmentedControl *)v13->_segmentedControl bounds];
      [v16 setSourceRect:?];
    }

    [v16 setPermittedArrowDirections:3];
    v17 = objc_opt_class();
    v18 = [v9 traitCollection];
    v19 = UISegmentedControlStyleProviderForIdiom(v17, [v18 userInterfaceIdiom]);

    v47 = v19;
    if (([v19 useSelectionIndicatorStyling] & 1) == 0)
    {
      v20 = [(UIView *)v13->_segmentedControl tintColor];
      [v16 setArrowBackgroundColor:v20];

      v21 = [(UIView *)v13->_segmentedControl backgroundColor];
      v22 = v10;
      v23 = [v21 CGColor];
      v24 = [(UIViewController *)v13 view];
      v25 = [v24 layer];
      [v25 setBackgroundColor:v23];

      v26 = [(UIView *)v13->_segmentedControl tintColor];
      v27 = [v26 CGColor];
      v28 = [(UIViewController *)v13 view];
      v29 = [v28 layer];
      [v29 setBorderColor:v27];

      v30 = [(UIViewController *)v13 view];
      v31 = [v30 layer];
      [v31 setBorderWidth:1.0];

      v32 = [(UIViewController *)v13 view];
      v33 = [v32 layer];
      [v33 setCornerRadius:13.0];

      v10 = v22;
    }

    v34 = [(UIViewController *)v13 view];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v36 = v10;
    v37 = v10;
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
    v45 = [MEMORY[0x1E696AD88] defaultCenter];
    [v45 addObserver:v13 selector:sel__orientationChanged_ name:@"UIDeviceOrientationDidChangeNotification" object:0];

    v10 = v36;
    v11 = v48;
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
  v4 = [(UIViewController *)self view];
  [v4 addSubview:v3];

  [(UIView *)v3 addSubview:v67];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(UIView *)v3 centerXAnchor];
  v7 = [(UIViewController *)self view];
  v8 = [v7 centerXAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v5 addObject:v9];

  v10 = [(UIView *)v3 leadingAnchor];
  v11 = [(UIViewController *)self view];
  v12 = [v11 safeAreaLayoutGuide];
  v13 = [v12 leadingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13 constant:4.0];
  [v5 addObject:v14];

  v15 = [(UIView *)v3 trailingAnchor];
  v16 = [(UIViewController *)self view];
  v17 = [v16 safeAreaLayoutGuide];
  v18 = [v17 trailingAnchor];
  v19 = [v15 constraintEqualToAnchor:v18 constant:-4.0];
  [v5 addObject:v19];

  v20 = [(UIView *)v3 topAnchor];
  v21 = [(UIViewController *)self view];
  v22 = [v21 safeAreaLayoutGuide];
  v23 = [v22 topAnchor];
  v24 = [v20 constraintEqualToAnchor:v23];
  [v5 addObject:v24];

  v25 = [(UIView *)v67 centerXAnchor];
  v26 = [(UIView *)v3 centerXAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  [v5 addObject:v27];

  v28 = [(UIView *)v67 widthAnchor];
  v29 = [(UIView *)v3 widthAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  [v5 addObject:v30];

  v31 = [(UIView *)v67 topAnchor];
  v32 = [(UIView *)v3 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  [v5 addObject:v33];

  v34 = [(UIView *)v67 bottomAnchor];
  v63 = v3;
  v35 = [(UIView *)v3 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
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
        v49 = [(UIView *)self->_segmentedControl window];
        [v49 bounds];
        v51 = v50;

        if (v51 < v48 + v48)
        {
          [(UIViewController *)self dismissViewControllerAnimated:0 completion:0];
        }
      }

      [(UIStackView *)v67 addArrangedSubview:v42];
      v52 = [v42 heightAnchor];
      v53 = [v52 constraintEqualToConstant:v48];
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
  v54 = [(UIView *)v63 heightAnchor];
  v55 = [(UIView *)v67 heightAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  LODWORD(v57) = 1148829696;
  [v56 setPriority:v57];
  [v5 addObject:v56];
  v58 = [(UIView *)v63 heightAnchor];
  v59 = [(UIViewController *)self view];
  v60 = [v59 heightAnchor];
  v61 = [v58 constraintLessThanOrEqualToAnchor:v60 multiplier:1.0];
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

- (void)buttonPress:(id)a3
{
  v4 = a3;
  v5 = [(UIAccessibilityLargeTextSegmentedViewController *)self originalSelectedSegment];
  [v5 setSelected:0];

  v6 = [v4 segment];
  [v6 setSelected:1];

  v7 = [(UIAccessibilityLargeTextSegmentedViewController *)self segmentedControl];
  v8 = [(NSMutableArray *)self->_segmentButtons indexOfObject:v4];

  [v7 setSelectedSegmentIndex:v8];
  v9 = [(UIAccessibilityLargeTextSegmentedViewController *)self segmentedControl];
  [v9 _sendValueChanged];

  [(UIViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)buttonTouchDown:(id)a3
{
  v3 = [a3 segment];
  [v3 setHighlighted:1];
}

- (void)buttonTouchUp:(id)a3
{
  v3 = [a3 segment];
  [v3 setHighlighted:0];
}

@end