@interface PKPassFieldTemplate
+ (PKPassFieldTemplate)fieldTemplateWithTextAlignment:(int64_t)alignment;
+ (PKPassFieldTemplate)fieldTemplateWithVerticalPadding:(double)padding;
+ (PKPassFieldTemplate)fieldTemplateWithViewSubclass:(Class)subclass;
+ (id)_templateByResolvingTemplate:(id)template withDefault:(id)default;
- (BOOL)suppressesEmptyLabel;
- (BOOL)suppressesLabel;
- (BOOL)valueCanWrap;
- (BOOL)valueSignificant;
- (double)verticalPadding;
- (int64_t)labelCaseStyle;
- (int64_t)preferredSingleStyle;
- (int64_t)textAlignment;
- (void)setLabelCaseStyle:(int64_t)style;
- (void)setPreferredSingleStyle:(int64_t)style;
- (void)setSuppressesEmptyLabel:(BOOL)label;
- (void)setSuppressesLabel:(BOOL)label;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setValueCanWrap:(BOOL)wrap;
- (void)setValueSignificant:(BOOL)significant;
- (void)setVerticalPadding:(double)padding;
@end

@implementation PKPassFieldTemplate

- (BOOL)valueCanWrap
{
  boxedValueCanWrap = [(PKPassFieldTemplate *)self boxedValueCanWrap];
  bOOLValue = [boxedValueCanWrap BOOLValue];

  return bOOLValue;
}

- (BOOL)suppressesLabel
{
  boxedSuppressesLabel = [(PKPassFieldTemplate *)self boxedSuppressesLabel];
  bOOLValue = [boxedSuppressesLabel BOOLValue];

  return bOOLValue;
}

- (int64_t)textAlignment
{
  boxedTextAlignment = [(PKPassFieldTemplate *)self boxedTextAlignment];
  integerValue = [boxedTextAlignment integerValue];

  return integerValue;
}

- (BOOL)suppressesEmptyLabel
{
  boxedSuppressesEmptyLabel = [(PKPassFieldTemplate *)self boxedSuppressesEmptyLabel];
  bOOLValue = [boxedSuppressesEmptyLabel BOOLValue];

  return bOOLValue;
}

- (int64_t)labelCaseStyle
{
  result = self->_boxedLabelCaseStyle;
  if (result)
  {
    return [result integerValue];
  }

  return result;
}

+ (PKPassFieldTemplate)fieldTemplateWithTextAlignment:(int64_t)alignment
{
  v4 = objc_alloc_init(PKPassFieldTemplate);
  [(PKPassFieldTemplate *)v4 setTextAlignment:alignment];

  return v4;
}

+ (PKPassFieldTemplate)fieldTemplateWithVerticalPadding:(double)padding
{
  v4 = objc_alloc_init(PKPassFieldTemplate);
  [(PKPassFieldTemplate *)v4 setVerticalPadding:padding];

  return v4;
}

+ (PKPassFieldTemplate)fieldTemplateWithViewSubclass:(Class)subclass
{
  v4 = objc_alloc_init(PKPassFieldTemplate);
  [(PKPassFieldTemplate *)v4 setViewSubclass:subclass];

  return v4;
}

- (void)setTextAlignment:(int64_t)alignment
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:alignment];
  [(PKPassFieldTemplate *)self setBoxedTextAlignment:v4];
}

- (double)verticalPadding
{
  boxedVerticalPadding = [(PKPassFieldTemplate *)self boxedVerticalPadding];
  [boxedVerticalPadding floatValue];
  v4 = v3;

  return v4;
}

- (void)setVerticalPadding:(double)padding
{
  *&padding = padding;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:padding];
  [(PKPassFieldTemplate *)self setBoxedVerticalPadding:v4];
}

- (void)setSuppressesLabel:(BOOL)label
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:label];
  [(PKPassFieldTemplate *)self setBoxedSuppressesLabel:v4];
}

