@interface _UIActivityIndicatorMessageLabel
+ (id)defaultRegularContentSizeTextAttributes;
- (_UIActivityIndicatorMessageLabel)initWithRegularTextAttributes:(id)a3;
- (double)_effectiveVerticalSpacingToSpinner;
- (double)verticalSpacingToSpinner;
- (id)_effectiveAttributesDerivedFromRegularTextAttributes:(id)a3;
- (id)_validatedAttributedString:(id)a3;
- (void)_ensureCapableOfCalculatingBaselineOffsets;
- (void)setAttributedText:(id)a3;
- (void)setEffectiveTextAttributes:(id)a3;
- (void)setText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation _UIActivityIndicatorMessageLabel

+ (id)defaultRegularContentSizeTextAttributes
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [off_1E70ECC18 systemFontOfSize:11.0];
  [v2 setObject:v3 forKey:*off_1E70EC918];

  v4 = +[UIColor systemGrayColor];
  [v2 setObject:v4 forKey:*off_1E70EC920];

  return v2;
}

- (_UIActivityIndicatorMessageLabel)initWithRegularTextAttributes:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIActivityIndicatorMessageLabel;
  v6 = [(UILabel *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_regularTextAttributes, a3);
    objc_storeStrong(&v7->_effectiveTextAttributes, a3);
    [(UIView *)v7 setBackgroundColor:0];
    [(UIView *)v7 setOpaque:0];
    [(_UIActivityIndicatorMessageLabel *)v7 _ensureCapableOfCalculatingBaselineOffsets];
  }

  return v7;
}

- (double)verticalSpacingToSpinner
{
  [(UILabel *)self _firstLineBaselineOffsetFromBoundsTop];
  v4 = v3;
  [(_UIActivityIndicatorMessageLabel *)self _effectiveVerticalSpacingToSpinner];
  return v5 - v4;
}

- (void)setText:(id)a3
{
  v4 = MEMORY[0x1E696AAB0];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:v5];

  [(_UIActivityIndicatorMessageLabel *)self setAttributedText:v6];
}

- (void)setAttributedText:(id)a3
{
  v4 = [(_UIActivityIndicatorMessageLabel *)self _validatedAttributedString:a3];
  v5 = [(_UIActivityIndicatorMessageLabel *)self effectiveTextAttributes];
  v6 = [v4 mutableCopy];
  [v6 addAttributes:v5 range:{0, objc_msgSend(v6, "length")}];
  v7.receiver = self;
  v7.super_class = _UIActivityIndicatorMessageLabel;
  [(UILabel *)&v7 setAttributedText:v6];
  [(_UIActivityIndicatorMessageLabel *)self _ensureCapableOfCalculatingBaselineOffsets];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIActivityIndicatorMessageLabel;
  [(UILabel *)&v5 traitCollectionDidChange:a3];
  v4 = [(_UIActivityIndicatorMessageLabel *)self _effectiveAttributesDerivedFromRegularTextAttributes:self->_regularTextAttributes];
  [(_UIActivityIndicatorMessageLabel *)self setEffectiveTextAttributes:v4];
}

- (void)setEffectiveTextAttributes:(id)a3
{
  v8 = a3;
  if (([(NSDictionary *)self->_effectiveTextAttributes isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_effectiveTextAttributes, a3);
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    v6 = [(UILabel *)self text];
    v7 = [v5 initWithString:v6 attributes:v8];

    [(_UIActivityIndicatorMessageLabel *)self setAttributedText:v7];
  }
}

- (id)_effectiveAttributesDerivedFromRegularTextAttributes:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  v8 = v4;
  if (IsAccessibilityCategory)
  {
    v8 = [v4 mutableCopy];
    v9 = *off_1E70EC918;
    v10 = [v4 objectForKeyedSubscript:*off_1E70EC918];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [off_1E70ECC18 systemFontOfSize:11.0];
    }

    v13 = v12;

    [v13 pointSize];
    v15 = [v13 fontWithSize:v14 + v14 + 2.0];
    [v8 setObject:v15 forKeyedSubscript:v9];
  }

  return v8;
}

- (double)_effectiveVerticalSpacingToSpinner
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  result = 36.0;
  if (!IsAccessibilityCategory)
  {
    return 18.0;
  }

  return result;
}

- (id)_validatedAttributedString:(id)a3
{
  v3 = a3;
  if (![v3 length])
  {
    if (v3)
    {
      v4 = [v3 mutableCopy];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1EFB14550];
    }

    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v5 appendAttributedString:v6];

    v3 = v5;
  }

  return v3;
}

- (void)_ensureCapableOfCalculatingBaselineOffsets
{
  v3 = [(UILabel *)self text];
  v4 = [v3 length];

  if (!v4)
  {
    [(_UIActivityIndicatorMessageLabel *)self setText:@" "];
  }

  [(UIView *)self sizeToFit];
  [(UILabel *)self _invalidateLabelDisplay];

  [(UILabel *)self _invalidateLabelMetrics];
}

@end