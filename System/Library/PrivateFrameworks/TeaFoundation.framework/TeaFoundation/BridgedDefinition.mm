@interface BridgedDefinition
- (id)inScope:(unint64_t)scope;
- (id)withConfiguration:(id)configuration;
@end

@implementation BridgedDefinition

- (id)inScope:(unint64_t)scope
{
  selfCopy = self;
  v5 = sub_1BEFF261C(scope);

  return v5;
}

- (id)withConfiguration:(id)configuration
{
  v4 = _Block_copy(configuration);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = sub_1BEFF29C8(sub_1BF021CC4, v5);

  return v7;
}

@end