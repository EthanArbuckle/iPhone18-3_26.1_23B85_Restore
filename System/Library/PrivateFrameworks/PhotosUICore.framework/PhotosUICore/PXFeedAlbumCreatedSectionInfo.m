@interface PXFeedAlbumCreatedSectionInfo
- (void)updateFromCloudFeedEntry;
@end

@implementation PXFeedAlbumCreatedSectionInfo

- (void)updateFromCloudFeedEntry
{
  v7.receiver = self;
  v7.super_class = PXFeedAlbumCreatedSectionInfo;
  [(PXFeedSectionInfo *)&v7 updateFromCloudFeedEntry];
  v3 = [(PXFeedSectionInfo *)self cloudFeedEntry];
  v4 = [v3 entryAlbumGUID];
  v5 = [(PXFeedSectionInfo *)self sharedAlbumWithGUID:v4];
  v6 = [v5 localizedTitle];
  [(PXFeedSectionInfo *)self setNumberOfItems:0];
  [(PXFeedSectionInfo *)self setShouldBeVisibleWhenEmpty:1];
  [(PXFeedSectionInfo *)self setSharedAlbum:v5];
  [(PXFeedSectionInfo *)self setAlbumTitle:v6];
}

@end