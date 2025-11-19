@interface SWScrollSettings
- (SWScrollSettings)initWithScrollEnabled:(BOOL)a3 scrollsToTop:(BOOL)a4 showsVerticalScrollIndicator:(BOOL)a5;
@end

@implementation SWScrollSettings

- (SWScrollSettings)initWithScrollEnabled:(BOOL)a3 scrollsToTop:(BOOL)a4 showsVerticalScrollIndicator:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = SWScrollSettings;
  result = [(SWScrollSettings *)&v9 init];
  if (result)
  {
    result->_scrollEnabled = a3;
    result->_scrollsToTop = a4;
    result->_showsVerticalScrollIndicator = a5;
  }

  return result;
}

@end