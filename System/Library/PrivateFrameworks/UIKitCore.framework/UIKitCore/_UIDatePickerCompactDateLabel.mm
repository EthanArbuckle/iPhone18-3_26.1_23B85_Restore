@interface _UIDatePickerCompactDateLabel
- (BOOL)adjustsFontSizeToFitWidth;
- (NSArray)titles;
- (NSDictionary)overrideAttributes;
- (_UIDatePickerCompactDateLabel)initWithFrame:(CGRect)frame;
- (_UIDatePickerCompactDateLabelDelegate)delegate;
- (_UIDatePickerOverlayPresentation)overlayPresentation;
- (double)minimumScaleFactor;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (int64_t)textAlignment;
- (void)activateLabel;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)width;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlightedForTouch:(BOOL)touch;
- (void)setMinimumScaleFactor:(double)factor;
- (void)setOverrideAttributes:(id)attributes;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTitles:(id)titles;
@end

@implementation _UIDatePickerCompactDateLabel

- (_UIDatePickerCompactDateLabel)initWithFrame:(CGRect)frame
{
  v61[8] = *MEMORY[0x1E69E9840];
  v60.receiver = self;
  v60.super_class = _UIDatePickerCompactDateLabel;
  v3 = [(UIView *)&v60 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    traitCollection = [(UIView *)v3 traitCollection];
    v6 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [traitCollection userInterfaceIdiom]);
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
    compactLabelBackgroundButtonConfiguration = [(_UIDatePickerStyle *)v4->_visualStyle compactLabelBackgroundButtonConfiguration];
    objc_initWeak(&location, v4);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __47___UIDatePickerCompactDateLabel_initWithFrame___block_invoke;
    v57[3] = &unk_1E70F7450;
    objc_copyWeak(&v58, &location);
    v12 = [UIAction actionWithHandler:v57];
    v52 = [UIButton buttonWithConfiguration:compactLabelBackgroundButtonConfiguration primaryAction:v12];

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
    leadingAnchor = [(UIView *)v4 leadingAnchor];
    leadingAnchor2 = [v8 leadingAnchor];
    v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-v17];
    v61[0] = v48;
    trailingAnchor = [(UIView *)v4 trailingAnchor];
    trailingAnchor2 = [v8 trailingAnchor];
    v45 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v17];
    v61[1] = v45;
    topAnchor = [(UIView *)v4 topAnchor];
    topAnchor2 = [v8 topAnchor];
    v42 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-v19];
    v61[2] = v42;
    bottomAnchor = [(UIView *)v4 bottomAnchor];
    bottomAnchor2 = [v8 bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v19];
    v61[3] = v39;
    leadingAnchor3 = [v52 leadingAnchor];
    contentLayoutGuide = [v8 contentLayoutGuide];
    leadingAnchor4 = [contentLayoutGuide leadingAnchor];
    v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:-v17];
    v61[4] = v35;
    trailingAnchor3 = [v52 trailingAnchor];
    contentLayoutGuide2 = [v8 contentLayoutGuide];
    trailingAnchor4 = [contentLayoutGuide2 trailingAnchor];
    v20 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:v17];
    v61[5] = v20;
    topAnchor3 = [v52 topAnchor];
    topAnchor4 = [v8 topAnchor];
    v23 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:-v19];
    v61[6] = v23;
    bottomAnchor3 = [v52 bottomAnchor];
    bottomAnchor4 = [v8 bottomAnchor];
    v26 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:v19];
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
  overlayPresentation = [(_UIDatePickerCompactDateLabel *)self overlayPresentation];
  if ([overlayPresentation activeMode] == 2)
  {
    [overlayPresentation dismissPresentationAnimated:1];
  }

  else
  {
    tapInteractionControlledExternally = [(_UIDatePickerCompactDateLabel *)self tapInteractionControlledExternally];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46___UIDatePickerCompactDateLabel_activateLabel__block_invoke;
    v13[3] = &unk_1E70FA0F0;
    v13[4] = self;
    v14 = tapInteractionControlledExternally;
    v5 = _Block_copy(v13);
    v6 = [(_UIDatePickerStyle *)self->_visualStyle compactLabelTextColorForEditingState:1];
    textLabel = [(_UIDatePickerCompactDateLabel *)self textLabel];
    [textLabel setTextColor:v6];

    backgroundView = [(_UIDatePickerCompactDateLabel *)self backgroundView];
    [backgroundView setSelected:1];

    if (tapInteractionControlledExternally)
    {
      [overlayPresentation activateEmptyPresentationWithMode:2 onDismiss:v5];
    }

    else
    {
      delegate = [(_UIDatePickerCompactDateLabel *)self delegate];
      [delegate compactDateLabelDidBeginEditing:self];

      delegate2 = [(_UIDatePickerCompactDateLabel *)self delegate];
      v11 = [delegate2 createDatePickerForCompactDateLabel:self];

      sourceView = [overlayPresentation sourceView];
      [(UIView *)self bounds];
      [sourceView convertRect:self fromView:?];
      [overlayPresentation setSourceRect:?];

      [overlayPresentation presentDatePicker:v11 onDismiss:v5];
    }
  }
}

