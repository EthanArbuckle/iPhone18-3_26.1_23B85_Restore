@interface PKPassFieldView
+ (id)newViewForField:(id)field fieldTemplate:(id)template;
- (BOOL)_shouldDisplayLabel;
- (CGSize)_resizeMultiLineValueFontForAvailableSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPassFieldView)initWithField:(id)field fieldTemplate:(id)template;
- (id)_labelAttributedStringForColorProfile:(id)profile;
- (id)_labelColorFromColorProfile:(id)profile;
- (id)_valueAttributedStringForColorProfile:(id)profile;
- (id)_valueColorFromColorProfile:(id)profile;
- (id)description;
- (void)layoutSubviews;
- (void)presentDiff:(id)diff inView:(id)view completion:(id)completion;
- (void)setColorProfile:(id)profile background:(int64_t)background;
- (void)setDiffView:(id)view;
- (void)setField:(id)field;
- (void)setFieldTemplate:(id)template;
- (void)updateVibrancyFiltersFromColorProfile:(id)profile;
@end

@implementation PKPassFieldView

- (BOOL)_shouldDisplayLabel
{
  if ([(PKPassFieldTemplate *)self->_fieldTemplate suppressesLabel])
  {
    LOBYTE(v3) = 0;
  }

  else if ([(PKPassFieldTemplate *)self->_fieldTemplate suppressesEmptyLabel])
  {
    attributedText = [(UILabel *)self->_labelLabel attributedText];
    string = [attributedText string];
    v3 = [string isEqualToString:@" "] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

+ (id)newViewForField:(id)field fieldTemplate:(id)template
{
  fieldCopy = field;
  templateCopy = template;
  viewSubclass = [templateCopy viewSubclass];
  if (!viewSubclass)
  {
    viewSubclass = objc_opt_class();
  }

  result = [viewSubclass isSubclassOfClass:objc_opt_class()];
  if (result)
  {
    v9 = [[viewSubclass alloc] initWithField:fieldCopy fieldTemplate:templateCopy];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (PKPassFieldView)initWithField:(id)field fieldTemplate:(id)template
{
  fieldCopy = field;
  templateCopy = template;
  v18.receiver = self;
  v18.super_class = PKPassFieldView;
  v8 = [(PKPassFieldView *)&v18 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    labelLabel = v8->_labelLabel;
    v8->_labelLabel = v9;

    v11 = v8->_labelLabel;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v11 setBackgroundColor:clearColor];

    [(UILabel *)v8->_labelLabel setAccessibilityIdentifier:*MEMORY[0x1E69B98D0]];
    [(PKPassFieldView *)v8 addSubview:v8->_labelLabel];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    valueLabel = v8->_valueLabel;
    v8->_valueLabel = v13;

    v15 = v8->_valueLabel;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v15 setBackgroundColor:clearColor2];

    [(UILabel *)v8->_valueLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9DC0]];
    [(PKPassFieldView *)v8 addSubview:v8->_valueLabel];
    [(PKPassFieldView *)v8 setField:fieldCopy];
    [(PKPassFieldView *)v8 setFieldTemplate:templateCopy];
    [(PKPassFieldView *)v8 invalidateCachedFieldSize];
    [(PKPassFieldView *)v8 setAccessibilityIdentifier:*MEMORY[0x1E69B97E8]];
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [(PKPassFieldView *)self frame];
  [v3 appendFormat:@"frame = (%g %g; %g %g); ", v4, v5, v6, v7];
  text = [(UILabel *)self->_labelLabel text];
  v9 = [text length];
  v10 = MEMORY[0x1E69DB648];
  if (v9)
  {
    attributedText = [(UILabel *)self->_labelLabel attributedText];
    v12 = [attributedText attribute:*v10 atIndex:0 effectiveRange:0];
    [v12 pointSize];
    v14 = v13;

    if ([text length] >= 0x1A)
    {
      v15 = [text rangeOfComposedCharacterSequencesForRange:{0, 25}];
      v17 = [text substringWithRange:{v15, v16}];
      v18 = [v17 stringByAppendingString:@"..."];

      text = v18;
    }

    [v3 appendFormat:@"<label = '%@'; font-size: %g>; ", text, v14];
  }

  text2 = [(UILabel *)self->_valueLabel text];
  if ([text2 length])
  {
    attributedText2 = [(UILabel *)self->_valueLabel attributedText];
    v21 = [attributedText2 attribute:*v10 atIndex:0 effectiveRange:0];
    [v21 pointSize];
    v23 = v22;

    if ([text2 length] >= 0x1A)
    {
      v24 = [text2 rangeOfComposedCharacterSequencesForRange:{0, 25}];
      v26 = [text2 substringWithRange:{v24, v25}];
      v27 = [v26 stringByAppendingString:@"..."];

      text2 = v27;
    }

    [v3 appendFormat:@"<value = '%@'; font-size: %g>", text2, v23];
  }

  [v3 appendString:@">"];
  v28 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  return v28;
}

- (void)setField:(id)field
{
  fieldCopy = field;
  if (self->_field != fieldCopy)
  {
    v10 = fieldCopy;
    objc_storeStrong(&self->_field, field);
    labelLabel = self->_labelLabel;
    label = [(PKPassField *)v10 label];
    [(UILabel *)labelLabel setText:label];

    valueLabel = self->_valueLabel;
    value = [(PKPassField *)v10 value];
    [(UILabel *)valueLabel setText:value];

    [(PKPassFieldView *)self invalidateCachedFieldSize];
    fieldCopy = v10;
  }
}

- (void)setFieldTemplate:(id)template
{
  templateCopy = template;
  fieldTemplate = self->_fieldTemplate;
  v10 = templateCopy;
  if (fieldTemplate != templateCopy)
  {
    objc_storeStrong(&self->_fieldTemplate, template);
    fieldTemplate = self->_fieldTemplate;
  }

  [(UILabel *)self->_labelLabel setHidden:[(PKPassFieldTemplate *)fieldTemplate suppressesLabel]];
  valueCanWrap = [(PKPassFieldTemplate *)self->_fieldTemplate valueCanWrap];
  if (valueCanWrap)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (valueCanWrap)
  {
    v9 = 0;
  }

  else
  {
    v9 = 4;
  }

  [(UILabel *)self->_valueLabel setNumberOfLines:v8];
  [(UILabel *)self->_valueLabel setLineBreakMode:v9];
  [(PKPassFieldView *)self invalidateCachedFieldSize];
}

- (void)setColorProfile:(id)profile background:(int64_t)background
{
  objc_storeStrong(&self->_colorProfile, profile);
  profileCopy = profile;
  self->_background = background;
  [(PKPassFieldView *)self invalidateCachedFieldSize];
  [(PKPassFieldView *)self updateVibrancyFiltersFromColorProfile:profileCopy];
}

- (void)setDiffView:(id)view
{
  viewCopy = view;
  diffView = self->_diffView;
  if (diffView != viewCopy)
  {
    v7 = viewCopy;
    if (diffView)
    {
      [(PKDiffView *)diffView removeFromSuperview];
    }

    objc_storeStrong(&self->_diffView, view);
    viewCopy = v7;
  }
}

- (void)layoutSubviews
{
  v53.receiver = self;
  v53.super_class = PKPassFieldView;
  [(PKPassFieldView *)&v53 layoutSubviews];
  [(PKPassFieldView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  valueSignificant = [(PKPassFieldTemplate *)self->_fieldTemplate valueSignificant];
  _shouldDisplayLabel = [(PKPassFieldView *)self _shouldDisplayLabel];
  [(PKPassFieldTemplate *)self->_fieldTemplate verticalPadding];
  v14 = v13;
  if (valueSignificant)
  {
    [(UILabel *)self->_valueLabel frame];
    rect = fmax(v10, v25);
    PKSizeAlignedInRect();
    v26 = v8;
    v27 = v4;
    v28 = v14;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    [(UILabel *)self->_valueLabel setFrame:?];
    v56.origin.x = v30;
    v14 = v28;
    v4 = v27;
    v8 = v26;
    v56.origin.y = v32;
    v56.size.width = v34;
    v56.size.height = v36;
    v37 = v14 + CGRectGetMaxY(v56);
    v57.origin.x = v4;
    v57.origin.y = v6;
    v57.size.width = v26;
    v57.size.height = rect;
    v10 = CGRectGetMaxY(v57) - v37;
    v6 = v37;
    if (!_shouldDisplayLabel)
    {
LABEL_3:
      if (valueSignificant)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else if (!_shouldDisplayLabel)
  {
    goto LABEL_3;
  }

  [(UILabel *)self->_labelLabel frame];
  v39 = fmax(v10, v38);
  PKSizeAlignedInRect();
  v41 = v40;
  recta = v8;
  v42 = v4;
  v43 = v14;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  [(UILabel *)self->_labelLabel setFrame:?];
  v58.origin.x = v41;
  v58.origin.y = v45;
  v58.size.width = v47;
  v58.size.height = v49;
  v50 = v43 + CGRectGetMaxY(v58);
  v4 = v42;
  v8 = recta;
  v59.origin.x = v4;
  v59.origin.y = v6;
  v59.size.width = recta;
  v59.size.height = v39;
  v10 = CGRectGetMaxY(v59) - v50;
  v6 = v50;
  if (valueSignificant)
  {
    return;
  }

LABEL_4:
  [(UILabel *)self->_valueLabel frame];
  v16 = fmax(v10, v15);
  PKSizeAlignedInRect();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [(UILabel *)self->_valueLabel setFrame:?];
  v54.origin.x = v18;
  v54.origin.y = v20;
  v54.size.width = v22;
  v54.size.height = v24;
  CGRectGetMaxY(v54);
  v55.origin.x = v4;
  v55.origin.y = v6;
  v55.size.width = v8;
  v55.size.height = v16;
  CGRectGetMaxY(v55);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (self->_needsRecalculation)
  {
    height = fits.height;
    width = fits.width;
    v6 = [(PKPassFieldView *)self _labelAttributedStringForColorProfile:self->_colorProfile];
    if ([(PKPassFieldView *)self _shouldDisplayLabel])
    {
      [(UILabel *)self->_labelLabel setAttributedText:v6];
      [(UILabel *)self->_labelLabel sizeThatFits:1.79769313e308, 1.79769313e308];
      v8 = v7;
      v10 = v9;
    }

    else
    {
      v8 = *MEMORY[0x1E695F060];
      v10 = *(MEMORY[0x1E695F060] + 8);
      [(PKPassFieldTemplate *)self->_fieldTemplate setVerticalPadding:0.0];
    }

    valueLabel = self->_valueLabel;
    v12 = [(PKPassFieldView *)self _valueAttributedStringForColorProfile:self->_colorProfile];
    [(UILabel *)valueLabel setAttributedText:v12];

    attributedText = [(UILabel *)self->_valueLabel attributedText];
    [attributedText boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
    v15 = v14;
    v17 = v16;

    [(PKPassFieldTemplate *)self->_fieldTemplate verticalPadding];
    v19 = height - v10 - v18;
    if (v15 > width && [(PKPassFieldTemplate *)self->_fieldTemplate valueCanWrap])
    {
      attributedText2 = [(UILabel *)self->_valueLabel attributedText];
      [attributedText2 boundingRectWithSize:1 options:0 context:{width, 1.79769313e308}];
      v22 = v21;
      v24 = v23;

      v25.n128_u64[0] = v22;
      v26.n128_u64[0] = v24;
      PKSizeCeilToPixel(v25, v26, v27);
      if (v29 > v19)
      {
        [(PKPassFieldView *)self _resizeMultiLineValueFontForAvailableSize:width, v19];
      }

      v15 = v28;
      v17 = v29;
    }

    [(UILabel *)self->_labelLabel bounds];
    v32 = v31 == v8 && v30 == v10;
    v33 = MEMORY[0x1E695EFF8];
    if (!v32)
    {
      [(UILabel *)self->_labelLabel setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v8, v10];
      [(PKPassFieldView *)self setNeedsLayout];
    }

    [(UILabel *)self->_valueLabel bounds];
    v36 = v35;
    if (v17 >= v19)
    {
      v37 = v19;
    }

    else
    {
      v37 = v17;
    }

    if (v34 != v15 || v36 != v37)
    {
      [(UILabel *)self->_valueLabel setFrame:*v33, v33[1], v15, v37];
      [(PKPassFieldView *)self setNeedsLayout];
    }

    if (v8 <= v15)
    {
      v8 = v15;
    }

    [(PKPassFieldTemplate *)self->_fieldTemplate verticalPadding];
    v40 = v10 + v17 + v39;
    if (self->_cachedSize.width != v8 || self->_cachedSize.height != v40)
    {
      self->_cachedSize.width = v8;
      self->_cachedSize.height = v40;
      [(PKPassFieldView *)self setNeedsLayout];
    }

    self->_needsRecalculation = 0;
  }

  v42 = self->_cachedSize.width;
  v43 = self->_cachedSize.height;
  result.height = v43;
  result.width = v42;
  return result;
}

- (void)presentDiff:(id)diff inView:(id)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  field = self->_field;
  diffCopy = diff;
  v11 = [(PKPassField *)field key];
  v12 = [diffCopy getHunkForKey:v11 oldValue:0 newValue:0 message:0];

  if (v12)
  {
    valueLabel = self->_valueLabel;
    [(UILabel *)valueLabel bounds];
    [(UILabel *)valueLabel textRectForBounds:0 limitedToNumberOfLines:?];
    [(PKPassFieldView *)self convertRect:self->_valueLabel fromView:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [(UILabel *)self->_labelLabel frame];
    v37.origin.x = v22;
    v37.origin.y = v23;
    v37.size.width = v24;
    v37.size.height = v25;
    v34.origin.x = v15;
    v34.origin.y = v17;
    v34.size.width = v19;
    v34.size.height = v21;
    v35 = CGRectUnion(v34, v37);
    v35.origin.x = v15;
    v35.size.width = v19;
    v36 = CGRectInset(v35, -15.0, -15.0);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
    v30 = [PKDiffView alloc];
    [viewCopy convertRect:self fromView:{x, y, width, height}];
    v31 = [(PKDiffView *)v30 initWithFrame:?];
    [viewCopy addSubview:v31];
    [(PKPassFieldView *)self setDiffView:v31];
    [(PKDiffView *)v31 performStrokeWithCompletion:completionCopy];
  }

  else
  {
    [(PKPassFieldView *)self setDiffView:0];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (CGSize)_resizeMultiLineValueFontForAvailableSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  valueFont = [(PKPassFieldTemplate *)self->_fieldTemplate valueFont];
  [valueFont xHeight];
  v8 = v7;
  labelFont = [(PKPassFieldTemplate *)self->_fieldTemplate labelFont];
  [labelFont xHeight];
  v11 = v8 / v10;

  valueFont2 = [(PKPassFieldTemplate *)self->_fieldTemplate valueFont];
  [valueFont2 pointSize];
  v14 = v13;

  if (v11 <= 1.0)
  {
    v26 = height;
    v24 = width;
  }

  else
  {
    do
    {
      v14 = v14 + -1.0;
      fieldTemplate = self->_fieldTemplate;
      v16 = MEMORY[0x1E69DB878];
      valueFont3 = [(PKPassFieldTemplate *)fieldTemplate valueFont];
      fontDescriptor = [valueFont3 fontDescriptor];
      v19 = [v16 fontWithDescriptor:fontDescriptor size:v14];
      [(PKPassFieldTemplate *)fieldTemplate setValueFont:v19];

      valueLabel = self->_valueLabel;
      v21 = [(PKPassFieldView *)self _valueAttributedStringForColorProfile:self->_colorProfile];
      [(UILabel *)valueLabel setAttributedText:v21];

      attributedText = [(UILabel *)self->_valueLabel attributedText];
      [attributedText boundingRectWithSize:1 options:0 context:{width, 3.40282347e38}];
      v24 = v23;
      v26 = v25;

      if (v26 < height)
      {
        break;
      }

      valueFont4 = [(PKPassFieldTemplate *)self->_fieldTemplate valueFont];
      [valueFont4 xHeight];
      v29 = v28;
      labelFont2 = [(PKPassFieldTemplate *)self->_fieldTemplate labelFont];
      [labelFont2 xHeight];
      v32 = v29 / v31;
    }

    while (v32 > 1.0);
  }

  if (v24 <= width)
  {
    v33 = v24;
  }

  else
  {
    v33 = width;
  }

  v34 = v26;
  result.height = v34;
  result.width = v33;
  return result;
}

- (id)_labelColorFromColorProfile:(id)profile
{
  profileCopy = profile;
  if (![profileCopy supportsAutomaticLabelVibrancy] || (-[PKPassFieldTemplate automaticVibrantLabelColor](self->_fieldTemplate, "automaticVibrantLabelColor"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [profileCopy labelColorOverStrip:self->_background == 1];
  }

  return v5;
}

- (id)_labelAttributedStringForColorProfile:(id)profile
{
  v22[3] = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  label = [(PKPassField *)self->_field label];
  if (!label)
  {
    v18 = 0;
    goto LABEL_16;
  }

  v6 = label;
  textAlignment = [(PKPassField *)self->_field textAlignment];
  if (textAlignment == 4)
  {
    textAlignment = [(PKPassFieldTemplate *)self->_fieldTemplate textAlignment];
  }

  defaultParagraphStyle = [MEMORY[0x1E69DB7C8] defaultParagraphStyle];
  v9 = [defaultParagraphStyle mutableCopy];

  [v9 setAlignment:textAlignment];
  [v9 setLineBreakMode:4];
  v10 = [(PKPassFieldView *)self _labelColorFromColorProfile:profileCopy];
  value = [(PKPassField *)self->_field value];

  if (!value && [(PKPassFieldTemplate *)self->_fieldTemplate preferredSingleStyle]== 2)
  {
    v12 = [(PKPassFieldView *)self _valueColorFromColorProfile:profileCopy];

    v10 = v12;
  }

  v13 = *MEMORY[0x1E69DB688];
  v21[0] = *MEMORY[0x1E69DB650];
  v21[1] = v13;
  v22[0] = v10;
  v22[1] = v9;
  v21[2] = *MEMORY[0x1E69DB648];
  labelFont = [(PKPassFieldTemplate *)self->_fieldTemplate labelFont];
  v22[2] = labelFont;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

  labelCaseStyle = [(PKPassFieldTemplate *)self->_fieldTemplate labelCaseStyle];
  if (labelCaseStyle == 2)
  {
    pk_capitalizedStringForPreferredLocale = [v6 pk_capitalizedStringForPreferredLocale];
  }

  else
  {
    if (labelCaseStyle != 1 && (labelCaseStyle || self->_background == 1))
    {
      goto LABEL_15;
    }

    pk_capitalizedStringForPreferredLocale = [v6 pk_uppercaseStringForPreferredLocale];
  }

  v19 = pk_capitalizedStringForPreferredLocale;

  v6 = v19;
LABEL_15:
  v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:v15];

LABEL_16:

  return v18;
}

- (id)_valueColorFromColorProfile:(id)profile
{
  profileCopy = profile;
  if (![profileCopy supportsAutomaticForegroundVibrancy] || (-[PKPassFieldTemplate automaticVibrantValueColor](self->_fieldTemplate, "automaticVibrantValueColor"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [profileCopy foregroundColorOverStrip:self->_background == 1];
  }

  return v5;
}

- (id)_valueAttributedStringForColorProfile:(id)profile
{
  v19[3] = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  value = [(PKPassField *)self->_field value];
  if (value)
  {
    textAlignment = [(PKPassField *)self->_field textAlignment];
    if (textAlignment == 4)
    {
      textAlignment = [(PKPassFieldTemplate *)self->_fieldTemplate textAlignment];
    }

    if ([(PKPassFieldTemplate *)self->_fieldTemplate valueCanWrap])
    {
      v7 = 0;
    }

    else
    {
      v7 = 4;
    }

    defaultParagraphStyle = [MEMORY[0x1E69DB7C8] defaultParagraphStyle];
    v9 = [defaultParagraphStyle mutableCopy];

    [v9 setAlignment:textAlignment];
    [v9 setLineBreakMode:v7];
    v10 = [(PKPassFieldView *)self _valueColorFromColorProfile:profileCopy];
    label = [(PKPassField *)self->_field label];

    if (!label && [(PKPassFieldTemplate *)self->_fieldTemplate preferredSingleStyle]== 1)
    {
      v12 = [(PKPassFieldView *)self _labelColorFromColorProfile:profileCopy];

      v10 = v12;
    }

    v13 = *MEMORY[0x1E69DB688];
    v18[0] = *MEMORY[0x1E69DB650];
    v18[1] = v13;
    v19[0] = v10;
    v19[1] = v9;
    v18[2] = *MEMORY[0x1E69DB648];
    valueFont = [(PKPassFieldTemplate *)self->_fieldTemplate valueFont];
    v19[2] = valueFont;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

    v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:value attributes:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)updateVibrancyFiltersFromColorProfile:(id)profile
{
  profileCopy = profile;
  automaticVibrantLabelBlendMode = [(PKPassFieldTemplate *)self->_fieldTemplate automaticVibrantLabelBlendMode];
  automaticVibrantValueBlendMode = [(PKPassFieldTemplate *)self->_fieldTemplate automaticVibrantValueBlendMode];
  supportsAutomaticLabelVibrancy = [profileCopy supportsAutomaticLabelVibrancy];
  if (supportsAutomaticLabelVibrancy)
  {
    v7 = automaticVibrantLabelBlendMode;
    value = [(PKPassField *)self->_field value];

    if (!value && [(PKPassFieldTemplate *)self->_fieldTemplate preferredSingleStyle]== 2)
    {
      v9 = automaticVibrantValueBlendMode;

      v7 = v9;
    }

    layer = [(UILabel *)self->_labelLabel layer];
    [layer setCompositingFilter:v7];
  }

  if ([profileCopy supportsAutomaticForegroundVibrancy])
  {
    v11 = automaticVibrantValueBlendMode;
    label = [(PKPassField *)self->_field label];

    if (!label && [(PKPassFieldTemplate *)self->_fieldTemplate preferredSingleStyle]== 1)
    {
      v13 = automaticVibrantLabelBlendMode;

      v11 = v13;
    }

    layer2 = [(UILabel *)self->_valueLabel layer];
    [layer2 setCompositingFilter:v11];

    supportsAutomaticLabelVibrancy = 1;
  }

  layer3 = [(PKPassFieldView *)self layer];
  [layer3 setAllowsGroupBlending:supportsAutomaticLabelVibrancy ^ 1u];
}

@end