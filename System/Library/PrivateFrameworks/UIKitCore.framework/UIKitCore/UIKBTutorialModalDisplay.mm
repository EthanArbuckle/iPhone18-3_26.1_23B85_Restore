@interface UIKBTutorialModalDisplay
- (BOOL)isPortrait;
- (CGSize)sizeForTutorialPageView;
- (NSArray)mediaContents;
- (UIEdgeInsets)safeAreaInsets;
- (UIFont)largeTitleFont;
- (UIFont)textTitleFont;
- (UIKBTutorialModalDisplay)initWithKeyboardAppearance:(int64_t)appearance;
- (double)containerBottomPadding;
- (double)containerTopPadding;
- (id)constructMediaView;
- (void)configBackgroundBlur;
- (void)configContainerView;
- (void)containerForAlertPresentation;
- (void)containerForFullScreenView;
- (void)containerForKeyboardView;
- (void)layoutSubviews;
- (void)restartPagingAnimation;
- (void)tapInsideButton:(id)button;
- (void)updateMediaViewTextAndPlacement;
@end

@implementation UIKBTutorialModalDisplay

- (UIKBTutorialModalDisplay)initWithKeyboardAppearance:(int64_t)appearance
{
  v28.receiver = self;
  v28.super_class = UIKBTutorialModalDisplay;
  v4 = [(UIView *)&v28 init];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    [(UIView *)v4 setBackgroundColor:v5];

    v4->_appearance = appearance;
    if (appearance == 10 || !appearance)
    {
      traitCollection = [(UIView *)v4 traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      v8 = 1;
      if (userInterfaceStyle != 2)
      {
        v8 = 2;
      }

      v4->_appearance = v8;
    }

    v9 = [[UIKBTutorialModalDisplayStyling alloc] initWithKeyboardAppearance:v4->_appearance];
    styling = v4->_styling;
    v4->_styling = v9;

    v11 = [[UIVisualEffectView alloc] initWithEffect:0];
    backgroundBlurView = v4->_backgroundBlurView;
    v4->_backgroundBlurView = v11;

    backgroundEffects = [(UIKBTutorialModalDisplayStyling *)v4->_styling backgroundEffects];
    [(UIVisualEffectView *)v4->_backgroundBlurView setBackgroundEffects:backgroundEffects];

    [(UIView *)v4 addSubview:v4->_backgroundBlurView];
    v14 = objc_alloc_init(UIView);
    containerView = v4->_containerView;
    v4->_containerView = v14;

    [(UIView *)v4 addSubview:v4->_containerView];
    constructMediaView = [(UIKBTutorialModalDisplay *)v4 constructMediaView];
    mediaView = v4->_mediaView;
    v4->_mediaView = constructMediaView;

    if (v4->_mediaView)
    {
      [(UIView *)v4->_containerView addSubview:?];
    }

    v18 = [UIButton buttonWithType:1];
    button = v4->_button;
    v4->_button = v18;

    v20 = v4->_button;
    buttonTitle = [(UIKBTutorialModalDisplay *)v4 buttonTitle];
    [(UIButton *)v20 setTitle:buttonTitle forState:0];

    v22 = v4->_button;
    v23 = +[UIColor systemBlueColor];
    [(UIButton *)v22 setTitleColor:v23 forState:0];

    v24 = [off_1E70ECC18 boldSystemFontOfSize:18.0];
    titleLabel = [(UIButton *)v4->_button titleLabel];
    [titleLabel setFont:v24];

    [(UIControl *)v4->_button addTarget:v4 action:sel_tapInsideButton_ forControlEvents:64];
    [(UIView *)v4->_containerView addSubview:v4->_button];
    v26 = v4;
  }

  return v4;
}

- (void)layoutSubviews
{
  [(UIKBTutorialModalDisplay *)self configBackgroundBlur];

  [(UIKBTutorialModalDisplay *)self configContainerView];
}

- (BOOL)isPortrait
{
  v2 = +[UIKeyboard activeKeyboard];
  v3 = ([v2 interfaceOrientation] - 5) < 0xFFFFFFFFFFFFFFFELL;

  return v3;
}

- (double)containerTopPadding
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    isPortrait = [(UIKBTutorialModalDisplay *)self isPortrait];
    result = 60.0;
    if (isPortrait)
    {
      return 20.0;
    }
  }

  else
  {
    _rootInputWindowController = [(UIView *)self _rootInputWindowController];
    _inputView = [_rootInputWindowController _inputView];
    [_inputView bounds];
    v8 = v7;
    _rootInputWindowController2 = [(UIView *)self _rootInputWindowController];
    _inputAssistantView = [_rootInputWindowController2 _inputAssistantView];
    [_inputAssistantView bounds];
    v12 = v8 + v11;

    [(UIKBTutorialModalDisplay *)self safeAreaInsets];
    if (v13 <= 0.0)
    {
      _rootInputWindowController3 = [(UIView *)self _rootInputWindowController];
      _inputAssistantView2 = [_rootInputWindowController3 _inputAssistantView];
      if (_inputAssistantView2)
      {
        textBodyDescriptions = [(UIKBTutorialModalDisplay *)self textBodyDescriptions];
        v18 = [textBodyDescriptions objectAtIndex:0];
        v14 = dbl_18A67B8E0[[v18 length] > 0xBE];
      }

      else
      {
        v14 = 0.12;
      }
    }

    else
    {
      v14 = 0.2;
    }

    return v12 * v14;
  }

  return result;
}

