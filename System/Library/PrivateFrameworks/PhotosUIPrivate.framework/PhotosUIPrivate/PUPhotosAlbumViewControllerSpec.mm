@interface PUPhotosAlbumViewControllerSpec
+ (id)padSpec;
+ (id)phoneSpec;
- (UIEdgeInsets)fullMomentsLevelSectionHeaderHighlightInset;
@end

@implementation PUPhotosAlbumViewControllerSpec

- (UIEdgeInsets)fullMomentsLevelSectionHeaderHighlightInset
{
  v2 = -7.5;
  v3 = 0.0;
  v4 = 2.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (id)padSpec
{
  v2 = objc_alloc_init(PUPhotosAlbumViewControllerPadSpec);

  return v2;
}

+ (id)phoneSpec
{
  v2 = objc_alloc_init(PUPhotosAlbumViewControllerPhoneSpec);

  return v2;
}

@end