@interface NCDecomposedAnimation
- (NCDecomposedAnimation)init;
- (NCDecomposedAnimation)initWithAnimationBlock:(id)a3 settings:(id)a4 name:(id)a5;
- (NSString)name;
- (id)animationBlock;
- (void)setAnimationBlock:(id)a3;
- (void)setName:(id)a3;
- (void)setSettings:(id)a3;
@end

@implementation NCDecomposedAnimation

- (id)animationBlock
{
  v2 = *(self + OBJC_IVAR___NCDecomposedAnimation_animationBlock + 8);
  v5[4] = *(self + OBJC_IVAR___NCDecomposedAnimation_animationBlock);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_21E792C28;
  v5[3] = &block_descriptor_222;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)setAnimationBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___NCDecomposedAnimation_animationBlock);
  *v6 = sub_21E79E1A4;
  v6[1] = v5;
}

- (void)setSettings:(id)a3
{
  v4 = *(self + OBJC_IVAR___NCDecomposedAnimation_settings);
  *(self + OBJC_IVAR___NCDecomposedAnimation_settings) = a3;
  v3 = a3;
}

- (NSString)name
{

  v2 = sub_21E92A428();

  return v2;
}

- (void)setName:(id)a3
{
  v4 = sub_21E92A458();
  v5 = (self + OBJC_IVAR___NCDecomposedAnimation_name);
  *v5 = v4;
  v5[1] = v6;
}

- (NCDecomposedAnimation)initWithAnimationBlock:(id)a3 settings:(id)a4 name:(id)a5
{
  v7 = _Block_copy(a3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = sub_21E92A458();
  v10 = (self + OBJC_IVAR___NCDecomposedAnimation_animationBlock);
  *v10 = sub_21E79E1A4;
  v10[1] = v8;
  *(self + OBJC_IVAR___NCDecomposedAnimation_settings) = a4;
  v11 = (self + OBJC_IVAR___NCDecomposedAnimation_name);
  *v11 = v9;
  v11[1] = v12;
  v15.receiver = self;
  v15.super_class = NCDecomposedAnimation;
  v13 = a4;
  return [(NCDecomposedAnimation *)&v15 init];
}

- (NCDecomposedAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end