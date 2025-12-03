@interface _UIVariableGestureContextMenuInteraction
- (_UIVariableGestureContextMenuInteraction)initWithDelegate:(id)delegate;
- (id)_interactionDrivers;
- (int64_t)menuAppearance;
- (void)_setPresentOnTouchDown:(BOOL)down;
- (void)_willBeginWithConfiguration:(id)configuration;
- (void)didMoveToView:(id)view;
@end

@implementation _UIVariableGestureContextMenuInteraction

- (id)_interactionDrivers
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (*&self->_flags)
  {
    v6 = objc_opt_new();
    [v3 addObject:v6];

    v5 = objc_opt_new();
    v12[0] = 4;
    memset(&v12[1], 0, 24);
    v7 = [MEMORY[0x1E696B098] valueWithBytes:v12 objCType:"{_UIPressTrigger=qqdB}"];
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v5 setTriggers:v8];
  }

  else
  {
    v4 = objc_opt_new();
    [v3 addObject:v4];

    v5 = objc_opt_new();
  }

  [v3 addObject:v5];

  if ([v3 count])
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (_UIVariableGestureContextMenuInteraction)initWithDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = _UIVariableGestureContextMenuInteraction;
  v3 = [(UIContextMenuInteraction *)&v6 initWithDelegate:delegate];
  v4 = v3;
  if (v3)
  {
    [(_UIVariableGestureContextMenuInteraction *)v3 _setPrefersCompactAppearance:1];
  }

  return v4;
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  _interactionDrivers = [(_UIVariableGestureContextMenuInteraction *)self _interactionDrivers];
  [(UIContextMenuInteraction *)self setDrivers:_interactionDrivers];

  v6.receiver = self;
  v6.super_class = _UIVariableGestureContextMenuInteraction;
  [(UIContextMenuInteraction *)&v6 didMoveToView:viewCopy];
}

- (int64_t)menuAppearance
{
  v5.receiver = self;
  v5.super_class = _UIVariableGestureContextMenuInteraction;
  menuAppearance = [(UIContextMenuInteraction *)&v5 menuAppearance];
  if ([(_UIVariableGestureContextMenuInteraction *)self _prefersCompactAppearance]&& menuAppearance != 0)
  {
    return 2;
  }

  else
  {
    return menuAppearance;
  }
}

- (void)_setPresentOnTouchDown:(BOOL)down
{
  flags = self->_flags;
  if ((flags & 1) != down)
  {
    *&self->_flags = flags & 0xFE | down;
    _interactionDrivers = [(_UIVariableGestureContextMenuInteraction *)self _interactionDrivers];
    [(UIContextMenuInteraction *)self setDrivers:_interactionDrivers];
  }
}

- (void)_willBeginWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6.receiver = self;
  v6.super_class = _UIVariableGestureContextMenuInteraction;
  [(UIContextMenuInteraction *)&v6 _willBeginWithConfiguration:configurationCopy];
  delegate = [(UIContextMenuInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _contextMenuInteraction:self willBeginWithConfiguration:configurationCopy];
  }
}

@end