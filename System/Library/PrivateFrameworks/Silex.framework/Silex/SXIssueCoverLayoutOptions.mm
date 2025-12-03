@interface SXIssueCoverLayoutOptions
- (SXIssueCoverLayoutOptions)initWithBoundingWidth:(double)width;
@end

@implementation SXIssueCoverLayoutOptions

- (SXIssueCoverLayoutOptions)initWithBoundingWidth:(double)width
{
  v5.receiver = self;
  v5.super_class = SXIssueCoverLayoutOptions;
  result = [(SXIssueCoverLayoutOptions *)&v5 init];
  if (result)
  {
    result->_boundingWidth = width;
  }

  return result;
}

@end