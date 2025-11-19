@interface _UIDatePickerCompactDateLabel
- (BOOL)adjustsFontSizeToFitWidth;
- (NSArray)titles;
- (NSDictionary)overrideAttributes;
- (_UIDatePickerCompactDateLabel)initWithFrame:(CGRect)a3;
- (_UIDatePickerCompactDateLabelDelegate)delegate;
- (_UIDatePickerOverlayPresentation)overlayPresentation;
- (double)minimumScaleFactor;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (int64_t)textAlignment;
- (void)activateLabel;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlightedForTouch:(BOOL)a3;
- (void)setMinimumScaleFactor:(double)a3;
- (void)setOverrideAttributes:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTitles:(id)a3;
@end

@implementation _UIDatePickerCompactDateLabel

- (_UIDatePickerCompactDateLabel)initWithFrame:(CGRect)a3
{
  v61[8] = *MEMORY[0x1E69E9840];
  v60.receiver = self;
  v60.super_class = _UIDatePickerCompactDateLabel;
  v3 = [(UIView *)&v60 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 traitCollection];
    v6 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [v5 userInterfaceIdiom]);
    visualStyle = v4->_visualStyle;
    v4->_visualStyle = v6;

    v4->_enabled = 1;
    [(_UIDatePickerStyle *)v4->_visualStyle compactLabelCornerRadius];
    [(UIView *)v4 _setContinuousCornerRadius:?];
    v8 = objc_opt_new();
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
    [v8 setFont:v9];

    [v8 setAdjustsFontForContentSizeCategory:1];
    [v8 setUserInteractionEnabled:0];
    LODWORD(v10) = 1144733696;
    [v8 setContentCompressionResistancePriority:0 forAxis:v10];
    LODWORD(v11) = 1144766464;
    [v8 setContentHuggingPriority:0 forAxis:v11];
    objc_storeStrong(&v4->_textLabel, v8);
    v51 = [(_UIDatePickerStyle *)v4->_visualStyle compactLabelBackgroundButtonConfiguration];
    objc_initWeak(&location, v4);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __47___UIDatePickerCompactDateLabel_initWithFrame___block_invoke;
    v57[3] = &unk_1E70F7450;
    objc_copyWeak(&v58, &location);
    v12 = [UIAction actionWithHandler:v57];
    v52 = [UIButton buttonWithConfiguration:v51 primaryAction:v12];

    [v52 setConfigurationUpdateHandler:&__block_literal_global_129];
    [v52 setPreferredBehavioralStyle:1];
    [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v4->_backgroundView, v52);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __47___UIDatePickerCompactDateLabel_initWithFrame___block_invoke_3;
    v55[3] = &unk_1E70F7450;
    objc_copyWeak(&v56, &location);
    v13 = [UIAction actionWithHandler:v55];
    [v52 addAction:v13 forControlEvents:17];

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __47___UIDatePickerCompactDateLabel_initWithFrame___block_invoke_4;
    v53[3] = &unk_1E70F7450;
    objc_copyWeak(&v54, &location);
    v14 = [UIAction actionWithHandler:v53];
    [v52 addAction:v14 forControlEvents:480];

    [(UIView *)v4 addSubview:v52];
    [v52 addSubview:v8];
    v15 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:sel_activateLabel];
    [(UITapGestureRecognizer *)v15 setAllowedPressTypes:&unk_1EFE2BAB8];
    [(UIView *)v4 addGestureRecognizer:v15];
    v30 = v15;
    [(_UIDatePickerStyle *)v4->_visualStyle compactLabelBackgroundPadding];
    v17 = v16;
    v19 = v18;
    v31 = MEMORY[0x1E69977A0];
    v50 = [(UIView *)v4 leadingAnchor];
    v49 = [v8 leadingAnchor];
    v48 = [v50 constraintEqualToAnchor:v49 constant:-v17];
    v61[0] = v48;
    v47 = [(UIView *)v4 trailingAnchor];
    v46 = [v8 trailingAnchor];
    v45 = [v47 constraintEqualToAnchor:v46 constant:v17];
    v61[1] = v45;
    v44 = [(UIView *)v4 topAnchor];
    v43 = [v8 topAnchor];
    v42 = [v44 constraintEqualToAnchor:v43 constant:-v19];
    v61[2] = v42;
    v41 = [(UIView *)v4 bottomAnchor];
    v40 = [v8 bottomAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 constant:v19];
    v61[3] = v39;
    v37 = [v52 leadingAnchor];
    v38 = [v8 contentLayoutGuide];
    v36 = [v38 leadingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36 constant:-v17];
    v61[4] = v35;
    v33 = [v52 trailingAnchor];
    v34 = [v8 contentLayoutGuide];
    v32 = [v34 trailingAnchor];
    v20 = [v33 constraintEqualToAnchor:v32 constant:v17];
    v61[5] = v20;
    v21 = [v52 topAnchor];
    v22 = [v8 topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-v19];
    v61[6] = v23;
    v24 = [v52 bottomAnchor];
    v25 = [v8 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:v19];
    v61[7] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:8];
    [v31 activateConstraints:v27];

    v28 = [[UIPointerInteraction alloc] initWithDelegate:v4];
    [(UIView *)v4 addInteraction:v28];

    objc_destroyWeak(&v54);
    objc_destroyWeak(&v56);

    objc_destroyWeak(&v58);
    objc_destroyWeak(&location);
  }

  return v4;
}

