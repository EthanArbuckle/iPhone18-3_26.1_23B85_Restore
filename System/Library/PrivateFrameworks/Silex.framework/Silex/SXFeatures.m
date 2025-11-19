@interface SXFeatures
- (SXFeatures)initWithNewAdsEnabled:(BOOL)a3 limitTextSelectionEnabled:(BOOL)a4 textSelectionLimit:(int)a5 writingToolsDisabled:(BOOL)a6;
@end

@implementation SXFeatures

- (SXFeatures)initWithNewAdsEnabled:(BOOL)a3 limitTextSelectionEnabled:(BOOL)a4 textSelectionLimit:(int)a5 writingToolsDisabled:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = SXFeatures;
  result = [(SXFeatures *)&v11 init];
  if (result)
  {
    result->_newAdsEnabled = a3;
    result->_limitTextSelectionEnabled = a4;
    result->_textSelectionLimit = a5;
    result->_writingToolsDisabled = a6;
  }

  return result;
}

@end