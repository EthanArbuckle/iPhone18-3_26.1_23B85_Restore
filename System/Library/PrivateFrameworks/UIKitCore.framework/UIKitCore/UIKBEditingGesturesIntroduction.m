@interface UIKBEditingGesturesIntroduction
+ (BOOL)shouldShowEditingIntroduction;
- (id)animatedTutorialViewNamed:(id)a3 ofType:(id)a4 needsFrame:(BOOL)a5;
- (id)buttonTitle;
- (id)mediaContents;
- (id)textBodyDescriptions;
- (id)textBodyFont;
- (id)textTitleDescriptions;
- (void)extraButtonTapAction;
- (void)updateConstraints;
@end

@implementation UIKBEditingGesturesIntroduction

+ (BOOL)shouldShowEditingIntroduction
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  v4 = [v3 oneTimeActionCompleted:*MEMORY[0x1E69D9838]];

  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = +[UIKeyboard keyboardBundleIdentifier];
    v5 = [v6 isEqualToString:@"com.apple.purplebuddy"] ^ 1;
  }

  return v5;
}

- (void)updateConstraints
{
  v8.receiver = self;
  v8.super_class = UIKBEditingGesturesIntroduction;
  [(UIView *)&v8 updateConstraints];
  v3 = +[UIKeyboard activeKeyboard];
  v4 = [v3 interfaceOrientation] - 3;

  v5 = [(UIKBEditingGesturesIntroduction *)self topPaddingConstraint];
  v6 = v5;
  v7 = 0.0;
  if (v4 < 2)
  {
    v7 = 20.0;
  }

  [v5 setConstant:v7];
}

- (void)extraButtonTapAction
{
  v2 = +[UIKeyboardImpl activeInstance];
  [v2 dismissEditingIntroductionView];
}

- (id)buttonTitle
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v2 = @"Continue";
  }

  else
  {
    v2 = @"OK";
  }

  v3 = _UILocalizedStringInSystemLanguage(v2, v2);

  return v3;
}

- (id)textTitleDescriptions
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  v3 = _UILocalizedStringInSystemLanguage(@"Undo", @"Undo");
  v4 = v3;
  if (v2 == 1)
  {
    v10[0] = v3;
    v5 = _UILocalizedStringInSystemLanguage(@"Undo and Redo", @"Undo and Redo");
    v10[1] = v5;
    v6 = _UILocalizedStringInSystemLanguage(@"Copy and Paste", @"Copy and Paste");
    v10[2] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  }

  else
  {
    v9 = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  }

  return v7;
}

- (id)textBodyDescriptions
{
  v8[3] = *MEMORY[0x1E69E9840];
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v2 = _UILocalizedStringInSystemLanguage(@"EDIT_GESTURES_DOUBLE_TAP_UNDO", @"Double-tap with three fingers.\n");
    v8[0] = v2;
    v3 = _UILocalizedStringInSystemLanguage(@"EDIT_GESTURES_SWIPE_UNDO_REDO", @"Swipe left with three fingers to undo and swipe right to redo.");
    v8[1] = v3;
    v4 = _UILocalizedStringInSystemLanguage(@"EDIT_GESTURES_PINCH_CP", @"Pinch and spread with three fingers to copy and paste a selection.");
    v8[2] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  }

  else
  {
    v2 = _UILocalizedStringInSystemLanguage(@"EDIT_GESTURES_DOUBLE_TAP_UNDO_PHONE", @"Double-tap with three fingers.");
    v7 = v2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  }

  return v5;
}

