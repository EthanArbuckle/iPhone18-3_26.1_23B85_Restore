@interface MPModelDownloadedSongCatalogStore
+ (MPModelDownloadedSongCatalogStore)sharedDownloadedSongCatalogStore;
@end

@implementation MPModelDownloadedSongCatalogStore

+ (MPModelDownloadedSongCatalogStore)sharedDownloadedSongCatalogStore
{
  v2 = static MPModelDownloadedSongCatalogStore.shared.getter();

  return v2;
}

@end