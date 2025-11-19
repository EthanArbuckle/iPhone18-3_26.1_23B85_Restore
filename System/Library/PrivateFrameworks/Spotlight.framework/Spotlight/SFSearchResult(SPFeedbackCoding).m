@interface SFSearchResult(SPFeedbackCoding)
- (id)replacementObjectForCoder:()SPFeedbackCoding;
@end

@implementation SFSearchResult(SPFeedbackCoding)

- (id)replacementObjectForCoder:()SPFeedbackCoding
{
  if (runningInSpotlight == 1)
  {
    v1 = [a1 objectForFeedback];
  }

  else
  {
    v1 = a1;
  }

  return v1;
}

@end