@interface SXDataTableStyleMatch
+ (id)matchWithStyle:(id)a3 andSelector:(id)a4;
- (SXDataTableStyleMatch)initWithStyle:(id)a3 andSelector:(id)a4;
@end

@implementation SXDataTableStyleMatch

+ (id)matchWithStyle:(id)a3 andSelector:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithStyle:v7 andSelector:v6];

  return v8;
}

- (SXDataTableStyleMatch)initWithStyle:(id)a3 andSelector:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXDataTableStyleMatch;
  v9 = [(SXDataTableStyleMatch *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_style, a3);
    objc_storeStrong(&v10->_selector, a4);
  }

  return v10;
}

@end