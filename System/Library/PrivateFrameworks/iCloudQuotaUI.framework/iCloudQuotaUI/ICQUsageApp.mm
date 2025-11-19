@interface ICQUsageApp
- (float)dataSize;
- (float)totalSize;
@end

@implementation ICQUsageApp

- (float)dataSize
{
  [(ICQUsageApp *)self dynamicSize];
  v4 = v3;
  [(ICQUsageApp *)self specialSize];
  return v4 + v5;
}

- (float)totalSize
{
  [(ICQUsageApp *)self staticSize];
  v4 = v3;
  [(ICQUsageApp *)self dataSize];
  return v4 + v5;
}

@end