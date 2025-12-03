@interface SXVisiblePercentageProvider
- (SXVisiblePercentageProvider)initWithVisiblePercentage:(double)percentage;
@end

@implementation SXVisiblePercentageProvider

- (SXVisiblePercentageProvider)initWithVisiblePercentage:(double)percentage
{
  v5.receiver = self;
  v5.super_class = SXVisiblePercentageProvider;
  result = [(SXVisiblePercentageProvider *)&v5 init];
  if (result)
  {
    result->_visiblePercentage = percentage;
  }

  return result;
}

@end