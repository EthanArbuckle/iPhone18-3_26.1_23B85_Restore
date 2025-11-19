@interface UIInputViewSetNotificationInfo
+ (id)info;
- (BOOL)containsChange;
- (CGPoint)beginCenter;
- (CGPoint)endCenter;
- (CGRect)assistantFrame;
- (CGRect)beginFrame;
- (CGRect)bounds;
- (CGRect)endFrame;
- (NSDictionary)privateUserInfo;
- (NSDictionary)userInfo;
- (UIInputViewSetNotificationInfo)init;
- (id)description;
- (id)inverseInfo;
- (id)rotationUserInfo;
- (void)addKeyboardNotificationDebuggingInfo:(id)a3;
- (void)populateEndInfoWithFrame:(CGRect)a3;
- (void)populateStartInfoWithFrame:(CGRect)a3;
- (void)populateWithAnimationStyle:(id)a3;
@end

@implementation UIInputViewSetNotificationInfo

- (UIInputViewSetNotificationInfo)init
{
  v6.receiver = self;
  v6.super_class = UIInputViewSetNotificationInfo;
  v2 = [(UIInputViewSetNotificationInfo *)&v6 init];
  if (v2)
  {
    if (+[UIKeyboard usesInputSystemUI])
    {
      v3 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
      v4 = [v3 currentUIState];
      -[UIInputViewSetNotificationInfo setWasCausedRemotely:](v2, "setWasCausedRemotely:", [v4 isLocal] ^ 1);
    }

    else
    {
      v3 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      -[UIInputViewSetNotificationInfo setWasCausedRemotely:](v2, "setWasCausedRemotely:", [v3 handlingRemoteEvent]);
    }
  }

  return v2;
}

+ (id)info
{
  v2 = objc_alloc_init(UIInputViewSetNotificationInfo);

  return v2;
}

- (BOOL)containsChange
{
  if (self->_forceNotification)
  {
    return 1;
  }

  [(UIInputViewSetNotificationInfo *)self beginFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIInputViewSetNotificationInfo *)self endFrame];
  v17.origin.x = v12;
  v17.origin.y = v13;
  v17.size.width = v14;
  v17.size.height = v15;
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  return !CGRectEqualToRect(v16, v17);
}

- (CGRect)endFrame
{
  x = self->_endFrame.origin.x;
  y = self->_endFrame.origin.y;
  width = self->_endFrame.size.width;
  height = self->_endFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSDictionary)userInfo
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:8];
  v4 = MEMORY[0x1E696B098];
  [(UIInputViewSetNotificationInfo *)self beginFrame];
  v5 = [v4 valueWithCGRect:?];
  [v3 setObject:v5 forKey:@"UIKeyboardFrameBeginUserInfoKey"];

  v6 = MEMORY[0x1E696B098];
  [(UIInputViewSetNotificationInfo *)self endFrame];
  v7 = [v6 valueWithCGRect:?];
  [v3 setObject:v7 forKey:@"UIKeyboardFrameEndUserInfoKey"];

  v8 = MEMORY[0x1E696B098];
  [(UIInputViewSetNotificationInfo *)self beginCenter];
  v9 = [v8 valueWithCGPoint:?];
  [v3 setObject:v9 forKey:@"UIKeyboardCenterBeginUserInfoKey"];

  v10 = MEMORY[0x1E696B098];
  [(UIInputViewSetNotificationInfo *)self endCenter];
  v11 = [v10 valueWithCGPoint:?];
  [v3 setObject:v11 forKey:@"UIKeyboardCenterEndUserInfoKey"];

  v12 = MEMORY[0x1E696B098];
  [(UIInputViewSetNotificationInfo *)self bounds];
  v13 = [v12 valueWithCGRect:?];
  [v3 setObject:v13 forKey:@"UIKeyboardBoundsUserInfoKey"];

  v14 = MEMORY[0x1E696AD98];
  [(UIInputViewSetNotificationInfo *)self duration];
  v15 = [v14 numberWithDouble:?];
  [v3 setObject:v15 forKey:@"UIKeyboardAnimationDurationUserInfoKey"];

  v16 = [(UIInputViewSetNotificationInfo *)self options];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:(v16 >> 16) & 0xF];
  [v3 setObject:v17 forKey:@"UIKeyboardAnimationCurveUserInfoKey"];

  if (+[_UIRemoteKeyboards enabled])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[UIInputViewSetNotificationInfo wasCausedRemotely](self, "wasCausedRemotely") ^ 1}];
    [v3 setObject:v18 forKey:@"UIKeyboardIsLocalUserInfoKey"];
  }

  if (+[UIInputWindowController useMetronomeTracking])
  {
    v19 = [(UIInputViewSetNotificationInfo *)self debugInfo];
    v20 = [v19 length];

    if (v20)
    {
      v21 = [(UIInputViewSetNotificationInfo *)self debugInfo];
      [v3 setObject:v21 forKey:@"DebugString"];
    }
  }

  return v3;
}

