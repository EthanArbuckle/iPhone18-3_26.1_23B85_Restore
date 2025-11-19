@interface SBWindowingModifierActivity
- (SBWindowingModifierActivity)init;
- (uint64_t)activityIndex;
@end

@implementation SBWindowingModifierActivity

- (SBWindowingModifierActivity)init
{
  v4.receiver = self;
  v4.super_class = SBWindowingModifierActivity;
  result = [(SBWindowingModifierActivity *)&v4 init];
  if (result)
  {
    v3 = __currentIndex++;
    result->_activityIndex = v3;
  }

  return result;
}

- (uint64_t)activityIndex
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

@end