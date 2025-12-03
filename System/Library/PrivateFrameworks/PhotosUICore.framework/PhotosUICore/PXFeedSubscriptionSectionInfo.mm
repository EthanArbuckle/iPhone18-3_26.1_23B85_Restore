@interface PXFeedSubscriptionSectionInfo
- (void)updateFromCloudFeedEntry;
@end

@implementation PXFeedSubscriptionSectionInfo

- (void)updateFromCloudFeedEntry
{
  v5.receiver = self;
  v5.super_class = PXFeedSubscriptionSectionInfo;
  [(PXFeedAssetsSectionInfo *)&v5 updateFromCloudFeedEntry];
  sharedAlbum = [(PXFeedSectionInfo *)self sharedAlbum];

  if (!sharedAlbum)
  {
    cloudFeedEntry = [(PXFeedSectionInfo *)self cloudFeedEntry];
    NSLog(&cfstr_NoSharedAlbumF_0.isa, self, cloudFeedEntry);
  }

  [(PXFeedSectionInfo *)self setShouldBeVisibleWhenEmpty:sharedAlbum != 0];
}

@end