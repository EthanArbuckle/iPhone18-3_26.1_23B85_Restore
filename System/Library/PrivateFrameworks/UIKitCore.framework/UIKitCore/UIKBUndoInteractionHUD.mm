@interface UIKBUndoInteractionHUD
- (BOOL)availableOfControl:(id)control;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIInteractiveUndoHUDActionDelegate)actionDelegate;
- (UIKBUndoInteractionHUD)initWithKeyboardAppearance:(int64_t)appearance isRTL:(BOOL)l mode:(int64_t)mode sceneBounds:(CGRect)bounds;
- (id)controlForType:(int64_t)type;
- (id)createSeparatorView;
- (void)controlActionDown:(id)down;
- (void)controlActionUpInside:(id)inside forEvent:(id)event;
- (void)controlActionUpOutside:(id)outside;
- (void)layoutSubviews;
- (void)performDelegateRedoAndUpdateHUDIfNeeded;
- (void)performDelegateUndoAndUpdateHUDIfNeeded;
- (void)updateControlWithDirection:(int64_t)direction travelProgress:(double)progress isRTL:(BOOL)l;
- (void)updateHUDControlState;
- (void)willMoveToWindow:(id)window;
@end

@implementation UIKBUndoInteractionHUD

- (UIKBUndoInteractionHUD)initWithKeyboardAppearance:(int64_t)appearance isRTL:(BOOL)l mode:(int64_t)mode sceneBounds:(CGRect)bounds
{
  lCopy = l;
  height = bounds.size.height;
  width = bounds.size.width;
  v291[1] = *MEMORY[0x1E69E9840];
  v288.receiver = self;
  v288.super_class = UIKBUndoInteractionHUD;
  v11 = [(UIView *)&v288 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_47;
  }

  v11->_mode = mode;
  if ((appearance - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    traitCollection = [(UIView *)v11 traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      appearance = 1;
    }

    else
    {
      appearance = 2;
    }
  }

  v14 = [[UIKBUndoStyling alloc] initWithKeyboardAppearance:appearance isRTL:lCopy];
  style = v12->_style;
  v12->_style = v14;

  if (width >= height)
  {
    v16 = height;
  }

  else
  {
    v16 = width;
  }

  v287 = lCopy;
  if (v16 < 425.0)
  {
    [(UIKBUndoStyling *)v12->_style setUndoRedoIconOnly:1];
    [(UIKBUndoStyling *)v12->_style setCutCopyPasteIconOnly:v12->_mode == 0];
    [(UIKBUndoStyling *)v12->_style setTooSmallForInstructionalText:1];
    v285 = width < 425.0;
    goto LABEL_36;
  }

  v290 = *off_1E70EC918;
  undoInteractiveControlLabelFont = [(UIKBUndoStyling *)v12->_style undoInteractiveControlLabelFont];
  v291[0] = undoInteractiveControlLabelFont;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v291 forKeys:&v290 count:1];

  v19 = _UILocalizedStringInSystemLanguage(@"UNDO_BUTTON_TITLE_LABEL_IN_HUD", @"Undo");
  [v19 sizeWithAttributes:v18];
  v21 = v20 + 42.0 + 4.0 + 20.0;

  v22 = _UILocalizedStringInSystemLanguage(@"REDO_BUTTON_TITLE_LABEL_IN_HUD", @"Redo");
  [v22 sizeWithAttributes:v18];
  v24 = v23 + 42.0 + 4.0 + 20.0;

  v25 = _UILocalizedStringInSystemLanguage(@"Cut", @"Cut");
  [v25 sizeWithAttributes:v18];
  v27 = v26;

  v28 = _UILocalizedStringInSystemLanguage(@"Copy", @"Copy");
  [v28 sizeWithAttributes:v18];
  v30 = v29;

  v31 = _UILocalizedStringInSystemLanguage(@"Paste", @"Paste");
  [v31 sizeWithAttributes:v18];
  v33 = v32;

  if (v21 >= v24)
  {
    v24 = v21;
  }

  if (v24 >= 94.0)
  {
    v34 = v12->_style;
    if (v24 > 94.0 && v24 < 120.0)
    {
      [(UIKBUndoStyling *)v34 setUndoRedoIconOnly:0];
    }

    else
    {
      [(UIKBUndoStyling *)v34 setUndoRedoIconOnly:1];
    }
  }

  else
  {
    [(UIKBUndoStyling *)v12->_style setUndoRedoIconOnly:0];
  }

  if ([(UIKBUndoStyling *)v12->_style undoRedoIconOnly])
  {
    v36 = v12->_style;
  }

  else
  {
    v37 = v27 + 20.0;
    if (v27 + 20.0 < v30 + 20.0)
    {
      v37 = v30 + 20.0;
    }

    if (v37 >= v33 + 20.0)
    {
      v38 = v37;
    }

    else
    {
      v38 = v33 + 20.0;
    }

    if (v38 < 55.0)
    {
      [(UIKBUndoStyling *)v12->_style setCutCopyPasteIconOnly:0];
      goto LABEL_35;
    }

    v36 = v12->_style;
    if (v38 > 55.0 && v38 < 61.0)
    {
      [(UIKBUndoStyling *)v36 setCutCopyPasteIconOnly:0];
      goto LABEL_35;
    }
  }

  [(UIKBUndoStyling *)v36 setCutCopyPasteIconOnly:1];
LABEL_35:

  v285 = 0;
LABEL_36:
  UICeilToViewScale(v12);
  [(UIKBUndoStyling *)v12->_style setUndoControlMinWidth:?];
  UICeilToViewScale(v12);
  [(UIKBUndoStyling *)v12->_style setCutControlMinWidth:?];
  heightAnchor = [(UIView *)v12 heightAnchor];
  v40 = [heightAnchor constraintEqualToConstant:37.0];
  [v40 setActive:1];

  v41 = objc_alloc_init(UIVisualEffectView);
  shadowView = v12->_shadowView;
  v12->_shadowView = v41;

  v43 = +[UIVibrancyEffect _vibrantShadowEffect];
  v289 = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v289 count:1];
  [(UIVisualEffectView *)v12->_shadowView setContentEffects:v44];

  [(UIView *)v12->_shadowView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v12 setClipsToBounds:0];
  [(UIView *)v12 addSubview:v12->_shadowView];
  v45 = +[UIColor separatorColor];
  [(UIView *)v12->_shadowView setBackgroundColor:v45];

  layer = [(UIView *)v12->_shadowView layer];
  [layer setMasksToBounds:0];

  layer2 = [(UIView *)v12->_shadowView layer];
  [layer2 setCornerRadius:18.5];

  hUDShadowColor = [(UIKBUndoStyling *)v12->_style HUDShadowColor];
  cGColor = [hUDShadowColor CGColor];
  layer3 = [(UIView *)v12->_shadowView layer];
  [layer3 setShadowColor:cGColor];

  layer4 = [(UIView *)v12->_shadowView layer];
  [layer4 setShadowOffset:{0.0, 0.0}];

  layer5 = [(UIView *)v12->_shadowView layer];
  LODWORD(v53) = 0.5;
  [layer5 setShadowOpacity:v53];

  layer6 = [(UIView *)v12->_shadowView layer];
  [layer6 setShadowRadius:15.0];

  centerXAnchor = [(UIView *)v12->_shadowView centerXAnchor];
  centerXAnchor2 = [(UIView *)v12 centerXAnchor];
  v57 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v57 setActive:1];

  centerYAnchor = [(UIView *)v12->_shadowView centerYAnchor];
  centerYAnchor2 = [(UIView *)v12 centerYAnchor];
  v60 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v60 setActive:1];

  widthAnchor = [(UIView *)v12->_shadowView widthAnchor];
  widthAnchor2 = [(UIView *)v12 widthAnchor];
  v63 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v63 setActive:1];

  heightAnchor2 = [(UIView *)v12->_shadowView heightAnchor];
  heightAnchor3 = [(UIView *)v12 heightAnchor];
  v66 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  [v66 setActive:1];

  v67 = objc_alloc_init(UIKBUndoHUDContainerView);
  containerView = v12->_containerView;
  v12->_containerView = &v67->super;

  [(UIView *)v12->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v12 addSubview:v12->_containerView];
  layer7 = [(UIView *)v12->_containerView layer];
  [layer7 setCornerRadius:18.5];

  [(UIView *)v12->_containerView setClipsToBounds:1];
  v70 = +[UIColor separatorColor];
  v71 = [v70 colorWithAlphaComponent:0.33];
  [(UIView *)v12->_containerView setBackgroundColor:v71];

  centerXAnchor3 = [(UIView *)v12->_containerView centerXAnchor];
  centerXAnchor4 = [(UIView *)v12 centerXAnchor];
  v74 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v74 setActive:1];

  centerYAnchor3 = [(UIView *)v12->_containerView centerYAnchor];
  centerYAnchor4 = [(UIView *)v12 centerYAnchor];
  v77 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v77 setActive:1];

  widthAnchor3 = [(UIView *)v12->_containerView widthAnchor];
  widthAnchor4 = [(UIView *)v12 widthAnchor];
  v80 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  [v80 setActive:1];

  heightAnchor4 = [(UIView *)v12->_containerView heightAnchor];
  heightAnchor5 = [(UIView *)v12 heightAnchor];
  v83 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
  [v83 setActive:1];

  v84 = [UIVisualEffectView alloc];
  style = [(UIKBUndoInteractionHUD *)v12 style];
  backgroundBlurEffect = [style backgroundBlurEffect];
  v87 = [(UIVisualEffectView *)v84 initWithEffect:backgroundBlurEffect];

  [(UIView *)v87 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v12->_containerView addSubview:v87];
  centerXAnchor5 = [(UIView *)v87 centerXAnchor];
  centerXAnchor6 = [(UIView *)v12 centerXAnchor];
  v90 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v90 setActive:1];

  centerYAnchor5 = [(UIView *)v87 centerYAnchor];
  centerYAnchor6 = [(UIView *)v12 centerYAnchor];
  v93 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  [v93 setActive:1];

  heightAnchor6 = [(UIView *)v87 heightAnchor];
  heightAnchor7 = [(UIView *)v12 heightAnchor];
  v96 = [heightAnchor6 constraintEqualToAnchor:heightAnchor7 multiplier:1.0];
  [v96 setActive:1];

  widthAnchor5 = [(UIView *)v87 widthAnchor];
  widthAnchor6 = [(UIView *)v12->_containerView widthAnchor];
  v99 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:1.0];
  [v99 setActive:1];

  v100 = [UIVisualEffectView alloc];
  style2 = [(UIKBUndoInteractionHUD *)v12 style];
  backgroundVibrancyEffect = [style2 backgroundVibrancyEffect];
  v103 = [(UIVisualEffectView *)v100 initWithEffect:backgroundVibrancyEffect];
  backgroundEffectView = v12->_backgroundEffectView;
  v12->_backgroundEffectView = v103;

  [(UIView *)v12->_backgroundEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
  v286 = v87;
  contentView = [(UIVisualEffectView *)v87 contentView];
  [contentView addSubview:v12->_backgroundEffectView];

  centerXAnchor7 = [(UIView *)v12->_backgroundEffectView centerXAnchor];
  centerXAnchor8 = [(UIView *)v12 centerXAnchor];
  v108 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  [v108 setActive:1];

  centerYAnchor7 = [(UIView *)v12->_backgroundEffectView centerYAnchor];
  centerYAnchor8 = [(UIView *)v12 centerYAnchor];
  v111 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  [v111 setActive:1];

  heightAnchor8 = [(UIView *)v12->_backgroundEffectView heightAnchor];
  heightAnchor9 = [(UIView *)v12 heightAnchor];
  v114 = [heightAnchor8 constraintEqualToAnchor:heightAnchor9 multiplier:1.0];
  [v114 setActive:1];

  widthAnchor7 = [(UIView *)v12->_backgroundEffectView widthAnchor];
  widthAnchor8 = [(UIView *)v12 widthAnchor];
  v117 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 multiplier:1.0];
  [v117 setActive:1];

  mode = v12->_mode;
  if (mode == 1)
  {
    v233 = [[UIKBUndoControl alloc] initWithType:6 andStyling:v12->_style];
    aPasteButtonView = v12->_aPasteButtonView;
    v12->_aPasteButtonView = v233;

    [(UIView *)v12->_aPasteButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v12->_containerView addSubview:v12->_aPasteButtonView];
    trailingAnchor = [(UIView *)v12->_aPasteButtonView trailingAnchor];
    trailingAnchor2 = [(UIView *)v12->_containerView trailingAnchor];
    v237 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v237 setActive:1];

    topAnchor = [(UIView *)v12->_aPasteButtonView topAnchor];
    topAnchor2 = [(UIView *)v12 topAnchor];
    v240 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v240 setActive:1];

    bottomAnchor = [(UIView *)v12->_aPasteButtonView bottomAnchor];
    bottomAnchor2 = [(UIView *)v12 bottomAnchor];
    v243 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v243 setActive:1];

    [(UIControl *)v12->_aPasteButtonView addTarget:v12 action:sel_controlActionUpInside_forEvent_ forControlEvents:64];
    if (v285)
    {
      leadingAnchor = [(UIView *)v12->_aPasteButtonView leadingAnchor];
      leadingAnchor2 = [(UIView *)v12->_containerView leadingAnchor];
      v246 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v246 setActive:1];

      widthAnchor9 = [(UIView *)v12->_aPasteButtonView widthAnchor];
      v232 = [widthAnchor9 constraintEqualToConstant:116.0];
      [v232 setActive:1];
    }

    else
    {
      v247 = objc_opt_new();
      instructionalLabel = v12->_instructionalLabel;
      v12->_instructionalLabel = v247;

      undoInteractiveControlLabelFont2 = [(UIKBUndoStyling *)v12->_style undoInteractiveControlLabelFont];
      [(UILabel *)v12->_instructionalLabel setFont:undoInteractiveControlLabelFont2];

      v250 = _UILocalizedStringInSystemLanguage(@"PASTE_CONFIRMATION_LABEL_TEXT", @"This application is trying to read the clipboard.");
      [(UILabel *)v12->_instructionalLabel setText:v250];

      [(UILabel *)v12->_instructionalLabel setTextAlignment:1];
      [(UIView *)v12->_containerView addSubview:v12->_instructionalLabel];
      [(UIView *)v12->_instructionalLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      leadingAnchor3 = [(UIView *)v12->_instructionalLabel leadingAnchor];
      leadingAnchor4 = [(UIView *)v12->_containerView leadingAnchor];
      v253 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
      [v253 setActive:1];

      firstBaselineAnchor = [(UIView *)v12->_instructionalLabel firstBaselineAnchor];
      firstBaselineAnchor2 = [(UIView *)v12->_aPasteButtonView firstBaselineAnchor];
      v256 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
      [v256 setActive:1];

      widthAnchor9 = [(UIKBUndoInteractionHUD *)v12 createSeparatorView];
      contentView2 = [(UIVisualEffectView *)v12->_backgroundEffectView contentView];
      [contentView2 addSubview:widthAnchor9];

      heightAnchor10 = [widthAnchor9 heightAnchor];
      heightAnchor11 = [(UIView *)v12->_containerView heightAnchor];
      v260 = [heightAnchor10 constraintEqualToAnchor:heightAnchor11];
      [v260 setActive:1];

      leadingAnchor5 = [widthAnchor9 leadingAnchor];
      trailingAnchor3 = [(UIView *)v12->_instructionalLabel trailingAnchor];
      v263 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:16.0];
      [v263 setActive:1];

      leadingAnchor6 = [(UIView *)v12->_aPasteButtonView leadingAnchor];
      trailingAnchor4 = [widthAnchor9 trailingAnchor];
      v266 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4];
      [v266 setActive:1];

      v232 = objc_opt_new();
      hUDbackgroundColor = [(UIKBUndoStyling *)v12->_style HUDbackgroundColor];
      [v232 setBackgroundColor:hUDbackgroundColor];

      [v232 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v12->_containerView insertSubview:v232 below:v12->_instructionalLabel];
      leadingAnchor7 = [v232 leadingAnchor];
      leadingAnchor8 = [(UIView *)v12 leadingAnchor];
      v270 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
      [v270 setActive:1];

      trailingAnchor5 = [v232 trailingAnchor];
      leadingAnchor9 = [widthAnchor9 leadingAnchor];
      v273 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor9];
      [v273 setActive:1];

      topAnchor3 = [v232 topAnchor];
      topAnchor4 = [(UIView *)v12 topAnchor];
      v276 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      [v276 setActive:1];

      bottomAnchor3 = [v232 bottomAnchor];
      bottomAnchor4 = [(UIView *)v12 bottomAnchor];
      v279 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      [v279 setActive:1];
    }

    goto LABEL_42;
  }

  if (!mode)
  {
    v119 = [[UIKBUndoControl alloc] initWithType:1 andStyling:v12->_style];
    leftButtonView = v12->_leftButtonView;
    v12->_leftButtonView = v119;

    [(UIView *)v12->_leftButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v12->_containerView addSubview:v12->_leftButtonView];
    leadingAnchor10 = [(UIView *)v12->_leftButtonView leadingAnchor];
    leadingAnchor11 = [(UIView *)v12 leadingAnchor];
    v123 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
    [v123 setActive:1];

    centerYAnchor9 = [(UIView *)v12->_leftButtonView centerYAnchor];
    centerYAnchor10 = [(UIView *)v12 centerYAnchor];
    v126 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
    [v126 setActive:1];

    heightAnchor12 = [(UIView *)v12->_leftButtonView heightAnchor];
    heightAnchor13 = [(UIView *)v12 heightAnchor];
    v129 = [heightAnchor12 constraintEqualToAnchor:heightAnchor13 multiplier:1.0];
    [v129 setActive:1];

    widthAnchor10 = [(UIView *)v12->_leftButtonView widthAnchor];
    [(UIKBUndoStyling *)v12->_style undoControlMinWidth];
    v131 = [widthAnchor10 constraintGreaterThanOrEqualToConstant:?];
    [v131 setActive:1];

    widthAnchor11 = [(UIView *)v12->_leftButtonView widthAnchor];
    v133 = [widthAnchor11 constraintLessThanOrEqualToConstant:120.0];
    [v133 setActive:1];

    [(UIControl *)v12->_leftButtonView addTarget:v12 action:sel_controlActionDown_ forControlEvents:1];
    [(UIControl *)v12->_leftButtonView addTarget:v12 action:sel_controlActionUpInside_forEvent_ forControlEvents:64];
    [(UIControl *)v12->_leftButtonView addTarget:v12 action:sel_controlActionUpOutside_ forControlEvents:128];
    v134 = [[UIKBUndoControl alloc] initWithType:2 andStyling:v12->_style];
    rightButtonView = v12->_rightButtonView;
    v12->_rightButtonView = v134;

    [(UIView *)v12->_rightButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v12->_containerView addSubview:v12->_rightButtonView];
    trailingAnchor6 = [(UIView *)v12->_rightButtonView trailingAnchor];
    trailingAnchor7 = [(UIView *)v12 trailingAnchor];
    v138 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    [v138 setActive:1];

    centerYAnchor11 = [(UIView *)v12->_rightButtonView centerYAnchor];
    centerYAnchor12 = [(UIView *)v12 centerYAnchor];
    v141 = [centerYAnchor11 constraintEqualToAnchor:centerYAnchor12];
    [v141 setActive:1];

    heightAnchor14 = [(UIView *)v12->_rightButtonView heightAnchor];
    heightAnchor15 = [(UIView *)v12 heightAnchor];
    v144 = [heightAnchor14 constraintEqualToAnchor:heightAnchor15 multiplier:1.0];
    [v144 setActive:1];

    widthAnchor12 = [(UIView *)v12->_rightButtonView widthAnchor];
    widthAnchor13 = [(UIView *)v12->_leftButtonView widthAnchor];
    v147 = [widthAnchor12 constraintEqualToAnchor:widthAnchor13 multiplier:1.0];
    [v147 setActive:1];

    [(UIControl *)v12->_rightButtonView addTarget:v12 action:sel_controlActionDown_ forControlEvents:1];
    [(UIControl *)v12->_rightButtonView addTarget:v12 action:sel_controlActionUpInside_forEvent_ forControlEvents:64];
    [(UIControl *)v12->_rightButtonView addTarget:v12 action:sel_controlActionUpOutside_ forControlEvents:128];
    v148 = [[UIKBUndoControl alloc] initWithType:3 andStyling:v12->_style];
    aCutButtonView = v12->_aCutButtonView;
    v12->_aCutButtonView = v148;

    [(UIView *)v12->_aCutButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v12->_containerView addSubview:v12->_aCutButtonView];
    createSeparatorView = [(UIKBUndoInteractionHUD *)v12 createSeparatorView];
    contentView3 = [(UIVisualEffectView *)v12->_backgroundEffectView contentView];
    [contentView3 addSubview:createSeparatorView];

    heightAnchor16 = [createSeparatorView heightAnchor];
    containerView = [(UIKBUndoInteractionHUD *)v12 containerView];
    heightAnchor17 = [containerView heightAnchor];
    v155 = [heightAnchor16 constraintEqualToAnchor:heightAnchor17];
    [v155 setActive:1];

    v284 = createSeparatorView;
    leadingAnchor12 = [createSeparatorView leadingAnchor];
    trailingAnchor8 = [(UIView *)v12->_leftButtonView trailingAnchor];
    v158 = [leadingAnchor12 constraintEqualToAnchor:trailingAnchor8];
    [v158 setActive:1];

    leadingAnchor13 = [(UIView *)v12->_aCutButtonView leadingAnchor];
    trailingAnchor9 = [createSeparatorView trailingAnchor];
    v161 = [leadingAnchor13 constraintEqualToAnchor:trailingAnchor9];
    [v161 setActive:1];

    centerYAnchor13 = [(UIView *)v12->_aCutButtonView centerYAnchor];
    centerYAnchor14 = [(UIView *)v12 centerYAnchor];
    v164 = [centerYAnchor13 constraintEqualToAnchor:centerYAnchor14];
    [v164 setActive:1];

    heightAnchor18 = [(UIView *)v12->_aCutButtonView heightAnchor];
    heightAnchor19 = [(UIView *)v12 heightAnchor];
    v167 = [heightAnchor18 constraintEqualToAnchor:heightAnchor19 multiplier:1.0];
    [v167 setActive:1];

    widthAnchor14 = [(UIView *)v12->_aCutButtonView widthAnchor];
    [(UIKBUndoStyling *)v12->_style cutControlMinWidth];
    v169 = [widthAnchor14 constraintGreaterThanOrEqualToConstant:?];
    [v169 setActive:1];

    [(UIControl *)v12->_aCutButtonView addTarget:v12 action:sel_controlActionDown_ forControlEvents:1];
    [(UIControl *)v12->_aCutButtonView addTarget:v12 action:sel_controlActionUpInside_forEvent_ forControlEvents:64];
    [(UIControl *)v12->_aCutButtonView addTarget:v12 action:sel_controlActionUpOutside_ forControlEvents:128];
    v170 = [[UIKBUndoControl alloc] initWithType:4 andStyling:v12->_style];
    aCopyButtonView = v12->_aCopyButtonView;
    v12->_aCopyButtonView = v170;

    [(UIView *)v12->_aCopyButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v12->_containerView addSubview:v12->_aCopyButtonView];
    createSeparatorView2 = [(UIKBUndoInteractionHUD *)v12 createSeparatorView];
    contentView4 = [(UIVisualEffectView *)v12->_backgroundEffectView contentView];
    [contentView4 addSubview:createSeparatorView2];

    heightAnchor20 = [createSeparatorView2 heightAnchor];
    containerView2 = [(UIKBUndoInteractionHUD *)v12 containerView];
    heightAnchor21 = [containerView2 heightAnchor];
    v177 = [heightAnchor20 constraintEqualToAnchor:heightAnchor21];
    [v177 setActive:1];

    v283 = createSeparatorView2;
    leadingAnchor14 = [createSeparatorView2 leadingAnchor];
    trailingAnchor10 = [(UIView *)v12->_aCutButtonView trailingAnchor];
    v180 = [leadingAnchor14 constraintEqualToAnchor:trailingAnchor10];
    [v180 setActive:1];

    centerXAnchor9 = [(UIView *)v12->_aCopyButtonView centerXAnchor];
    centerXAnchor10 = [(UIView *)v12 centerXAnchor];
    v183 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
    [v183 setActive:1];

    leadingAnchor15 = [(UIView *)v12->_aCopyButtonView leadingAnchor];
    trailingAnchor11 = [createSeparatorView2 trailingAnchor];
    v186 = [leadingAnchor15 constraintEqualToAnchor:trailingAnchor11];
    [v186 setActive:1];

    centerYAnchor15 = [(UIView *)v12->_aCopyButtonView centerYAnchor];
    centerYAnchor16 = [(UIView *)v12 centerYAnchor];
    v189 = [centerYAnchor15 constraintEqualToAnchor:centerYAnchor16];
    [v189 setActive:1];

    heightAnchor22 = [(UIView *)v12->_aCopyButtonView heightAnchor];
    heightAnchor23 = [(UIView *)v12->_aCutButtonView heightAnchor];
    v192 = [heightAnchor22 constraintEqualToAnchor:heightAnchor23 multiplier:1.0];
    [v192 setActive:1];

    widthAnchor15 = [(UIView *)v12->_aCopyButtonView widthAnchor];
    widthAnchor16 = [(UIView *)v12->_aCutButtonView widthAnchor];
    v195 = [widthAnchor15 constraintEqualToAnchor:widthAnchor16 multiplier:1.0];
    [v195 setActive:1];

    [(UIControl *)v12->_aCopyButtonView addTarget:v12 action:sel_controlActionDown_ forControlEvents:1];
    [(UIControl *)v12->_aCopyButtonView addTarget:v12 action:sel_controlActionUpInside_forEvent_ forControlEvents:64];
    [(UIControl *)v12->_aCopyButtonView addTarget:v12 action:sel_controlActionUpOutside_ forControlEvents:128];
    v196 = [[UIKBUndoControl alloc] initWithType:5 andStyling:v12->_style];
    v197 = v12->_aPasteButtonView;
    v12->_aPasteButtonView = v196;

    [(UIView *)v12->_aPasteButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v12->_containerView addSubview:v12->_aPasteButtonView];
    createSeparatorView3 = [(UIKBUndoInteractionHUD *)v12 createSeparatorView];
    contentView5 = [(UIVisualEffectView *)v12->_backgroundEffectView contentView];
    [contentView5 addSubview:createSeparatorView3];

    heightAnchor24 = [createSeparatorView3 heightAnchor];
    containerView3 = [(UIKBUndoInteractionHUD *)v12 containerView];
    heightAnchor25 = [containerView3 heightAnchor];
    v203 = [heightAnchor24 constraintEqualToAnchor:heightAnchor25];
    [v203 setActive:1];

    leadingAnchor16 = [createSeparatorView3 leadingAnchor];
    trailingAnchor12 = [(UIView *)v12->_aCopyButtonView trailingAnchor];
    v206 = [leadingAnchor16 constraintEqualToAnchor:trailingAnchor12];
    [v206 setActive:1];

    leadingAnchor17 = [(UIView *)v12->_aPasteButtonView leadingAnchor];
    trailingAnchor13 = [createSeparatorView3 trailingAnchor];
    v209 = [leadingAnchor17 constraintEqualToAnchor:trailingAnchor13];
    [v209 setActive:1];

    centerYAnchor17 = [(UIView *)v12->_aPasteButtonView centerYAnchor];
    centerYAnchor18 = [(UIView *)v12 centerYAnchor];
    v212 = [centerYAnchor17 constraintEqualToAnchor:centerYAnchor18];
    [v212 setActive:1];

    heightAnchor26 = [(UIView *)v12->_aPasteButtonView heightAnchor];
    heightAnchor27 = [(UIView *)v12->_aCutButtonView heightAnchor];
    v215 = [heightAnchor26 constraintEqualToAnchor:heightAnchor27 multiplier:1.0];
    [v215 setActive:1];

    widthAnchor17 = [(UIView *)v12->_aPasteButtonView widthAnchor];
    widthAnchor9 = v284;
    widthAnchor18 = [(UIView *)v12->_aCutButtonView widthAnchor];
    v219 = [widthAnchor17 constraintEqualToAnchor:widthAnchor18 multiplier:1.0];
    [v219 setActive:1];

    [(UIControl *)v12->_aPasteButtonView addTarget:v12 action:sel_controlActionDown_ forControlEvents:1];
    [(UIControl *)v12->_aPasteButtonView addTarget:v12 action:sel_controlActionUpInside_forEvent_ forControlEvents:64];
    [(UIControl *)v12->_aPasteButtonView addTarget:v12 action:sel_controlActionUpOutside_ forControlEvents:128];
    createSeparatorView4 = [(UIKBUndoInteractionHUD *)v12 createSeparatorView];
    contentView6 = [(UIVisualEffectView *)v12->_backgroundEffectView contentView];
    [contentView6 addSubview:createSeparatorView4];

    heightAnchor28 = [createSeparatorView4 heightAnchor];
    containerView4 = [(UIKBUndoInteractionHUD *)v12 containerView];
    heightAnchor29 = [containerView4 heightAnchor];
    v225 = [heightAnchor28 constraintEqualToAnchor:heightAnchor29];
    [v225 setActive:1];

    leadingAnchor18 = [createSeparatorView4 leadingAnchor];
    trailingAnchor14 = [(UIView *)v12->_aPasteButtonView trailingAnchor];
    v228 = [leadingAnchor18 constraintEqualToAnchor:trailingAnchor14];
    [v228 setActive:1];

    leadingAnchor19 = [(UIView *)v12->_rightButtonView leadingAnchor];
    trailingAnchor15 = [createSeparatorView4 trailingAnchor];
    v231 = [leadingAnchor19 constraintEqualToAnchor:trailingAnchor15];
    [v231 setActive:1];

    v232 = v283;
    [(UIKBUndoControl *)v12->_aPasteButtonView configureSecurePasteButtonInRootView:v12];

LABEL_42:
  }

  if (v287)
  {
    v280 = 4;
  }

  else
  {
    v280 = 3;
  }

  [(UIView *)v12->_rightButtonView setSemanticContentAttribute:v280];
  [(UIView *)v12->_leftButtonView setSemanticContentAttribute:v280];
  [(UIView *)v12->_aCutButtonView setSemanticContentAttribute:v280];
  [(UIView *)v12->_aCopyButtonView setSemanticContentAttribute:v280];
  [(UIView *)v12->_aPasteButtonView setSemanticContentAttribute:v280];
  [(UIView *)v12->_containerView setSemanticContentAttribute:v280];
  [(UIView *)v12 setSemanticContentAttribute:v280];
  [v12 setAccessibilityIdentifier:@"UIUndoInteractiveHUD"];
  v281 = v12;

