@interface UIKBEditingGesturesIntroduction
+ (BOOL)shouldShowEditingIntroduction;
- (id)animatedTutorialViewNamed:(id)named ofType:(id)type needsFrame:(BOOL)frame;
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
  preferencesActions = [v2 preferencesActions];
  v4 = [preferencesActions oneTimeActionCompleted:*MEMORY[0x1E69D9838]];

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

  topPaddingConstraint = [(UIKBEditingGesturesIntroduction *)self topPaddingConstraint];
  v6 = topPaddingConstraint;
  v7 = 0.0;
  if (v4 < 2)
  {
    v7 = 20.0;
  }

  [topPaddingConstraint setConstant:v7];
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
  appearance = [(UIKBTutorialModalDisplay *)self appearance];
  SafeDeviceIdiom = UIKeyboardGetSafeDeviceIdiom();
  v5 = *MEMORY[0x1E6979EF8];
  if ((SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (appearance == 1)
    {
      v6 = @"DoubleTapUndoDark";
    }

    else
    {
      v6 = @"DoubleTapUndo";
    }

    if (appearance == 1)
    {
      v7 = @"SwipeUndoRedoDark";
    }

    else
    {
      v7 = @"SwipeUndoRedo";
    }

    if (appearance == 1)
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
    if (appearance == 1)
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

- (id)animatedTutorialViewNamed:(id)named ofType:(id)type needsFrame:(BOOL)frame
{
  frameCopy = frame;
  typeCopy = type;
  namedCopy = named;
  [(UIKBTutorialModalDisplay *)self appearance];
  if (*MEMORY[0x1E6979EF8] == typeCopy)
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
  v14 = [v13 URLForResource:namedCopy withExtension:v10];

  v96 = 0;
  v94 = v14;
  v95 = [MEMORY[0x1E6979400] packageWithContentsOfURL:v14 type:typeCopy options:0 error:&v96];
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
  topAnchor = [(UILayoutGuide *)v19 topAnchor];
  topAnchor2 = [(UIView *)v18 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v22 setActive:1];

  topPaddingConstraint = [(UIKBEditingGesturesIntroduction *)self topPaddingConstraint];

  if (!topPaddingConstraint)
  {
    heightAnchor = [(UILayoutGuide *)v19 heightAnchor];
    v25 = [heightAnchor constraintEqualToConstant:0.0];
    [(UIKBEditingGesturesIntroduction *)self setTopPaddingConstraint:v25];
  }

  v26 = +[UIKeyboard activeKeyboard];
  v27 = [v26 interfaceOrientation] - 3;

  topPaddingConstraint2 = [(UIKBEditingGesturesIntroduction *)self topPaddingConstraint];
  v29 = topPaddingConstraint2;
  v30 = 0.0;
  if (v27 < 2)
  {
    v30 = 20.0;
  }

  [topPaddingConstraint2 setConstant:v30];

  topPaddingConstraint3 = [(UIKBEditingGesturesIntroduction *)self topPaddingConstraint];
  [topPaddingConstraint3 setActive:1];

  v32 = objc_alloc_init(UIView);
  if (frameCopy)
  {
    v33 = [UIBlurEffect effectWithStyle:1200];
    v34 = [UIVisualEffectView alloc];
    v35 = [UIVibrancyEffect effectForBlurEffect:v33 style:5];
    v36 = [(UIVisualEffectView *)v34 initWithEffect:v35];

    v32 = v36;
  }

  [(UIView *)v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v18 addSubview:v32];
  leadingAnchor = [(UIView *)v32 leadingAnchor];
  leadingAnchor2 = [(UIView *)v18 leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v39 setActive:1];

  trailingAnchor = [(UIView *)v32 trailingAnchor];
  trailingAnchor2 = [(UIView *)v18 trailingAnchor];
  v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v42 setActive:1];

  topAnchor3 = [(UIView *)v32 topAnchor];
  bottomAnchor = [(UILayoutGuide *)v19 bottomAnchor];
  v45 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  [v45 setActive:1];

  bottomAnchor2 = [(UIView *)v32 bottomAnchor];
  bottomAnchor3 = [(UIView *)v18 bottomAnchor];
  v48 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v48 setActive:1];

  v49 = [[UITutorialAnimatedView alloc] initWithKeyboardAppearance:[(UIKBTutorialModalDisplay *)self appearance]];
  [(UIView *)v49 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v49 setContentMode:1];
  [(UIView *)v49 setClipsToBounds:1];
  [(UITutorialAnimatedView *)v49 setPackage:v95];
  if (frameCopy)
  {
    [(UIView *)v18 addSubview:v49];
    trailingAnchor7 = objc_alloc_init(UITutorialFramingView);
    [(UIView *)trailingAnchor7 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(UIView *)v32 contentView];
    [contentView addSubview:trailingAnchor7];

    topAnchor4 = [(UIView *)trailingAnchor7 topAnchor];
    topAnchor5 = [(UIView *)v32 topAnchor];
    v54 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    [v54 setActive:1];

    bottomAnchor4 = [(UIView *)trailingAnchor7 bottomAnchor];
    bottomAnchor5 = [(UIView *)v32 bottomAnchor];
    v57 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    [v57 setActive:1];

    leadingAnchor3 = [(UIView *)trailingAnchor7 leadingAnchor];
    leadingAnchor4 = [(UIView *)v32 leadingAnchor];
    v60 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v60 setActive:1];

    trailingAnchor3 = [(UIView *)trailingAnchor7 trailingAnchor];
    trailingAnchor4 = [(UIView *)v32 trailingAnchor];
    v63 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v63 setActive:1];

    heightAnchor2 = [(UIView *)trailingAnchor7 heightAnchor];
    v65 = [heightAnchor2 constraintEqualToConstant:159.0];
    [v65 setActive:1];

    topAnchor6 = [(UIView *)v49 topAnchor];
    topAnchor7 = [(UIView *)trailingAnchor7 topAnchor];
    v68 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:5.0];
    [v68 setActive:1];

    bottomAnchor6 = [(UIView *)trailingAnchor7 bottomAnchor];
    bottomAnchor7 = [(UIView *)v49 bottomAnchor];
    v71 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:5.0];
    [v71 setActive:1];

    leadingAnchor5 = [(UIView *)v49 leadingAnchor];
    leadingAnchor6 = [(UIView *)trailingAnchor7 leadingAnchor];
    v74 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:5.0];
    [v74 setActive:1];

    trailingAnchor5 = [(UIView *)trailingAnchor7 trailingAnchor];
    trailingAnchor6 = [(UIView *)v49 trailingAnchor];
    v77 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:5.0];
    [v77 setActive:1];
  }

  else
  {
    [(UIView *)v32 addSubview:v49];
    v78 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
    widthAnchor = [(UIView *)v32 widthAnchor];
    heightAnchor3 = [(UIView *)v32 heightAnchor];
    v81 = [widthAnchor constraintEqualToAnchor:heightAnchor3 multiplier:dbl_18A6786E0[v78]];
    [v81 setActive:1];

    heightAnchor4 = [(UIView *)v32 heightAnchor];
    v83 = [heightAnchor4 constraintEqualToConstant:169.0];
    [v83 setActive:1];

    topAnchor8 = [(UIView *)v49 topAnchor];
    topAnchor9 = [(UIView *)v32 topAnchor];
    v86 = [topAnchor8 constraintEqualToAnchor:topAnchor9 constant:5.0];
    [v86 setActive:1];

    bottomAnchor8 = [(UIView *)v32 bottomAnchor];
    bottomAnchor9 = [(UIView *)v49 bottomAnchor];
    v89 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:5.0];
    [v89 setActive:1];

    leadingAnchor7 = [(UIView *)v49 leadingAnchor];
    leadingAnchor8 = [(UIView *)v32 leadingAnchor];
    v92 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:5.0];
    [v92 setActive:1];

    trailingAnchor7 = [(UIView *)v32 trailingAnchor];
    trailingAnchor5 = [(UIView *)v49 trailingAnchor];
    trailingAnchor6 = [(UITutorialFramingView *)trailingAnchor7 constraintEqualToAnchor:trailingAnchor5 constant:5.0];
    [trailingAnchor6 setActive:1];
  }

  return v18;
}

@end