- (double)containerBottomPadding
{
  v3 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  result = 20.0;
  if (v3 != 1)
  {
    [(UIKBTutorialModalDisplay *)self safeAreaInsets];
    result = 34.0;
    if (v5 <= 0.0)
    {
      return 19.0;
    }
  }

  return result;
}

- (void)configBackgroundBlur
{
  if (![(UIKBTutorialModalDisplay *)self presentsFullScreen])
  {
    [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    _rootInputWindowController = [(UIView *)self _rootInputWindowController];
    _inputAccessoryView = [_rootInputWindowController _inputAccessoryView];

    _rootInputWindowController2 = [(UIView *)self _rootInputWindowController];
    _rootInputWindowController4 = _rootInputWindowController2;
    if (_inputAccessoryView)
    {
      _inputAccessoryView2 = [_rootInputWindowController2 _inputAccessoryView];
LABEL_13:
      v16 = _inputAccessoryView2;
      topAnchor = [_inputAccessoryView2 topAnchor];

      v17 = +[UIKeyboardImpl isFloating];
      _rootInputWindowController3 = [(UIView *)self _rootInputWindowController];
      v19 = _rootInputWindowController3;
      if (v17)
      {
        _inputView = [_rootInputWindowController3 _inputView];

        +[UIKeyboardPopoverContainer contentInsets];
        v22 = -fabs(v21);
        +[UIKeyboardPopoverContainer contentInsets];
        v24 = fabs(v23);
        +[UIKeyboardPopoverContainer contentInsets];
        v26 = -fabs(v25);
        +[UIKeyboardPopoverContainer contentInsets];
        v28 = fabs(v27);
      }

      else
      {
        _inputView = [_rootInputWindowController3 view];

        v26 = 0.0;
        v22 = 0.0;
        v24 = 0.0;
        v28 = 0.0;
      }

      topAnchor2 = [(UIView *)self topAnchor];
      v30 = [topAnchor2 constraintEqualToAnchor:topAnchor constant:v22];
      [v30 setActive:1];

      bottomAnchor = [(UIView *)self bottomAnchor];
      bottomAnchor2 = [_inputView bottomAnchor];
      v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v24];
      [v33 setActive:1];

      leftAnchor = [(UIView *)self leftAnchor];
      leftAnchor2 = [_inputView leftAnchor];
      v36 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v26];
      [v36 setActive:1];

      rightAnchor = [(UIView *)self rightAnchor];
      rightAnchor2 = [_inputView rightAnchor];
      v39 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v28];
      [v39 setActive:1];

      backgroundBlurView = [(UIKBTutorialModalDisplay *)self backgroundBlurView];
      [backgroundBlurView setTranslatesAutoresizingMaskIntoConstraints:0];

      backgroundBlurView2 = [(UIKBTutorialModalDisplay *)self backgroundBlurView];
      bottomAnchor3 = [backgroundBlurView2 bottomAnchor];
      bottomAnchor4 = [(UIView *)self bottomAnchor];
      v44 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      [v44 setActive:1];

      backgroundBlurView3 = [(UIKBTutorialModalDisplay *)self backgroundBlurView];
      topAnchor3 = [backgroundBlurView3 topAnchor];
      topAnchor4 = [(UIView *)self topAnchor];
      v48 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      [v48 setActive:1];

      backgroundBlurView4 = [(UIKBTutorialModalDisplay *)self backgroundBlurView];
      leftAnchor3 = [backgroundBlurView4 leftAnchor];
      leftAnchor4 = [(UIView *)self leftAnchor];
      v52 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
      [v52 setActive:1];

      backgroundBlurView5 = [(UIKBTutorialModalDisplay *)self backgroundBlurView];
      rightAnchor3 = [backgroundBlurView5 rightAnchor];
      rightAnchor4 = [(UIView *)self rightAnchor];
      v56 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
      [v56 setActive:1];

      goto LABEL_17;
    }

    _inputAssistantView = [_rootInputWindowController2 _inputAssistantView];
    superview = [_inputAssistantView superview];
    if (superview)
    {
      v10 = superview;
      v11 = +[UIKeyboardImpl activeInstance];
      _showsScribbleIconsInAssistantView = [v11 _showsScribbleIconsInAssistantView];

      if ((_showsScribbleIconsInAssistantView & 1) == 0)
      {
        _rootInputWindowController4 = [(UIView *)self _rootInputWindowController];
        _inputAccessoryView2 = [_rootInputWindowController4 _inputAssistantView];
        goto LABEL_13;
      }
    }

    else
    {
    }

    _rootInputWindowController5 = [(UIView *)self _rootInputWindowController];
    _inputView2 = [_rootInputWindowController5 _inputView];

    _rootInputWindowController6 = [(UIView *)self _rootInputWindowController];
    _rootInputWindowController4 = _rootInputWindowController6;
    if (_inputView2)
    {
      [_rootInputWindowController6 _inputView];
    }

    else
    {
      [_rootInputWindowController6 view];
    }
    _inputAccessoryView2 = ;
    goto LABEL_13;
  }

  topAnchor = [(UIKBTutorialModalDisplay *)self backgroundBlurView];
  [topAnchor removeFromSuperview];
