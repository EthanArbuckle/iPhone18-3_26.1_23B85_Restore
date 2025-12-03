@interface SBFPhysicalButtonSceneTarget
- (BOOL)isEqual:(id)equal;
- (FBScene)scene;
- (id)_initWithScene:(void *)scene sceneIdentity:(void *)identity targetsByButton:;
- (id)buttonTargetForButton:(unint64_t)button;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
@end

@implementation SBFPhysicalButtonSceneTarget

- (FBScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (id)buttonTargetForButton:(unint64_t)button
{
  targetsByButton = self->_targetsByButton;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:button];
  v5 = [(NSMutableDictionary *)targetsByButton objectForKey:v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
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

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  if ([(NSMutableDictionary *)self->_targetsByButton count])
  {
    allValues = [(NSMutableDictionary *)self->_targetsByButton allValues];
    v5 = [(FBSSceneIdentity *)self->_sceneIdentity description];
    v6 = [streamCopy appendObject:allValues withName:v5];
  }

  else
  {
    [streamCopy appendString:@"(empty)" withName:0];
  }
}

- (id)_initWithScene:(void *)scene sceneIdentity:(void *)identity targetsByButton:
{
  v7 = a2;
  sceneCopy = scene;
  identityCopy = identity;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = SBFPhysicalButtonSceneTarget;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeWeak(v10 + 2, v7);
      objc_storeStrong(self + 3, scene);
      if (identityCopy)
      {
        dictionary = identityCopy;
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
      }

      v12 = self[1];
      self[1] = dictionary;
    }
  }

  return self;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBFMutablePhysicalButtonSceneTarget alloc];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v6 = OUTLINED_FUNCTION_0_9([(NSMutableDictionary *)self->_targetsByButton mutableCopy]);

  return v6;
}

@end