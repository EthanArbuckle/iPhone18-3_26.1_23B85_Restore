@interface SBFPhysicalButtonSceneTarget
- (BOOL)isEqual:(id)a3;
- (FBScene)scene;
- (id)_initWithScene:(void *)a3 sceneIdentity:(void *)a4 targetsByButton:;
- (id)buttonTargetForButton:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation SBFPhysicalButtonSceneTarget

- (FBScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (id)buttonTargetForButton:(unint64_t)a3
{
  targetsByButton = self->_targetsByButton;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)targetsByButton objectForKey:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      WeakRetained = objc_loadWeakRetained(&self->_scene);
      v9 = objc_loadWeakRetained(v7 + 2);
      v10 = BSEqualObjects();

      if (v10 && BSEqualObjects())
      {
        v11 = BSEqualDictionaries();
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v4 = [WeakRetained hash];
  v5 = [(FBSSceneIdentity *)self->_sceneIdentity hash]^ v4;
  v6 = [(NSMutableDictionary *)self->_targetsByButton hash];

  return v5 ^ v6;
}

- (void)appendDescriptionToStream:(id)a3
{
  v7 = a3;
  if ([(NSMutableDictionary *)self->_targetsByButton count])
  {
    v4 = [(NSMutableDictionary *)self->_targetsByButton allValues];
    v5 = [(FBSSceneIdentity *)self->_sceneIdentity description];
    v6 = [v7 appendObject:v4 withName:v5];
  }

  else
  {
    [v7 appendString:@"(empty)" withName:0];
  }
}

- (id)_initWithScene:(void *)a3 sceneIdentity:(void *)a4 targetsByButton:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = SBFPhysicalButtonSceneTarget;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeWeak(v10 + 2, v7);
      objc_storeStrong(a1 + 3, a3);
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [MEMORY[0x1E695DF90] dictionary];
      }

      v12 = a1[1];
      a1[1] = v11;
    }
  }

  return a1;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SBFMutablePhysicalButtonSceneTarget alloc];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v6 = OUTLINED_FUNCTION_0_9([(NSMutableDictionary *)self->_targetsByButton mutableCopy]);

  return v6;
}

@end