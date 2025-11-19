@interface UISceneProposalAction
- (BSAction)action;
- (NSString)persistentIdentifier;
- (UISceneProposalAction)initWithPersistentIdentifier:(id)a3 action:(id)a4 queue:(id)a5 completion:(id)a6;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation UISceneProposalAction

- (UISceneProposalAction)initWithPersistentIdentifier:(id)a3 action:(id)a4 queue:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"UISceneProposalAction.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"persistentIdentifier"}];
  }

  v15 = objc_alloc_init(MEMORY[0x1E698E700]);
  v16 = [v11 copy];
  [v15 setObject:v16 forSetting:10];

  v17 = [v12 UIActionType];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
  [v15 setObject:v18 forSetting:11];

  if (v17 <= 0x1A && ((1 << v17) & 0x4020042) != 0)
  {
    v19 = [v12 info];
    [v15 applySettings:v19];
  }

  v23.receiver = self;
  v23.super_class = UISceneProposalAction;
  v20 = [(UISceneProposalAction *)&v23 initWithInfo:v15 timeout:v13 forResponseOnQueue:v14 withHandler:5.0];

  return v20;
}

- (NSString)persistentIdentifier
{
  v2 = [(UISceneProposalAction *)self info];
  v3 = [v2 objectForSetting:10];
  v4 = v3;

  return v3;
}

- (BSAction)action
{
  v3 = [(UISceneProposalAction *)self info];
  v4 = [v3 objectForSetting:11];
  v5 = [v4 integerValue];

  v6 = 0;
  if (v5 > 16)
  {
    if (v5 == 17)
    {
      v13 = [UIHandleApplicationShortcutAction alloc];
      v9 = [(UISceneProposalAction *)self info];
      v10 = [v9 objectForSetting:1];
      v11 = [(UISHandleApplicationShortcutAction *)v13 initWithSBSShortcutItem:v10];
    }

    else
    {
      if (v5 != 26)
      {
        goto LABEL_13;
      }

      v8 = [UINotificationResponseAction alloc];
      v9 = [(UISceneProposalAction *)self info];
      v10 = [v9 objectForSetting:1];
      v11 = [(UISNotificationResponseAction *)v8 initWithResponse:v10 withHandler:0];
    }

    v6 = v11;
  }

  else
  {
    if (v5 == 1)
    {
      v7 = UIOpenURLAction;
    }

    else
    {
      if (v5 != 6)
      {
        goto LABEL_13;
      }

      v7 = UIActivityContinuationAction;
    }

    v12 = [v7 alloc];
    v9 = [(UISceneProposalAction *)self info];
    v6 = [v12 initWithInfo:v9 timeout:0 forResponseOnQueue:0 withHandler:0.0];
  }

LABEL_13:

  return v6;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v3 = @"actionValues";
  if (a3 == 11)
  {
    v3 = @"actionType";
  }

  if (a3 == 10)
  {
    return @"sceneID";
  }

  else
  {
    return v3;
  }
}

@end