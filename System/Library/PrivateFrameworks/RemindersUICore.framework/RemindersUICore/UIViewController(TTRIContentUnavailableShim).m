@interface UIViewController(TTRIContentUnavailableShim)
- (id)ttr_unavailableSearchResultsText;
@end

@implementation UIViewController(TTRIContentUnavailableShim)

- (id)ttr_unavailableSearchResultsText
{
  v1 = [a1 _contentUnavailableConfigurationState];
  v2 = [v1 searchControllerText];

  return v2;
}

@end