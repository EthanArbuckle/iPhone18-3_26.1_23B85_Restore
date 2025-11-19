@interface PLUsageSnapshot
- (id)description;
@end

@implementation PLUsageSnapshot

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLUsageSnapshot *)self timestamp];
  [(PLUsageSnapshot *)self cpuUsage];
  v6 = [v3 stringWithFormat:@"PLUsageSnapshot (%@: %f)", v4, v5];

  return v6;
}

@end