LABEL_47:
  return v12;
}

- (id)createSeparatorView
{
  v2 = objc_alloc_init(UIView);
  v3 = +[UIColor separatorColor];
  v4 = [v3 colorWithAlphaComponent:0.1];
  [(UIView *)v2 setBackgroundColor:v4];

  [(UIView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen nativeScale];
  v7 = 1.0 / v6;

  widthAnchor = [(UIView *)v2 widthAnchor];
  v9 = [widthAnchor constraintEqualToConstant:v7];
  [v9 setActive:1];

  return v2;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = UIKBUndoInteractionHUD;
  [(UIView *)&v8 layoutSubviews];
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  style = [(UIKBUndoInteractionHUD *)self style];
  [style setAppearance:v4];

  traitOverrides = [(UIView *)self traitOverrides];
  v7 = objc_opt_self();
  [traitOverrides setNSIntegerValue:v4 forTrait:v7];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(UIView *)self bounds];
  v7 = v6 + -20.0;
  v9 = v8 + 40.0;
  v11 = v10 + -20.0;
  v13 = v12 + 40.0;
  v14 = x;
  v15 = y;

  return CGRectContainsPoint(*&v7, *&v14);
}

- (id)controlForType:(int64_t)type
{
  v11 = *MEMORY[0x1E69E9840];
  if (type > 3)
  {
    if ((type - 5) < 2)
    {
      v4 = 456;
      goto LABEL_16;
    }

    if (type == 4)
    {
      v4 = 448;
      goto LABEL_16;
    }
  }

  else
  {
    switch(type)
    {
      case 1:
        v4 = 424;
        goto LABEL_16;
      case 2:
        v4 = 432;
        goto LABEL_16;
      case 3:
        v4 = 440;
LABEL_16:
        v6 = *(&self->super.super.super.isa + v4);
        goto LABEL_17;
    }
  }

  if (os_variant_has_internal_diagnostics())
  {
    v8 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 134217984;
      typeCopy2 = type;
      _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Unexpected control type: %ld", &v9, 0xCu);
    }
  }

  else
  {
    v5 = *(__UILogGetCategoryCachedImpl("Assert", &controlForType____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      typeCopy2 = type;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Unexpected control type: %ld", &v9, 0xCu);
    }
  }

  v6 = 0;
LABEL_17:

  return v6;
}

