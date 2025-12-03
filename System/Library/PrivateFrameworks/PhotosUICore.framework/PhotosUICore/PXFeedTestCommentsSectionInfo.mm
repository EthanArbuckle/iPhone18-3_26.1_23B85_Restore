@interface PXFeedTestCommentsSectionInfo
- (id)commentForItemAtIndex:(int64_t)index;
@end

@implementation PXFeedTestCommentsSectionInfo

- (id)commentForItemAtIndex:(int64_t)index
{
  v3 = objc_alloc_init(TestPLCloudSharedComment);

  return v3;
}

@end