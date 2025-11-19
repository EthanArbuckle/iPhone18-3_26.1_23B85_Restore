@interface _UIFBSSceneSubstrate
- (_UIFBSSceneSubstrate)initWithScene:(id)a3;
- (void)attachContext:(id)a3;
- (void)detachContext:(id)a3;
@end

@implementation _UIFBSSceneSubstrate

- (_UIFBSSceneSubstrate)initWithScene:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIFBSSceneSubstrate;
  v3 = [(_UIContextBinderSubstrate *)&v7 initWithScene:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    sceneLayerTable = v3->_sceneLayerTable;
    v3->_sceneLayerTable = v4;
  }

  return v3;
}

- (void)attachContext:(id)a3
{
  v6 = a3;
  v4 = [(NSMapTable *)self->_sceneLayerTable objectForKey:?];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E699FAA8]) initWithCAContext:v6];
    [(NSMapTable *)self->_sceneLayerTable setObject:v4 forKey:v6];
  }

  v5 = [(_UIContextBinderSubstrate *)self scene];
  [v5 attachLayer:v4];
}

- (void)detachContext:(id)a3
{
  v6 = a3;
  v4 = [(NSMapTable *)self->_sceneLayerTable objectForKey:?];
  if (v4)
  {
    v5 = [(_UIContextBinderSubstrate *)self scene];
    [v5 detachLayer:v4];

    [(NSMapTable *)self->_sceneLayerTable removeObjectForKey:v6];
  }
}

@end