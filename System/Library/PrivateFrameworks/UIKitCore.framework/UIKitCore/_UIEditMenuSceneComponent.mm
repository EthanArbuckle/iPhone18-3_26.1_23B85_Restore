@interface _UIEditMenuSceneComponent
+ (id)sceneComponentForView:(id)view;
- (BOOL)hasVisibleMenu;
- (UIScene)_scene;
- (_UIEditMenuSceneComponent)initWithScene:(id)scene;
- (void)dismissCurrentMenu;
- (void)removeActivePresentation:(id)presentation;
- (void)setActivePresentation:(id)presentation;
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

- (_UIEditMenuSceneComponent)initWithScene:(id)scene
{
  sceneCopy = scene;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEditMenuSceneComponent.m" lineNumber:41 description:{@"Only UIWindowScene is supported by %@.", v11}];
  }

  v12.receiver = self;
  v12.super_class = _UIEditMenuSceneComponent;
  v6 = [(_UIEditMenuSceneComponent *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_scene, sceneCopy);
  }

  return v7;
}

- (void)setActivePresentation:(id)presentation
{
  presentationCopy = presentation;
  activePresentation = self->_activePresentation;
  if (activePresentation != presentationCopy)
  {
    [(_UIEditMenuPresentation *)activePresentation hideMenuWithReason:0];
    activePresentation = self->_activePresentation;
  }

  self->_activePresentation = presentationCopy;
}

- (void)removeActivePresentation:(id)presentation
{
  activePresentation = self->_activePresentation;
  if (activePresentation == presentation)
  {
    self->_activePresentation = 0;
  }
}

- (BOOL)hasVisibleMenu
{
  activePresentation = [(_UIEditMenuSceneComponent *)self activePresentation];

  if (!activePresentation)
  {
    return 0;
  }

  activePresentation2 = [(_UIEditMenuSceneComponent *)self activePresentation];
  displayedMenu = [activePresentation2 displayedMenu];
  v6 = displayedMenu != 0;

  return v6;
}

+ (id)sceneComponentForView:(id)view
{
  _window = [view _window];
  windowScene = [_window windowScene];
  _editMenuSceneComponent = [windowScene _editMenuSceneComponent];

  return _editMenuSceneComponent;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end