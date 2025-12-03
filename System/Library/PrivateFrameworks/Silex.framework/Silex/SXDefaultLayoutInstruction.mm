@interface SXDefaultLayoutInstruction
+ (id)instruction;
- (BOOL)isFulfilledForBlueprint:(id)blueprint;
@end

@implementation SXDefaultLayoutInstruction

+ (id)instruction
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (BOOL)isFulfilledForBlueprint:(id)blueprint
{
  rootLayoutBlueprint = [blueprint rootLayoutBlueprint];
  isComplete = [rootLayoutBlueprint isComplete];

  return isComplete;
}

@end