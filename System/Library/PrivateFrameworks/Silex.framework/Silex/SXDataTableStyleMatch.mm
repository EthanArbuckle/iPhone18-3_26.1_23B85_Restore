@interface SXDataTableStyleMatch
+ (id)matchWithStyle:(id)style andSelector:(id)selector;
- (SXDataTableStyleMatch)initWithStyle:(id)style andSelector:(id)selector;
@end

@implementation SXDataTableStyleMatch

+ (id)matchWithStyle:(id)style andSelector:(id)selector
{
  selectorCopy = selector;
  styleCopy = style;
  v8 = [[self alloc] initWithStyle:styleCopy andSelector:selectorCopy];

  return v8;
}

- (SXDataTableStyleMatch)initWithStyle:(id)style andSelector:(id)selector
{
  styleCopy = style;
  selectorCopy = selector;
  v12.receiver = self;
  v12.super_class = SXDataTableStyleMatch;
  v9 = [(SXDataTableStyleMatch *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_style, style);
    objc_storeStrong(&v10->_selector, selector);
  }

  return v10;
}

@end