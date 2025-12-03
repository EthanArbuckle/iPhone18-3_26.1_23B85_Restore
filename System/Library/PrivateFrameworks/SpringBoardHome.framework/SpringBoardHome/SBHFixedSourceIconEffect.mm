@interface SBHFixedSourceIconEffect
- (SBHFixedSourceIconEffect)initWithName:(id)name sourceView:(id)view;
- (SBHFixedSourceIconEffect)initWithName:(id)name sourceView:(id)view configuration:(id)configuration;
- (SBHFixedSourceIconEffect)initWithName:(id)name viewBuilder:(id)builder;
@end

@implementation SBHFixedSourceIconEffect

- (SBHFixedSourceIconEffect)initWithName:(id)name sourceView:(id)view
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = [(SBHFixedSourceIconEffect *)self initWithName:name sourceView:view configuration:0];

  return v7;
}

- (SBHFixedSourceIconEffect)initWithName:(id)name sourceView:(id)view configuration:(id)configuration
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(configuration);
  v8 = sub_1BEE4708C();
  v10 = v9;
  if (v7)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v7 = sub_1BEE27F70;
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1BEE27864(v8, v10, view, v7, v11);

  return v12;
}

- (SBHFixedSourceIconEffect)initWithName:(id)name viewBuilder:(id)builder
{
  v6 = _Block_copy(builder);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  aBlock[4] = sub_1BEE27F34;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE276FC;
  aBlock[3] = &block_descriptor_6_0;
  v8 = _Block_copy(aBlock);
  nameCopy = name;

  v12.receiver = self;
  v12.super_class = SBHFixedSourceIconEffect;
  v10 = [(SBHSimpleIconEffect *)&v12 initWithName:nameCopy viewBuilder:v8];

  _Block_release(v8);

  return v10;
}

@end