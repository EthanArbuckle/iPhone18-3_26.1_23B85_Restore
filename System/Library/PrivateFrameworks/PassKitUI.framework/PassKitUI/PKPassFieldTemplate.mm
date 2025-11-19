@interface PKPassFieldTemplate
+ (PKPassFieldTemplate)fieldTemplateWithTextAlignment:(int64_t)a3;
+ (PKPassFieldTemplate)fieldTemplateWithVerticalPadding:(double)a3;
+ (PKPassFieldTemplate)fieldTemplateWithViewSubclass:(Class)a3;
+ (id)_templateByResolvingTemplate:(id)a3 withDefault:(id)a4;
- (BOOL)suppressesEmptyLabel;
- (BOOL)suppressesLabel;
- (BOOL)valueCanWrap;
- (BOOL)valueSignificant;
- (double)verticalPadding;
- (int64_t)labelCaseStyle;
- (int64_t)preferredSingleStyle;
- (int64_t)textAlignment;
- (void)setLabelCaseStyle:(int64_t)a3;
- (void)setPreferredSingleStyle:(int64_t)a3;
- (void)setSuppressesEmptyLabel:(BOOL)a3;
- (void)setSuppressesLabel:(BOOL)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setValueCanWrap:(BOOL)a3;
- (void)setValueSignificant:(BOOL)a3;
- (void)setVerticalPadding:(double)a3;
@end

@implementation PKPassFieldTemplate

- (BOOL)valueCanWrap
{
  v2 = [(PKPassFieldTemplate *)self boxedValueCanWrap];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)suppressesLabel
{
  v2 = [(PKPassFieldTemplate *)self boxedSuppressesLabel];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)textAlignment
{
  v2 = [(PKPassFieldTemplate *)self boxedTextAlignment];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)suppressesEmptyLabel
{
  v2 = [(PKPassFieldTemplate *)self boxedSuppressesEmptyLabel];
  v3 = [v2 BOOLValue];

  return v3;
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

+ (PKPassFieldTemplate)fieldTemplateWithTextAlignment:(int64_t)a3
{
  v4 = objc_alloc_init(PKPassFieldTemplate);
  [(PKPassFieldTemplate *)v4 setTextAlignment:a3];

  return v4;
}

+ (PKPassFieldTemplate)fieldTemplateWithVerticalPadding:(double)a3
{
  v4 = objc_alloc_init(PKPassFieldTemplate);
  [(PKPassFieldTemplate *)v4 setVerticalPadding:a3];

  return v4;
}

+ (PKPassFieldTemplate)fieldTemplateWithViewSubclass:(Class)a3
{
  v4 = objc_alloc_init(PKPassFieldTemplate);
  [(PKPassFieldTemplate *)v4 setViewSubclass:a3];

  return v4;
}

- (void)setTextAlignment:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(PKPassFieldTemplate *)self setBoxedTextAlignment:v4];
}

- (double)verticalPadding
{
  v2 = [(PKPassFieldTemplate *)self boxedVerticalPadding];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setVerticalPadding:(double)a3
{
  *&a3 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:a3];
  [(PKPassFieldTemplate *)self setBoxedVerticalPadding:v4];
}

- (void)setSuppressesLabel:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(PKPassFieldTemplate *)self setBoxedSuppressesLabel:v4];
}

- (void)setSuppressesEmptyLabel:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(PKPassFieldTemplate *)self setBoxedSuppressesEmptyLabel:v4];
}

- (void)setLabelCaseStyle:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(PKPassFieldTemplate *)self setBoxedLabelCaseStyle:v4];
}

- (BOOL)valueSignificant
{
  v2 = [(PKPassFieldTemplate *)self boxedValueSignificant];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setValueSignificant:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(PKPassFieldTemplate *)self setBoxedValueSignificant:v4];
}

- (void)setValueCanWrap:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
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

- (void)setPreferredSingleStyle:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(PKPassFieldTemplate *)self setBoxedPreferredSingleStyle:v4];
}

