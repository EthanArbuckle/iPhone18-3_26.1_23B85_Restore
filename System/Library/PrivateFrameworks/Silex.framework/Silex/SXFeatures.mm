@interface SXFeatures
- (SXFeatures)initWithNewAdsEnabled:(BOOL)enabled limitTextSelectionEnabled:(BOOL)selectionEnabled textSelectionLimit:(int)limit writingToolsDisabled:(BOOL)disabled;
@end

@implementation SXFeatures

- (SXFeatures)initWithNewAdsEnabled:(BOOL)enabled limitTextSelectionEnabled:(BOOL)selectionEnabled textSelectionLimit:(int)limit writingToolsDisabled:(BOOL)disabled
{
  v11.receiver = self;
  v11.super_class = SXFeatures;
  result = [(SXFeatures *)&v11 init];
  if (result)
  {
    result->_newAdsEnabled = enabled;
    result->_limitTextSelectionEnabled = selectionEnabled;
    result->_textSelectionLimit = limit;
    result->_writingToolsDisabled = disabled;
  }

  return result;
}

@end