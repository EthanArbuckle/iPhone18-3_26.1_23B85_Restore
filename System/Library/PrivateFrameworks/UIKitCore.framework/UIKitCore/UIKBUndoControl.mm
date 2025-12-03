@interface UIKBUndoControl
+ (id)controlLableTextByType:(int64_t)type style:(id)style available:(BOOL)available;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIKBUndoControl)initWithType:(int64_t)type andStyling:(id)styling;
- (_UISlotView)securePasteButtonSlotView;
- (id)controlImageByType:(int64_t)type;
- (id)controlLabelImageNameByType:(int64_t)type isRTL:(BOOL)l;
- (void)configureSecurePasteButtonInRootView:(id)view;
- (void)layoutControlForType:(int64_t)type andStyling:(id)styling;
- (void)layoutSubviews;
- (void)updateCoverWithTavelProcess:(double)process isRTL:(BOOL)l;
- (void)updateUndoControlStyle;
@end

@implementation UIKBUndoControl

- (UIKBUndoControl)initWithType:(int64_t)type andStyling:(id)styling
{
  stylingCopy = styling;
  v32.receiver = self;
  v32.super_class = UIKBUndoControl;
  v8 = [(UIView *)&v32 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_style, styling);
    v10 = +[UIColor clearColor];
    [(UIView *)v9 setBackgroundColor:v10];

    v11 = objc_alloc_init(UIView);
    springCoverView = v9->_springCoverView;
    v9->_springCoverView = v11;

    [(UIView *)v9->_springCoverView setUserInteractionEnabled:0];
    hUDbackgroundColor = [stylingCopy HUDbackgroundColor];
    [(UIView *)v9->_springCoverView setBackgroundColor:hUDbackgroundColor];

    [(UIView *)v9->_springCoverView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v9 addSubview:v9->_springCoverView];
    leftAnchor = [(UIView *)v9->_springCoverView leftAnchor];
    leftAnchor2 = [(UIView *)v9 leftAnchor];
    v16 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
    coverConstraintLeftAnchor = v9->_coverConstraintLeftAnchor;
    v9->_coverConstraintLeftAnchor = v16;

    [(NSLayoutConstraint *)v9->_coverConstraintLeftAnchor setActive:1];
    rightAnchor = [(UIView *)v9->_springCoverView rightAnchor];
    rightAnchor2 = [(UIView *)v9 rightAnchor];
    v20 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:0.0];
    coverConstraintRightAnchor = v9->_coverConstraintRightAnchor;
    v9->_coverConstraintRightAnchor = v20;

    [(NSLayoutConstraint *)v9->_coverConstraintRightAnchor setActive:1];
    topAnchor = [(UIView *)v9->_springCoverView topAnchor];
    topAnchor2 = [(UIView *)v9 topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    coverConstraintTopAnchor = v9->_coverConstraintTopAnchor;
    v9->_coverConstraintTopAnchor = v24;

    [(NSLayoutConstraint *)v9->_coverConstraintTopAnchor setActive:1];
    bottomAnchor = [(UIView *)v9->_springCoverView bottomAnchor];
    bottomAnchor2 = [(UIView *)v9 bottomAnchor];
    v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    coverConstraintBottomAnchor = v9->_coverConstraintBottomAnchor;
    v9->_coverConstraintBottomAnchor = v28;

    [(NSLayoutConstraint *)v9->_coverConstraintBottomAnchor setActive:1];
    [(UIKBUndoControl *)v9 layoutControlForType:type andStyling:stylingCopy];
    [(UIView *)v9 _setDisableDictationTouchCancellation:1];
    v30 = v9;
  }

  return v9;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = UIKBUndoControl;
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

  style = [(UIKBUndoControl *)self style];
  [style setAppearance:v4];

  traitOverrides = [(UIView *)self traitOverrides];
  v7 = objc_opt_self();
  [traitOverrides setNSIntegerValue:v4 forTrait:v7];
}

