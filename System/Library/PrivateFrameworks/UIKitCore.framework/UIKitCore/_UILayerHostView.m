@interface _UILayerHostView
- (BOOL)inheritsSecurity;
- (_UILayerHostView)initWithCoder:(id)a3;
- (_UILayerHostView)initWithFrame:(CGRect)a3 pid:(int)a4 contextID:(unsigned int)a5;
- (void)setInheritsSecurity:(BOOL)a3;
- (void)setPid:(int)a3 contextID:(unsigned int)a4;
@end

@implementation _UILayerHostView

- (_UILayerHostView)initWithFrame:(CGRect)a3 pid:(int)a4 contextID:(unsigned int)a5
{
  v15.receiver = self;
  v15.super_class = _UILayerHostView;
  v7 = [(_UIVisibilityPropagationView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_pid = a4;
    v7->_contextID = a5;
    v9 = [(_UILayerHostView *)v7 layerHost];
    [v9 setZombificationMode:*MEMORY[0x1E6979E48]];
    if (v8->_contextID)
    {
      [v9 setContextId:?];
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

- (_UILayerHostView)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UILayerHostView;
  return [(_UIVisibilityPropagationView *)&v4 initWithCoder:a3];
}

- (void)setPid:(int)a3 contextID:(unsigned int)a4
{
  self->_pid = a3;
  self->_contextID = a4;
  v5 = [(_UILayerHostView *)self layerHost];
  [v5 setContextId:self->_contextID];

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

- (void)setInheritsSecurity:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UILayerHostView *)self layerHost];
  [v4 setInheritsSecurity:v3];
}

- (BOOL)inheritsSecurity
{
  v2 = [(_UILayerHostView *)self layerHost];
  v3 = [v2 inheritsSecurity];

  return v3;
}

@end