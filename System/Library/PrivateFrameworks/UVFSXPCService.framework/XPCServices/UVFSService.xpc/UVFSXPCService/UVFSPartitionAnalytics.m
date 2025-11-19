@interface UVFSPartitionAnalytics
- (id)getLogPartition;
@end

@implementation UVFSPartitionAnalytics

- (id)getLogPartition
{
  v3 = [(UVFSPartitionAnalytics *)self partitionType];
  v4 = [NSString stringWithFormat:@"      Partition type %@, size %lu", v3, [(UVFSPartitionAnalytics *)self partitionSize]];

  return v4;
}

@end