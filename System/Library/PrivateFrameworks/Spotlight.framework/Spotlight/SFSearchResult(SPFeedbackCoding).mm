@interface SFSearchResult(SPFeedbackCoding)
- (id)replacementObjectForCoder:()SPFeedbackCoding;
@end

@implementation SFSearchResult(SPFeedbackCoding)

- (id)replacementObjectForCoder:()SPFeedbackCoding
{
  if (runningInSpotlight == 1)
  {
    selfCopy = [self objectForFeedback];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end