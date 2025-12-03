@interface PKFaceIDBannerHandleRequest(PKBannerViewController)
- (_BYTE)createBannerViewController;
@end

@implementation PKFaceIDBannerHandleRequest(PKBannerViewController)

- (_BYTE)createBannerViewController
{
  recordingType = [self recordingType];
  objc_opt_self();
  result = [[PKFaceIDBannerViewController alloc] _init];
  if (recordingType)
  {
    result[1104] = recordingType;
    result[1152] = 0;
    result[1105] = 0;
  }

  return result;
}

@end