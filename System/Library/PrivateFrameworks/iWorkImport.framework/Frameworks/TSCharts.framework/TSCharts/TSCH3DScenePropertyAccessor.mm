@interface TSCH3DScenePropertyAccessor
+ (id)accessorWithScene:(id)scene;
- (TSCH3DScene)scene;
- (TSCH3DScenePropertyAccessor)initWithScene:(id)scene;
@end

@implementation TSCH3DScenePropertyAccessor

+ (id)accessorWithScene:(id)scene
{
  sceneCopy = scene;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithScene_(v5, v6, v7, v8, v9, sceneCopy);

  return v10;
}

- (TSCH3DScenePropertyAccessor)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = TSCH3DScenePropertyAccessor;
  v5 = [(TSCH3DScenePropertyAccessor *)&v8 init];
  if (v5)
  {
    v6 = sceneCopy;
    objc_storeWeak(&v5->_scene, sceneCopy);
  }

  return v5;
}

- (TSCH3DScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end