@interface UIKBTutorialModalDisplay
- (BOOL)isPortrait;
- (CGSize)sizeForTutorialPageView;
- (NSArray)mediaContents;
- (UIEdgeInsets)safeAreaInsets;
- (UIFont)largeTitleFont;
- (UIFont)textTitleFont;
- (UIKBTutorialModalDisplay)initWithKeyboardAppearance:(int64_t)a3;
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
- (void)tapInsideButton:(id)a3;
- (void)updateMediaViewTextAndPlacement;
@end

@implementation UIKBTutorialModalDisplay

- (UIKBTutorialModalDisplay)initWithKeyboardAppearance:(int64_t)a3
{
  v28.receiver = self;
  v28.super_class = UIKBTutorialModalDisplay;
  v4 = [(UIView *)&v28 init];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    [(UIView *)v4 setBackgroundColor:v5];

    v4->_appearance = a3;
    if (a3 == 10 || !a3)
    {
      v6 = [(UIView *)v4 traitCollection];
      v7 = [v6 userInterfaceStyle];

      v8 = 1;
      if (v7 != 2)
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

    v13 = [(UIKBTutorialModalDisplayStyling *)v4->_styling backgroundEffects];
    [(UIVisualEffectView *)v4->_backgroundBlurView setBackgroundEffects:v13];

    [(UIView *)v4 addSubview:v4->_backgroundBlurView];
    v14 = objc_alloc_init(UIView);
    containerView = v4->_containerView;
    v4->_containerView = v14;

    [(UIView *)v4 addSubview:v4->_containerView];
    v16 = [(UIKBTutorialModalDisplay *)v4 constructMediaView];
    mediaView = v4->_mediaView;
    v4->_mediaView = v16;

    if (v4->_mediaView)
    {
      [(UIView *)v4->_containerView addSubview:?];
    }

    v18 = [UIButton buttonWithType:1];
    button = v4->_button;
    v4->_button = v18;

    v20 = v4->_button;
    v21 = [(UIKBTutorialModalDisplay *)v4 buttonTitle];
    [(UIButton *)v20 setTitle:v21 forState:0];

    v22 = v4->_button;
    v23 = +[UIColor systemBlueColor];
    [(UIButton *)v22 setTitleColor:v23 forState:0];

    v24 = [off_1E70ECC18 boldSystemFontOfSize:18.0];
    v25 = [(UIButton *)v4->_button titleLabel];
    [v25 setFont:v24];

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
    v3 = [(UIKBTutorialModalDisplay *)self isPortrait];
    result = 60.0;
    if (v3)
    {
      return 20.0;
    }
  }

  else
  {
    v5 = [(UIView *)self _rootInputWindowController];
    v6 = [v5 _inputView];
    [v6 bounds];
    v8 = v7;
    v9 = [(UIView *)self _rootInputWindowController];
    v10 = [v9 _inputAssistantView];
    [v10 bounds];
    v12 = v8 + v11;

    [(UIKBTutorialModalDisplay *)self safeAreaInsets];
    if (v13 <= 0.0)
    {
      v15 = [(UIView *)self _rootInputWindowController];
      v16 = [v15 _inputAssistantView];
      if (v16)
      {
        v17 = [(UIKBTutorialModalDisplay *)self textBodyDescriptions];
        v18 = [v17 objectAtIndex:0];
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
    v3 = [(UIView *)self _rootInputWindowController];
    v4 = [v3 _inputAccessoryView];

    v5 = [(UIView *)self _rootInputWindowController];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 _inputAccessoryView];
LABEL_13:
      v16 = v7;
      v57 = [v7 topAnchor];

      v17 = +[UIKeyboardImpl isFloating];
      v18 = [(UIView *)self _rootInputWindowController];
      v19 = v18;
      if (v17)
      {
        v20 = [v18 _inputView];

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
        v20 = [v18 view];

        v26 = 0.0;
        v22 = 0.0;
        v24 = 0.0;
        v28 = 0.0;
      }

      v29 = [(UIView *)self topAnchor];
      v30 = [v29 constraintEqualToAnchor:v57 constant:v22];
      [v30 setActive:1];

      v31 = [(UIView *)self bottomAnchor];
      v32 = [v20 bottomAnchor];
      v33 = [v31 constraintEqualToAnchor:v32 constant:v24];
      [v33 setActive:1];

      v34 = [(UIView *)self leftAnchor];
      v35 = [v20 leftAnchor];
      v36 = [v34 constraintEqualToAnchor:v35 constant:v26];
      [v36 setActive:1];

      v37 = [(UIView *)self rightAnchor];
      v38 = [v20 rightAnchor];
      v39 = [v37 constraintEqualToAnchor:v38 constant:v28];
      [v39 setActive:1];

      v40 = [(UIKBTutorialModalDisplay *)self backgroundBlurView];
      [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

      v41 = [(UIKBTutorialModalDisplay *)self backgroundBlurView];
      v42 = [v41 bottomAnchor];
      v43 = [(UIView *)self bottomAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];
      [v44 setActive:1];

      v45 = [(UIKBTutorialModalDisplay *)self backgroundBlurView];
      v46 = [v45 topAnchor];
      v47 = [(UIView *)self topAnchor];
      v48 = [v46 constraintEqualToAnchor:v47];
      [v48 setActive:1];

      v49 = [(UIKBTutorialModalDisplay *)self backgroundBlurView];
      v50 = [v49 leftAnchor];
      v51 = [(UIView *)self leftAnchor];
      v52 = [v50 constraintEqualToAnchor:v51];
      [v52 setActive:1];

      v53 = [(UIKBTutorialModalDisplay *)self backgroundBlurView];
      v54 = [v53 rightAnchor];
      v55 = [(UIView *)self rightAnchor];
      v56 = [v54 constraintEqualToAnchor:v55];
      [v56 setActive:1];

      goto LABEL_17;
    }

    v8 = [v5 _inputAssistantView];
    v9 = [v8 superview];
    if (v9)
    {
      v10 = v9;
      v11 = +[UIKeyboardImpl activeInstance];
      v12 = [v11 _showsScribbleIconsInAssistantView];

      if ((v12 & 1) == 0)
      {
        v6 = [(UIView *)self _rootInputWindowController];
        v7 = [v6 _inputAssistantView];
        goto LABEL_13;
      }
    }

    else
    {
    }

    v13 = [(UIView *)self _rootInputWindowController];
    v14 = [v13 _inputView];

    v15 = [(UIView *)self _rootInputWindowController];
    v6 = v15;
    if (v14)
    {
      [v15 _inputView];
    }

    else
    {
      [v15 view];
    }
    v7 = ;
    goto LABEL_13;
  }

  v57 = [(UIKBTutorialModalDisplay *)self backgroundBlurView];
  [v57 removeFromSuperview];
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
  v2 = [(UIView *)self _rootInputWindowController];
  v3 = [v2 view];
  [v3 safeAreaInsets];
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
  v3 = [(UIKBTutorialModalDisplay *)self adjustableConstraints];
  v4 = [v3 firstObject];
  v5 = [v4 isActive];

  if ((v5 & 1) == 0)
  {
    v6 = [(UIKBTutorialModalDisplay *)self containerView];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = objc_alloc_init(UILayoutGuide);
    [(UIView *)self addLayoutGuide:v7];
    v8 = [(UILayoutGuide *)v7 widthAnchor];
    SafeDeviceIdiom = UIKeyboardGetSafeDeviceIdiom();
    v10 = 320.0;
    if ((SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v10 = 448.0;
    }

    v11 = [v8 constraintEqualToConstant:v10];
    [v11 setActive:1];

    v12 = [(UIKBTutorialModalDisplay *)self containerView];
    v13 = [v12 widthAnchor];
    v14 = [(UILayoutGuide *)v7 widthAnchor];
    [(UIKBTutorialModalDisplay *)self mediaLayoutWidthAdjustment];
    v16 = [v13 constraintEqualToAnchor:v14 multiplier:1.0 constant:v15];
    [(UIKBTutorialModalDisplay *)self setWidthAdjustmentConstraint:v16];

    v17 = [(UIKBTutorialModalDisplay *)self widthAdjustmentConstraint];
    [v17 setActive:1];

    v18 = [(UIKBTutorialModalDisplay *)self containerView];
    v19 = [v18 centerXAnchor];
    v20 = [(UIView *)self centerXAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [(UIKBTutorialModalDisplay *)self containerView];
    v23 = [v22 topAnchor];
    v24 = [(UIView *)self topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    [(UIKBTutorialModalDisplay *)self setContainerViewTopConstraits:v25];

    v26 = [(UIKBTutorialModalDisplay *)self containerViewTopConstraits];
    [v26 setActive:1];

    v27 = [(UIView *)self safeAreaLayoutGuide];
    v28 = [v27 bottomAnchor];
    v29 = [(UIKBTutorialModalDisplay *)self containerView];
    v30 = [v29 bottomAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];
    [v31 setActive:1];

    v32 = [(UIKBTutorialModalDisplay *)self button];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

    v33 = [(UIKBTutorialModalDisplay *)self button];
    v34 = [v33 centerXAnchor];
    v35 = [(UIKBTutorialModalDisplay *)self containerView];
    v36 = [v35 centerXAnchor];
    v37 = [v34 constraintEqualToAnchor:v36];
    [v37 setActive:1];

    v38 = [(UIKBTutorialModalDisplay *)self button];
    v39 = [v38 widthAnchor];
    v40 = [(UIKBTutorialModalDisplay *)self containerView];
    v41 = [v40 widthAnchor];
    v42 = [v39 constraintEqualToAnchor:v41 multiplier:0.7];
    [v42 setActive:1];

    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v43 = 50.0;
    }

    else
    {
      v43 = 21.0;
    }

    v44 = [(UIKBTutorialModalDisplay *)self button];
    v45 = [v44 heightAnchor];
    v46 = [v45 constraintEqualToConstant:v43];
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

    v49 = [(UIKBTutorialModalDisplay *)self containerView];
    v50 = [v49 bottomAnchor];
    v51 = [(UIKBTutorialModalDisplay *)self button];
    v52 = [v51 bottomAnchor];
    v53 = [v50 constraintEqualToAnchor:v52 constant:v47];
    [v53 setActive:1];

    v54 = [(UIKBTutorialModalDisplay *)self mediaView];
    [v54 setTranslatesAutoresizingMaskIntoConstraints:0];

    v55 = [(UIKBTutorialModalDisplay *)self mediaView];
    v56 = [v55 centerXAnchor];
    v57 = [(UIKBTutorialModalDisplay *)self containerView];
    v58 = [v57 centerXAnchor];
    v59 = [v56 constraintEqualToAnchor:v58];
    [v59 setActive:1];

    v60 = [(UIKBTutorialModalDisplay *)self mediaView];
    v61 = [v60 topAnchor];
    v62 = [(UIKBTutorialModalDisplay *)self containerView];
    v63 = [v62 topAnchor];
    v64 = [v61 constraintEqualToAnchor:v63];
    [v64 setActive:1];

    v65 = [(UIKBTutorialModalDisplay *)self button];
    LODWORD(v61) = [v65 isHidden];

    if (v61)
    {
      v66 = [(UIKBTutorialModalDisplay *)self mediaView];
      v67 = [v66 bottomAnchor];
      v68 = [(UIView *)self bottomAnchor];
      v69 = [v67 constraintEqualToAnchor:v68];
      v80[0] = v69;
      v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:1];
      [(UIKBTutorialModalDisplay *)self setAdjustableConstraints:v70];
    }

    else
    {
      v66 = [(UIKBTutorialModalDisplay *)self button];
      v67 = [v66 topAnchor];
      v68 = [(UIKBTutorialModalDisplay *)self mediaView];
      v69 = [v68 bottomAnchor];
      v70 = [v67 constraintGreaterThanOrEqualToAnchor:v69];
      v79 = v70;
      v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
      [(UIKBTutorialModalDisplay *)self setAdjustableConstraints:v71];
    }

    v72 = MEMORY[0x1E69977A0];
    v73 = [(UIKBTutorialModalDisplay *)self adjustableConstraints];
    [v72 activateConstraints:v73];

    v74 = [(UIKBTutorialModalDisplay *)self mediaView];
    v75 = [v74 widthAnchor];
    v76 = [(UIKBTutorialModalDisplay *)self containerView];
    v77 = [v76 widthAnchor];
    v78 = [v75 constraintEqualToAnchor:v77];
    [v78 setActive:1];
  }
}

- (void)containerForFullScreenView
{
  v118[5] = *MEMORY[0x1E69E9840];
  v3 = [(UIKBTutorialModalDisplay *)self containerView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(UIKBTutorialModalDisplay *)self containerView];
  v5 = [v4 leadingAnchor];
  v6 = [(UIView *)self leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [(UIView *)self trailingAnchor];
  v9 = [(UIKBTutorialModalDisplay *)self containerView];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(UIKBTutorialModalDisplay *)self containerView];
  v13 = [v12 topAnchor];
  v14 = [(UIView *)self topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [(UIView *)self bottomAnchor];
  v17 = [(UIKBTutorialModalDisplay *)self containerView];
  v18 = [v17 bottomAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = objc_alloc_init(UILayoutGuide);
  [(UIView *)self addLayoutGuide:?];
  v21 = objc_alloc_init(UILabel);
  [(UIView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [(UIKBTutorialModalDisplay *)self largeTitleFont];
  [(UILabel *)v21 setFont:v22];

  v23 = [(UIKBTutorialModalDisplay *)self largeTitle];
  [(UILabel *)v21 setText:v23];

  [(UILabel *)v21 setTextAlignment:1];
  [(UILabel *)v21 setAdjustsFontSizeToFitWidth:1];
  v24 = [(UIKBTutorialModalDisplay *)self containerView];
  [v24 addSubview:v21];

  v89 = MEMORY[0x1E69977A0];
  v108 = [(UILayoutGuide *)v20 topAnchor];
  v111 = [(UIKBTutorialModalDisplay *)self containerView];
  v105 = [v111 topAnchor];
  v102 = [v108 constraintEqualToAnchor:v105];
  v118[0] = v102;
  v114 = v20;
  v96 = [(UILayoutGuide *)v20 heightAnchor];
  v99 = [(UIKBTutorialModalDisplay *)self containerView];
  v93 = [v99 heightAnchor];
  v91 = [v96 constraintEqualToAnchor:v93 multiplier:0.09];
  v118[1] = v91;
  v87 = [(UIView *)v21 topAnchor];
  v85 = [(UILayoutGuide *)v20 bottomAnchor];
  v83 = [v87 constraintEqualToAnchor:v85 constant:8.0];
  v118[2] = v83;
  v115 = v21;
  v25 = [(UIView *)v21 leadingAnchor];
  v26 = [(UIKBTutorialModalDisplay *)self containerView];
  v27 = [v26 leadingAnchor];
  v28 = [v25 constraintEqualToSystemSpacingAfterAnchor:v27 multiplier:1.0];
  v118[3] = v28;
  v29 = [(UIKBTutorialModalDisplay *)self containerView];
  v30 = [v29 trailingAnchor];
  v31 = [(UIView *)v21 trailingAnchor];
  v32 = [v30 constraintEqualToSystemSpacingAfterAnchor:v31 multiplier:1.0];
  v118[4] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:5];
  [v89 activateConstraints:v33];

  v34 = [(UIKBTutorialModalDisplay *)self mediaView];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

  v97 = MEMORY[0x1E69977A0];
  v112 = [(UIKBTutorialModalDisplay *)self mediaView];
  v109 = [v112 topAnchor];
  v106 = [(UIView *)v115 bottomAnchor];
  v103 = [v109 constraintEqualToAnchor:v106];
  v117[0] = v103;
  v100 = [(UIKBTutorialModalDisplay *)self mediaView];
  v94 = [v100 leadingAnchor];
  v35 = [(UIKBTutorialModalDisplay *)self containerView];
  v36 = [v35 leadingAnchor];
  v37 = [v94 constraintEqualToAnchor:v36];
  v117[1] = v37;
  v38 = [(UIKBTutorialModalDisplay *)self containerView];
  v39 = [v38 trailingAnchor];
  v40 = [(UIKBTutorialModalDisplay *)self mediaView];
  v41 = [v40 trailingAnchor];
  v42 = [v39 constraintEqualToAnchor:v41];
  v117[2] = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:3];
  [v97 activateConstraints:v43];

  v44 = [(UIKBTutorialModalDisplay *)self button];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];

  v45 = [(UIKBTutorialModalDisplay *)self button];
  v46 = [v45 widthAnchor];
  v47 = [v46 constraintEqualToConstant:327.0];

  LODWORD(v48) = 1148829696;
  v49 = v47;
  v81 = v47;
  [v47 setPriority:v48];
  v50 = objc_alloc_init(UILayoutGuide);
  [(UIView *)self addLayoutGuide:v50];
  v51 = objc_alloc_init(UILayoutGuide);
  [(UIView *)self addLayoutGuide:v51];
  v78 = MEMORY[0x1E69977A0];
  v110 = [(UILayoutGuide *)v51 widthAnchor];
  v107 = [(UILayoutGuide *)v50 widthAnchor];
  v101 = [v110 constraintEqualToAnchor:v107 multiplier:1.0];
  v116[0] = v101;
  v113 = v50;
  v95 = [(UILayoutGuide *)v50 leadingAnchor];
  v98 = [(UIKBTutorialModalDisplay *)self containerView];
  v92 = [v98 leadingAnchor];
  v90 = [v95 constraintEqualToSystemSpacingAfterAnchor:v92 multiplier:1.0];
  v116[1] = v90;
  v88 = [(UIKBTutorialModalDisplay *)self button];
  v86 = [v88 leadingAnchor];
  v84 = [(UILayoutGuide *)v50 trailingAnchor];
  v82 = [v86 constraintEqualToAnchor:v84];
  v116[2] = v82;
  v104 = v51;
  v79 = [(UILayoutGuide *)v51 leadingAnchor];
  v80 = [(UIKBTutorialModalDisplay *)self button];
  v77 = [v80 trailingAnchor];
  v76 = [v79 constraintEqualToAnchor:v77];
  v116[3] = v76;
  v75 = [(UIKBTutorialModalDisplay *)self containerView];
  v74 = [v75 trailingAnchor];
  v73 = [(UILayoutGuide *)v51 trailingAnchor];
  v72 = [v74 constraintEqualToSystemSpacingAfterAnchor:v73 multiplier:1.0];
  v116[4] = v72;
  v71 = [(UIKBTutorialModalDisplay *)self button];
  v70 = [v71 heightAnchor];
  v69 = [v70 constraintEqualToConstant:50.0];
  v116[5] = v69;
  v68 = [(UIKBTutorialModalDisplay *)self button];
  v67 = [v68 topAnchor];
  v52 = [(UIKBTutorialModalDisplay *)self mediaView];
  v53 = [v52 bottomAnchor];
  v54 = [v67 constraintEqualToAnchor:v53 constant:128.0];
  v116[6] = v54;
  v55 = [(UIKBTutorialModalDisplay *)self containerView];
  v56 = [v55 bottomAnchor];
  v57 = [(UIKBTutorialModalDisplay *)self button];
  v58 = [v57 bottomAnchor];
  v59 = [v56 constraintEqualToAnchor:v58 constant:55.0];
  v116[7] = v59;
  v116[8] = v49;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:9];
  [v78 activateConstraints:v60];

  v61 = [(UIKBTutorialModalDisplay *)self styling];
  v62 = [v61 buttonTextColor];
  v63 = [(UIKBTutorialModalDisplay *)self button];
  [v63 setBackgroundColor:v62];

  v64 = [(UIKBTutorialModalDisplay *)self button];
  v65 = +[UIColor systemWhiteColor];
  [v64 setTitleColor:v65 forState:0];

  v66 = [(UIKBTutorialModalDisplay *)self button];
  [v66 _setContinuousCornerRadius:14.0];
}

- (void)containerForAlertPresentation
{
  v3 = [(UIKBTutorialModalDisplay *)self containerView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(UIKBTutorialModalDisplay *)self containerView];
  v5 = [v4 leadingAnchor];
  v6 = [(UIView *)self leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [(UIView *)self trailingAnchor];
  v9 = [(UIKBTutorialModalDisplay *)self containerView];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(UIKBTutorialModalDisplay *)self containerView];
  v13 = [v12 topAnchor];
  v14 = [(UIView *)self topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];
  [v15 setActive:1];

  v16 = [(UIView *)self bottomAnchor];
  v17 = [(UIKBTutorialModalDisplay *)self containerView];
  v18 = [v17 bottomAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:0.0];
  [v19 setActive:1];

  v20 = [(UIKBTutorialModalDisplay *)self mediaView];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [(UIKBTutorialModalDisplay *)self mediaView];
  v22 = [v21 topAnchor];
  v23 = [(UIKBTutorialModalDisplay *)self containerView];
  v24 = [v23 topAnchor];
  v25 = [v22 constraintEqualToAnchor:v24 constant:0.0];
  [v25 setActive:1];

  v26 = [(UIKBTutorialModalDisplay *)self mediaView];
  v27 = [v26 leadingAnchor];
  v28 = [(UIKBTutorialModalDisplay *)self containerView];
  v29 = [v28 leadingAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  [v30 setActive:1];

  v31 = [(UIKBTutorialModalDisplay *)self containerView];
  v32 = [v31 trailingAnchor];
  v33 = [(UIKBTutorialModalDisplay *)self mediaView];
  v34 = [v33 trailingAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  [v35 setActive:1];

  v36 = [(UIKBTutorialModalDisplay *)self button];
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = [(UIKBTutorialModalDisplay *)self button];
  v38 = [v37 leadingAnchor];
  v39 = [(UIKBTutorialModalDisplay *)self containerView];
  v40 = [v39 leadingAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  [v41 setActive:1];

  v42 = [(UIKBTutorialModalDisplay *)self button];
  v43 = [v42 trailingAnchor];
  v44 = [(UIKBTutorialModalDisplay *)self containerView];
  v45 = [v44 trailingAnchor];
  v46 = [v43 constraintEqualToAnchor:v45];
  [v46 setActive:1];

  v47 = [(UIKBTutorialModalDisplay *)self button];
  v48 = [v47 heightAnchor];
  v49 = [v48 constraintEqualToConstant:50.0];
  [v49 setActive:1];

  v50 = [(UIKBTutorialModalDisplay *)self button];
  v51 = [v50 topAnchor];
  v52 = [(UIKBTutorialModalDisplay *)self mediaView];
  v53 = [v52 bottomAnchor];
  v54 = [v51 constraintEqualToAnchor:v53 constant:0.0];
  [v54 setActive:1];

  v55 = [(UIKBTutorialModalDisplay *)self containerView];
  v56 = [v55 bottomAnchor];
  v57 = [(UIKBTutorialModalDisplay *)self button];
  v58 = [v57 bottomAnchor];
  v59 = [v56 constraintEqualToAnchor:v58 constant:0.0];
  [v59 setActive:1];

  v62 = [(UIKBTutorialModalDisplay *)self button];
  v60 = [(UIKBTutorialModalDisplay *)self styling];
  v61 = [v60 buttonTextColor];
  [v62 setTitleColor:v61 forState:0];
}

- (CGSize)sizeForTutorialPageView
{
  v3 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  v4 = [(UIKBTutorialModalDisplay *)self isPortrait];
  v5 = 201.6;
  if (!v4)
  {
    v5 = 246.4;
  }

  v6 = 160.0;
  if (!v4)
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
  v3 = [(UIKBTutorialModalDisplay *)self mediaView];

  if (v3)
  {
    [(UIKBTutorialModalDisplay *)self mediaLayoutWidthAdjustment];
    v5 = v4;
    v6 = [(UIKBTutorialModalDisplay *)self widthAdjustmentConstraint];
    [v6 setConstant:v5];

    v7 = [(UIKBTutorialModalDisplay *)self mediaView];
    v49 = [v7 pageViews];

    v8 = [v49 count];
    v9 = v49;
    if (v8)
    {
      for (i = 0; i < v37; ++i)
      {
        v11 = [v9 objectAtIndex:i];
        v12 = [(UIKBTutorialModalDisplay *)self textTitleDescriptions];
        v13 = [v12 objectAtIndex:i];
        v14 = [v13 length];

        if (v14)
        {
          v15 = [(UIKBTutorialModalDisplay *)self textTitleDescriptions];
          v16 = [v15 objectAtIndex:i];
          v17 = [v11 textTitle];
          [v17 setText:v16];

          v18 = [(UIKBTutorialModalDisplay *)self textTitleFont];
          v19 = [v11 textTitle];
          [v19 setFont:v18];

          v20 = [(UIKBTutorialModalDisplay *)self styling];
          v21 = [v20 mainTextColor];
          v22 = [v11 textTitle];
          [v22 setTextColor:v21];
        }

        else
        {
          v20 = [v11 textTitle];
          [v20 setText:&stru_1EFB14550];
        }

        v23 = [(UIKBTutorialModalDisplay *)self textBodyDescriptions];
        v24 = [v23 objectAtIndex:i];
        v25 = [v24 length];

        if (v25)
        {
          v26 = [(UIKBTutorialModalDisplay *)self textBodyDescriptions];
          v27 = [v26 objectAtIndex:i];
          v28 = [v11 textBody];
          [v28 setText:v27];

          v29 = [(UIKBTutorialModalDisplay *)self textBodyFont];
          v30 = [v11 textBody];
          [v30 setFont:v29];

          v31 = [(UIKBTutorialModalDisplay *)self styling];
          v32 = [v31 mainTextColor];
          v33 = [v11 textBody];
          [v33 setTextColor:v32];

          v34 = [(UIKBTutorialModalDisplay *)self textBodyMaxLines];
          v35 = [v11 textBody];
          [v35 setNumberOfLines:v34];

          v36 = [v11 textBody];
          [v36 setAdjustsFontSizeToFitWidth:1];
        }

        else
        {
          v36 = [v11 textBody];
          [v36 setText:&stru_1EFB14550];
        }

        [v11 setNeedsLayout];
        v37 = [v49 count];
        v9 = v49;
      }
    }

    v38 = MEMORY[0x1E69977A0];
    v39 = [(UIKBTutorialModalDisplay *)self adjustableConstraints];
    [v38 deactivateConstraints:v39];

    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = [(UIKBTutorialModalDisplay *)self button];
    v42 = [v41 isHidden];

    if (v42)
    {
      v43 = [(UIKBTutorialModalDisplay *)self mediaView];
      v44 = [v43 bottomAnchor];
      v45 = [(UIView *)self bottomAnchor];
      v46 = [v44 constraintEqualToAnchor:v45];
      [v40 addObject:v46];
    }

    else
    {
      v43 = [(UIKBTutorialModalDisplay *)self button];
      v44 = [v43 topAnchor];
      v45 = [(UIKBTutorialModalDisplay *)self mediaView];
      v46 = [v45 bottomAnchor];
      v47 = [v44 constraintGreaterThanOrEqualToAnchor:v46];
      [v40 addObject:v47];
    }

    [MEMORY[0x1E69977A0] activateConstraints:v40];
    [(UIKBTutorialModalDisplay *)self setAdjustableConstraints:v40];
    v48 = [(UIKBTutorialModalDisplay *)self mediaView];
    [v48 layoutIfNeeded];
  }
}

- (id)constructMediaView
{
  v3 = [(UIKBTutorialModalDisplay *)self mediaContents];
  v4 = [v3 count];
  v5 = [(UIKBTutorialModalDisplay *)self textTitleDescriptions];
  if (v4 != [v5 count])
  {
    v39 = 0;
LABEL_15:

    goto LABEL_17;
  }

  v6 = [v3 count];
  v7 = [(UIKBTutorialModalDisplay *)self textBodyDescriptions];
  v8 = [v7 count];

  if (v6 == v8)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    if ([v3 count])
    {
      v9 = 0;
      do
      {
        v10 = [UIKBTutorialSinglePageView alloc];
        v11 = [v3 objectAtIndex:v9];
        v12 = [(UIKBTutorialSinglePageView *)v10 initWithImageView:v11];

        v13 = [(UIKBTutorialModalDisplay *)self textTitleDescriptions];
        v14 = [v13 objectAtIndex:v9];
        v15 = [v14 length];

        if (v15)
        {
          v16 = [(UIKBTutorialModalDisplay *)self textTitleDescriptions];
          v17 = [v16 objectAtIndex:v9];
          v18 = [(UIKBTutorialSinglePageView *)v12 textTitle];
          [v18 setText:v17];

          v19 = [(UIKBTutorialModalDisplay *)self textTitleFont];
          v20 = [(UIKBTutorialSinglePageView *)v12 textTitle];
          [v20 setFont:v19];

          v21 = [(UIKBTutorialModalDisplay *)self styling];
          v22 = [v21 mainTextColor];
          v23 = [(UIKBTutorialSinglePageView *)v12 textTitle];
          [v23 setTextColor:v22];
        }

        v24 = [(UIKBTutorialModalDisplay *)self textBodyDescriptions];
        v25 = [v24 objectAtIndex:v9];
        v26 = [v25 length];

        if (v26)
        {
          v27 = [(UIKBTutorialModalDisplay *)self textBodyDescriptions];
          v28 = [v27 objectAtIndex:v9];
          v29 = [(UIKBTutorialSinglePageView *)v12 textBody];
          [v29 setText:v28];

          v30 = [(UIKBTutorialModalDisplay *)self textBodyFont];
          v31 = [(UIKBTutorialSinglePageView *)v12 textBody];
          [v31 setFont:v30];

          v32 = [(UIKBTutorialModalDisplay *)self styling];
          v33 = [v32 mainTextColor];
          v34 = [(UIKBTutorialSinglePageView *)v12 textBody];
          [v34 setTextColor:v33];

          v35 = [(UIKBTutorialModalDisplay *)self textBodyMaxLines];
          v36 = [(UIKBTutorialSinglePageView *)v12 textBody];
          [v36 setNumberOfLines:v35];

          v37 = [(UIKBTutorialSinglePageView *)v12 textBody];
          [v37 setAdjustsFontSizeToFitWidth:1];
        }

        if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 && [(UIKBTutorialModalDisplay *)self presentsFullScreen])
        {
          [(UIKBTutorialSinglePageView *)v12 setUseAlertStyle:1];
        }

        [v5 addObject:v12];

        ++v9;
      }

      while (v9 < [v3 count]);
    }

    v38 = [UIKBTutorialMultipageView alloc];
    [(UIKBTutorialModalDisplay *)self pagingInterval];
    v39 = [(UIKBTutorialMultipageView *)v38 initWithPageViews:v5 pagingInterval:?];
    goto LABEL_15;
  }

  v39 = 0;
LABEL_17:

  return v39;
}

- (void)tapInsideButton:(id)a3
{
  v4 = [(UIView *)self superview];

  if (v4)
  {
    [(UIKBTutorialModalDisplay *)self extraButtonTapAction];

    [(UIView *)self removeFromSuperview];
  }
}

- (void)restartPagingAnimation
{
  v3 = [(UIKBTutorialModalDisplay *)self mediaView];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UIKBTutorialModalDisplay *)self mediaView];
    [v5 resetPageScrolling];
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