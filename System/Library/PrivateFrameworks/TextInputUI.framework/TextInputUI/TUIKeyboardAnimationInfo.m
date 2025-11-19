@interface TUIKeyboardAnimationInfo
+ (id)defaultInfo;
+ (id)infoForInteractiveTransition;
- (id)description;
- (void)setNotificationInfo:(id)a3;
@end

@implementation TUIKeyboardAnimationInfo

+ (id)defaultInfo
{
  v2 = objc_alloc_init(TUIKeyboardAnimationInfo);
  [(TUIKeyboardAnimationInfo *)v2 setDuration:0.25];
  [(TUIKeyboardAnimationInfo *)v2 setOptions:2];
  [(TUIKeyboardAnimationInfo *)v2 setIsLocalKeyboard:1];
  [(TUIKeyboardAnimationInfo *)v2 setIsRotating:0];
  [(TUIKeyboardAnimationInfo *)v2 setShouldAnimate:1];

  return v2;
}

- (id)description
{
  v23 = MEMORY[0x1E696AEC0];
  v22 = objc_opt_class();
  [(TUIKeyboardAnimationInfo *)self duration];
  v4 = v3;
  v5 = [(TUIKeyboardAnimationInfo *)self isLocalKeyboard];
  v6 = @"from remote keyboard";
  if (v5)
  {
    v6 = @"from local keyboard";
  }

  v21 = v6;
  if ([(TUIKeyboardAnimationInfo *)self isRotating])
  {
    v7 = &stru_1F03BA8F8;
  }

  else
  {
    v7 = @" not";
  }

  if ([(TUIKeyboardAnimationInfo *)self shouldAnimate])
  {
    v8 = &stru_1F03BA8F8;
  }

  else
  {
    v8 = @" not";
  }

  v9 = [(TUIKeyboardAnimationInfo *)self animationType];
  v10 = [(TUIKeyboardAnimationInfo *)self notificationInfo];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"no notification info";
  }

  v13 = [(TUIKeyboardAnimationInfo *)self notificationsDebugString];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"notificationsDebug: ";
  }

  v16 = [(TUIKeyboardAnimationInfo *)self notificationsDebugString];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_1F03BA8F8;
  }

  v19 = [v23 stringWithFormat:@"<%@: %p, duration: %0.2f, %@, is%@ rotating, should%@ animate, type: %li, notificationInfo: %@%@%@>", v22, self, v4, v21, v7, v8, v9, v12, v15, v18];

  return v19;
}

- (void)setNotificationInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"DebugString"];
  [(TUIKeyboardAnimationInfo *)self setNotificationsDebugString:v5];

  v6 = [v4 mutableCopy];
  [(NSDictionary *)v6 removeObjectForKey:@"DebugString"];
  notificationInfo = self->_notificationInfo;
  self->_notificationInfo = v6;
}

+ (id)infoForInteractiveTransition
{
  v2 = +[TUIKeyboardAnimationInfo defaultInfo];
  [v2 setDuration:0.0];
  [v2 setOptions:2];
  [v2 setIsLocalKeyboard:1];
  [v2 setIsRotating:0];
  [v2 setIsInteractive:1];

  return v2;
}

@end