@interface TLKLabelItem
+ (void)initialize;
+ (void)setFontValues;
- (BOOL)isLayoutSizeDependentOnPerpendicularAxis;
- (CGRect)frame;
- (CGSize)sizeForTargetSize:(CGSize)a3;
- (NSString)description;
- (TLKLabelItem)init;
- (_NSRange)columnRange;
- (double)effectiveBaselineOffsetFromContentBottom;
- (double)effectiveFirstBaselineOffsetFromContentTop;
- (float)contentCompressionResistancePriorityForAxis:(int64_t)a3;
- (float)contentHuggingPriorityForAxis:(int64_t)a3;
- (id)attributedString;
@end

@implementation TLKLabelItem

- (TLKLabelItem)init
{
  v5.receiver = self;
  v5.super_class = TLKLabelItem;
  v2 = [(TLKLabelItem *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(TLKLabelItem *)v2 setSizeCache:v3];
  }

  return v2;
}

+ (void)initialize
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__TLKLabelItem_initialize__block_invoke;
  v5[3] = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
  v5[4] = a1;
  v4 = [v3 addObserverForName:@"TLKContentSizeCategoryDidChangeNotification" object:0 queue:0 usingBlock:v5];

  [a1 setFontValues];
}

+ (void)setFontValues
{
  v2 = [TLKFontUtilities preferredFontForTextStyle:*MEMORY[0x1E69DDD80] maximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
  v3 = font;
  font = v2;

  v5 = +[TLKLabelItem font];
  [TLKLayoutUtilities scaledValueForValue:v5 withFont:0 view:18.0];
  minimumWidthForLabelItem = v4;
}

- (BOOL)isLayoutSizeDependentOnPerpendicularAxis
{
  v2 = [(TLKLabelItem *)self richText];
  v3 = [v2 maxLines] != 1;

  return v3;
}

- (double)effectiveFirstBaselineOffsetFromContentTop
{
  v2 = +[TLKLabelItem font];
  [v2 ascender];
  v4 = v3;

  return v4;
}

- (double)effectiveBaselineOffsetFromContentBottom
{
  v2 = +[TLKLabelItem font];
  [v2 descender];
  v4 = -v3;

  return v4;
}

- (float)contentCompressionResistancePriorityForAxis:(int64_t)a3
{
  if (a3)
  {
    return 999.0;
  }

  [(TLKLabelItem *)self horizontalCompressionResistance:v3];
  return v6;
}

- (float)contentHuggingPriorityForAxis:(int64_t)a3
{
  if (a3)
  {
    return 999.0;
  }

  [(TLKLabelItem *)self horizontalHuggingPriority:v3];
  return v6;
}

- (CGSize)sizeForTargetSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  [v6 setWrapsForTruncationMode:1];
  v7 = [(TLKLabelItem *)self richText];
  [v6 setMaximumNumberOfLines:{objc_msgSend(v7, "maxLines")}];

  v8 = [(TLKLabelItem *)self attributedString];
  [v8 boundingRectWithSize:1 options:v6 context:{width, height}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)attributedString
{
  v2 = [(TLKLabelItem *)self richText];
  LOBYTE(v5) = 0;
  v3 = [TLKFontUtilities attributedStringForRichText:v2 appearance:0 prominence:0 alignment:4 font:font isButton:0 scale:0.0 isDark:v5];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = TLKLabelItem;
  v4 = [(TLKLabelItem *)&v17 description];
  v5 = [(TLKLabelItem *)self attributedString];
  v6 = NSStringFromRange(self->columnRange);
  [(TLKLabelItem *)self frame];
  v7 = NSStringFromCGRect(v19);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->row];
  v9 = MEMORY[0x1E696AD98];
  [(TLKLabelItem *)self horizontalHuggingPriority];
  v11 = [v9 numberWithInteger:v10];
  v12 = MEMORY[0x1E696AD98];
  [(TLKLabelItem *)self horizontalCompressionResistance];
  v14 = [v12 numberWithInteger:v13];
  v15 = [v3 stringWithFormat:@"%@ string = %@ range = %@ frame = %@ row = %@ CH = %@ CR = %@", v4, v5, v6, v7, v8, v11, v14];

  return v15;
}

- (CGRect)frame
{
  x = self->frame.origin.x;
  y = self->frame.origin.y;
  width = self->frame.size.width;
  height = self->frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_NSRange)columnRange
{
  length = self->columnRange.length;
  location = self->columnRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end