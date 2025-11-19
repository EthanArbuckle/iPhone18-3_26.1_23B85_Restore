@interface RPTBlockInteraction
- (RPTBlockInteraction)initWithActions:(id)a3;
- (void)invokeWithComposer:(id)a3 duration:(double)a4;
@end

@implementation RPTBlockInteraction

- (RPTBlockInteraction)initWithActions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RPTBlockInteraction;
  v5 = [(RPTBlockInteraction *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x2667162B0](v4);
    actionsComposer = v5->_actionsComposer;
    v5->_actionsComposer = v6;
  }

  return v5;
}

- (void)invokeWithComposer:(id)a3 duration:(double)a4
{
  v5 = a3;
  v6 = [(RPTBlockInteraction *)self actionsComposer];
  v6[2](v6, v5);
}

@end