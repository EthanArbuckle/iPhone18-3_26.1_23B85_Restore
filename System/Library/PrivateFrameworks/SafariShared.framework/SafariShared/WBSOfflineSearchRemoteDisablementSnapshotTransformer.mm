@interface WBSOfflineSearchRemoteDisablementSnapshotTransformer
- (id)objectFromData:(id)data;
@end

@implementation WBSOfflineSearchRemoteDisablementSnapshotTransformer

- (id)objectFromData:(id)data
{
  dataCopy = data;
  v4 = [[WBSOfflineSearchRemoteDisablementSnapshot alloc] initWithSnapshotData:dataCopy error:0];

  return v4;
}

@end