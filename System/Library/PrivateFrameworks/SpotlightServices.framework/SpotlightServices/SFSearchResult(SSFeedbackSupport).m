@interface SFSearchResult(SSFeedbackSupport)
- (__CFString)feedbackSectionIdentifier;
@end

@implementation SFSearchResult(SSFeedbackSupport)

- (__CFString)feedbackSectionIdentifier
{
  if ([a1 isAppClip])
  {
    v2 = @"com.apple.app-clips";
  }

  else if ([a1 isLocalApplicationResult])
  {
    v2 = @"com.apple.application";
  }

  else
  {
    v2 = [a1 sectionBundleIdentifier];
  }

  if ([(__CFString *)v2 isEqualToString:@"com.apple.DocumentsApp"])
  {
    v3 = [a1 resultBundleId];

    v2 = v3;
  }

  return v2;
}

@end