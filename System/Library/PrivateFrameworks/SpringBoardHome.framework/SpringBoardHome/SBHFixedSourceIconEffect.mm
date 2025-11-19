@interface SBHFixedSourceIconEffect
- (SBHFixedSourceIconEffect)initWithName:(id)a3 sourceView:(id)a4;
- (SBHFixedSourceIconEffect)initWithName:(id)a3 sourceView:(id)a4 configuration:(id)a5;
- (SBHFixedSourceIconEffect)initWithName:(id)a3 viewBuilder:(id)a4;
@end

@implementation SBHFixedSourceIconEffect

- (SBHFixedSourceIconEffect)initWithName:(id)a3 sourceView:(id)a4
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = [(SBHFixedSourceIconEffect *)self initWithName:a3 sourceView:a4 configuration:0];

  return v7;
}

- (SBHFixedSourceIconEffect)initWithName:(id)a3 sourceView:(id)a4 configuration:(id)a5
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(a5);
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

  v12 = sub_1BEE27864(v8, v10, a4, v7, v11);

  return v12;
}

- (SBHFixedSourceIconEffect)initWithName:(id)a3 viewBuilder:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  aBlock[4] = sub_1BEE27F34;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE276FC;
  aBlock[3] = &block_descriptor_6_0;
  v8 = _Block_copy(aBlock);
  v9 = a3;

  v12.receiver = self;
  v12.super_class = SBHFixedSourceIconEffect;
  v10 = [(SBHSimpleIconEffect *)&v12 initWithName:v9 viewBuilder:v8];

  _Block_release(v8);

  return v10;
}

@end