LABEL_17:
}

- (void)configContainerView
{
  if ([(UIKBTutorialModalDisplay *)self presentsFullScreen])
  {
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {

      [(UIKBTutorialModalDisplay *)self containerForFullScreenView];
    }

    else
    {

      [(UIKBTutorialModalDisplay *)self containerForAlertPresentation];
    }
  }

  else
  {

    [(UIKBTutorialModalDisplay *)self containerForKeyboardView];
  }
}

- (UIEdgeInsets)safeAreaInsets
{
  _rootInputWindowController = [(UIView *)self _rootInputWindowController];
  view = [_rootInputWindowController view];
  [view safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)containerForKeyboardView
{
  v80[1] = *MEMORY[0x1E69E9840];
  adjustableConstraints = [(UIKBTutorialModalDisplay *)self adjustableConstraints];
  firstObject = [adjustableConstraints firstObject];
  isActive = [firstObject isActive];

  if ((isActive & 1) == 0)
  {
    containerView = [(UIKBTutorialModalDisplay *)self containerView];
    [containerView setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = objc_alloc_init(UILayoutGuide);
    [(UIView *)self addLayoutGuide:v7];
    widthAnchor = [(UILayoutGuide *)v7 widthAnchor];
    SafeDeviceIdiom = UIKeyboardGetSafeDeviceIdiom();
    v10 = 320.0;
    if ((SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v10 = 448.0;
    }

    v11 = [widthAnchor constraintEqualToConstant:v10];
    [v11 setActive:1];

    containerView2 = [(UIKBTutorialModalDisplay *)self containerView];
    widthAnchor2 = [containerView2 widthAnchor];
    widthAnchor3 = [(UILayoutGuide *)v7 widthAnchor];
    [(UIKBTutorialModalDisplay *)self mediaLayoutWidthAdjustment];
    v16 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 multiplier:1.0 constant:v15];
    [(UIKBTutorialModalDisplay *)self setWidthAdjustmentConstraint:v16];

    widthAdjustmentConstraint = [(UIKBTutorialModalDisplay *)self widthAdjustmentConstraint];
    [widthAdjustmentConstraint setActive:1];

    containerView3 = [(UIKBTutorialModalDisplay *)self containerView];
    centerXAnchor = [containerView3 centerXAnchor];
    centerXAnchor2 = [(UIView *)self centerXAnchor];
    v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v21 setActive:1];

    containerView4 = [(UIKBTutorialModalDisplay *)self containerView];
    topAnchor = [containerView4 topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(UIKBTutorialModalDisplay *)self setContainerViewTopConstraits:v25];

    containerViewTopConstraits = [(UIKBTutorialModalDisplay *)self containerViewTopConstraits];
    [containerViewTopConstraits setActive:1];

    safeAreaLayoutGuide = [(UIView *)self safeAreaLayoutGuide];
    bottomAnchor = [safeAreaLayoutGuide bottomAnchor];
    containerView5 = [(UIKBTutorialModalDisplay *)self containerView];
    bottomAnchor2 = [containerView5 bottomAnchor];
    v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v31 setActive:1];

    button = [(UIKBTutorialModalDisplay *)self button];
    [button setTranslatesAutoresizingMaskIntoConstraints:0];

    button2 = [(UIKBTutorialModalDisplay *)self button];
    centerXAnchor3 = [button2 centerXAnchor];
    containerView6 = [(UIKBTutorialModalDisplay *)self containerView];
    centerXAnchor4 = [containerView6 centerXAnchor];
    v37 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v37 setActive:1];

    button3 = [(UIKBTutorialModalDisplay *)self button];
    widthAnchor4 = [button3 widthAnchor];
    containerView7 = [(UIKBTutorialModalDisplay *)self containerView];
    widthAnchor5 = [containerView7 widthAnchor];
    v42 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5 multiplier:0.7];
    [v42 setActive:1];

    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v43 = 50.0;
    }

    else
    {
      v43 = 21.0;
    }

    button4 = [(UIKBTutorialModalDisplay *)self button];
    heightAnchor = [button4 heightAnchor];
    v46 = [heightAnchor constraintEqualToConstant:v43];
    [v46 setActive:1];

    v47 = 0.0;
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      [(UIKBTutorialModalDisplay *)self safeAreaInsets];
      if (v48 <= 0.0)
      {
        v47 = 23.0;
      }

      else
      {
        v47 = 0.0;
      }
    }

    containerView8 = [(UIKBTutorialModalDisplay *)self containerView];
    bottomAnchor3 = [containerView8 bottomAnchor];
    button5 = [(UIKBTutorialModalDisplay *)self button];
    bottomAnchor4 = [button5 bottomAnchor];
    v53 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:v47];
    [v53 setActive:1];

    mediaView = [(UIKBTutorialModalDisplay *)self mediaView];
    [mediaView setTranslatesAutoresizingMaskIntoConstraints:0];

    mediaView2 = [(UIKBTutorialModalDisplay *)self mediaView];
    centerXAnchor5 = [mediaView2 centerXAnchor];
    containerView9 = [(UIKBTutorialModalDisplay *)self containerView];
    centerXAnchor6 = [containerView9 centerXAnchor];
    v59 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v59 setActive:1];

    mediaView3 = [(UIKBTutorialModalDisplay *)self mediaView];
    topAnchor3 = [mediaView3 topAnchor];
    containerView10 = [(UIKBTutorialModalDisplay *)self containerView];
    topAnchor4 = [containerView10 topAnchor];
    v64 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [v64 setActive:1];

    button6 = [(UIKBTutorialModalDisplay *)self button];
    LODWORD(topAnchor3) = [button6 isHidden];

    if (topAnchor3)
    {
      mediaView4 = [(UIKBTutorialModalDisplay *)self mediaView];
      bottomAnchor5 = [mediaView4 bottomAnchor];
      bottomAnchor6 = [(UIView *)self bottomAnchor];
      v68BottomAnchor = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      v80[0] = v68BottomAnchor;
      v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:1];
      [(UIKBTutorialModalDisplay *)self setAdjustableConstraints:v70];
    }

    else
    {
      mediaView4 = [(UIKBTutorialModalDisplay *)self button];
      bottomAnchor5 = [mediaView4 topAnchor];
      bottomAnchor6 = [(UIKBTutorialModalDisplay *)self mediaView];
      v68BottomAnchor = [bottomAnchor6 bottomAnchor];
      v70 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:v68BottomAnchor];
      v79 = v70;
      v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
      [(UIKBTutorialModalDisplay *)self setAdjustableConstraints:v71];
    }

    v72 = MEMORY[0x1E69977A0];
    adjustableConstraints2 = [(UIKBTutorialModalDisplay *)self adjustableConstraints];
    [v72 activateConstraints:adjustableConstraints2];

    mediaView5 = [(UIKBTutorialModalDisplay *)self mediaView];
    widthAnchor6 = [mediaView5 widthAnchor];
    containerView11 = [(UIKBTutorialModalDisplay *)self containerView];
    widthAnchor7 = [containerView11 widthAnchor];
    v78 = [widthAnchor6 constraintEqualToAnchor:widthAnchor7];
    [v78 setActive:1];
  }
}

