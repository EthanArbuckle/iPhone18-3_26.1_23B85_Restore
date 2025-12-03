@interface PXFeedInvitationSectionInfo
- (void)updateFromCloudFeedEntry;
@end

@implementation PXFeedInvitationSectionInfo

- (void)updateFromCloudFeedEntry
{
  v8.receiver = self;
  v8.super_class = PXFeedInvitationSectionInfo;
  [(PXFeedSectionInfo *)&v8 updateFromCloudFeedEntry];
  cloudFeedEntry = [(PXFeedSectionInfo *)self cloudFeedEntry];
  entryAlbumGUID = [cloudFeedEntry entryAlbumGUID];
  v5 = [(PXFeedSectionInfo *)self sharedAlbumWithGUID:entryAlbumGUID];
  localizedTitle = [v5 localizedTitle];
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    NSLog(&cfstr_NoSharedAlbumF.isa, self, cloudFeedEntry);
    v7 = 0;
  }

  [(PXFeedSectionInfo *)self setNumberOfItems:v7];
  [(PXFeedSectionInfo *)self setSharedAlbum:v5];
  [(PXFeedSectionInfo *)self setAlbumTitle:localizedTitle];
}

@end