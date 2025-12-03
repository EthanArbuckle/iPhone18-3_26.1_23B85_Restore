@interface _SBCameraLaunchCondition
+ (id)conditionWithConditions:(id)conditions;
+ (id)conditionWithValue:(BOOL)value;
@end

@implementation _SBCameraLaunchCondition

+ (id)conditionWithConditions:(id)conditions
{
  conditionsCopy = conditions;
  v4 = objc_alloc_init(_SBAggregateCameraLaunchCondition);
  [(_SBAggregateCameraLaunchCondition *)v4 setConditions:conditionsCopy];

  return v4;
}

+ (id)conditionWithValue:(BOOL)value
{
  v4 = objc_alloc_init(_SBCameraLaunchCondition);
  v4->_met = value;

  return v4;
}

@end