- (CGRect)beginFrame
{
  x = self->_beginFrame.origin.x;
  y = self->_beginFrame.origin.y;
  width = self->_beginFrame.size.width;
  height = self->_beginFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)beginCenter
{
  x = self->_beginCenter.x;
  y = self->_beginCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endCenter
{
  x = self->_endCenter.x;
  y = self->_endCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)inverseInfo
{
  v3 = [objc_opt_class() info];
  *(v3 + 24) = self->_duration;
  *(v3 + 32) = self->_options;
  [(UIInputViewSetNotificationInfo *)self endFrame];
  [v3 populateStartInfoWithFrame:?];
  [(UIInputViewSetNotificationInfo *)self beginFrame];
  [v3 populateEndInfoWithFrame:?];

  return v3;
}

- (id)rotationUserInfo
{
  v2 = [(UIInputViewSetNotificationInfo *)self userInfo];
  [v2 removeObjectForKey:@"UIKeyboardAnimationCurveUserInfoKey"];
  [v2 removeObjectForKey:@"UIKeyboardBoundsUserInfoKey"];

  return v2;
}

- (NSDictionary)privateUserInfo
{
  v3 = [(UIInputViewSetNotificationInfo *)self userInfo];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIInputViewSetNotificationInfo changedAccessoryOnly](self, "changedAccessoryOnly")}];
  [v3 setObject:v4 forKey:@"UIKeyboardChangedAccessoryOnly"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIInputViewSetNotificationInfo assistantOnScreenOnly](self, "assistantOnScreenOnly")}];
  [v3 setObject:v5 forKey:@"UIKeyboardAssistantOnScreenOnlyUserInfoKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UIInputViewSetNotificationInfo assistantPosition](self, "assistantPosition")}];
  [v3 setObject:v6 forKey:@"UIKeyboardAssistantPositionUserInfoKey"];

  v7 = MEMORY[0x1E696B098];
  [(UIInputViewSetNotificationInfo *)self assistantFrame];
  v29[0] = v8;
  v29[1] = v9;
  v29[2] = v10;
  v29[3] = v11;
  v12 = [v7 valueWithBytes:v29 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v3 setObject:v12 forKey:@"UIKeyboardFloatingRectUserInfoKey"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIInputViewSetNotificationInfo dueToRotation](self, "dueToRotation")}];
  [v3 setObject:v13 forKey:@"UIKeyboardOriginatedFromRotationUserInfoKey"];

  v14 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  [v14 keyboardFrameIncludingRemoteIAV];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v31.origin.x = v16;
  v31.origin.y = v18;
  v31.size.width = v20;
  v31.size.height = v22;
  if (CGRectIsEmpty(v31))
  {
    [(UIInputViewSetNotificationInfo *)self endFrame];
    v16 = v23;
    v18 = v24;
    v20 = v25;
    v22 = v26;
  }

  v32.origin.x = v16;
  v32.origin.y = v18;
  v32.size.width = v20;
  v32.size.height = v22;
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetHeight(v32)];
  [v3 setObject:v27 forKey:@"UIKeyboardEndIntersectionHeightIncludingAccessory"];

  return v3;
}

- (void)populateWithAnimationStyle:(id)a3
{
  v4 = a3;
  [v4 duration];
  [(UIInputViewSetNotificationInfo *)self setDuration:?];
  v5 = [v4 extraOptions];

  [(UIInputViewSetNotificationInfo *)self setOptions:v5 | 0x70000];
}

- (void)populateStartInfoWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIInputViewSetNotificationInfo *)self setBeginFrame:?];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MidY = CGRectGetMidY(v12);

  [(UIInputViewSetNotificationInfo *)self setBeginCenter:MidX, MidY];
}

- (void)populateEndInfoWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIInputViewSetNotificationInfo *)self setEndFrame:?];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MidX = CGRectGetMidX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  [(UIInputViewSetNotificationInfo *)self setEndCenter:MidX, CGRectGetMidY(v13)];
  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);

  [(UIInputViewSetNotificationInfo *)self setBounds:v9, v10, width, height];
}

- (void)addKeyboardNotificationDebuggingInfo:(id)a3
{
  v9 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    v4 = [(UIInputViewSetNotificationInfo *)self debugInfo];
    v5 = [v4 length];

    if (v5)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [(UIInputViewSetNotificationInfo *)self debugInfo];
      v8 = [v6 stringWithFormat:@"%@ > %@", v7, v9];
      [(UIInputViewSetNotificationInfo *)self setDebugInfo:v8];
    }

    else
    {
      [(UIInputViewSetNotificationInfo *)self setDebugInfo:v9];
    }
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = [(UIInputViewSetNotificationInfo *)self userInfo];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, v5];

  v7 = [(UIInputViewSetNotificationInfo *)self debugInfo];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(UIInputViewSetNotificationInfo *)self debugInfo];
    [v6 appendFormat:@" Notifications debug: %@", v9];
  }

  return v6;
}

- (CGRect)assistantFrame
{
  x = self->_assistantFrame.origin.x;
  y = self->_assistantFrame.origin.y;
  width = self->_assistantFrame.size.width;
  height = self->_assistantFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end