- (void)setSuppressesEmptyLabel:(BOOL)label
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:label];
  [(PKPassFieldTemplate *)self setBoxedSuppressesEmptyLabel:v4];
}

- (void)setLabelCaseStyle:(int64_t)style
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [(PKPassFieldTemplate *)self setBoxedLabelCaseStyle:v4];
}

- (BOOL)valueSignificant
{
  boxedValueSignificant = [(PKPassFieldTemplate *)self boxedValueSignificant];
  bOOLValue = [boxedValueSignificant BOOLValue];

  return bOOLValue;
}

- (void)setValueSignificant:(BOOL)significant
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:significant];
  [(PKPassFieldTemplate *)self setBoxedValueSignificant:v4];
}

- (void)setValueCanWrap:(BOOL)wrap
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:wrap];
  [(PKPassFieldTemplate *)self setBoxedValueCanWrap:v4];
}

- (int64_t)preferredSingleStyle
{
  result = self->_boxedPreferredSingleStyle;
  if (result)
  {
    return [result integerValue];
  }

  return result;
}

- (void)setPreferredSingleStyle:(int64_t)style
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [(PKPassFieldTemplate *)self setBoxedPreferredSingleStyle:v4];
}

+ (id)_templateByResolvingTemplate:(id)template withDefault:(id)default
{
  templateCopy = template;
  defaultCopy = default;
  v7 = objc_alloc_init(PKPassFieldTemplate);
  boxedTextAlignment = [templateCopy boxedTextAlignment];
  if (boxedTextAlignment)
  {
    [(PKPassFieldTemplate *)v7 setBoxedTextAlignment:boxedTextAlignment];
  }

  else
  {
    boxedTextAlignment2 = [defaultCopy boxedTextAlignment];
    [(PKPassFieldTemplate *)v7 setBoxedTextAlignment:boxedTextAlignment2];
  }

  boxedVerticalPadding = [templateCopy boxedVerticalPadding];
  if (boxedVerticalPadding)
  {
    [(PKPassFieldTemplate *)v7 setBoxedVerticalPadding:boxedVerticalPadding];
  }

  else
  {
    boxedVerticalPadding2 = [defaultCopy boxedVerticalPadding];
    [(PKPassFieldTemplate *)v7 setBoxedVerticalPadding:boxedVerticalPadding2];
  }

  boxedSuppressesLabel = [templateCopy boxedSuppressesLabel];
  if (boxedSuppressesLabel)
  {
    [(PKPassFieldTemplate *)v7 setBoxedSuppressesLabel:boxedSuppressesLabel];
  }

  else
  {
    boxedSuppressesLabel2 = [defaultCopy boxedSuppressesLabel];
    [(PKPassFieldTemplate *)v7 setBoxedSuppressesLabel:boxedSuppressesLabel2];
  }

  boxedSuppressesEmptyLabel = [templateCopy boxedSuppressesEmptyLabel];
  if (boxedSuppressesEmptyLabel)
  {
    [(PKPassFieldTemplate *)v7 setBoxedSuppressesEmptyLabel:boxedSuppressesEmptyLabel];
  }

  else
  {
    boxedSuppressesEmptyLabel2 = [defaultCopy boxedSuppressesEmptyLabel];
    [(PKPassFieldTemplate *)v7 setBoxedSuppressesEmptyLabel:boxedSuppressesEmptyLabel2];
  }

  boxedLabelCaseStyle = [templateCopy boxedLabelCaseStyle];
  if (boxedLabelCaseStyle)
  {
    [(PKPassFieldTemplate *)v7 setBoxedLabelCaseStyle:boxedLabelCaseStyle];
  }

  else
  {
    boxedLabelCaseStyle2 = [defaultCopy boxedLabelCaseStyle];
    [(PKPassFieldTemplate *)v7 setBoxedLabelCaseStyle:boxedLabelCaseStyle2];
  }

  boxedValueSignificant = [templateCopy boxedValueSignificant];
  if (boxedValueSignificant)
  {
    [(PKPassFieldTemplate *)v7 setBoxedValueSignificant:boxedValueSignificant];
  }

  else
  {
    boxedValueSignificant2 = [defaultCopy boxedValueSignificant];
    [(PKPassFieldTemplate *)v7 setBoxedValueSignificant:boxedValueSignificant2];
  }

  boxedValueCanWrap = [templateCopy boxedValueCanWrap];
  if (boxedValueCanWrap)
  {
    [(PKPassFieldTemplate *)v7 setBoxedValueCanWrap:boxedValueCanWrap];
  }

  else
  {
    boxedValueCanWrap2 = [defaultCopy boxedValueCanWrap];
    [(PKPassFieldTemplate *)v7 setBoxedValueCanWrap:boxedValueCanWrap2];
  }

  labelFont = [templateCopy labelFont];
  if (labelFont)
  {
    [(PKPassFieldTemplate *)v7 setLabelFont:labelFont];
  }

  else
  {
    labelFont2 = [defaultCopy labelFont];
    [(PKPassFieldTemplate *)v7 setLabelFont:labelFont2];
  }

  valueFont = [templateCopy valueFont];
  if (valueFont)
  {
    [(PKPassFieldTemplate *)v7 setValueFont:valueFont];
  }

  else
  {
    valueFont2 = [defaultCopy valueFont];
    [(PKPassFieldTemplate *)v7 setValueFont:valueFont2];
  }

  viewSubclass = [templateCopy viewSubclass];
  if (!viewSubclass)
  {
    viewSubclass = [defaultCopy viewSubclass];
  }

  [(PKPassFieldTemplate *)v7 setViewSubclass:viewSubclass];
  boxedPreferredSingleStyle = [templateCopy boxedPreferredSingleStyle];
  if (boxedPreferredSingleStyle)
  {
    [(PKPassFieldTemplate *)v7 setBoxedPreferredSingleStyle:boxedPreferredSingleStyle];
  }

  else
  {
    boxedPreferredSingleStyle2 = [defaultCopy boxedPreferredSingleStyle];
    [(PKPassFieldTemplate *)v7 setBoxedPreferredSingleStyle:boxedPreferredSingleStyle2];
  }

  automaticVibrantLabelBlendMode = [templateCopy automaticVibrantLabelBlendMode];
  if (automaticVibrantLabelBlendMode)
  {
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantLabelBlendMode:automaticVibrantLabelBlendMode];
  }

  else
  {
    automaticVibrantLabelBlendMode2 = [defaultCopy automaticVibrantLabelBlendMode];
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantLabelBlendMode:automaticVibrantLabelBlendMode2];
  }

  automaticVibrantLabelColor = [templateCopy automaticVibrantLabelColor];
  if (automaticVibrantLabelColor)
  {
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantLabelColor:automaticVibrantLabelColor];
  }

  else
  {
    automaticVibrantLabelColor2 = [defaultCopy automaticVibrantLabelColor];
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantLabelColor:automaticVibrantLabelColor2];
  }

  automaticVibrantValueBlendMode = [templateCopy automaticVibrantValueBlendMode];
  if (automaticVibrantValueBlendMode)
  {
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantValueBlendMode:automaticVibrantValueBlendMode];
  }

  else
  {
    automaticVibrantValueBlendMode2 = [defaultCopy automaticVibrantValueBlendMode];
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantValueBlendMode:automaticVibrantValueBlendMode2];
  }

  automaticVibrantValueColor = [templateCopy automaticVibrantValueColor];
  if (automaticVibrantValueColor)
  {
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantValueColor:automaticVibrantValueColor];
  }

  else
  {
    automaticVibrantValueColor2 = [defaultCopy automaticVibrantValueColor];
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantValueColor:automaticVibrantValueColor2];
  }

  return v7;
}

@end