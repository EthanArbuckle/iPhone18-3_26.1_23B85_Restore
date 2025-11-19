@interface PXStoryViewChromeTitleConfiguration
- (BOOL)isEqual:(id)a3;
- (PXStoryViewChromeTitleConfiguration)initWithTextAlignment:(int64_t)a3 margins:(UIEdgeInsets)a4 hidden:(BOOL)a5;
- (UIEdgeInsets)margins;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXStoryViewChromeTitleConfiguration

- (UIEdgeInsets)margins
{
  top = self->_margins.top;
  left = self->_margins.left;
  bottom = self->_margins.bottom;
  right = self->_margins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXStoryViewChromeTitleConfiguration *)self textAlignment];
    if (v6 == [v5 textAlignment])
    {
      [(PXStoryViewChromeTitleConfiguration *)self margins];
      [v5 margins];
      PXEdgeInsetsEqualToEdgeInsets();
    }
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(PXStoryViewChromeTitleConfiguration *)self textAlignment];
  [(PXStoryViewChromeTitleConfiguration *)self margins];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(PXStoryViewChromeTitleConfiguration *)self hidden];

  return [v4 initWithTextAlignment:v5 margins:v14 hidden:{v7, v9, v11, v13}];
}

- (PXStoryViewChromeTitleConfiguration)initWithTextAlignment:(int64_t)a3 margins:(UIEdgeInsets)a4 hidden:(BOOL)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v12.receiver = self;
  v12.super_class = PXStoryViewChromeTitleConfiguration;
  result = [(PXStoryViewChromeTitleConfiguration *)&v12 init];
  if (result)
  {
    result->_textAlignment = a3;
    result->_margins.top = top;
    result->_margins.left = left;
    result->_margins.bottom = bottom;
    result->_margins.right = right;
    result->_hidden = a5;
  }

  return result;
}

@end