@interface NSNumber(RBSProcessIdentifier)
- (BOOL)matchesProcess:()RBSProcessIdentifier;
- (uint64_t)rbs_pid;
@end

@implementation NSNumber(RBSProcessIdentifier)

- (uint64_t)rbs_pid
{
  LODWORD(result) = [a1 intValue];
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
  LODWORD(a1) = [a1 rbs_pid];
  v5 = [v4 rbs_pid];

  return a1 == v5;
}

@end