- (BOOL)availableOfControl:(id)control
{
  controlCopy = control;
  if ([controlCopy type] == 1)
  {
    actionDelegate = [(UIKBUndoInteractionHUD *)self actionDelegate];
    canUndo = [actionDelegate canUndo];
  }

  else if ([controlCopy type] == 2)
  {
    actionDelegate = [(UIKBUndoInteractionHUD *)self actionDelegate];
    canUndo = [actionDelegate canRedo];
  }

  else if ([controlCopy type] == 3)
  {
    actionDelegate = [(UIKBUndoInteractionHUD *)self actionDelegate];
    canUndo = [actionDelegate canCut];
  }

  else if ([controlCopy type] == 4)
  {
    actionDelegate = [(UIKBUndoInteractionHUD *)self actionDelegate];
    canUndo = [actionDelegate canCopy];
  }

  else
  {
    if ([controlCopy type] != 5)
    {
      v7 = [controlCopy type] == 6;
      goto LABEL_12;
    }

    actionDelegate = [(UIKBUndoInteractionHUD *)self actionDelegate];
    canUndo = [actionDelegate canPaste];
  }

  v7 = canUndo;

LABEL_12:
  return v7;
}

- (void)willMoveToWindow:(id)window
{
  if (window)
  {
    v4 = [MEMORY[0x1E695DF00] now];
    [(UIKBUndoInteractionHUD *)self setAppearanceDate:v4];
  }

  else
  {

    [(UIKBUndoInteractionHUD *)self setAppearanceDate:?];
  }
}

