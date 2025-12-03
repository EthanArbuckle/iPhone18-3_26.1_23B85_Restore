@interface SWScrollSettings
- (SWScrollSettings)initWithScrollEnabled:(BOOL)enabled scrollsToTop:(BOOL)top showsVerticalScrollIndicator:(BOOL)indicator;
@end

@implementation SWScrollSettings

- (SWScrollSettings)initWithScrollEnabled:(BOOL)enabled scrollsToTop:(BOOL)top showsVerticalScrollIndicator:(BOOL)indicator
{
  v9.receiver = self;
  v9.super_class = SWScrollSettings;
  result = [(SWScrollSettings *)&v9 init];
  if (result)
  {
    result->_scrollEnabled = enabled;
    result->_scrollsToTop = top;
    result->_showsVerticalScrollIndicator = indicator;
  }

  return result;
}

@end