@interface PXFeedSubscriptionSectionInfo
- (void)updateFromCloudFeedEntry;
@end

@implementation PXFeedSubscriptionSectionInfo

- (void)updateFromCloudFeedEntry
{
  v5.receiver = self;
  v5.super_class = PXFeedSubscriptionSectionInfo;
  [(PXFeedAssetsSectionInfo *)&v5 updateFromCloudFeedEntry];
  v3 = [(PXFeedSectionInfo *)self sharedAlbum];

  if (!v3)
  {
    v4 = [(PXFeedSectionInfo *)self cloudFeedEntry];
    NSLog(&cfstr_NoSharedAlbumF_0.isa, self, v4);
  }

  [(PXFeedSectionInfo *)self setShouldBeVisibleWhenEmpty:v3 != 0];
}

@end