- (void)containerForFullScreenView
{
  v118[5] = *MEMORY[0x1E69E9840];
  containerView = [(UIKBTutorialModalDisplay *)self containerView];
  [containerView setTranslatesAutoresizingMaskIntoConstraints:0];

  containerView2 = [(UIKBTutorialModalDisplay *)self containerView];
  leadingAnchor = [containerView2 leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v7 setActive:1];

  trailingAnchor = [(UIView *)self trailingAnchor];
  containerView3 = [(UIKBTutorialModalDisplay *)self containerView];
  trailingAnchor2 = [containerView3 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v11 setActive:1];

  containerView4 = [(UIKBTutorialModalDisplay *)self containerView];
  topAnchor = [containerView4 topAnchor];
  topAnchor2 = [(UIView *)self topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v15 setActive:1];

  bottomAnchor = [(UIView *)self bottomAnchor];
  containerView5 = [(UIKBTutorialModalDisplay *)self containerView];
  bottomAnchor2 = [containerView5 bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v19 setActive:1];

  v20 = objc_alloc_init(UILayoutGuide);
  [(UIView *)self addLayoutGuide:?];
  v21 = objc_alloc_init(UILabel);
  [(UIView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  largeTitleFont = [(UIKBTutorialModalDisplay *)self largeTitleFont];
  [(UILabel *)v21 setFont:largeTitleFont];

  largeTitle = [(UIKBTutorialModalDisplay *)self largeTitle];
  [(UILabel *)v21 setText:largeTitle];

  [(UILabel *)v21 setTextAlignment:1];
  [(UILabel *)v21 setAdjustsFontSizeToFitWidth:1];
  containerView6 = [(UIKBTutorialModalDisplay *)self containerView];
  [containerView6 addSubview:v21];

  v89 = MEMORY[0x1E69977A0];
  topAnchor3 = [(UILayoutGuide *)v20 topAnchor];
  containerView7 = [(UIKBTutorialModalDisplay *)self containerView];
  topAnchor4 = [containerView7 topAnchor];
  v102 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v118[0] = v102;
  v114 = v20;
  heightAnchor = [(UILayoutGuide *)v20 heightAnchor];
  containerView8 = [(UIKBTutorialModalDisplay *)self containerView];
  heightAnchor2 = [containerView8 heightAnchor];
  v91 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.09];
  v118[1] = v91;
  topAnchor5 = [(UIView *)v21 topAnchor];
  bottomAnchor3 = [(UILayoutGuide *)v20 bottomAnchor];
  v83 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:8.0];
  v118[2] = v83;
  v115 = v21;
  leadingAnchor3 = [(UIView *)v21 leadingAnchor];
  containerView9 = [(UIKBTutorialModalDisplay *)self containerView];
  leadingAnchor4 = [containerView9 leadingAnchor];
  v28 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:leadingAnchor4 multiplier:1.0];
  v118[3] = v28;
  containerView10 = [(UIKBTutorialModalDisplay *)self containerView];
  trailingAnchor3 = [containerView10 trailingAnchor];
  trailingAnchor4 = [(UIView *)v21 trailingAnchor];
  v32 = [trailingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor4 multiplier:1.0];
  v118[4] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:5];
  [v89 activateConstraints:v33];

  mediaView = [(UIKBTutorialModalDisplay *)self mediaView];
  [mediaView setTranslatesAutoresizingMaskIntoConstraints:0];

  v97 = MEMORY[0x1E69977A0];
  mediaView2 = [(UIKBTutorialModalDisplay *)self mediaView];
  topAnchor6 = [mediaView2 topAnchor];
  bottomAnchor4 = [(UIView *)v115 bottomAnchor];
  v103 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4];
  v117[0] = v103;
  mediaView3 = [(UIKBTutorialModalDisplay *)self mediaView];
  leadingAnchor5 = [mediaView3 leadingAnchor];
  containerView11 = [(UIKBTutorialModalDisplay *)self containerView];
  leadingAnchor6 = [containerView11 leadingAnchor];
  v37 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v117[1] = v37;
  containerView12 = [(UIKBTutorialModalDisplay *)self containerView];
  trailingAnchor5 = [containerView12 trailingAnchor];
  mediaView4 = [(UIKBTutorialModalDisplay *)self mediaView];
  trailingAnchor6 = [mediaView4 trailingAnchor];
  v42 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v117[2] = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:3];
  [v97 activateConstraints:v43];

  button = [(UIKBTutorialModalDisplay *)self button];
  [button setTranslatesAutoresizingMaskIntoConstraints:0];

  button2 = [(UIKBTutorialModalDisplay *)self button];
  widthAnchor = [button2 widthAnchor];
  v47 = [widthAnchor constraintEqualToConstant:327.0];

  LODWORD(v48) = 1148829696;
  v49 = v47;
  v81 = v47;
  [v47 setPriority:v48];
  v50 = objc_alloc_init(UILayoutGuide);
  [(UIView *)self addLayoutGuide:v50];
  v51 = objc_alloc_init(UILayoutGuide);
  [(UIView *)self addLayoutGuide:v51];
  v78 = MEMORY[0x1E69977A0];
  widthAnchor2 = [(UILayoutGuide *)v51 widthAnchor];
  widthAnchor3 = [(UILayoutGuide *)v50 widthAnchor];
  v101 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 multiplier:1.0];
  v116[0] = v101;
  v113 = v50;
  leadingAnchor7 = [(UILayoutGuide *)v50 leadingAnchor];
  containerView13 = [(UIKBTutorialModalDisplay *)self containerView];
  leadingAnchor8 = [containerView13 leadingAnchor];
  v90 = [leadingAnchor7 constraintEqualToSystemSpacingAfterAnchor:leadingAnchor8 multiplier:1.0];
  v116[1] = v90;
  button3 = [(UIKBTutorialModalDisplay *)self button];
  leadingAnchor9 = [button3 leadingAnchor];
  trailingAnchor7 = [(UILayoutGuide *)v50 trailingAnchor];
  v82 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor7];
  v116[2] = v82;
  v104 = v51;
  leadingAnchor10 = [(UILayoutGuide *)v51 leadingAnchor];
  button4 = [(UIKBTutorialModalDisplay *)self button];
  trailingAnchor8 = [button4 trailingAnchor];
  v76 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor8];
  v116[3] = v76;
  containerView14 = [(UIKBTutorialModalDisplay *)self containerView];
  trailingAnchor9 = [containerView14 trailingAnchor];
  trailingAnchor10 = [(UILayoutGuide *)v51 trailingAnchor];
  v72 = [trailingAnchor9 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor10 multiplier:1.0];
  v116[4] = v72;
  button5 = [(UIKBTutorialModalDisplay *)self button];
  heightAnchor3 = [button5 heightAnchor];
  v69 = [heightAnchor3 constraintEqualToConstant:50.0];
  v116[5] = v69;
  button6 = [(UIKBTutorialModalDisplay *)self button];
  topAnchor7 = [button6 topAnchor];
  mediaView5 = [(UIKBTutorialModalDisplay *)self mediaView];
  bottomAnchor5 = [mediaView5 bottomAnchor];
  v54 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:128.0];
  v116[6] = v54;
  containerView15 = [(UIKBTutorialModalDisplay *)self containerView];
  bottomAnchor6 = [containerView15 bottomAnchor];
  button7 = [(UIKBTutorialModalDisplay *)self button];
  bottomAnchor7 = [button7 bottomAnchor];
  v59 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:55.0];
  v116[7] = v59;
  v116[8] = v49;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:9];
  [v78 activateConstraints:v60];

  styling = [(UIKBTutorialModalDisplay *)self styling];
  buttonTextColor = [styling buttonTextColor];
  button8 = [(UIKBTutorialModalDisplay *)self button];
  [button8 setBackgroundColor:buttonTextColor];

  button9 = [(UIKBTutorialModalDisplay *)self button];
  v65 = +[UIColor systemWhiteColor];
  [button9 setTitleColor:v65 forState:0];

  button10 = [(UIKBTutorialModalDisplay *)self button];
  [button10 _setContinuousCornerRadius:14.0];
}

