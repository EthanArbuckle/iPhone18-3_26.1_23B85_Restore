@interface TSSStyleComparison
- (TSSStyleComparison)initWithStyle:(id)style andStyle:(id)andStyle;
@end

@implementation TSSStyleComparison

- (TSSStyleComparison)initWithStyle:(id)style andStyle:(id)andStyle
{
  styleCopy = style;
  andStyleCopy = andStyle;
  v12.receiver = self;
  v12.super_class = TSSStyleComparison;
  v9 = [(TSSStyleComparison *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, style);
    objc_storeStrong(&v10->_second, andStyle);
  }

  return v10;
}

@end