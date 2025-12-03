@interface _UIFBSSceneSubstrate
- (_UIFBSSceneSubstrate)initWithScene:(id)scene;
- (void)attachContext:(id)context;
- (void)detachContext:(id)context;
@end

@implementation _UIFBSSceneSubstrate

- (_UIFBSSceneSubstrate)initWithScene:(id)scene
{
  v7.receiver = self;
  v7.super_class = _UIFBSSceneSubstrate;
  v3 = [(_UIContextBinderSubstrate *)&v7 initWithScene:scene];
  if (v3)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    sceneLayerTable = v3->_sceneLayerTable;
    v3->_sceneLayerTable = weakToStrongObjectsMapTable;
  }

  return v3;
}

- (void)attachContext:(id)context
{
  contextCopy = context;
  v4 = [(NSMapTable *)self->_sceneLayerTable objectForKey:?];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E699FAA8]) initWithCAContext:contextCopy];
    [(NSMapTable *)self->_sceneLayerTable setObject:v4 forKey:contextCopy];
  }

  scene = [(_UIContextBinderSubstrate *)self scene];
  [scene attachLayer:v4];
}

- (void)detachContext:(id)context
{
  contextCopy = context;
  v4 = [(NSMapTable *)self->_sceneLayerTable objectForKey:?];
  if (v4)
  {
    scene = [(_UIContextBinderSubstrate *)self scene];
    [scene detachLayer:v4];

    [(NSMapTable *)self->_sceneLayerTable removeObjectForKey:contextCopy];
  }
}

@end