- (void)containerForAlertPresentation
{
  containerView = [(UIKBTutorialModalDisplay *)self containerView];
  [containerView setTranslatesAutoresizingMaskIntoConstraints:0];

  containerView2 = [(UIKBTutorialModalDisplay *)self containerView];
  leadingAnchor = [containerView2 leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v7 setActive:1];

  trailingAnchor = [(UIView *)self trailingAnchor];
  containerView3 = [(UIKBTutorialModalDisplay *)self containerView];
  trailingAnchor2 = [containerView3 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v11 setActive:1];

  containerView4 = [(UIKBTutorialModalDisplay *)self containerView];
  topAnchor = [containerView4 topAnchor];
  topAnchor2 = [(UIView *)self topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  [v15 setActive:1];

  bottomAnchor = [(UIView *)self bottomAnchor];
  containerView5 = [(UIKBTutorialModalDisplay *)self containerView];
  bottomAnchor2 = [containerView5 bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  [v19 setActive:1];

  mediaView = [(UIKBTutorialModalDisplay *)self mediaView];
  [mediaView setTranslatesAutoresizingMaskIntoConstraints:0];

  mediaView2 = [(UIKBTutorialModalDisplay *)self mediaView];
  topAnchor3 = [mediaView2 topAnchor];
  containerView6 = [(UIKBTutorialModalDisplay *)self containerView];
  topAnchor4 = [containerView6 topAnchor];
  v25 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:0.0];
  [v25 setActive:1];

  mediaView3 = [(UIKBTutorialModalDisplay *)self mediaView];
  leadingAnchor3 = [mediaView3 leadingAnchor];
  containerView7 = [(UIKBTutorialModalDisplay *)self containerView];
  leadingAnchor4 = [containerView7 leadingAnchor];
  v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v30 setActive:1];

  containerView8 = [(UIKBTutorialModalDisplay *)self containerView];
  trailingAnchor3 = [containerView8 trailingAnchor];
  mediaView4 = [(UIKBTutorialModalDisplay *)self mediaView];
  trailingAnchor4 = [mediaView4 trailingAnchor];
  v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v35 setActive:1];

  button = [(UIKBTutorialModalDisplay *)self button];
  [button setTranslatesAutoresizingMaskIntoConstraints:0];

  button2 = [(UIKBTutorialModalDisplay *)self button];
  leadingAnchor5 = [button2 leadingAnchor];
  containerView9 = [(UIKBTutorialModalDisplay *)self containerView];
  leadingAnchor6 = [containerView9 leadingAnchor];
  v41 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v41 setActive:1];

  button3 = [(UIKBTutorialModalDisplay *)self button];
  trailingAnchor5 = [button3 trailingAnchor];
  containerView10 = [(UIKBTutorialModalDisplay *)self containerView];
  trailingAnchor6 = [containerView10 trailingAnchor];
  v46 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v46 setActive:1];

  button4 = [(UIKBTutorialModalDisplay *)self button];
  heightAnchor = [button4 heightAnchor];
  v49 = [heightAnchor constraintEqualToConstant:50.0];
  [v49 setActive:1];

  button5 = [(UIKBTutorialModalDisplay *)self button];
  topAnchor5 = [button5 topAnchor];
  mediaView5 = [(UIKBTutorialModalDisplay *)self mediaView];
  bottomAnchor3 = [mediaView5 bottomAnchor];
  v54 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:0.0];
  [v54 setActive:1];

  containerView11 = [(UIKBTutorialModalDisplay *)self containerView];
  bottomAnchor4 = [containerView11 bottomAnchor];
  button6 = [(UIKBTutorialModalDisplay *)self button];
  bottomAnchor5 = [button6 bottomAnchor];
  v59 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:0.0];
  [v59 setActive:1];

  button7 = [(UIKBTutorialModalDisplay *)self button];
  styling = [(UIKBTutorialModalDisplay *)self styling];
  buttonTextColor = [styling buttonTextColor];
  [button7 setTitleColor:buttonTextColor forState:0];
}

