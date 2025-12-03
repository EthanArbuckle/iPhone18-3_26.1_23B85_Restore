@interface SBHSimpleIconEffect
- (NSString)description;
- (NSString)name;
- (SBHSimpleIconEffect)init;
- (SBHSimpleIconEffect)initWithName:(id)name viewBuilder:(id)builder;
- (id)makeNewEffectView;
- (id)viewBuilder;
@end

@implementation SBHSimpleIconEffect

- (SBHSimpleIconEffect)initWithName:(id)name viewBuilder:(id)builder
{
  v5 = _Block_copy(builder);
  v6 = sub_1BEE4708C();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = (self + OBJC_IVAR___SBHSimpleIconEffect_name);
  *v10 = v6;
  v10[1] = v8;
  v11 = (self + OBJC_IVAR___SBHSimpleIconEffect_viewBuilder);
  *v11 = sub_1BEDFDB38;
  v11[1] = v9;
  v13.receiver = self;
  v13.super_class = SBHSimpleIconEffect;
  return [(SBHSimpleIconEffect *)&v13 init];
}

- (id)makeNewEffectView
{
  selfCopy = self;
  viewBuilder = [(SBHSimpleIconEffect *)selfCopy viewBuilder];
  v4 = viewBuilder[2](viewBuilder, selfCopy);
  _Block_release(viewBuilder);

  return v4;
}

- (NSString)description
{
  name = [(SBHSimpleIconEffect *)self name];

  return name;
}

- (NSString)name
{

  v2 = sub_1BEE4705C();

  return v2;
}

- (id)viewBuilder
{
  v2 = *(self + OBJC_IVAR___SBHSimpleIconEffect_viewBuilder + 8);
  v5[4] = *(self + OBJC_IVAR___SBHSimpleIconEffect_viewBuilder);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1BEE276FC;
  v5[3] = &block_descriptor_4;
  v3 = _Block_copy(v5);

  return v3;
}

- (SBHSimpleIconEffect)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end