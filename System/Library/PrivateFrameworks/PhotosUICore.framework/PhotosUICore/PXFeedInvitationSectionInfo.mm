@interface PXFeedInvitationSectionInfo
- (void)updateFromCloudFeedEntry;
@end

@implementation PXFeedInvitationSectionInfo

- (void)updateFromCloudFeedEntry
{
  v8.receiver = self;
  v8.super_class = PXFeedInvitationSectionInfo;
  [(PXFeedSectionInfo *)&v8 updateFromCloudFeedEntry];
  v3 = [(PXFeedSectionInfo *)self cloudFeedEntry];
  v4 = [v3 entryAlbumGUID];
  v5 = [(PXFeedSectionInfo *)self sharedAlbumWithGUID:v4];
  v6 = [v5 localizedTitle];
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    NSLog(&cfstr_NoSharedAlbumF.isa, self, v3);
    v7 = 0;
  }

  [(PXFeedSectionInfo *)self setNumberOfItems:v7];
  [(PXFeedSectionInfo *)self setSharedAlbum:v5];
  [(PXFeedSectionInfo *)self setAlbumTitle:v6];
}

@end