@interface _UIActivityIndicatorMessageLabel
+ (id)defaultRegularContentSizeTextAttributes;
- (_UIActivityIndicatorMessageLabel)initWithRegularTextAttributes:(id)attributes;
- (double)_effectiveVerticalSpacingToSpinner;
- (double)verticalSpacingToSpinner;
- (id)_effectiveAttributesDerivedFromRegularTextAttributes:(id)attributes;
- (id)_validatedAttributedString:(id)string;
- (void)_ensureCapableOfCalculatingBaselineOffsets;
- (void)setAttributedText:(id)text;
- (void)setEffectiveTextAttributes:(id)attributes;
- (void)setText:(id)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _UIActivityIndicatorMessageLabel

+ (id)defaultRegularContentSizeTextAttributes
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = [off_1E70ECC18 systemFontOfSize:11.0];
  [dictionary setObject:v3 forKey:*off_1E70EC918];

  v4 = +[UIColor systemGrayColor];
  [dictionary setObject:v4 forKey:*off_1E70EC920];

  return dictionary;
}

- (_UIActivityIndicatorMessageLabel)initWithRegularTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  v9.receiver = self;
  v9.super_class = _UIActivityIndicatorMessageLabel;
  v6 = [(UILabel *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_regularTextAttributes, attributes);
    objc_storeStrong(&v7->_effectiveTextAttributes, attributes);
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

- (void)setText:(id)text
{
  v4 = MEMORY[0x1E696AAB0];
  textCopy = text;
  v6 = [[v4 alloc] initWithString:textCopy];

  [(_UIActivityIndicatorMessageLabel *)self setAttributedText:v6];
}

- (void)setAttributedText:(id)text
{
  v4 = [(_UIActivityIndicatorMessageLabel *)self _validatedAttributedString:text];
  effectiveTextAttributes = [(_UIActivityIndicatorMessageLabel *)self effectiveTextAttributes];
  v6 = [v4 mutableCopy];
  [v6 addAttributes:effectiveTextAttributes range:{0, objc_msgSend(v6, "length")}];
  v7.receiver = self;
  v7.super_class = _UIActivityIndicatorMessageLabel;
  [(UILabel *)&v7 setAttributedText:v6];
  [(_UIActivityIndicatorMessageLabel *)self _ensureCapableOfCalculatingBaselineOffsets];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = _UIActivityIndicatorMessageLabel;
  [(UILabel *)&v5 traitCollectionDidChange:change];
  v4 = [(_UIActivityIndicatorMessageLabel *)self _effectiveAttributesDerivedFromRegularTextAttributes:self->_regularTextAttributes];
  [(_UIActivityIndicatorMessageLabel *)self setEffectiveTextAttributes:v4];
}

- (void)setEffectiveTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (([(NSDictionary *)self->_effectiveTextAttributes isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_effectiveTextAttributes, attributes);
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    text = [(UILabel *)self text];
    v7 = [v5 initWithString:text attributes:attributesCopy];

    [(_UIActivityIndicatorMessageLabel *)self setAttributedText:v7];
  }
}

- (id)_effectiveAttributesDerivedFromRegularTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v8 = attributesCopy;
  if (IsAccessibilityCategory)
  {
    v8 = [attributesCopy mutableCopy];
    v9 = *off_1E70EC918;
    v10 = [attributesCopy objectForKeyedSubscript:*off_1E70EC918];
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
  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  result = 36.0;
  if (!IsAccessibilityCategory)
  {
    return 18.0;
  }

  return result;
}

- (id)_validatedAttributedString:(id)string
{
  stringCopy = string;
  if (![stringCopy length])
  {
    if (stringCopy)
    {
      v4 = [stringCopy mutableCopy];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1EFB14550];
    }

    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v5 appendAttributedString:v6];

    stringCopy = v5;
  }

  return stringCopy;
}

- (void)_ensureCapableOfCalculatingBaselineOffsets
{
  text = [(UILabel *)self text];
  v4 = [text length];

  if (!v4)
  {
    [(_UIActivityIndicatorMessageLabel *)self setText:@" "];
  }

  [(UIView *)self sizeToFit];
  [(UILabel *)self _invalidateLabelDisplay];

  [(UILabel *)self _invalidateLabelMetrics];
}

@end