- (void)updateHUDControlState
{
  leftButtonView = [(UIKBUndoInteractionHUD *)self leftButtonView];
  v4 = [(UIKBUndoInteractionHUD *)self availableOfControl:leftButtonView];
  leftButtonView2 = [(UIKBUndoInteractionHUD *)self leftButtonView];
  [leftButtonView2 setEnabled:v4];

  leftButtonView3 = [(UIKBUndoInteractionHUD *)self leftButtonView];
  [leftButtonView3 updateUndoControlStyle];

  rightButtonView = [(UIKBUndoInteractionHUD *)self rightButtonView];
  v8 = [(UIKBUndoInteractionHUD *)self availableOfControl:rightButtonView];
  rightButtonView2 = [(UIKBUndoInteractionHUD *)self rightButtonView];
  [rightButtonView2 setEnabled:v8];

  rightButtonView3 = [(UIKBUndoInteractionHUD *)self rightButtonView];
  [rightButtonView3 updateUndoControlStyle];

  aCutButtonView = [(UIKBUndoInteractionHUD *)self aCutButtonView];
  v12 = [(UIKBUndoInteractionHUD *)self availableOfControl:aCutButtonView];
  aCutButtonView2 = [(UIKBUndoInteractionHUD *)self aCutButtonView];
  [aCutButtonView2 setEnabled:v12];

  aCutButtonView3 = [(UIKBUndoInteractionHUD *)self aCutButtonView];
  [aCutButtonView3 updateUndoControlStyle];

  aCopyButtonView = [(UIKBUndoInteractionHUD *)self aCopyButtonView];
  v16 = [(UIKBUndoInteractionHUD *)self availableOfControl:aCopyButtonView];
  aCopyButtonView2 = [(UIKBUndoInteractionHUD *)self aCopyButtonView];
  [aCopyButtonView2 setEnabled:v16];

  aCopyButtonView3 = [(UIKBUndoInteractionHUD *)self aCopyButtonView];
  [aCopyButtonView3 updateUndoControlStyle];

  aPasteButtonView = [(UIKBUndoInteractionHUD *)self aPasteButtonView];
  v20 = [(UIKBUndoInteractionHUD *)self availableOfControl:aPasteButtonView];
  aPasteButtonView2 = [(UIKBUndoInteractionHUD *)self aPasteButtonView];
  [aPasteButtonView2 setEnabled:v20];

  aPasteButtonView3 = [(UIKBUndoInteractionHUD *)self aPasteButtonView];
  [aPasteButtonView3 updateUndoControlStyle];

  [(UIView *)self layoutIfNeeded];
}

