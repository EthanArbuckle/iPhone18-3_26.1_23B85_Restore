@interface PXFeedTestCommentsSectionInfo
- (id)commentForItemAtIndex:(int64_t)a3;
@end

@implementation PXFeedTestCommentsSectionInfo

- (id)commentForItemAtIndex:(int64_t)a3
{
  v3 = objc_alloc_init(TestPLCloudSharedComment);

  return v3;
}

@end