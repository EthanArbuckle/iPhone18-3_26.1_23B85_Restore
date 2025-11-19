@interface _SBSceneManagerPolicyAggregator
- (BOOL)allowsCapability:(int64_t)a3 explanation:(id *)a4;
@end

@implementation _SBSceneManagerPolicyAggregator

- (BOOL)allowsCapability:(int64_t)a3 explanation:(id *)a4
{
  if (a4)
  {
    *a4 = @"The base scene manager does not support any capabilities";
  }

  return 0;
}

@end