- (CGSize)sizeForTutorialPageView
{
  v3 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  isPortrait = [(UIKBTutorialModalDisplay *)self isPortrait];
  v5 = 201.6;
  if (!isPortrait)
  {
    v5 = 246.4;
  }

  v6 = 160.0;
  if (!isPortrait)
  {
    v6 = 96.0;
  }

  v7 = 320.0;
  if (v3 == 1)
  {
    v7 = 448.0;
  }

  else
  {
    v5 = v6;
  }

  result.height = v5;
  result.width = v7;
  return result;
}

- (void)updateMediaViewTextAndPlacement
{
  mediaView = [(UIKBTutorialModalDisplay *)self mediaView];

  if (mediaView)
  {
    [(UIKBTutorialModalDisplay *)self mediaLayoutWidthAdjustment];
    v5 = v4;
    widthAdjustmentConstraint = [(UIKBTutorialModalDisplay *)self widthAdjustmentConstraint];
    [widthAdjustmentConstraint setConstant:v5];

    mediaView2 = [(UIKBTutorialModalDisplay *)self mediaView];
    pageViews = [mediaView2 pageViews];

    v8 = [pageViews count];
    v9 = pageViews;
    if (v8)
    {
      for (i = 0; i < v37; ++i)
      {
        v11 = [v9 objectAtIndex:i];
        textTitleDescriptions = [(UIKBTutorialModalDisplay *)self textTitleDescriptions];
        v13 = [textTitleDescriptions objectAtIndex:i];
        v14 = [v13 length];

        if (v14)
        {
          textTitleDescriptions2 = [(UIKBTutorialModalDisplay *)self textTitleDescriptions];
          v16 = [textTitleDescriptions2 objectAtIndex:i];
          textTitle = [v11 textTitle];
          [textTitle setText:v16];

          textTitleFont = [(UIKBTutorialModalDisplay *)self textTitleFont];
          textTitle2 = [v11 textTitle];
          [textTitle2 setFont:textTitleFont];

          styling = [(UIKBTutorialModalDisplay *)self styling];
          mainTextColor = [styling mainTextColor];
          textTitle3 = [v11 textTitle];
          [textTitle3 setTextColor:mainTextColor];
        }

        else
        {
          styling = [v11 textTitle];
          [styling setText:&stru_1EFB14550];
        }

        textBodyDescriptions = [(UIKBTutorialModalDisplay *)self textBodyDescriptions];
        v24 = [textBodyDescriptions objectAtIndex:i];
        v25 = [v24 length];

        if (v25)
        {
          textBodyDescriptions2 = [(UIKBTutorialModalDisplay *)self textBodyDescriptions];
          v27 = [textBodyDescriptions2 objectAtIndex:i];
          textBody = [v11 textBody];
          [textBody setText:v27];

          textBodyFont = [(UIKBTutorialModalDisplay *)self textBodyFont];
          textBody2 = [v11 textBody];
          [textBody2 setFont:textBodyFont];

          styling2 = [(UIKBTutorialModalDisplay *)self styling];
          mainTextColor2 = [styling2 mainTextColor];
          textBody3 = [v11 textBody];
          [textBody3 setTextColor:mainTextColor2];

          textBodyMaxLines = [(UIKBTutorialModalDisplay *)self textBodyMaxLines];
          textBody4 = [v11 textBody];
          [textBody4 setNumberOfLines:textBodyMaxLines];

          textBody5 = [v11 textBody];
          [textBody5 setAdjustsFontSizeToFitWidth:1];
        }

        else
        {
          textBody5 = [v11 textBody];
          [textBody5 setText:&stru_1EFB14550];
        }

        [v11 setNeedsLayout];
        v37 = [pageViews count];
        v9 = pageViews;
      }
    }

    v38 = MEMORY[0x1E69977A0];
    adjustableConstraints = [(UIKBTutorialModalDisplay *)self adjustableConstraints];
    [v38 deactivateConstraints:adjustableConstraints];

    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    button = [(UIKBTutorialModalDisplay *)self button];
    isHidden = [button isHidden];

    if (isHidden)
    {
      mediaView3 = [(UIKBTutorialModalDisplay *)self mediaView];
      bottomAnchor = [mediaView3 bottomAnchor];
      bottomAnchor2 = [(UIView *)self bottomAnchor];
      v45BottomAnchor = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v40 addObject:v45BottomAnchor];
    }

    else
    {
      mediaView3 = [(UIKBTutorialModalDisplay *)self button];
      bottomAnchor = [mediaView3 topAnchor];
      bottomAnchor2 = [(UIKBTutorialModalDisplay *)self mediaView];
      v45BottomAnchor = [bottomAnchor2 bottomAnchor];
      v47 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:v45BottomAnchor];
      [v40 addObject:v47];
    }

    [MEMORY[0x1E69977A0] activateConstraints:v40];
    [(UIKBTutorialModalDisplay *)self setAdjustableConstraints:v40];
    mediaView4 = [(UIKBTutorialModalDisplay *)self mediaView];
    [mediaView4 layoutIfNeeded];
  }
}

