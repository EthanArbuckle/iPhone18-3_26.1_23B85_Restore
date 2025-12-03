@interface PXStoryViewChromeTitleConfiguration
- (BOOL)isEqual:(id)equal;
- (PXStoryViewChromeTitleConfiguration)initWithTextAlignment:(int64_t)alignment margins:(UIEdgeInsets)margins hidden:(BOOL)hidden;
- (UIEdgeInsets)margins;
- (id)copyWithZone:(_NSZone *)zone;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    textAlignment = [(PXStoryViewChromeTitleConfiguration *)self textAlignment];
    if (textAlignment == [v5 textAlignment])
    {
      [(PXStoryViewChromeTitleConfiguration *)self margins];
      [v5 margins];
      PXEdgeInsetsEqualToEdgeInsets();
    }
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  textAlignment = [(PXStoryViewChromeTitleConfiguration *)self textAlignment];
  [(PXStoryViewChromeTitleConfiguration *)self margins];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  hidden = [(PXStoryViewChromeTitleConfiguration *)self hidden];

  return [v4 initWithTextAlignment:textAlignment margins:hidden hidden:{v7, v9, v11, v13}];
}

- (PXStoryViewChromeTitleConfiguration)initWithTextAlignment:(int64_t)alignment margins:(UIEdgeInsets)margins hidden:(BOOL)hidden
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  v12.receiver = self;
  v12.super_class = PXStoryViewChromeTitleConfiguration;
  result = [(PXStoryViewChromeTitleConfiguration *)&v12 init];
  if (result)
  {
    result->_textAlignment = alignment;
    result->_margins.top = top;
    result->_margins.left = left;
    result->_margins.bottom = bottom;
    result->_margins.right = right;
    result->_hidden = hidden;
  }

  return result;
}

@end