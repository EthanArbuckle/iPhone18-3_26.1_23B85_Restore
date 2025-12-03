@interface TUIKeyboardAnimationInfo
+ (id)defaultInfo;
+ (id)infoForInteractiveTransition;
- (id)description;
- (void)setNotificationInfo:(id)info;
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
  isLocalKeyboard = [(TUIKeyboardAnimationInfo *)self isLocalKeyboard];
  v6 = @"from remote keyboard";
  if (isLocalKeyboard)
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

  animationType = [(TUIKeyboardAnimationInfo *)self animationType];
  notificationInfo = [(TUIKeyboardAnimationInfo *)self notificationInfo];
  v11 = notificationInfo;
  if (notificationInfo)
  {
    v12 = notificationInfo;
  }

  else
  {
    v12 = @"no notification info";
  }

  notificationsDebugString = [(TUIKeyboardAnimationInfo *)self notificationsDebugString];
  v14 = notificationsDebugString;
  if (notificationsDebugString)
  {
    v15 = notificationsDebugString;
  }

  else
  {
    v15 = @"notificationsDebug: ";
  }

  notificationsDebugString2 = [(TUIKeyboardAnimationInfo *)self notificationsDebugString];
  v17 = notificationsDebugString2;
  if (notificationsDebugString2)
  {
    v18 = notificationsDebugString2;
  }

  else
  {
    v18 = &stru_1F03BA8F8;
  }

  v19 = [v23 stringWithFormat:@"<%@: %p, duration: %0.2f, %@, is%@ rotating, should%@ animate, type: %li, notificationInfo: %@%@%@>", v22, self, v4, v21, v7, v8, animationType, v12, v15, v18];

  return v19;
}

- (void)setNotificationInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKey:@"DebugString"];
  [(TUIKeyboardAnimationInfo *)self setNotificationsDebugString:v5];

  v6 = [infoCopy mutableCopy];
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