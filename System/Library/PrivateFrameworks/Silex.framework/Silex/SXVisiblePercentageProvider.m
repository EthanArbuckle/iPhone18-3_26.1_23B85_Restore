@interface SXVisiblePercentageProvider
- (SXVisiblePercentageProvider)initWithVisiblePercentage:(double)a3;
@end

@implementation SXVisiblePercentageProvider

- (SXVisiblePercentageProvider)initWithVisiblePercentage:(double)a3
{
  v5.receiver = self;
  v5.super_class = SXVisiblePercentageProvider;
  result = [(SXVisiblePercentageProvider *)&v5 init];
  if (result)
  {
    result->_visiblePercentage = a3;
  }

  return result;
}

@end