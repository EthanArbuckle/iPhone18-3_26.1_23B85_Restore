@interface WFWorkoutType
+ (id)allTypes;
- (WFWorkoutType)initWithActivityType:(unint64_t)type;
@end

@implementation WFWorkoutType

- (WFWorkoutType)initWithActivityType:(unint64_t)type
{
  v10.receiver = self;
  v10.super_class = WFWorkoutType;
  v4 = [(WFWorkoutType *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_activityType = type;
    v6 = softLinkHKUILocalizedWorkoutTypeName(type);
    name = v5->_name;
    v5->_name = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)allTypes
{
  _allWorkoutActivityTypes = [(objc_class *)getHKWorkoutClass() _allWorkoutActivityTypes];
  v3 = [_allWorkoutActivityTypes if_map:&__block_literal_global_3605];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_457];

  return v4;
}

uint64_t __25__WFWorkoutType_allTypes__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

WFWorkoutType *__25__WFWorkoutType_allTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [WFWorkoutType alloc];
  v4 = [v2 unsignedIntegerValue];

  v5 = [(WFWorkoutType *)v3 initWithActivityType:v4];

  return v5;
}

@end