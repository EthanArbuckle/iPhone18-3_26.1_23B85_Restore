@interface MPModelLibraryDownloadedItemsSnapshot
- (NSArray)downloadedSongCatalogIDs;
- (void)setDownloadedSongCatalogIDs:(id)ds;
@end

@implementation MPModelLibraryDownloadedItemsSnapshot

- (NSArray)downloadedSongCatalogIDs
{
  MPModelLibraryDownloadedItemsSnapshot.downloadedSongCatalogIDs.getter();
  sub_2752C3CD8(0, &qword_2809BFFF0, 0x277CCABB0);
  v2 = sub_2752DE2B8();

  return v2;
}

- (void)setDownloadedSongCatalogIDs:(id)ds
{
  sub_2752C3CD8(0, &qword_2809BFFF0, 0x277CCABB0);
  v4 = sub_2752DE2C8();
  selfCopy = self;
  MPModelLibraryDownloadedItemsSnapshot.downloadedSongCatalogIDs.setter(v4);
}

@end