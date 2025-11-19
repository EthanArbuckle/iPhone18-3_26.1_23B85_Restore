@interface UIKBUndoControl
+ (id)controlLableTextByType:(int64_t)a3 style:(id)a4 available:(BOOL)a5;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIKBUndoControl)initWithType:(int64_t)a3 andStyling:(id)a4;
- (_UISlotView)securePasteButtonSlotView;
- (id)controlImageByType:(int64_t)a3;
- (id)controlLabelImageNameByType:(int64_t)a3 isRTL:(BOOL)a4;
- (void)configureSecurePasteButtonInRootView:(id)a3;
- (void)layoutControlForType:(int64_t)a3 andStyling:(id)a4;
- (void)layoutSubviews;
- (void)updateCoverWithTavelProcess:(double)a3 isRTL:(BOOL)a4;
- (void)updateUndoControlStyle;
@end

@implementation UIKBUndoControl

- (UIKBUndoControl)initWithType:(int64_t)a3 andStyling:(id)a4
{
  v7 = a4;
  v32.receiver = self;
  v32.super_class = UIKBUndoControl;
  v8 = [(UIView *)&v32 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_style, a4);
    v10 = +[UIColor clearColor];
    [(UIView *)v9 setBackgroundColor:v10];

    v11 = objc_alloc_init(UIView);
    springCoverView = v9->_springCoverView;
    v9->_springCoverView = v11;

    [(UIView *)v9->_springCoverView setUserInteractionEnabled:0];
    v13 = [v7 HUDbackgroundColor];
    [(UIView *)v9->_springCoverView setBackgroundColor:v13];

    [(UIView *)v9->_springCoverView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v9 addSubview:v9->_springCoverView];
    v14 = [(UIView *)v9->_springCoverView leftAnchor];
    v15 = [(UIView *)v9 leftAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:0.0];
    coverConstraintLeftAnchor = v9->_coverConstraintLeftAnchor;
    v9->_coverConstraintLeftAnchor = v16;

    [(NSLayoutConstraint *)v9->_coverConstraintLeftAnchor setActive:1];
    v18 = [(UIView *)v9->_springCoverView rightAnchor];
    v19 = [(UIView *)v9 rightAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:0.0];
    coverConstraintRightAnchor = v9->_coverConstraintRightAnchor;
    v9->_coverConstraintRightAnchor = v20;

    [(NSLayoutConstraint *)v9->_coverConstraintRightAnchor setActive:1];
    v22 = [(UIView *)v9->_springCoverView topAnchor];
    v23 = [(UIView *)v9 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:0.0];
    coverConstraintTopAnchor = v9->_coverConstraintTopAnchor;
    v9->_coverConstraintTopAnchor = v24;

    [(NSLayoutConstraint *)v9->_coverConstraintTopAnchor setActive:1];
    v26 = [(UIView *)v9->_springCoverView bottomAnchor];
    v27 = [(UIView *)v9 bottomAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:0.0];
    coverConstraintBottomAnchor = v9->_coverConstraintBottomAnchor;
    v9->_coverConstraintBottomAnchor = v28;

    [(NSLayoutConstraint *)v9->_coverConstraintBottomAnchor setActive:1];
    [(UIKBUndoControl *)v9 layoutControlForType:a3 andStyling:v7];
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
  v3 = [(UIView *)self traitCollection];
  if ([v3 userInterfaceStyle] == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = [(UIKBUndoControl *)self style];
  [v5 setAppearance:v4];

  v6 = [(UIView *)self traitOverrides];
  v7 = objc_opt_self();
  [v6 setNSIntegerValue:v4 forTrait:v7];
}

- (void)updateUndoControlStyle
{
  v3 = [(UIControl *)self state];
  if (v3 == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_securePasteButtonSlotView);
    [WeakRetained setAlpha:0.0];

    v9 = [(UIKBUndoStyling *)self->_style buttonGlyphColorDisabled];
    [(UILabel *)self->_label setTextColor:v9];
    [(UIView *)self->_icon setTintColor:v9];

    springCoverView = self->_springCoverView;

    [(UIView *)springCoverView setAlpha:1.0];
  }

  else
  {
    if (v3 == 1)
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

      v12 = [(UIKBUndoControl *)self springCoverView];
      v15 = v12;
      v13 = 0.0;
    }

    else
    {
      if (v3)
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

      v12 = [(UIKBUndoControl *)self springCoverView];
      v15 = v12;
      v13 = 1.0;
    }

    [v12 setAlpha:v13];
  }
}

