@interface RPTBlockInteraction
- (RPTBlockInteraction)initWithActions:(id)actions;
- (void)invokeWithComposer:(id)composer duration:(double)duration;
@end

@implementation RPTBlockInteraction

- (RPTBlockInteraction)initWithActions:(id)actions
{
  actionsCopy = actions;
  v9.receiver = self;
  v9.super_class = RPTBlockInteraction;
  v5 = [(RPTBlockInteraction *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x2667162B0](actionsCopy);
    actionsComposer = v5->_actionsComposer;
    v5->_actionsComposer = v6;
  }

  return v5;
}

- (void)invokeWithComposer:(id)composer duration:(double)duration
{
  composerCopy = composer;
  actionsComposer = [(RPTBlockInteraction *)self actionsComposer];
  actionsComposer[2](actionsComposer, composerCopy);
}

@end