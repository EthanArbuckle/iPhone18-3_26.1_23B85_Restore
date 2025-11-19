@interface UISHandleApplicationShortcutAction
- (BOOL)isKindOfClass:(Class)a3;
- (SBSApplicationShortcutItem)sbsShortcutItem;
- (UIApplicationShortcutItem)uiShortcutItem;
- (UISHandleApplicationShortcutAction)initWithSBSShortcutItem:(id)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation UISHandleApplicationShortcutAction

- (UISHandleApplicationShortcutAction)initWithSBSShortcutItem:(id)a3
{
  v5 = a3;
  getSBSApplicationShortcutItemClass();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UISHandleApplicationShortcutAction.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"[shortcutItem isKindOfClass:getSBSApplicationShortcutItemClass()]"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E698E700]);
  v7 = [v5 copy];
  [v6 setObject:v7 forSetting:1];

  v11.receiver = self;
  v11.super_class = UISHandleApplicationShortcutAction;
  v8 = [(UISHandleApplicationShortcutAction *)&v11 initWithInfo:v6 responder:0];

  return v8;
}

- (SBSApplicationShortcutItem)sbsShortcutItem
{
  v2 = [(UISHandleApplicationShortcutAction *)self info];
  v3 = [v2 objectForSetting:1];

  getSBSApplicationShortcutItemClass();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (UIApplicationShortcutItem)uiShortcutItem
{
  v2 = [(UISHandleApplicationShortcutAction *)self sbsShortcutItem];
  if (v2)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v3 = qword_1ED51BFA8;
    v11 = qword_1ED51BFA8;
    if (!qword_1ED51BFA8)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getUIApplicationShortcutItemClass_block_invoke;
      v7[3] = &unk_1E7459080;
      v7[4] = &v8;
      __getUIApplicationShortcutItemClass_block_invoke(v7);
      v3 = v9[3];
    }

    v4 = v3;
    _Block_object_dispose(&v8, 8);
    v5 = [[v3 alloc] initWithSBSApplicationShortcutItem:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"shortcutItem";
  }

  else
  {
    return 0;
  }
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = UISHandleApplicationShortcutAction;
  if ([(UISHandleApplicationShortcutAction *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isSubclassOfClass:objc_opt_class()];
  }
}

@end