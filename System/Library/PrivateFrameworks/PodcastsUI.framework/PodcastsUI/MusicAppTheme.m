@interface MusicAppTheme
+ (CGSize)cloudDownloadImageSizeForTraitCollection:(id)a3;
+ (id)cloudDownloadImageForTintColor:(id)a3 outlineColor:(id)a4 traitCollection:(id)a5;
- (MusicAppTheme)init;
@end

@implementation MusicAppTheme

+ (CGSize)cloudDownloadImageSizeForTraitCollection:(id)a3
{
  v3 = a3;
  _s10PodcastsUI5ThemeC22cloudDownloadImageSize3forSo6CGSizeVSo17UITraitCollectionC_tFZ_0(v3);
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (id)cloudDownloadImageForTintColor:(id)a3 outlineColor:(id)a4 traitCollection:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = static Theme.cloudDownloadImage(forTintColor:outlineColor:traitCollection:)(v8, v9, v10);

  return v11;
}

- (MusicAppTheme)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MusicAppTheme *)&v3 init];
}

@end