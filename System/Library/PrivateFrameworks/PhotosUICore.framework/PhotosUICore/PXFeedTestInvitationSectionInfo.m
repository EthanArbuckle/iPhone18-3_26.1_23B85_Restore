@interface PXFeedTestInvitationSectionInfo
- (id)sharedAlbum;
@end

@implementation PXFeedTestInvitationSectionInfo

- (id)sharedAlbum
{
  v2 = objc_alloc_init(TestPLCloudSharedAlbum);

  return v2;
}

@end