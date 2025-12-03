@interface PXFeedAlbumCreatedSectionInfo
- (void)updateFromCloudFeedEntry;
@end

@implementation PXFeedAlbumCreatedSectionInfo

- (void)updateFromCloudFeedEntry
{
  v7.receiver = self;
  v7.super_class = PXFeedAlbumCreatedSectionInfo;
  [(PXFeedSectionInfo *)&v7 updateFromCloudFeedEntry];
  cloudFeedEntry = [(PXFeedSectionInfo *)self cloudFeedEntry];
  entryAlbumGUID = [cloudFeedEntry entryAlbumGUID];
  v5 = [(PXFeedSectionInfo *)self sharedAlbumWithGUID:entryAlbumGUID];
  localizedTitle = [v5 localizedTitle];
  [(PXFeedSectionInfo *)self setNumberOfItems:0];
  [(PXFeedSectionInfo *)self setShouldBeVisibleWhenEmpty:1];
  [(PXFeedSectionInfo *)self setSharedAlbum:v5];
  [(PXFeedSectionInfo *)self setAlbumTitle:localizedTitle];
}

@end