@interface _UIVisibilityPropagationView
- (_UIVisibilityPropagationView)initWithCoder:(id)a3;
- (_UIVisibilityPropagationView)initWithFrame:(CGRect)a3;
- (void)dealloc;
@end

@implementation _UIVisibilityPropagationView

- (void)dealloc
{
  interaction = self->_interaction;
  if (interaction)
  {
    os_unfair_lock_lock(&interaction->_visibilityLock);
    interaction->_visibilityLock_invalidated = 1;
    [(_UIVisibilityPropagationInteraction *)interaction _visibilityLock_didMoveToWindow:?];
    os_unfair_lock_unlock(&interaction->_visibilityLock);
  }

  v4.receiver = self;
  v4.super_class = _UIVisibilityPropagationView;
  [(UIView *)&v4 dealloc];
}

- (_UIVisibilityPropagationView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UIVisibilityPropagationView;
  v3 = [(UIView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [_UIVisibilityPropagationInteraction alloc];
    if (v4)
    {
      v8.receiver = v4;
      v8.super_class = _UIVisibilityPropagationInteraction;
      v4 = [(UIView *)&v8 init];
      if (v4)
      {
        *&v4->_visibilityLock._os_unfair_lock_opaque = 0;
      }
    }

    interaction = v3->_interaction;
    v3->_interaction = v4;

    [(UIView *)v3 addInteraction:v3->_interaction];
  }

  return v3;
}

- (_UIVisibilityPropagationView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIVisibilityPropagationView;
  v3 = [(UIView *)&v7 initWithCoder:a3];
  if (v3)
  {
    v4 = [_UIVisibilityPropagationInteraction alloc];
    if (v4)
    {
      v8.receiver = v4;
      v8.super_class = _UIVisibilityPropagationInteraction;
      v4 = [(UIView *)&v8 init];
      if (v4)
      {
        *&v4->_visibilityLock._os_unfair_lock_opaque = 0;
      }
    }

    interaction = v3->_interaction;
    v3->_interaction = v4;

    [(UIView *)v3 addInteraction:v3->_interaction];
  }

  return v3;
}

@end