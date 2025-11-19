@interface SXIssueCoverLayoutOptions
- (SXIssueCoverLayoutOptions)initWithBoundingWidth:(double)a3;
@end

@implementation SXIssueCoverLayoutOptions

- (SXIssueCoverLayoutOptions)initWithBoundingWidth:(double)a3
{
  v5.receiver = self;
  v5.super_class = SXIssueCoverLayoutOptions;
  result = [(SXIssueCoverLayoutOptions *)&v5 init];
  if (result)
  {
    result->_boundingWidth = a3;
  }

  return result;
}

@end