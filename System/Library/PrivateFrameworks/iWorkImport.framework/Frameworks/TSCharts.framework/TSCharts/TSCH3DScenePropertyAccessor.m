@interface TSCH3DScenePropertyAccessor
+ (id)accessorWithScene:(id)a3;
- (TSCH3DScene)scene;
- (TSCH3DScenePropertyAccessor)initWithScene:(id)a3;
@end

@implementation TSCH3DScenePropertyAccessor

+ (id)accessorWithScene:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithScene_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCH3DScenePropertyAccessor)initWithScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TSCH3DScenePropertyAccessor;
  v5 = [(TSCH3DScenePropertyAccessor *)&v8 init];
  if (v5)
  {
    v6 = v4;
    objc_storeWeak(&v5->_scene, v4);
  }

  return v5;
}

- (TSCH3DScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end