- (void)updateUndoControlStyle
{
  state = [(UIControl *)self state];
  if (state == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_securePasteButtonSlotView);
    [WeakRetained setAlpha:0.0];

    buttonGlyphColorDisabled = [(UIKBUndoStyling *)self->_style buttonGlyphColorDisabled];
    [(UILabel *)self->_label setTextColor:buttonGlyphColorDisabled];
    [(UIView *)self->_icon setTintColor:buttonGlyphColorDisabled];

    springCoverView = self->_springCoverView;

    [(UIView *)springCoverView setAlpha:1.0];
  }

  else
  {
    if (state == 1)
    {
      v6 = objc_loadWeakRetained(&self->_securePasteButtonSlotView);

      if (v6)
      {
        v7 = objc_loadWeakRetained(&self->_securePasteButtonSlotView);
        [v7 setAlpha:1.0];

        +[UIColor clearColor];
      }

      else
      {
        [(UIKBUndoStyling *)self->_style buttonGlyphColorPressed];
      }
      v11 = ;
      [(UILabel *)self->_label setTextColor:v11];
      [(UIView *)self->_icon setTintColor:v11];

      springCoverView = [(UIKBUndoControl *)self springCoverView];
      v15 = springCoverView;
      v13 = 0.0;
    }

    else
    {
      if (state)
      {
        return;
      }

      v4 = objc_loadWeakRetained(&self->_securePasteButtonSlotView);

      if (v4)
      {
        v5 = objc_loadWeakRetained(&self->_securePasteButtonSlotView);
        [v5 setAlpha:0.8];

        +[UIColor clearColor];
      }

      else
      {
        [(UIKBUndoStyling *)self->_style buttonGlyphColorEnabled];
      }
      v14 = ;
      [(UILabel *)self->_label setTextColor:v14];
      [(UIView *)self->_icon setTintColor:v14];

      springCoverView = [(UIKBUndoControl *)self springCoverView];
      v15 = springCoverView;
      v13 = 1.0;
    }

    [springCoverView setAlpha:v13];
  }
}

