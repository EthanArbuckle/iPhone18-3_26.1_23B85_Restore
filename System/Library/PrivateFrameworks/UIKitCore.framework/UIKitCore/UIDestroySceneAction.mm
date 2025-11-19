@interface UIDestroySceneAction
- (BOOL)appliesToAllScenes;
- (BOOL)destroySceneSession;
- (BOOL)isUserOriginatedRequest;
- (NSSet)persistedIdentifiers;
- (UIDestroySceneAction)initWithPersistedIdentifiers:(id)a3 preferredAnimationType:(unint64_t)a4 forDestroyingSession:(BOOL)a5 applyToAllScenes:(BOOL)a6 userOriginatedRequest:(BOOL)a7 callbackQueue:(id)a8 completion:(id)a9;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (unint64_t)preferredAnimationType;
@end

@implementation UIDestroySceneAction

- (UIDestroySceneAction)initWithPersistedIdentifiers:(id)a3 preferredAnimationType:(unint64_t)a4 forDestroyingSession:(BOOL)a5 applyToAllScenes:(BOOL)a6 userOriginatedRequest:(BOOL)a7 callbackQueue:(id)a8 completion:(id)a9
{
  v13 = a3;
  v14 = a8;
  v15 = a9;
  if (a4 - 4 <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"UIDestroySceneAction.m" lineNumber:69 description:@"A valid animation type must be provided."];
  }

  v16 = objc_alloc_init(MEMORY[0x1E698E700]);
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v16 setObject:v17 forSetting:1];

  if (v13 && [v13 count])
  {
    [v16 setObject:v13 forSetting:2];
  }

  [v16 setFlag:BSSettingFlagForBool() forSetting:3];
  [v16 setFlag:BSSettingFlagForBool() forSetting:5];
  [v16 setFlag:BSSettingFlagForBool() forSetting:4];
  v21.receiver = self;
  v21.super_class = UIDestroySceneAction;
  v18 = [(UIDestroySceneAction *)&v21 initWithInfo:v16 timeout:v14 forResponseOnQueue:v15 withHandler:5.0];

  return v18;
}

- (unint64_t)preferredAnimationType
{
  v2 = [(UIDestroySceneAction *)self info];
  v3 = [v2 objectForSetting:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSSet)persistedIdentifiers
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(UIDestroySceneAction *)self info];
  v3 = [v2 objectForSetting:2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    v4 = [v3 allObjects];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v9 = 0;
            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  v9 = v3;
LABEL_13:

  return v9;
}

- (BOOL)destroySceneSession
{
  v2 = [(UIDestroySceneAction *)self info];
  v3 = [v2 BOOLForSetting:3];

  return v3;
}

- (BOOL)isUserOriginatedRequest
{
  v2 = [(UIDestroySceneAction *)self info];
  v3 = [v2 BOOLForSetting:4];

  return v3;
}

- (BOOL)appliesToAllScenes
{
  v2 = [(UIDestroySceneAction *)self info];
  v3 = [v2 BOOLForSetting:5];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7108148[a3 - 1];
  }
}

@end