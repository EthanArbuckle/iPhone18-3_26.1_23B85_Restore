@interface _UISceneHostingViewAppearanceActionHostToClient
+ (id)_actionForActionType:(uint64_t)type;
- (id)description;
- (void)performActionForHostedWindowScene:(id)scene;
@end

@implementation _UISceneHostingViewAppearanceActionHostToClient

+ (id)_actionForActionType:(uint64_t)type
{
  v3 = objc_opt_self();
  v4 = objc_alloc_init(MEMORY[0x1E698E700]);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v4 setObject:v5 forSetting:0];

  v6 = [[v3 alloc] initWithInfo:v4 responder:0];

  return v6;
}

- (void)performActionForHostedWindowScene:(id)scene
{
  info = [(_UISceneHostingViewAppearanceActionHostToClient *)self info];
  v5 = [info objectForSetting:0];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  switch(unsignedIntegerValue)
  {
    case 2:

      [scene hostViewDidDisappear];
      break;
    case 1:

      [scene hostViewWillDisappear];
      break;
    case 0:

      [scene hostViewWillAppear];
      break;
  }
}

- (id)description
{
  info = [(_UISceneHostingViewAppearanceActionHostToClient *)self info];
  v4 = [info objectForSetting:0];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v6 = 0;
  if (unsignedIntegerValue <= 2)
  {
    v6 = off_1E712AC50[unsignedIntegerValue];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"<%@%p> Action type: %@", v9, self, v6];;

  return v10;
}

@end