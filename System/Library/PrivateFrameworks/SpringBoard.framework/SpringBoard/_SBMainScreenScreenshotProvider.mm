@interface _SBMainScreenScreenshotProvider
- (id)captureScreenshot;
@end

@implementation _SBMainScreenScreenshotProvider

- (id)captureScreenshot
{
  v2 = _UICreateScreenUIImageWithRotation();

  return v2;
}

@end