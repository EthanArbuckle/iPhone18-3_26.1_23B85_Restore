@interface SUSUIFakeSUDownload
- (id)descriptor;
- (id)metadata;
- (id)progress;
@end

@implementation SUSUIFakeSUDownload

- (id)descriptor
{
  v2 = objc_alloc_init(SUSUIFakeSUDescriptor);

  return v2;
}

- (id)metadata
{
  v2 = objc_alloc_init(SUSUIFakeSUDownloadMetadata);

  return v2;
}

- (id)progress
{
  v2 = objc_alloc_init(SUSUIFakeSUOperationProgress);

  return v2;
}

@end