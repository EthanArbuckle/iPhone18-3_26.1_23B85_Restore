@interface PRXLabel
+ (PRXLabel)labelWithStyle:(int64_t)a3;
- (PRXLabel)initWithStyle:(int64_t)a3;
@end

@implementation PRXLabel

- (PRXLabel)initWithStyle:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = PRXLabel;
  v4 = [(PRXLabel *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_style = a3;
    v6 = [[PRXTextStyleDefinition alloc] initWithStyle:a3];
    v7 = [(PRXTextStyleDefinition *)v6 textColor];
    [(PRXLabel *)v5 setTextColor:v7];

    v8 = [(PRXTextStyleDefinition *)v6 font];
    [(PRXLabel *)v5 setFont:v8];

    [(PRXLabel *)v5 setTextAlignment:[(PRXTextStyleDefinition *)v6 textAlignment]];
    [(PRXLabel *)v5 setAccessibilityTraits:[(PRXTextStyleDefinition *)v6 accessibilityTraits]];
    [(PRXLabel *)v5 setNumberOfLines:[(PRXTextStyleDefinition *)v6 numberOfLines]];
    [(PRXLabel *)v5 setAdjustsFontForContentSizeCategory:1];
    v9 = v5;
  }

  return v5;
}

+ (PRXLabel)labelWithStyle:(int64_t)a3
{
  v3 = [[a1 alloc] initWithStyle:a3];

  return v3;
}

@end