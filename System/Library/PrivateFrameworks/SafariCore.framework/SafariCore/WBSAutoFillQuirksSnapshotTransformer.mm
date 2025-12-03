@interface WBSAutoFillQuirksSnapshotTransformer
- (id)objectFromData:(id)data;
@end

@implementation WBSAutoFillQuirksSnapshotTransformer

- (id)objectFromData:(id)data
{
  dataCopy = data;
  v4 = [[WBSAutoFillQuirksSnapshot alloc] initWithSnapshotData:dataCopy error:0];

  return v4;
}

@end