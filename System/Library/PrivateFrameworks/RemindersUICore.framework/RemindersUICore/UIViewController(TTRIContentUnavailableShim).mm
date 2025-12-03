@interface UIViewController(TTRIContentUnavailableShim)
- (id)ttr_unavailableSearchResultsText;
@end

@implementation UIViewController(TTRIContentUnavailableShim)

- (id)ttr_unavailableSearchResultsText
{
  _contentUnavailableConfigurationState = [self _contentUnavailableConfigurationState];
  searchControllerText = [_contentUnavailableConfigurationState searchControllerText];

  return searchControllerText;
}

@end