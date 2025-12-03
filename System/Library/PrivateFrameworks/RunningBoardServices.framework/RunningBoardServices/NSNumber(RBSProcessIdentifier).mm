@interface NSNumber(RBSProcessIdentifier)
- (BOOL)matchesProcess:()RBSProcessIdentifier;
- (uint64_t)rbs_pid;
@end

@implementation NSNumber(RBSProcessIdentifier)

- (uint64_t)rbs_pid
{
  LODWORD(result) = [self intValue];
  if (result < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

- (BOOL)matchesProcess:()RBSProcessIdentifier
{
  v4 = a3;
  LODWORD(self) = [self rbs_pid];
  rbs_pid = [v4 rbs_pid];

  return self == rbs_pid;
}

@end