- (void)updateCoverWithTavelProcess:(double)a3 isRTL:(BOOL)a4
{
  v4 = a4;
  if ([(UIKBUndoControl *)self type]== 1)
  {
    if (v4)
    {
LABEL_3:
      [(UIView *)self bounds];
      v7 = CGRectGetWidth(v16) * a3;
      v8 = [(UIKBUndoControl *)self coverConstraintLeftAnchor];
LABEL_11:
      v11 = v8;
      [v8 setConstant:v7];

      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if ([(UIKBUndoControl *)self type]== 2)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    [(UIView *)self bounds];
    v7 = -(a3 * CGRectGetWidth(v17));
LABEL_10:
    v8 = [(UIKBUndoControl *)self coverConstraintRightAnchor];
    goto LABEL_11;
  }

  if ([(UIKBUndoControl *)self type]== 4 || [(UIKBUndoControl *)self type]== 3)
  {
    [(UIView *)self bounds];
    v9 = CGRectGetWidth(v18) * a3 * 0.5;
    v10 = [(UIKBUndoControl *)self coverConstraintLeftAnchor];
    [v10 setConstant:v9];

    [(UIView *)self bounds];
    v7 = -(a3 * CGRectGetWidth(v19)) * 0.5;
    goto LABEL_10;
  }

  if ([(UIKBUndoControl *)self type]== 5 || [(UIKBUndoControl *)self type]== 6)
  {
    v12 = 1.0 - a3;
    [(UIView *)self bounds];
    v13 = (1.0 - a3) * CGRectGetWidth(v20) * 0.5;
    v14 = [(UIKBUndoControl *)self coverConstraintLeftAnchor];
    [v14 setConstant:v13];

    [(UIView *)self bounds];
    v7 = v12 * CGRectGetWidth(v21) * -0.5;
    goto LABEL_10;
  }

LABEL_12:

  [(UIView *)self layoutIfNeeded];
}

- (id)controlLabelImageNameByType:(int64_t)a3 isRTL:(BOOL)a4
{
  if (a3 > 3)
  {
    v5 = @"doc.on.doc";
    if (a3 != 4)
    {
      v5 = 0;
    }

    if ((a3 - 5) >= 2)
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
    if (a3 == 1)
    {
      v6 = @"arrow.uturn.backward";
      v7 = @"arrow.uturn.forward";
    }

    else
    {
      if (a3 != 2)
      {
        if (a3 == 3)
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

    if (a4)
    {
      v6 = v7;
    }

    v4 = v6;
  }

LABEL_17:

  return v4;
}

- (id)controlImageByType:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    v4 = 0;
  }

  else
  {
    v3 = [UIImage systemImageNamed:off_1E7119830[a3 - 1]];
    v4 = [v3 imageWithRenderingMode:2];
  }

  return v4;
}

+ (id)controlLableTextByType:(int64_t)a3 style:(id)a4 available:(BOOL)a5
{
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      if (a5)
      {
        v10 = @"Copy";
      }

      else
      {
        v10 = @"Nothing to Copy";
      }

      goto LABEL_26;
    }

    if (a3 == 5)
    {
      if (a5)
      {
        v10 = @"Paste";
      }

      else
      {
        v10 = @"Nothing to Paste";
      }

      goto LABEL_26;
    }

    if (a3 != 6)
    {
      goto LABEL_28;
    }

    if ([v7 tooSmallForInstructionalText])
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
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        if (a3 != 3)
        {
          goto LABEL_28;
        }

        if (a5)
        {
          v10 = @"Cut";
        }

        else
        {
          v10 = @"Nothing to Cut";
        }

        goto LABEL_26;
      }

      if (a5)
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

    if (!a5)
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