- (void)setHighlightedForTouch:(BOOL)touch
{
  if (self->_highlightedForTouch != touch)
  {
    v14 = v3;
    v15 = v4;
    touchCopy = touch;
    self->_highlightedForTouch = touch;
    textLabel = [(_UIDatePickerCompactDateLabel *)self textLabel];
    traitCollection = [textLabel traitCollection];
    v8 = [traitCollection userInterfaceStyle] == 2;

    v9 = dbl_18A674F10[v8];
    v11[1] = 3221225472;
    v11[0] = MEMORY[0x1E69E9820];
    v11[2] = ___UIDateLabelAnimateHighlight_block_invoke;
    v11[3] = &unk_1E70F32F0;
    if (!touchCopy)
    {
      v9 = 1.0;
    }

    v12 = textLabel;
    v13 = v9;
    v10 = textLabel;
    [UIView animateWithDuration:327684 delay:v11 options:0 animations:0.47 completion:0.0];
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  if ([request _pointerType] == 1)
  {
    v7 = @"datePicker.date.all.pencil";
  }

  else
  {
    v7 = @"datePicker.date.all";
  }

  [regionCopy rect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  return [UIPointerRegion regionWithRect:v7 identifier:v9, v11, v13, v15];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  identifier = [region identifier];
  v6 = [identifier isEqual:@"datePicker.date.all.pencil"];

  if (v6)
  {
    v7 = objc_opt_new();
    backgroundView = [(_UIDatePickerCompactDateLabel *)self backgroundView];
    [backgroundView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    layer = [(UIView *)self layer];
    [layer cornerRadius];
    v19 = [UIBezierPath bezierPathWithRoundedRect:v10 cornerRadius:v12, v14, v16, v18];
    [(UITargetedPreview *)v7 setShadowPath:v19];

    layer3 = [[UITargetedPreview alloc] initWithView:self parameters:v7];
    v21 = [(UIPointerEffect *)UIPointerLiftEffect effectWithPreview:layer3];
    backgroundView2 = [(_UIDatePickerCompactDateLabel *)self backgroundView];
    [backgroundView2 frame];
    v39 = CGRectInset(v38, 5.0, 5.0);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;

    layer2 = [(UIView *)self layer];
    [layer2 cornerRadius];
    v29 = v28;
  }

  else
  {
    v30 = [UITargetedPreview alloc];
    textLabel = [(_UIDatePickerCompactDateLabel *)self textLabel];
    v7 = [(UITargetedPreview *)v30 initWithView:textLabel];

    v21 = [(UIPointerEffect *)UIPointerHighlightEffect effectWithPreview:v7];
    backgroundView3 = [(_UIDatePickerCompactDateLabel *)self backgroundView];
    [backgroundView3 frame];
    v41 = CGRectInset(v40, 2.0, 2.0);
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;

    layer3 = [(UIView *)self layer];
    [(UITargetedPreview *)layer3 cornerRadius];
    v29 = v33 + -2.0;
  }

  v34 = [UIPointerShape shapeWithRoundedRect:x cornerRadius:y, width, height, v29];
  v35 = [UIPointerStyle styleWithEffect:v21 shape:v34];

  return v35;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    enabledCopy = enabled;
    self->_enabled = enabled;
    [(UIView *)self setUserInteractionEnabled:?];
    backgroundView = [(_UIDatePickerCompactDateLabel *)self backgroundView];
    [backgroundView setEnabled:enabledCopy];
  }
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)width
{
  widthCopy = width;
  textLabel = [(_UIDatePickerCompactDateLabel *)self textLabel];
  [textLabel setAdjustsFontSizeToFitWidth:widthCopy];
}

- (BOOL)adjustsFontSizeToFitWidth
{
  textLabel = [(_UIDatePickerCompactDateLabel *)self textLabel];
  adjustsFontSizeToFitWidth = [textLabel adjustsFontSizeToFitWidth];

  return adjustsFontSizeToFitWidth;
}

- (double)minimumScaleFactor
{
  textLabel = [(_UIDatePickerCompactDateLabel *)self textLabel];
  [textLabel minimumScaleFactor];
  v4 = v3;

  return v4;
}

- (void)setMinimumScaleFactor:(double)factor
{
  textLabel = [(_UIDatePickerCompactDateLabel *)self textLabel];
  [textLabel setMinimumScaleFactor:factor];
}

- (NSArray)titles
{
  textLabel = [(_UIDatePickerCompactDateLabel *)self textLabel];
  titles = [textLabel titles];

  return titles;
}

- (void)setTitles:(id)titles
{
  titlesCopy = titles;
  textLabel = [(_UIDatePickerCompactDateLabel *)self textLabel];
  [textLabel setTitles:titlesCopy];
}

- (int64_t)textAlignment
{
  textLabel = [(_UIDatePickerCompactDateLabel *)self textLabel];
  textAlignment = [textLabel textAlignment];

  return textAlignment;
}

- (void)setTextAlignment:(int64_t)alignment
{
  textLabel = [(_UIDatePickerCompactDateLabel *)self textLabel];
  [textLabel setTextAlignment:alignment];
}

- (NSDictionary)overrideAttributes
{
  textLabel = [(_UIDatePickerCompactDateLabel *)self textLabel];
  overrideAttributes = [textLabel overrideAttributes];

  return overrideAttributes;
}

- (void)setOverrideAttributes:(id)attributes
{
  attributesCopy = attributes;
  textLabel = [(_UIDatePickerCompactDateLabel *)self textLabel];
  [textLabel setOverrideAttributes:attributesCopy];
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