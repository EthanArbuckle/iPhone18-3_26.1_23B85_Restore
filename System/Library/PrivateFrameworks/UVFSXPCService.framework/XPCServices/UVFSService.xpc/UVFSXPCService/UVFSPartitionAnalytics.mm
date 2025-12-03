@interface UVFSPartitionAnalytics
- (id)getLogPartition;
@end

@implementation UVFSPartitionAnalytics

- (id)getLogPartition
{
  partitionType = [(UVFSPartitionAnalytics *)self partitionType];
  v4 = [NSString stringWithFormat:@"      Partition type %@, size %lu", partitionType, [(UVFSPartitionAnalytics *)self partitionSize]];

  return v4;
}

@end