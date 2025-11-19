@interface BridgedDefinition
- (id)inScope:(unint64_t)a3;
- (id)withConfiguration:(id)a3;
@end

@implementation BridgedDefinition

- (id)inScope:(unint64_t)a3
{
  v4 = self;
  v5 = sub_1BEFF261C(a3);

  return v5;
}

- (id)withConfiguration:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  v7 = sub_1BEFF29C8(sub_1BF021CC4, v5);

  return v7;
}

@end