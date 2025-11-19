@interface _UIMagicMorphMilestone
- (_UIMagicMorphMilestone)init;
- (id)action;
@end

@implementation _UIMagicMorphMilestone

- (id)action
{
  v2 = *(self + OBJC_IVAR____UIMagicMorphMilestone_action + 8);
  v5[4] = *(self + OBJC_IVAR____UIMagicMorphMilestone_action);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_188A4A8F0;
  v5[3] = &block_descriptor_107;
  v3 = _Block_copy(v5);

  return v3;
}

- (_UIMagicMorphMilestone)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end