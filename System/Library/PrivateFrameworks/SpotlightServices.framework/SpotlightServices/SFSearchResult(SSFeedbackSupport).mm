@interface SFSearchResult(SSFeedbackSupport)
- (__CFString)feedbackSectionIdentifier;
@end

@implementation SFSearchResult(SSFeedbackSupport)

- (__CFString)feedbackSectionIdentifier
{
  if ([self isAppClip])
  {
    sectionBundleIdentifier = @"com.apple.app-clips";
  }

  else if ([self isLocalApplicationResult])
  {
    sectionBundleIdentifier = @"com.apple.application";
  }

  else
  {
    sectionBundleIdentifier = [self sectionBundleIdentifier];
  }

  if ([(__CFString *)sectionBundleIdentifier isEqualToString:@"com.apple.DocumentsApp"])
  {
    resultBundleId = [self resultBundleId];

    sectionBundleIdentifier = resultBundleId;
  }

  return sectionBundleIdentifier;
}

@end