- (void)performDelegateUndoAndUpdateHUDIfNeeded
{
  actionDelegate = [(UIKBUndoInteractionHUD *)self actionDelegate];

  if (actionDelegate)
  {
    actionDelegate2 = [(UIKBUndoInteractionHUD *)self actionDelegate];
    [actionDelegate2 undo:0];
  }
}

- (void)performDelegateRedoAndUpdateHUDIfNeeded
{
  actionDelegate = [(UIKBUndoInteractionHUD *)self actionDelegate];

  if (actionDelegate)
  {
    actionDelegate2 = [(UIKBUndoInteractionHUD *)self actionDelegate];
    [actionDelegate2 redo:0];
  }
}

- (void)controlActionDown:(id)down
{
  downCopy = down;
  if ([downCopy state] != 2)
  {
    if ([downCopy type] == 5)
    {
      appearanceDate = [(UIKBUndoInteractionHUD *)self appearanceDate];
      _UIPasteboardAnalyticsReportEvent(@"UndoHUD", appearanceDate);
    }

    [downCopy updateUndoControlStyle];
  }
}

- (void)controlActionUpInside:(id)inside forEvent:(id)event
{
  insideCopy = inside;
  eventCopy = event;
  if ([insideCopy state] != 2)
  {
    v7 = +[UIKeyboardImpl activeInstance];
    [v7 updateIdleDetection:5];

    if ([insideCopy type] == 1)
    {
      [(UIKBUndoInteractionHUD *)self performDelegateUndoAndUpdateHUDIfNeeded];
      v8 = UIKBAnalyticsTextEditingOperationUndo;
    }

    else if ([insideCopy type] == 2)
    {
      [(UIKBUndoInteractionHUD *)self performDelegateRedoAndUpdateHUDIfNeeded];
      v8 = UIKBAnalyticsTextEditingOperationRedo;
    }

    else if ([insideCopy type] == 3)
    {
      actionDelegate = [(UIKBUndoInteractionHUD *)self actionDelegate];
      [actionDelegate cutOperation];

      v8 = UIKBAnalyticsTextEditingOperationCut;
    }

    else if ([insideCopy type] == 4)
    {
      actionDelegate2 = [(UIKBUndoInteractionHUD *)self actionDelegate];
      [actionDelegate2 copyOperation];

      v8 = UIKBAnalyticsTextEditingOperationCopy;
    }

    else
    {
      if ([insideCopy type] != 5 && objc_msgSend(insideCopy, "type") != 6)
      {
        goto LABEL_14;
      }

      _authenticationMessage = [eventCopy _authenticationMessage];
      [UIPasteboard _attemptAuthenticationWithMessage:_authenticationMessage];

      actionDelegate3 = [(UIKBUndoInteractionHUD *)self actionDelegate];
      [actionDelegate3 pasteOperation];

      v8 = UIKBAnalyticsTextEditingOperationPaste;
    }

    [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:*v8 trigger:@"UndoHUDControl"];
LABEL_14:
    [insideCopy setHighlighted:0];
    [insideCopy updateUndoControlStyle];
    [(UIView *)self setNeedsLayout];
  }
}