- (void)updateCoverWithTavelProcess:(double)process isRTL:(BOOL)l
{
  lCopy = l;
  if ([(UIKBUndoControl *)self type]== 1)
  {
    if (lCopy)
    {
LABEL_3:
      [(UIView *)self bounds];
      v7 = CGRectGetWidth(v16) * process;
      coverConstraintLeftAnchor = [(UIKBUndoControl *)self coverConstraintLeftAnchor];
LABEL_11:
      v11 = coverConstraintLeftAnchor;
      [coverConstraintLeftAnchor setConstant:v7];

      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if ([(UIKBUndoControl *)self type]== 2)
  {
    if (!lCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [(UIView *)self bounds];
    v7 = -(process * CGRectGetWidth(v17));
LABEL_10:
    coverConstraintLeftAnchor = [(UIKBUndoControl *)self coverConstraintRightAnchor];
    goto LABEL_11;
  }

  if ([(UIKBUndoControl *)self type]== 4 || [(UIKBUndoControl *)self type]== 3)
  {
    [(UIView *)self bounds];
    v9 = CGRectGetWidth(v18) * process * 0.5;
    coverConstraintLeftAnchor2 = [(UIKBUndoControl *)self coverConstraintLeftAnchor];
    [coverConstraintLeftAnchor2 setConstant:v9];

    [(UIView *)self bounds];
    v7 = -(process * CGRectGetWidth(v19)) * 0.5;
    goto LABEL_10;
  }

  if ([(UIKBUndoControl *)self type]== 5 || [(UIKBUndoControl *)self type]== 6)
  {
    v12 = 1.0 - process;
    [(UIView *)self bounds];
    v13 = (1.0 - process) * CGRectGetWidth(v20) * 0.5;
    coverConstraintLeftAnchor3 = [(UIKBUndoControl *)self coverConstraintLeftAnchor];
    [coverConstraintLeftAnchor3 setConstant:v13];

    [(UIView *)self bounds];
    v7 = v12 * CGRectGetWidth(v21) * -0.5;
    goto LABEL_10;
  }

LABEL_12:

  [(UIView *)self layoutIfNeeded];
}

- (id)controlLabelImageNameByType:(int64_t)type isRTL:(BOOL)l
{
  if (type > 3)
  {
    v5 = @"doc.on.doc";
    if (type != 4)
    {
      v5 = 0;
    }

    if ((type - 5) >= 2)
    {
      v4 = v5;
    }

    else
    {
      v4 = @"doc.on.clipboard";
    }
  }

  else
  {
    if (type == 1)
    {
      v6 = @"arrow.uturn.backward";
      v7 = @"arrow.uturn.forward";
    }

    else
    {
      if (type != 2)
      {
        if (type == 3)
        {
          v4 = @"scissors";
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_17;
      }

      v6 = @"arrow.uturn.forward";
      v7 = @"arrow.uturn.backward";
    }

    if (l)
    {
      v6 = v7;
    }

    v4 = v6;
  }

LABEL_17:

  return v4;
}

- (id)controlImageByType:(int64_t)type
{
  if ((type - 1) > 5)
  {
    v4 = 0;
  }

  else
  {
    v3 = [UIImage systemImageNamed:off_1E7119830[type - 1]];
    v4 = [v3 imageWithRenderingMode:2];
  }

  return v4;
}

+ (id)controlLableTextByType:(int64_t)type style:(id)style available:(BOOL)available
{
  styleCopy = style;
  v8 = styleCopy;
  v9 = 0;
  if (type > 3)
  {
    if (type == 4)
    {
      if (available)
      {
        v10 = @"Copy";
      }

      else
      {
        v10 = @"Nothing to Copy";
      }

      goto LABEL_26;
    }

    if (type == 5)
    {
      if (available)
      {
        v10 = @"Paste";
      }

      else
      {
        v10 = @"Nothing to Paste";
      }

      goto LABEL_26;
    }

    if (type != 6)
    {
      goto LABEL_28;
    }

    if ([styleCopy tooSmallForInstructionalText])
    {
      v10 = @"PASTE_ALLOW_BUTTON_WITHOUT_EXPLANATION_TEXT";
      v11 = @"Allow Paste";
    }

    else
    {
      v10 = @"PASTE_ALLOW_BUTTON_TEXT";
      v11 = @"Allow";
    }
  }

  else
  {
    if (type != 1)
    {
      if (type != 2)
      {
        if (type != 3)
        {
          goto LABEL_28;
        }

        if (available)
        {
          v10 = @"Cut";
        }

        else
        {
          v10 = @"Nothing to Cut";
        }

        goto LABEL_26;
      }

      if (available)
      {
        v10 = @"REDO_BUTTON_TITLE_LABEL_IN_HUD";
        v11 = @"Redo";
        goto LABEL_27;
      }

      v10 = @"Nothing to Redo";
LABEL_26:
      v11 = v10;
      goto LABEL_27;
    }

    if (!available)
    {
      v10 = @"Nothing to Undo";
      goto LABEL_26;
    }

    v10 = @"UNDO_BUTTON_TITLE_LABEL_IN_HUD";
    v11 = @"Undo";
  }

LABEL_27:
  v9 = _UILocalizedStringInSystemLanguage(v10, v11);
LABEL_28:

  return v9;
}

- (void)layoutControlForType:(int64_t)type andStyling:(id)styling
{
  stylingCopy = styling;
  v6 = [(UIKBUndoControl *)self controlImageByType:type];
  v7 = [[UIImageView alloc] initWithImage:v6];
  icon = self->_icon;
  self->_icon = v7;

  [(UIImageView *)self->_icon setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_icon setContentMode:1];
  undoInteractiveControlLabelFont = [stylingCopy undoInteractiveControlLabelFont];
  v10 = [UIImageSymbolConfiguration configurationWithFont:undoInteractiveControlLabelFont];
  [(UIImageView *)self->_icon setPreferredSymbolConfiguration:v10];

  if ([(UIKBUndoStyling *)self->_style isRTL])
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  [(UIImageView *)self->_icon setSemanticContentAttribute:v11];
  [(UIView *)self addSubview:self->_icon];
  if ((type - 3) > 3)
  {
    if (![stylingCopy undoRedoIconOnly])
    {
      v35 = objc_alloc_init(UILabel);
      label = self->_label;
      self->_label = v35;

      [(UIView *)self addSubview:self->_label];
      [(UIView *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
      v37 = [objc_opt_class() controlLableTextByType:type style:self->_style available:1];
      [(UILabel *)self->_label setText:v37];

      undoInteractiveControlLabelFont2 = [(UIKBUndoStyling *)self->_style undoInteractiveControlLabelFont];
      [(UILabel *)self->_label setFont:undoInteractiveControlLabelFont2];

      firstBaselineAnchor = [(UIView *)self->_icon firstBaselineAnchor];
      firstBaselineAnchor2 = [(UIView *)self->_label firstBaselineAnchor];
      v41 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
      [v41 setActive:1];

      centerYAnchor = [(UIView *)self->_label centerYAnchor];
      centerYAnchor2 = [(UIView *)self centerYAnchor];
      v44 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [v44 setActive:1];

      if (type == 1)
      {
        leadingAnchor = [(UIView *)self->_icon leadingAnchor];
        leadingAnchor2 = [(UIView *)self leadingAnchor];
        v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:21.0];
        [v47 setActive:1];

        leadingAnchor3 = [(UIView *)self->_label leadingAnchor];
        trailingAnchor = [(UIView *)self->_icon trailingAnchor];
        v50 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:4.0];
        [v50 setActive:1];

        trailingAnchor2 = [(UIView *)self trailingAnchor];
        trailingAnchor3 = [(UIView *)self->_label trailingAnchor];
        v51 = 22.0;
      }

      else
      {
        leadingAnchor4 = [(UIView *)self->_label leadingAnchor];
        leadingAnchor5 = [(UIView *)self leadingAnchor];
        v54 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:22.0];
        [v54 setActive:1];

        leadingAnchor6 = [(UIView *)self->_icon leadingAnchor];
        trailingAnchor4 = [(UIView *)self->_label trailingAnchor];
        v57 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4 constant:4.0];
        [v57 setActive:1];

        trailingAnchor2 = [(UIView *)self trailingAnchor];
        trailingAnchor3 = [(UIView *)self->_icon trailingAnchor];
        v51 = 21.0;
      }

      v34 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:v51];
      goto LABEL_16;
    }

    centerXAnchor = [(UIView *)self->_icon centerXAnchor];
    centerXAnchor2 = [(UIView *)self centerXAnchor];
    v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  }

  else
  {
    cutCopyPasteIconOnly = [stylingCopy cutCopyPasteIconOnly];
    v13 = self->_icon;
    if (!cutCopyPasteIconOnly)
    {
      [(UIView *)v13 removeFromSuperview];
      v22 = objc_alloc_init(UILabel);
      v23 = self->_label;
      self->_label = v22;

      [(UIView *)self addSubview:self->_label];
      [(UIView *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)self->_label setTextAlignment:1];
      v24 = [objc_opt_class() controlLableTextByType:type style:self->_style available:1];
      [(UILabel *)self->_label setText:v24];

      undoInteractiveControlLabelFont3 = [stylingCopy undoInteractiveControlLabelFont];
      [(UILabel *)self->_label setFont:undoInteractiveControlLabelFont3];

      leadingAnchor7 = [(UIView *)self->_label leadingAnchor];
      leadingAnchor8 = [(UIView *)self leadingAnchor];
      v28 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:16.0];
      [v28 setActive:1];

      trailingAnchor5 = [(UIView *)self trailingAnchor];
      trailingAnchor6 = [(UIView *)self->_label trailingAnchor];
      v31 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:16.0];
      [v31 setActive:1];

      v21 = self->_label;
      goto LABEL_11;
    }

    leadingAnchor9 = [(UIView *)v13 leadingAnchor];
    leadingAnchor10 = [(UIView *)self leadingAnchor];
    v16 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:16.0];
    [v16 setActive:1];

    centerXAnchor = [(UIView *)self trailingAnchor];
    centerXAnchor2 = [(UIView *)self->_icon trailingAnchor];
    v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:16.0];
  }

  v20 = v19;
  [v19 setActive:1];

  v21 = self->_icon;