+ (id)_templateByResolvingTemplate:(id)a3 withDefault:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(PKPassFieldTemplate);
  v8 = [v5 boxedTextAlignment];
  if (v8)
  {
    [(PKPassFieldTemplate *)v7 setBoxedTextAlignment:v8];
  }

  else
  {
    v9 = [v6 boxedTextAlignment];
    [(PKPassFieldTemplate *)v7 setBoxedTextAlignment:v9];
  }

  v10 = [v5 boxedVerticalPadding];
  if (v10)
  {
    [(PKPassFieldTemplate *)v7 setBoxedVerticalPadding:v10];
  }

  else
  {
    v11 = [v6 boxedVerticalPadding];
    [(PKPassFieldTemplate *)v7 setBoxedVerticalPadding:v11];
  }

  v12 = [v5 boxedSuppressesLabel];
  if (v12)
  {
    [(PKPassFieldTemplate *)v7 setBoxedSuppressesLabel:v12];
  }

  else
  {
    v13 = [v6 boxedSuppressesLabel];
    [(PKPassFieldTemplate *)v7 setBoxedSuppressesLabel:v13];
  }

  v14 = [v5 boxedSuppressesEmptyLabel];
  if (v14)
  {
    [(PKPassFieldTemplate *)v7 setBoxedSuppressesEmptyLabel:v14];
  }

  else
  {
    v15 = [v6 boxedSuppressesEmptyLabel];
    [(PKPassFieldTemplate *)v7 setBoxedSuppressesEmptyLabel:v15];
  }

  v16 = [v5 boxedLabelCaseStyle];
  if (v16)
  {
    [(PKPassFieldTemplate *)v7 setBoxedLabelCaseStyle:v16];
  }

  else
  {
    v17 = [v6 boxedLabelCaseStyle];
    [(PKPassFieldTemplate *)v7 setBoxedLabelCaseStyle:v17];
  }

  v18 = [v5 boxedValueSignificant];
  if (v18)
  {
    [(PKPassFieldTemplate *)v7 setBoxedValueSignificant:v18];
  }

  else
  {
    v19 = [v6 boxedValueSignificant];
    [(PKPassFieldTemplate *)v7 setBoxedValueSignificant:v19];
  }

  v20 = [v5 boxedValueCanWrap];
  if (v20)
  {
    [(PKPassFieldTemplate *)v7 setBoxedValueCanWrap:v20];
  }

  else
  {
    v21 = [v6 boxedValueCanWrap];
    [(PKPassFieldTemplate *)v7 setBoxedValueCanWrap:v21];
  }

  v22 = [v5 labelFont];
  if (v22)
  {
    [(PKPassFieldTemplate *)v7 setLabelFont:v22];
  }

  else
  {
    v23 = [v6 labelFont];
    [(PKPassFieldTemplate *)v7 setLabelFont:v23];
  }

  v24 = [v5 valueFont];
  if (v24)
  {
    [(PKPassFieldTemplate *)v7 setValueFont:v24];
  }

  else
  {
    v25 = [v6 valueFont];
    [(PKPassFieldTemplate *)v7 setValueFont:v25];
  }

  v26 = [v5 viewSubclass];
  if (!v26)
  {
    v26 = [v6 viewSubclass];
  }

  [(PKPassFieldTemplate *)v7 setViewSubclass:v26];
  v27 = [v5 boxedPreferredSingleStyle];
  if (v27)
  {
    [(PKPassFieldTemplate *)v7 setBoxedPreferredSingleStyle:v27];
  }

  else
  {
    v28 = [v6 boxedPreferredSingleStyle];
    [(PKPassFieldTemplate *)v7 setBoxedPreferredSingleStyle:v28];
  }

  v29 = [v5 automaticVibrantLabelBlendMode];
  if (v29)
  {
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantLabelBlendMode:v29];
  }

  else
  {
    v30 = [v6 automaticVibrantLabelBlendMode];
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantLabelBlendMode:v30];
  }

  v31 = [v5 automaticVibrantLabelColor];
  if (v31)
  {
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantLabelColor:v31];
  }

  else
  {
    v32 = [v6 automaticVibrantLabelColor];
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantLabelColor:v32];
  }

  v33 = [v5 automaticVibrantValueBlendMode];
  if (v33)
  {
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantValueBlendMode:v33];
  }

  else
  {
    v34 = [v6 automaticVibrantValueBlendMode];
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantValueBlendMode:v34];
  }

  v35 = [v5 automaticVibrantValueColor];
  if (v35)
  {
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantValueColor:v35];
  }

  else
  {
    v36 = [v6 automaticVibrantValueColor];
    [(PKPassFieldTemplate *)v7 setAutomaticVibrantValueColor:v36];
  }

  return v7;
}

@end