- (id)textBodyFont
{
  SafeDeviceIdiom = UIKeyboardGetSafeDeviceIdiom();
  v3 = &UIFontTextStyleBody;
  if ((SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v3 = &UIFontTextStyleFootnote;
  }

  v4 = *v3;

  return [off_1E70ECC18 preferredFontForTextStyle:v4];
}

- (id)mediaContents
{
  v16[3] = *MEMORY[0x1E69E9840];
  v3 = [(UIKBTutorialModalDisplay *)self appearance];
  SafeDeviceIdiom = UIKeyboardGetSafeDeviceIdiom();
  v5 = *MEMORY[0x1E6979EF8];
  if ((SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (v3 == 1)
    {
      v6 = @"DoubleTapUndoDark";
    }

    else
    {
      v6 = @"DoubleTapUndo";
    }

    if (v3 == 1)
    {
      v7 = @"SwipeUndoRedoDark";
    }

    else
    {
      v7 = @"SwipeUndoRedo";
    }

    if (v3 == 1)
    {
      v8 = @"PinchCPDark";
    }

    else
    {
      v8 = @"PinchCP";
    }

    v9 = [(UIKBEditingGesturesIntroduction *)self animatedTutorialViewNamed:v6 ofType:*MEMORY[0x1E6979EF8] needsFrame:0];
    v16[0] = v9;
    v10 = [(UIKBEditingGesturesIntroduction *)self animatedTutorialViewNamed:v7 ofType:v5 needsFrame:0];
    v16[1] = v10;
    v11 = [(UIKBEditingGesturesIntroduction *)self animatedTutorialViewNamed:v8 ofType:v5 needsFrame:0];
    v16[2] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  }

  else
  {
    if (v3 == 1)
    {
      v13 = @"DoubleTapUndoPhoneDark";
    }

    else
    {
      v13 = @"DoubleTapUndoPhone";
    }

    v9 = [(UIKBEditingGesturesIntroduction *)self animatedTutorialViewNamed:v13 ofType:*MEMORY[0x1E6979EF8] needsFrame:1];
    v15 = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  }

  return v12;
}

- (id)animatedTutorialViewNamed:(id)a3 ofType:(id)a4 needsFrame:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  [(UIKBTutorialModalDisplay *)self appearance];
  if (*MEMORY[0x1E6979EF8] == v8)
  {
    v10 = @"ca";
  }

  else
  {
    v10 = @"caml";
  }

  v11 = MEMORY[0x1E696AAE8];
  v12 = _UIKitResourceBundlePath(@"Artwork.bundle");
  v13 = [v11 bundleWithPath:v12];
  v14 = [v13 URLForResource:v9 withExtension:v10];

  v96 = 0;
  v94 = v14;
  v95 = [MEMORY[0x1E6979400] packageWithContentsOfURL:v14 type:v8 options:0 error:&v96];
  v15 = v96;
  v16 = v15;
  if (v15)
  {
    v17 = [v15 description];
    NSLog(&cfstr_Error.isa, v17);
  }

  v18 = objc_alloc_init(UIView);
  [(UIView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = objc_alloc_init(UILayoutGuide);
  [(UIView *)v18 addLayoutGuide:v19];
  v20 = [(UILayoutGuide *)v19 topAnchor];
  v21 = [(UIView *)v18 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [(UIKBEditingGesturesIntroduction *)self topPaddingConstraint];

  if (!v23)
  {
    v24 = [(UILayoutGuide *)v19 heightAnchor];
    v25 = [v24 constraintEqualToConstant:0.0];
    [(UIKBEditingGesturesIntroduction *)self setTopPaddingConstraint:v25];
  }

  v26 = +[UIKeyboard activeKeyboard];
  v27 = [v26 interfaceOrientation] - 3;

  v28 = [(UIKBEditingGesturesIntroduction *)self topPaddingConstraint];
  v29 = v28;
  v30 = 0.0;
  if (v27 < 2)
  {
    v30 = 20.0;
  }

  [v28 setConstant:v30];

  v31 = [(UIKBEditingGesturesIntroduction *)self topPaddingConstraint];
  [v31 setActive:1];

  v32 = objc_alloc_init(UIView);
  if (v5)
  {
    v33 = [UIBlurEffect effectWithStyle:1200];
    v34 = [UIVisualEffectView alloc];
    v35 = [UIVibrancyEffect effectForBlurEffect:v33 style:5];
    v36 = [(UIVisualEffectView *)v34 initWithEffect:v35];

    v32 = v36;
  }

  [(UIView *)v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v18 addSubview:v32];
  v37 = [(UIView *)v32 leadingAnchor];
  v38 = [(UIView *)v18 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  [v39 setActive:1];

  v40 = [(UIView *)v32 trailingAnchor];
  v41 = [(UIView *)v18 trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  [v42 setActive:1];

  v43 = [(UIView *)v32 topAnchor];
  v44 = [(UILayoutGuide *)v19 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];
  [v45 setActive:1];

  v46 = [(UIView *)v32 bottomAnchor];
  v47 = [(UIView *)v18 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];
  [v48 setActive:1];

  v49 = [[UITutorialAnimatedView alloc] initWithKeyboardAppearance:[(UIKBTutorialModalDisplay *)self appearance]];
  [(UIView *)v49 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v49 setContentMode:1];
  [(UIView *)v49 setClipsToBounds:1];
  [(UITutorialAnimatedView *)v49 setPackage:v95];
  if (v5)
  {
    [(UIView *)v18 addSubview:v49];
    v50 = objc_alloc_init(UITutorialFramingView);
    [(UIView *)v50 setTranslatesAutoresizingMaskIntoConstraints:0];
    v51 = [(UIView *)v32 contentView];
    [v51 addSubview:v50];

    v52 = [(UIView *)v50 topAnchor];
    v53 = [(UIView *)v32 topAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    [v54 setActive:1];

    v55 = [(UIView *)v50 bottomAnchor];
    v56 = [(UIView *)v32 bottomAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];
    [v57 setActive:1];

    v58 = [(UIView *)v50 leadingAnchor];
    v59 = [(UIView *)v32 leadingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];
    [v60 setActive:1];

    v61 = [(UIView *)v50 trailingAnchor];
    v62 = [(UIView *)v32 trailingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];
    [v63 setActive:1];

    v64 = [(UIView *)v50 heightAnchor];
    v65 = [v64 constraintEqualToConstant:159.0];
    [v65 setActive:1];

    v66 = [(UIView *)v49 topAnchor];
    v67 = [(UIView *)v50 topAnchor];
    v68 = [v66 constraintEqualToAnchor:v67 constant:5.0];
    [v68 setActive:1];

    v69 = [(UIView *)v50 bottomAnchor];
    v70 = [(UIView *)v49 bottomAnchor];
    v71 = [v69 constraintEqualToAnchor:v70 constant:5.0];
    [v71 setActive:1];

    v72 = [(UIView *)v49 leadingAnchor];
    v73 = [(UIView *)v50 leadingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73 constant:5.0];
    [v74 setActive:1];

    v75 = [(UIView *)v50 trailingAnchor];
    v76 = [(UIView *)v49 trailingAnchor];
    v77 = [v75 constraintEqualToAnchor:v76 constant:5.0];
    [v77 setActive:1];
  }

  else
  {
    [(UIView *)v32 addSubview:v49];
    v78 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v79 = [(UIView *)v32 widthAnchor];
    v80 = [(UIView *)v32 heightAnchor];
    v81 = [v79 constraintEqualToAnchor:v80 multiplier:dbl_18A6786E0[v78]];
    [v81 setActive:1];

    v82 = [(UIView *)v32 heightAnchor];
    v83 = [v82 constraintEqualToConstant:169.0];
    [v83 setActive:1];

    v84 = [(UIView *)v49 topAnchor];
    v85 = [(UIView *)v32 topAnchor];
    v86 = [v84 constraintEqualToAnchor:v85 constant:5.0];
    [v86 setActive:1];

    v87 = [(UIView *)v32 bottomAnchor];
    v88 = [(UIView *)v49 bottomAnchor];
    v89 = [v87 constraintEqualToAnchor:v88 constant:5.0];
    [v89 setActive:1];

    v90 = [(UIView *)v49 leadingAnchor];
    v91 = [(UIView *)v32 leadingAnchor];
    v92 = [v90 constraintEqualToAnchor:v91 constant:5.0];
    [v92 setActive:1];

    v50 = [(UIView *)v32 trailingAnchor];
    v75 = [(UIView *)v49 trailingAnchor];
    v76 = [(UITutorialFramingView *)v50 constraintEqualToAnchor:v75 constant:5.0];
    [v76 setActive:1];
  }

  return v18;
}

@end