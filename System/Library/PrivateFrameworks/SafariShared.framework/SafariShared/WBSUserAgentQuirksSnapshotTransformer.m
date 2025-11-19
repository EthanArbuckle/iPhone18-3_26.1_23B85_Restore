@interface WBSUserAgentQuirksSnapshotTransformer
- (id)objectFromData:(id)a3;
@end

@implementation WBSUserAgentQuirksSnapshotTransformer

- (id)objectFromData:(id)a3
{
  v3 = a3;
  v4 = [[WBSUserAgentQuirksSnapshot alloc] initWithSnapshotData:v3 error:0];

  return v4;
}

@end