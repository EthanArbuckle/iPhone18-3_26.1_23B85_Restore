@interface WBSUserAgentQuirksSnapshotTransformer
- (id)objectFromData:(id)data;
@end

@implementation WBSUserAgentQuirksSnapshotTransformer

- (id)objectFromData:(id)data
{
  dataCopy = data;
  v4 = [[WBSUserAgentQuirksSnapshot alloc] initWithSnapshotData:dataCopy error:0];

  return v4;
}

@end