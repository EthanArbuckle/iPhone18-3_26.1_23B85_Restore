@interface WBSDomainAllowListSnapshotTransformer
- (id)objectFromData:(id)data;
@end

@implementation WBSDomainAllowListSnapshotTransformer

- (id)objectFromData:(id)data
{
  dataCopy = data;
  v4 = [[WBSDomainAllowListSnapshot alloc] initWithSnapshotData:dataCopy error:0];

  return v4;
}

@end