@interface UISceneProposalAction
- (BSAction)action;
- (NSString)persistentIdentifier;
- (UISceneProposalAction)initWithPersistentIdentifier:(id)identifier action:(id)action queue:(id)queue completion:(id)completion;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation UISceneProposalAction

- (UISceneProposalAction)initWithPersistentIdentifier:(id)identifier action:(id)action queue:(id)queue completion:(id)completion
{
  identifierCopy = identifier;
  actionCopy = action;
  queueCopy = queue;
  completionCopy = completion;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISceneProposalAction.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"persistentIdentifier"}];
  }

  v15 = objc_alloc_init(MEMORY[0x1E698E700]);
  v16 = [identifierCopy copy];
  [v15 setObject:v16 forSetting:10];

  uIActionType = [actionCopy UIActionType];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:uIActionType];
  [v15 setObject:v18 forSetting:11];

  if (uIActionType <= 0x1A && ((1 << uIActionType) & 0x4020042) != 0)
  {
    info = [actionCopy info];
    [v15 applySettings:info];
  }

  v23.receiver = self;
  v23.super_class = UISceneProposalAction;
  v20 = [(UISceneProposalAction *)&v23 initWithInfo:v15 timeout:queueCopy forResponseOnQueue:completionCopy withHandler:5.0];

  return v20;
}

- (NSString)persistentIdentifier
{
  info = [(UISceneProposalAction *)self info];
  v3 = [info objectForSetting:10];
  v4 = v3;

  return v3;
}

- (BSAction)action
{
  info = [(UISceneProposalAction *)self info];
  v4 = [info objectForSetting:11];
  integerValue = [v4 integerValue];

  v6 = 0;
  if (integerValue > 16)
  {
    if (integerValue == 17)
    {
      v13 = [UIHandleApplicationShortcutAction alloc];
      info2 = [(UISceneProposalAction *)self info];
      v10 = [info2 objectForSetting:1];
      v11 = [(UISHandleApplicationShortcutAction *)v13 initWithSBSShortcutItem:v10];
    }

    else
    {
      if (integerValue != 26)
      {
        goto LABEL_13;
      }

      v8 = [UINotificationResponseAction alloc];
      info2 = [(UISceneProposalAction *)self info];
      v10 = [info2 objectForSetting:1];
      v11 = [(UISNotificationResponseAction *)v8 initWithResponse:v10 withHandler:0];
    }

    v6 = v11;
  }

  else
  {
    if (integerValue == 1)
    {
      v7 = UIOpenURLAction;
    }

    else
    {
      if (integerValue != 6)
      {
        goto LABEL_13;
      }

      v7 = UIActivityContinuationAction;
    }

    v12 = [v7 alloc];
    info2 = [(UISceneProposalAction *)self info];
    v6 = [v12 initWithInfo:info2 timeout:0 forResponseOnQueue:0 withHandler:0.0];
  }

LABEL_13:

  return v6;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v3 = @"actionValues";
  if (setting == 11)
  {
    v3 = @"actionType";
  }

  if (setting == 10)
  {
    return @"sceneID";
  }

  else
  {
    return v3;
  }
}

@end