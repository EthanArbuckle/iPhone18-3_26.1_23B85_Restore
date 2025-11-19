@interface _UIEditMenuSceneComponent
+ (id)sceneComponentForView:(id)a3;
- (BOOL)hasVisibleMenu;
- (UIScene)_scene;
- (_UIEditMenuSceneComponent)initWithScene:(id)a3;
- (void)dismissCurrentMenu;
- (void)removeActivePresentation:(id)a3;
- (void)setActivePresentation:(id)a3;
@end

@implementation _UIEditMenuSceneComponent

- (void)dismissCurrentMenu
{
  activePresentation = self->_activePresentation;
  if (activePresentation)
  {
    [(_UIEditMenuPresentation *)activePresentation hideMenuWithReason:0];
    v4 = self->_activePresentation;

    [(_UIEditMenuSceneComponent *)self removeActivePresentation:v4];
  }
}

- (_UIEditMenuSceneComponent)initWithScene:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:self file:@"_UIEditMenuSceneComponent.m" lineNumber:41 description:{@"Only UIWindowScene is supported by %@.", v11}];
  }

  v12.receiver = self;
  v12.super_class = _UIEditMenuSceneComponent;
  v6 = [(_UIEditMenuSceneComponent *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_scene, v5);
  }

  return v7;
}

- (void)setActivePresentation:(id)a3
{
  v4 = a3;
  activePresentation = self->_activePresentation;
  if (activePresentation != v4)
  {
    [(_UIEditMenuPresentation *)activePresentation hideMenuWithReason:0];
    activePresentation = self->_activePresentation;
  }

  self->_activePresentation = v4;
}

- (void)removeActivePresentation:(id)a3
{
  activePresentation = self->_activePresentation;
  if (activePresentation == a3)
  {
    self->_activePresentation = 0;
  }
}

- (BOOL)hasVisibleMenu
{
  v3 = [(_UIEditMenuSceneComponent *)self activePresentation];

  if (!v3)
  {
    return 0;
  }

  v4 = [(_UIEditMenuSceneComponent *)self activePresentation];
  v5 = [v4 displayedMenu];
  v6 = v5 != 0;

  return v6;
}

+ (id)sceneComponentForView:(id)a3
{
  v3 = [a3 _window];
  v4 = [v3 windowScene];
  v5 = [v4 _editMenuSceneComponent];

  return v5;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end