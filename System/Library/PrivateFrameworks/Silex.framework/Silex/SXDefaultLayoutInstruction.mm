@interface SXDefaultLayoutInstruction
+ (id)instruction;
- (BOOL)isFulfilledForBlueprint:(id)a3;
@end

@implementation SXDefaultLayoutInstruction

+ (id)instruction
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (BOOL)isFulfilledForBlueprint:(id)a3
{
  v3 = [a3 rootLayoutBlueprint];
  v4 = [v3 isComplete];

  return v4;
}

@end