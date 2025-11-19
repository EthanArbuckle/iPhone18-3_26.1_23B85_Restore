@interface PKFaceIDBannerHandleRequest(PKBannerViewController)
- (_BYTE)createBannerViewController;
@end

@implementation PKFaceIDBannerHandleRequest(PKBannerViewController)

- (_BYTE)createBannerViewController
{
  v1 = [a1 recordingType];
  objc_opt_self();
  result = [[PKFaceIDBannerViewController alloc] _init];
  if (v1)
  {
    result[1104] = v1;
    result[1152] = 0;
    result[1105] = 0;
  }

  return result;
}

@end