LABEL_11:
  trailingAnchor2 = [v21 centerYAnchor];
  trailingAnchor3 = [(UIView *)self centerYAnchor];
  v34 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
LABEL_16:
  v58 = v34;
  [v34 setActive:1];
}

- (void)configureSecurePasteButtonInRootView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_securePasteButtonSlotView);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_securePasteButtonSlotView);
  }

  else
  {
    v6 = objc_alloc_init(_UISlotView);
    objc_storeWeak(&self->_securePasteButtonSlotView, v6);
  }

  cutCopyPasteIconOnly = [(UIKBUndoStyling *)self->_style cutCopyPasteIconOnly];
  v8 = MEMORY[0x1E69BC820];
  [(UIKBUndoStyling *)self->_style cutControlMinWidth];
  if (cutCopyPasteIconOnly)
  {
    [v8 undoInteractionHUDIconPasteButtonTagWithMinWidth:?];
  }

  else
  {
    [v8 undoInteractionHUDTextPasteButtonTagWithMinWidth:?];
  }
  v9 = ;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__UIKBUndoControl_configureSecurePasteButtonInRootView___block_invoke;
  v18[3] = &unk_1E70F7530;
  v10 = v9;
  v19 = v10;
  [(_UISlotView *)v6 _setSlotStyleResolver:v18];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __56__UIKBUndoControl_configureSecurePasteButtonInRootView___block_invoke_2;
  v15 = &unk_1E70F75A8;
  v11 = v10;
  v16 = v11;
  objc_copyWeak(&v17, &location);
  [(_UISlotView *)v6 _setSlotAnyContentProvider:&v12];
  [(_UISlotView *)v6 _overlayView:viewCopy centerInView:self, v12, v13, v14, v15];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

