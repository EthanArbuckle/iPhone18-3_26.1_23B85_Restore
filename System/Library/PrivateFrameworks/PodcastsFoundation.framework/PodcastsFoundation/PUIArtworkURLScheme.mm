@interface PUIArtworkURLScheme
+ (NSString)monogram;
+ (NSString)resource;
+ (NSString)systemGlyph;
- (PUIArtworkURLScheme)init;
@end

@implementation PUIArtworkURLScheme

+ (NSString)resource
{
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

+ (NSString)monogram
{
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

+ (NSString)systemGlyph
{
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

- (PUIArtworkURLScheme)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ArtworkURLScheme();
  return [(PUIArtworkURLScheme *)&v3 init];
}

@end