- (void)layoutControlForType:(int64_t)a3 andStyling:(id)a4
{
  v59 = a4;
  v6 = [(UIKBUndoControl *)self controlImageByType:a3];
  v7 = [[UIImageView alloc] initWithImage:v6];
  icon = self->_icon;
  self->_icon = v7;

  [(UIImageView *)self->_icon setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_icon setContentMode:1];
  v9 = [v59 undoInteractiveControlLabelFont];
  v10 = [UIImageSymbolConfiguration configurationWithFont:v9];
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
  if ((a3 - 3) > 3)
  {
    if (![v59 undoRedoIconOnly])
    {
      v35 = objc_alloc_init(UILabel);
      label = self->_label;
      self->_label = v35;

      [(UIView *)self addSubview:self->_label];
      [(UIView *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
      v37 = [objc_opt_class() controlLableTextByType:a3 style:self->_style available:1];
      [(UILabel *)self->_label setText:v37];

      v38 = [(UIKBUndoStyling *)self->_style undoInteractiveControlLabelFont];
      [(UILabel *)self->_label setFont:v38];

      v39 = [(UIView *)self->_icon firstBaselineAnchor];
      v40 = [(UIView *)self->_label firstBaselineAnchor];
      v41 = [v39 constraintEqualToAnchor:v40];
      [v41 setActive:1];

      v42 = [(UIView *)self->_label centerYAnchor];
      v43 = [(UIView *)self centerYAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];
      [v44 setActive:1];

      if (a3 == 1)
      {
        v45 = [(UIView *)self->_icon leadingAnchor];
        v46 = [(UIView *)self leadingAnchor];
        v47 = [v45 constraintEqualToAnchor:v46 constant:21.0];
        [v47 setActive:1];

        v48 = [(UIView *)self->_label leadingAnchor];
        v49 = [(UIView *)self->_icon trailingAnchor];
        v50 = [v48 constraintEqualToAnchor:v49 constant:4.0];
        [v50 setActive:1];

        v32 = [(UIView *)self trailingAnchor];
        v33 = [(UIView *)self->_label trailingAnchor];
        v51 = 22.0;
      }

      else
      {
        v52 = [(UIView *)self->_label leadingAnchor];
        v53 = [(UIView *)self leadingAnchor];
        v54 = [v52 constraintEqualToAnchor:v53 constant:22.0];
        [v54 setActive:1];

        v55 = [(UIView *)self->_icon leadingAnchor];
        v56 = [(UIView *)self->_label trailingAnchor];
        v57 = [v55 constraintEqualToAnchor:v56 constant:4.0];
        [v57 setActive:1];

        v32 = [(UIView *)self trailingAnchor];
        v33 = [(UIView *)self->_icon trailingAnchor];
        v51 = 21.0;
      }

      v34 = [v32 constraintEqualToAnchor:v33 constant:v51];
      goto LABEL_16;
    }

    v17 = [(UIView *)self->_icon centerXAnchor];
    v18 = [(UIView *)self centerXAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
  }

  else
  {
    v12 = [v59 cutCopyPasteIconOnly];
    v13 = self->_icon;
    if (!v12)
    {
      [(UIView *)v13 removeFromSuperview];
      v22 = objc_alloc_init(UILabel);
      v23 = self->_label;
      self->_label = v22;

      [(UIView *)self addSubview:self->_label];
      [(UIView *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)self->_label setTextAlignment:1];
      v24 = [objc_opt_class() controlLableTextByType:a3 style:self->_style available:1];
      [(UILabel *)self->_label setText:v24];

      v25 = [v59 undoInteractiveControlLabelFont];
      [(UILabel *)self->_label setFont:v25];

      v26 = [(UIView *)self->_label leadingAnchor];
      v27 = [(UIView *)self leadingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27 constant:16.0];
      [v28 setActive:1];

      v29 = [(UIView *)self trailingAnchor];
      v30 = [(UIView *)self->_label trailingAnchor];
      v31 = [v29 constraintEqualToAnchor:v30 constant:16.0];
      [v31 setActive:1];

      v21 = self->_label;
      goto LABEL_11;
    }

    v14 = [(UIView *)v13 leadingAnchor];
    v15 = [(UIView *)self leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:16.0];
    [v16 setActive:1];

    v17 = [(UIView *)self trailingAnchor];
    v18 = [(UIView *)self->_icon trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:16.0];
  }

  v20 = v19;
  [v19 setActive:1];

  v21 = self->_icon;
LABEL_11:
  v32 = [v21 centerYAnchor];
  v33 = [(UIView *)self centerYAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
LABEL_16:
  v58 = v34;
  [v34 setActive:1];
}

- (void)configureSecurePasteButtonInRootView:(id)a3
{
  v4 = a3;
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

  v7 = [(UIKBUndoStyling *)self->_style cutCopyPasteIconOnly];
  v8 = MEMORY[0x1E69BC820];
  [(UIKBUndoStyling *)self->_style cutControlMinWidth];
  if (v7)
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
  [(_UISlotView *)v6 _overlayView:v4 centerInView:self, v12, v13, v14, v15];
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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