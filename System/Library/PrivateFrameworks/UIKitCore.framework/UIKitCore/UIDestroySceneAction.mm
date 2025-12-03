@interface UIDestroySceneAction
- (BOOL)appliesToAllScenes;
- (BOOL)destroySceneSession;
- (BOOL)isUserOriginatedRequest;
- (NSSet)persistedIdentifiers;
- (UIDestroySceneAction)initWithPersistedIdentifiers:(id)identifiers preferredAnimationType:(unint64_t)type forDestroyingSession:(BOOL)session applyToAllScenes:(BOOL)scenes userOriginatedRequest:(BOOL)request callbackQueue:(id)queue completion:(id)completion;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (unint64_t)preferredAnimationType;
@end

@implementation UIDestroySceneAction

- (UIDestroySceneAction)initWithPersistedIdentifiers:(id)identifiers preferredAnimationType:(unint64_t)type forDestroyingSession:(BOOL)session applyToAllScenes:(BOOL)scenes userOriginatedRequest:(BOOL)request callbackQueue:(id)queue completion:(id)completion
{
  identifiersCopy = identifiers;
  queueCopy = queue;
  completionCopy = completion;
  if (type - 4 <= 0xFFFFFFFFFFFFFFFCLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDestroySceneAction.m" lineNumber:69 description:@"A valid animation type must be provided."];
  }

  v16 = objc_alloc_init(MEMORY[0x1E698E700]);
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [v16 setObject:v17 forSetting:1];

  if (identifiersCopy && [identifiersCopy count])
  {
    [v16 setObject:identifiersCopy forSetting:2];
  }

  [v16 setFlag:BSSettingFlagForBool() forSetting:3];
  [v16 setFlag:BSSettingFlagForBool() forSetting:5];
  [v16 setFlag:BSSettingFlagForBool() forSetting:4];
  v21.receiver = self;
  v21.super_class = UIDestroySceneAction;
  v18 = [(UIDestroySceneAction *)&v21 initWithInfo:v16 timeout:queueCopy forResponseOnQueue:completionCopy withHandler:5.0];

  return v18;
}

- (unint64_t)preferredAnimationType
{
  info = [(UIDestroySceneAction *)self info];
  v3 = [info objectForSetting:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (NSSet)persistedIdentifiers
{
  v16 = *MEMORY[0x1E69E9840];
  info = [(UIDestroySceneAction *)self info];
  v3 = [info objectForSetting:2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    allObjects = [v3 allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v9 = 0;
            goto LABEL_13;
          }
        }

        v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  info = [(UIDestroySceneAction *)self info];
  v3 = [info BOOLForSetting:3];

  return v3;
}

- (BOOL)isUserOriginatedRequest
{
  info = [(UIDestroySceneAction *)self info];
  v3 = [info BOOLForSetting:4];

  return v3;
}

- (BOOL)appliesToAllScenes
{
  info = [(UIDestroySceneAction *)self info];
  v3 = [info BOOLForSetting:5];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7108148[setting - 1];
  }
}

@end