- (id)constructMediaView
{
  mediaContents = [(UIKBTutorialModalDisplay *)self mediaContents];
  v4 = [mediaContents count];
  textTitleDescriptions = [(UIKBTutorialModalDisplay *)self textTitleDescriptions];
  if (v4 != [textTitleDescriptions count])
  {
    v39 = 0;
LABEL_15:

    goto LABEL_17;
  }

  v6 = [mediaContents count];
  textBodyDescriptions = [(UIKBTutorialModalDisplay *)self textBodyDescriptions];
  v8 = [textBodyDescriptions count];

  if (v6 == v8)
  {
    textTitleDescriptions = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(mediaContents, "count")}];
    if ([mediaContents count])
    {
      v9 = 0;
      do
      {
        v10 = [UIKBTutorialSinglePageView alloc];
        v11 = [mediaContents objectAtIndex:v9];
        v12 = [(UIKBTutorialSinglePageView *)v10 initWithImageView:v11];

        textTitleDescriptions2 = [(UIKBTutorialModalDisplay *)self textTitleDescriptions];
        v14 = [textTitleDescriptions2 objectAtIndex:v9];
        v15 = [v14 length];

        if (v15)
        {
          textTitleDescriptions3 = [(UIKBTutorialModalDisplay *)self textTitleDescriptions];
          v17 = [textTitleDescriptions3 objectAtIndex:v9];
          textTitle = [(UIKBTutorialSinglePageView *)v12 textTitle];
          [textTitle setText:v17];

          textTitleFont = [(UIKBTutorialModalDisplay *)self textTitleFont];
          textTitle2 = [(UIKBTutorialSinglePageView *)v12 textTitle];
          [textTitle2 setFont:textTitleFont];

          styling = [(UIKBTutorialModalDisplay *)self styling];
          mainTextColor = [styling mainTextColor];
          textTitle3 = [(UIKBTutorialSinglePageView *)v12 textTitle];
          [textTitle3 setTextColor:mainTextColor];
        }

        textBodyDescriptions2 = [(UIKBTutorialModalDisplay *)self textBodyDescriptions];
        v25 = [textBodyDescriptions2 objectAtIndex:v9];
        v26 = [v25 length];

        if (v26)
        {
          textBodyDescriptions3 = [(UIKBTutorialModalDisplay *)self textBodyDescriptions];
          v28 = [textBodyDescriptions3 objectAtIndex:v9];
          textBody = [(UIKBTutorialSinglePageView *)v12 textBody];
          [textBody setText:v28];

          textBodyFont = [(UIKBTutorialModalDisplay *)self textBodyFont];
          textBody2 = [(UIKBTutorialSinglePageView *)v12 textBody];
          [textBody2 setFont:textBodyFont];

          styling2 = [(UIKBTutorialModalDisplay *)self styling];
          mainTextColor2 = [styling2 mainTextColor];
          textBody3 = [(UIKBTutorialSinglePageView *)v12 textBody];
          [textBody3 setTextColor:mainTextColor2];

          textBodyMaxLines = [(UIKBTutorialModalDisplay *)self textBodyMaxLines];
          textBody4 = [(UIKBTutorialSinglePageView *)v12 textBody];
          [textBody4 setNumberOfLines:textBodyMaxLines];

          textBody5 = [(UIKBTutorialSinglePageView *)v12 textBody];
          [textBody5 setAdjustsFontSizeToFitWidth:1];
        }

        if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 && [(UIKBTutorialModalDisplay *)self presentsFullScreen])
        {
          [(UIKBTutorialSinglePageView *)v12 setUseAlertStyle:1];
        }

        [textTitleDescriptions addObject:v12];

        ++v9;
      }

      while (v9 < [mediaContents count]);
    }

    v38 = [UIKBTutorialMultipageView alloc];
    [(UIKBTutorialModalDisplay *)self pagingInterval];
    v39 = [(UIKBTutorialMultipageView *)v38 initWithPageViews:textTitleDescriptions pagingInterval:?];
    goto LABEL_15;
  }

  v39 = 0;
LABEL_17:

  return v39;
}

- (void)tapInsideButton:(id)button
{
  superview = [(UIView *)self superview];

  if (superview)
  {
    [(UIKBTutorialModalDisplay *)self extraButtonTapAction];

    [(UIView *)self removeFromSuperview];
  }
}

- (void)restartPagingAnimation
{
  mediaView = [(UIKBTutorialModalDisplay *)self mediaView];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mediaView2 = [(UIKBTutorialModalDisplay *)self mediaView];
    [mediaView2 resetPageScrolling];
  }
}

- (UIFont)textTitleFont
{
  v2 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleBody" addingSymbolicTraits:2 options:2];
  v3 = [off_1E70ECC18 fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (UIFont)largeTitleFont
{
  v2 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleTitle0" addingSymbolicTraits:2 options:2];
  v3 = [off_1E70ECC18 fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (NSArray)mediaContents
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [UIImageView alloc];
  v3 = _UIImageWithName(@"globe_tutorial-light");
  v4 = [(UIImageView *)v2 initWithImage:v3];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

@end