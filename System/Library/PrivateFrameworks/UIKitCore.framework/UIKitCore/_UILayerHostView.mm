@interface _UILayerHostView
- (BOOL)inheritsSecurity;
- (_UILayerHostView)initWithCoder:(id)coder;
- (_UILayerHostView)initWithFrame:(CGRect)frame pid:(int)pid contextID:(unsigned int)d;
- (void)setInheritsSecurity:(BOOL)security;
- (void)setPid:(int)pid contextID:(unsigned int)d;
@end

@implementation _UILayerHostView

- (_UILayerHostView)initWithFrame:(CGRect)frame pid:(int)pid contextID:(unsigned int)d
{
  v15.receiver = self;
  v15.super_class = _UILayerHostView;
  v7 = [(_UIVisibilityPropagationView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_pid = pid;
    v7->_contextID = d;
    layerHost = [(_UILayerHostView *)v7 layerHost];
    [layerHost setZombificationMode:*MEMORY[0x1E6979E48]];
    if (v8->_contextID)
    {
      [layerHost setContextId:?];
    }

    pid = v8->_pid;
    if (pid >= 1 && v8->_contextID)
    {
      v11 = MEMORY[0x1E69C7640];
      v12 = _UISVisibilityEnvironmentForUIHostedWindowContextID();
      v13 = [v11 targetWithPid:pid environmentIdentifier:v12];
      [(_UIVisibilityPropagationInteraction *)v8->super._interaction _setVisibilityTarget:v13];
    }

    [(_UIVisibilityPropagationInteraction *)v8->super._interaction _setVisibilityPropagationEnabled:?];
  }

  return v8;
}

- (_UILayerHostView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _UILayerHostView;
  return [(_UIVisibilityPropagationView *)&v4 initWithCoder:coder];
}

- (void)setPid:(int)pid contextID:(unsigned int)d
{
  self->_pid = pid;
  self->_contextID = d;
  layerHost = [(_UILayerHostView *)self layerHost];
  [layerHost setContextId:self->_contextID];

  pid = self->_pid;
  if (pid >= 1 && self->_contextID)
  {
    v7 = MEMORY[0x1E69C7640];
    v10 = _UISVisibilityEnvironmentForUIHostedWindowContextID();
    v8 = [v7 targetWithPid:pid environmentIdentifier:v10];
    [(_UIVisibilityPropagationInteraction *)self->super._interaction _setVisibilityTarget:v8];
  }

  else
  {
    interaction = self->super._interaction;

    [(_UIVisibilityPropagationInteraction *)interaction _setVisibilityTarget:?];
  }
}

- (void)setInheritsSecurity:(BOOL)security
{
  securityCopy = security;
  layerHost = [(_UILayerHostView *)self layerHost];
  [layerHost setInheritsSecurity:securityCopy];
}

- (BOOL)inheritsSecurity
{
  layerHost = [(_UILayerHostView *)self layerHost];
  inheritsSecurity = [layerHost inheritsSecurity];

  return inheritsSecurity;
}

@end