- (void)activateLabel
{
  v3 = [(_UIDatePickerCompactDateLabel *)self overlayPresentation];
  if ([v3 activeMode] == 2)
  {
    [v3 dismissPresentationAnimated:1];
  }

  else
  {
    v4 = [(_UIDatePickerCompactDateLabel *)self tapInteractionControlledExternally];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46___UIDatePickerCompactDateLabel_activateLabel__block_invoke;
    v13[3] = &unk_1E70FA0F0;
    v13[4] = self;
    v14 = v4;
    v5 = _Block_copy(v13);
    v6 = [(_UIDatePickerStyle *)self->_visualStyle compactLabelTextColorForEditingState:1];
    v7 = [(_UIDatePickerCompactDateLabel *)self textLabel];
    [v7 setTextColor:v6];

    v8 = [(_UIDatePickerCompactDateLabel *)self backgroundView];
    [v8 setSelected:1];

    if (v4)
    {
      [v3 activateEmptyPresentationWithMode:2 onDismiss:v5];
    }

    else
    {
      v9 = [(_UIDatePickerCompactDateLabel *)self delegate];
      [v9 compactDateLabelDidBeginEditing:self];

      v10 = [(_UIDatePickerCompactDateLabel *)self delegate];
      v11 = [v10 createDatePickerForCompactDateLabel:self];

      v12 = [v3 sourceView];
      [(UIView *)self bounds];
      [v12 convertRect:self fromView:?];
      [v3 setSourceRect:?];

      [v3 presentDatePicker:v11 onDismiss:v5];
    }
  }
}

