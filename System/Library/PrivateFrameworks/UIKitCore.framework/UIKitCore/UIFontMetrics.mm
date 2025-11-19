@interface UIFontMetrics
+ (UIFontMetrics)defaultMetrics;
+ (UIFontMetrics)metricsForTextStyle:(UIFontTextStyle)textStyle;
+ (double)scaledValueForValue:(double)a3 withTextStyle:(id)a4 bodyLeading:(double)a5 compatibleWithTraitCollection:(id)a6;
- (CGFloat)scaledValueForValue:(CGFloat)value compatibleWithTraitCollection:(UITraitCollection *)traitCollection;
- (UIFont)scaledFontForFont:(UIFont *)font maximumPointSize:(CGFloat)maximumPointSize compatibleWithTraitCollection:(UITraitCollection *)traitCollection;
- (UIFontMetrics)init;
- (UIFontMetrics)initForTextStyle:(UIFontTextStyle)textStyle;
- (id)ib_scaledFontForFont:(id)a3;
- (id)ib_scaledFontForFont:(id)a3 maximumPointSize:(double)a4;
@end

@implementation UIFontMetrics

void __31__UIFontMetrics_defaultMetrics__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) metricsForTextStyle:@"UICTFontTextStyleBody"];
  v2 = _MergedGlobals_1143;
  _MergedGlobals_1143 = v1;
}

+ (UIFontMetrics)defaultMetrics
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__UIFontMetrics_defaultMetrics__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED49E658 != -1)
  {
    dispatch_once(&qword_1ED49E658, block);
  }

  v2 = _MergedGlobals_1143;

  return v2;
}

+ (UIFontMetrics)metricsForTextStyle:(UIFontTextStyle)textStyle
{
  v4 = textStyle;
  v5 = [[a1 alloc] initForTextStyle:v4];

  return v5;
}

- (UIFontMetrics)initForTextStyle:(UIFontTextStyle)textStyle
{
  v4 = textStyle;
  v9.receiver = self;
  v9.super_class = UIFontMetrics;
  v5 = [(UIFontMetrics *)&v9 init];
  if (v5)
  {
    v6 = [(NSString *)v4 copy];
    v7 = v5->_textStyle;
    v5->_textStyle = v6;
  }

  return v5;
}

- (UIFontMetrics)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(sel_initForTextStyle_);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 raise:v4 format:{@"Use %@ to instantiate an instance of %@", v5, v7}];

  return 0;
}

- (UIFont)scaledFontForFont:(UIFont *)font maximumPointSize:(CGFloat)maximumPointSize compatibleWithTraitCollection:(UITraitCollection *)traitCollection
{
  v8 = font;
  v9 = traitCollection;
  if (!v8)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = NSStringFromSelector(sel_scaledFontForFont_maximumPointSize_compatibleWithTraitCollection_);
    [v12 raise:v13 format:{@"The font passed to %@ must be non-nil.", v14}];
  }

  v10 = [(UIFont *)v8 _fontScaledLikeTextStyle:self->_textStyle maximumPointSize:v9 compatibleWithTraitCollection:0 forIB:maximumPointSize];

  return v10;
}

- (CGFloat)scaledValueForValue:(CGFloat)value compatibleWithTraitCollection:(UITraitCollection *)traitCollection
{
  v6 = traitCollection;
  v7 = [(UITraitCollection *)v6 preferredContentSizeCategory];
  v8 = [off_1E70ECC18 _normalizedContentSizeCategory:v7 default:0];

  CTFontDescriptorGetTextStyleSize();
  [objc_opt_class() scaledValueForValue:self->_textStyle withTextStyle:v6 bodyLeading:value compatibleWithTraitCollection:0.0];
  v10 = v9;

  return v10;
}

+ (double)scaledValueForValue:(double)a3 withTextStyle:(id)a4 bodyLeading:(double)a5 compatibleWithTraitCollection:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = v10;
  if (v10 && ([v10 displayScale], v12 != 0.0))
  {
    v15 = v12;
  }

  else
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 scale];
    v15 = v14;
  }

  if (qword_1ED49E668 != -1)
  {
    dispatch_once(&qword_1ED49E668, &__block_literal_global_305);
  }

  v16 = [qword_1ED49E660 objectForKey:v9];
  v17 = v16;
  if (v16)
  {
    [v16 doubleValue];
  }

  else
  {
    v19 = [off_1E70ECC18 _normalizedContentSizeCategory:@"_UICTContentSizeCategoryUnspecified" default:1];
    CTFontDescriptorGetTextStyleSize();
    v20 = qword_1ED49E660;
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    [v20 setObject:v21 forKey:v9];

    v18 = 0.0;
  }

  if (v18 != 0.0)
  {
    a3 = a3 * a5 / v18;
  }

  UIRoundToScale(a3, v15);
  v23 = v22;

  return v23;
}

void __93__UIFontMetrics_scaledValueForValue_withTextStyle_bodyLeading_compatibleWithTraitCollection___block_invoke()
{
  v0 = objc_alloc_init(off_1E70ECC40);
  v1 = qword_1ED49E660;
  qword_1ED49E660 = v0;
}

- (id)ib_scaledFontForFont:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = NSStringFromSelector(sel_ib_scaledFontForFont_);
    [v7 raise:v8 format:{@"The font passed to %@ must be non-nil.", v9}];
  }

  v5 = [v4 _fontScaledLikeTextStyle:self->_textStyle maximumPointSize:0 compatibleWithTraitCollection:1 forIB:0.0];

  return v5;
}

- (id)ib_scaledFontForFont:(id)a3 maximumPointSize:(double)a4
{
  v6 = a3;
  if (!v6)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = NSStringFromSelector(sel_ib_scaledFontForFont_maximumPointSize_);
    [v9 raise:v10 format:{@"The font passed to %@ must be non-nil.", v11}];
  }

  v7 = [v6 _fontScaledLikeTextStyle:self->_textStyle maximumPointSize:0 compatibleWithTraitCollection:1 forIB:a4];

  return v7;
}

@end