- (void)controlActionUpOutside:(id)outside
{
  outsideCopy = outside;
  if ([outsideCopy state] != 2)
  {
    [outsideCopy updateUndoControlStyle];
    [(UIView *)self setNeedsLayout];
  }
}

- (void)updateControlWithDirection:(int64_t)direction travelProgress:(double)progress isRTL:(BOOL)l
{
  lCopy = l;
  v7 = 0;
  if (direction > 7)
  {
    switch(direction)
    {
      case 8:
        aCopyButtonView = [(UIKBUndoInteractionHUD *)self aCopyButtonView];
        break;
      case 9:
        aCopyButtonView = [(UIKBUndoInteractionHUD *)self aCutButtonView];
        break;
      case 10:
        aCopyButtonView = [(UIKBUndoInteractionHUD *)self aPasteButtonView];
        break;
      default:
        goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (direction != 2)
  {
    if (direction != 3)
    {
      goto LABEL_15;
    }

    if (!l)
    {
      goto LABEL_9;
    }

LABEL_13:
    aCopyButtonView = [(UIKBUndoInteractionHUD *)self leftButtonView];
    goto LABEL_14;
  }

  if (!l)
  {
    goto LABEL_13;
  }

LABEL_9:
  aCopyButtonView = [(UIKBUndoInteractionHUD *)self rightButtonView];
LABEL_14:
  v7 = aCopyButtonView;
LABEL_15:
  v9 = v7;
  [v7 updateCoverWithTavelProcess:lCopy isRTL:progress];
}

- (UIInteractiveUndoHUDActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

@end