- (void)setHighlightedForTouch:(BOOL)a3
{
  if (self->_highlightedForTouch != a3)
  {
    v14 = v3;
    v15 = v4;
    v5 = a3;
    self->_highlightedForTouch = a3;
    v6 = [(_UIDatePickerCompactDateLabel *)self textLabel];
    v7 = [v6 traitCollection];
    v8 = [v7 userInterfaceStyle] == 2;

    v9 = dbl_18A674F10[v8];
    v11[1] = 3221225472;
    v11[0] = MEMORY[0x1E69E9820];
    v11[2] = ___UIDateLabelAnimateHighlight_block_invoke;
    v11[3] = &unk_1E70F32F0;
    if (!v5)
    {
      v9 = 1.0;
    }

    v12 = v6;
    v13 = v9;
    v10 = v6;
    [UIView animateWithDuration:327684 delay:v11 options:0 animations:0.47 completion:0.0];
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a5;
  if ([a4 _pointerType] == 1)
  {
    v7 = @"datePicker.date.all.pencil";
  }

  else
  {
    v7 = @"datePicker.date.all";
  }

  [v6 rect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  return [UIPointerRegion regionWithRect:v7 identifier:v9, v11, v13, v15];
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [a4 identifier];
  v6 = [v5 isEqual:@"datePicker.date.all.pencil"];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = [(_UIDatePickerCompactDateLabel *)self backgroundView];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(UIView *)self layer];
    [v17 cornerRadius];
    v19 = [UIBezierPath bezierPathWithRoundedRect:v10 cornerRadius:v12, v14, v16, v18];
    [(UITargetedPreview *)v7 setShadowPath:v19];

    v20 = [[UITargetedPreview alloc] initWithView:self parameters:v7];
    v21 = [(UIPointerEffect *)UIPointerLiftEffect effectWithPreview:v20];
    v22 = [(_UIDatePickerCompactDateLabel *)self backgroundView];
    [v22 frame];
    v39 = CGRectInset(v38, 5.0, 5.0);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;

    v27 = [(UIView *)self layer];
    [v27 cornerRadius];
    v29 = v28;
  }

  else
  {
    v30 = [UITargetedPreview alloc];
    v31 = [(_UIDatePickerCompactDateLabel *)self textLabel];
    v7 = [(UITargetedPreview *)v30 initWithView:v31];

    v21 = [(UIPointerEffect *)UIPointerHighlightEffect effectWithPreview:v7];
    v32 = [(_UIDatePickerCompactDateLabel *)self backgroundView];
    [v32 frame];
    v41 = CGRectInset(v40, 2.0, 2.0);
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;

    v20 = [(UIView *)self layer];
    [(UITargetedPreview *)v20 cornerRadius];
    v29 = v33 + -2.0;
  }

  v34 = [UIPointerShape shapeWithRoundedRect:x cornerRadius:y, width, height, v29];
  v35 = [UIPointerStyle styleWithEffect:v21 shape:v34];

  return v35;
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v4 = a3;
    self->_enabled = a3;
    [(UIView *)self setUserInteractionEnabled:?];
    v6 = [(_UIDatePickerCompactDateLabel *)self backgroundView];
    [v6 setEnabled:v4];
  }
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIDatePickerCompactDateLabel *)self textLabel];
  [v4 setAdjustsFontSizeToFitWidth:v3];
}

- (BOOL)adjustsFontSizeToFitWidth
{
  v2 = [(_UIDatePickerCompactDateLabel *)self textLabel];
  v3 = [v2 adjustsFontSizeToFitWidth];

  return v3;
}

- (double)minimumScaleFactor
{
  v2 = [(_UIDatePickerCompactDateLabel *)self textLabel];
  [v2 minimumScaleFactor];
  v4 = v3;

  return v4;
}

- (void)setMinimumScaleFactor:(double)a3
{
  v4 = [(_UIDatePickerCompactDateLabel *)self textLabel];
  [v4 setMinimumScaleFactor:a3];
}

- (NSArray)titles
{
  v2 = [(_UIDatePickerCompactDateLabel *)self textLabel];
  v3 = [v2 titles];

  return v3;
}

- (void)setTitles:(id)a3
{
  v4 = a3;
  v5 = [(_UIDatePickerCompactDateLabel *)self textLabel];
  [v5 setTitles:v4];
}

- (int64_t)textAlignment
{
  v2 = [(_UIDatePickerCompactDateLabel *)self textLabel];
  v3 = [v2 textAlignment];

  return v3;
}

- (void)setTextAlignment:(int64_t)a3
{
  v4 = [(_UIDatePickerCompactDateLabel *)self textLabel];
  [v4 setTextAlignment:a3];
}

- (NSDictionary)overrideAttributes
{
  v2 = [(_UIDatePickerCompactDateLabel *)self textLabel];
  v3 = [v2 overrideAttributes];

  return v3;
}

- (void)setOverrideAttributes:(id)a3
{
  v4 = a3;
  v5 = [(_UIDatePickerCompactDateLabel *)self textLabel];
  [v5 setOverrideAttributes:v4];
}

- (_UIDatePickerCompactDateLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIDatePickerOverlayPresentation)overlayPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayPresentation);

  return WeakRetained;
}

@end