@interface WBSOfflineSearchRemoteDisablementSnapshotTransformer
- (id)objectFromData:(id)a3;
@end

@implementation WBSOfflineSearchRemoteDisablementSnapshotTransformer

- (id)objectFromData:(id)a3
{
  v3 = a3;
  v4 = [[WBSOfflineSearchRemoteDisablementSnapshot alloc] initWithSnapshotData:v3 error:0];

  return v4;
}

@end