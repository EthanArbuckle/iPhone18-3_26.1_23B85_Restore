@interface MusicAppTheme
+ (CGSize)cloudDownloadImageSizeForTraitCollection:(id)collection;
+ (id)cloudDownloadImageForTintColor:(id)color outlineColor:(id)outlineColor traitCollection:(id)collection;
- (MusicAppTheme)init;
@end

@implementation MusicAppTheme

+ (CGSize)cloudDownloadImageSizeForTraitCollection:(id)collection
{
  collectionCopy = collection;
  _s10PodcastsUI5ThemeC22cloudDownloadImageSize3forSo6CGSizeVSo17UITraitCollectionC_tFZ_0(collectionCopy);
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (id)cloudDownloadImageForTintColor:(id)color outlineColor:(id)outlineColor traitCollection:(id)collection
{
  swift_getObjCClassMetadata();
  colorCopy = color;
  outlineColorCopy = outlineColor;
  collectionCopy = collection;
  v11 = static Theme.cloudDownloadImage(forTintColor:outlineColor:traitCollection:)(colorCopy, outlineColorCopy, collectionCopy);

  return v11;
}

- (MusicAppTheme)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MusicAppTheme *)&v3 init];
}

@end