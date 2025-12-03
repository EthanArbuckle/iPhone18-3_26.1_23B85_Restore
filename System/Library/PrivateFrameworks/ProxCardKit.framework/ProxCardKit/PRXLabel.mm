@interface PRXLabel
+ (PRXLabel)labelWithStyle:(int64_t)style;
- (PRXLabel)initWithStyle:(int64_t)style;
@end

@implementation PRXLabel

- (PRXLabel)initWithStyle:(int64_t)style
{
  v11.receiver = self;
  v11.super_class = PRXLabel;
  v4 = [(PRXLabel *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_style = style;
    v6 = [[PRXTextStyleDefinition alloc] initWithStyle:style];
    textColor = [(PRXTextStyleDefinition *)v6 textColor];
    [(PRXLabel *)v5 setTextColor:textColor];

    font = [(PRXTextStyleDefinition *)v6 font];
    [(PRXLabel *)v5 setFont:font];

    [(PRXLabel *)v5 setTextAlignment:[(PRXTextStyleDefinition *)v6 textAlignment]];
    [(PRXLabel *)v5 setAccessibilityTraits:[(PRXTextStyleDefinition *)v6 accessibilityTraits]];
    [(PRXLabel *)v5 setNumberOfLines:[(PRXTextStyleDefinition *)v6 numberOfLines]];
    [(PRXLabel *)v5 setAdjustsFontForContentSizeCategory:1];
    v9 = v5;
  }

  return v5;
}

+ (PRXLabel)labelWithStyle:(int64_t)style
{
  v3 = [[self alloc] initWithStyle:style];

  return v3;
}

@end