@interface _SBSceneManagerPolicyAggregator
- (BOOL)allowsCapability:(int64_t)capability explanation:(id *)explanation;
@end

@implementation _SBSceneManagerPolicyAggregator

- (BOOL)allowsCapability:(int64_t)capability explanation:(id *)explanation
{
  if (explanation)
  {
    *explanation = @"The base scene manager does not support any capabilities";
  }

  return 0;
}

@end