void __56__UIKBUndoControl_configureSecurePasteButtonInRootView___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__UIKBUndoControl_configureSecurePasteButtonInRootView___block_invoke_3;
  block[3] = &unk_1E70F7580;
  v16[1] = a2;
  v13 = v7;
  v14 = *(a1 + 32);
  v15 = v8;
  v10 = v8;
  v11 = v7;
  objc_copyWeak(v16, (a1 + 40));
  dispatch_async(v9, block);

  objc_destroyWeak(v16);
}

void __56__UIKBUndoControl_configureSecurePasteButtonInRootView___block_invoke_3(uint64_t a1)
{
  v2 = [_UIConcretePasteboard _remoteContentForLayerContextWithId:*(a1 + 64) slotStyle:*(a1 + 32) pasteButtonTag:*(a1 + 40)];
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__UIKBUndoControl_configureSecurePasteButtonInRootView___block_invoke_4;
    block[3] = &unk_1E70F7558;
    v5 = *(a1 + 48);
    v4 = v2;
    objc_copyWeak(&v6, (a1 + 56));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v6);
  }
}

void __56__UIKBUndoControl_configureSecurePasteButtonInRootView___block_invoke_4(uint64_t a1)
{
  if ((*(*(a1 + 40) + 16))())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained updateUndoControlStyle];
  }
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

- (_UISlotView)securePasteButtonSlotView
{
  WeakRetained = objc_loadWeakRetained(&self->_securePasteButtonSlotView);

  return WeakRetained;
}

@end