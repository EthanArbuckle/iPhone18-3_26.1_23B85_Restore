@interface _UIKeyboardUIInformation
- (CGRect)assistantFrame;
- (CGRect)beginFrame;
- (CGRect)endFrame;
- (CGRect)keyboardPosition;
- (_UIKeyboardUIInformation)initWithCoder:(id)coder;
- (_UIKeyboardUIInformation)initWithKeyboardFrame:(CGRect)frame onScreen:(BOOL)screen animated:(BOOL)animated tracking:(BOOL)tracking fence:(id)fence;
- (_UIKeyboardUIInformation)initWithKeyboardFrame:(CGRect)frame onScreen:(BOOL)screen animated:(BOOL)animated tracking:(BOOL)tracking orientation:(int64_t)orientation fence:(id)fence;
- (_UIKeyboardUIInformation)initWithKeyboardFrame:(CGRect)frame onScreen:(BOOL)screen animated:(BOOL)animated tracking:(BOOL)tracking orientation:(int64_t)orientation wantsFence:(BOOL)fence;
- (_UIKeyboardUIInformation)initWithKeyboardFrame:(CGRect)frame onScreen:(BOOL)screen animated:(BOOL)animated tracking:(BOOL)tracking wantsFence:(BOOL)fence;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyWithoutFence;
- (id)description;
- (id)descriptionForLog;
- (id)notificationInfo;
- (void)addNotificationInfo:(id)info isStart:(BOOL)start;
- (void)encodeWithCoder:(id)coder;
- (void)resetAnimationFencing;
@end

@implementation _UIKeyboardUIInformation

- (void)resetAnimationFencing
{
  [(BKSAnimationFenceHandle *)self->_animationFence invalidate];
  animationFence = self->_animationFence;
  self->_animationFence = 0;
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

- (CGRect)keyboardPosition
{
  objc_copyStruct(v6, &self->_keyboardPosition, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)descriptionForLog
{
  applicationIdentifier = self->_applicationIdentifier;
  v28 = applicationIdentifier;
  v26 = MEMORY[0x1E696AEC0];
  if (applicationIdentifier)
  {
    applicationIdentifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"appID:%@ ", applicationIdentifier];
  }

  else
  {
    applicationIdentifier = &stru_1EFB14550;
  }

  bundleIdentifier = self->_bundleIdentifier;
  v25 = bundleIdentifier;
  if (bundleIdentifier)
  {
    bundleIdentifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"bundleID:%@ ", bundleIdentifier];
  }

  else
  {
    bundleIdentifier = &stru_1EFB14550;
  }

  animationFence = [(_UIKeyboardUIInformation *)self animationFence];
  if (animationFence)
  {
    v6 = "Y";
  }

  else
  {
    v6 = "N";
  }

  v22 = v6;
  v23 = animationFence;
  [(_UIKeyboardUIInformation *)self keyboardPosition];
  v11 = StringFromCGRect(v7, v8, v9, v10);
  if ([(_UIKeyboardUIInformation *)self animated])
  {
    v12 = "Y";
  }

  else
  {
    v12 = "N";
  }

  if ([(_UIKeyboardUIInformation *)self keyboardOnScreen])
  {
    v13 = "Y";
  }

  else
  {
    v13 = "N";
  }

  if (self->_tracking)
  {
    v14 = "Y";
  }

  else
  {
    v14 = "N";
  }

  if (self->_resizing)
  {
    v15 = "Y";
  }

  else
  {
    v15 = "N";
  }

  if (self->_isLocal)
  {
    v16 = "Y";
  }

  else
  {
    v16 = "N";
  }

  uiPosition = self->_uiPosition;
  if (uiPosition > 3)
  {
    v18 = 0;
  }

  else
  {
    v18 = off_1E712D050[uiPosition];
  }

  if ([(_UIKeyboardUIInformation *)self hasValidNotification])
  {
    v19 = "Y";
  }

  else
  {
    v19 = "N";
  }

  v20 = [v26 stringWithFormat:@"<%@%@fence:%s pos:%@ anim:%s onScreen:%s tracking:%s resizing:%s local:%s uiPos:%@ notif:%s>", applicationIdentifier, bundleIdentifier, v22, v11, v12, v13, v14, v15, v16, v18, v19];

  if (v25)
  {
  }

  if (v28)
  {
  }

  return v20;
}

- (id)description
{
  v22 = MEMORY[0x1E696AEC0];
  v24.receiver = self;
  v24.super_class = _UIKeyboardUIInformation;
  v23 = [(_UIKeyboardUIInformation *)&v24 description];
  bundleIdentifier = self->_bundleIdentifier;
  applicationIdentifier = self->_applicationIdentifier;
  animationFence = self->_animationFence;
  v3 = StringFromCGRect(self->_keyboardPosition.origin.x, self->_keyboardPosition.origin.y, self->_keyboardPosition.size.width, self->_keyboardPosition.size.height);
  if (self->_animated)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_keyboardOnScreen)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_tracking)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_resizing)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_isLocal)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  uiPosition = self->_uiPosition;
  if (uiPosition > 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_1E712D050[uiPosition];
  }

  v11 = v8;
  v12 = v7;
  v13 = v6;
  v14 = v5;
  v15 = v4;
  if ([(_UIKeyboardUIInformation *)self hasValidNotification])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = [v22 stringWithFormat:@"<%@ appId %@ bundleId %@ animation fence %@; position %@; animated %@; on screen %@; tracking %@; resizing %@; local %@, dock state: %@, hasValidNotif: %@>", v23, applicationIdentifier, bundleIdentifier, animationFence, v3, v15, v14, v13, v12, v11, v10, v16];;

  return v17;
}

- (_UIKeyboardUIInformation)initWithKeyboardFrame:(CGRect)frame onScreen:(BOOL)screen animated:(BOOL)animated tracking:(BOOL)tracking wantsFence:(BOOL)fence
{
  trackingCopy = tracking;
  animatedCopy = animated;
  screenCopy = screen;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v16 = +[UIKeyboard activeKeyboard];
  _keyboardOrientation = [v16 _keyboardOrientation];
  if (fence)
  {
    animationFence = [objc_opt_class() animationFence];
    height = [(_UIKeyboardUIInformation *)self initWithKeyboardFrame:screenCopy onScreen:animatedCopy animated:trackingCopy tracking:_keyboardOrientation orientation:animationFence fence:x, y, width, height];
  }

  else
  {
    height = [(_UIKeyboardUIInformation *)self initWithKeyboardFrame:screenCopy onScreen:animatedCopy animated:trackingCopy tracking:_keyboardOrientation orientation:0 fence:x, y, width, height];
  }

  return height;
}

- (_UIKeyboardUIInformation)initWithKeyboardFrame:(CGRect)frame onScreen:(BOOL)screen animated:(BOOL)animated tracking:(BOOL)tracking orientation:(int64_t)orientation wantsFence:(BOOL)fence
{
  trackingCopy = tracking;
  animatedCopy = animated;
  screenCopy = screen;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (fence)
  {
    animationFence = [objc_opt_class() animationFence];
    height = [(_UIKeyboardUIInformation *)self initWithKeyboardFrame:screenCopy onScreen:animatedCopy animated:trackingCopy tracking:orientation orientation:animationFence fence:x, y, width, height];
  }

  else
  {
    height = [(_UIKeyboardUIInformation *)self initWithKeyboardFrame:screen onScreen:animated animated:tracking tracking:orientation orientation:0 fence:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  }

  return height;
}

- (_UIKeyboardUIInformation)initWithKeyboardFrame:(CGRect)frame onScreen:(BOOL)screen animated:(BOOL)animated tracking:(BOOL)tracking fence:(id)fence
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  fenceCopy = fence;
  v23.receiver = self;
  v23.super_class = _UIKeyboardUIInformation;
  v17 = [(_UIKeyboardUIInformation *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_animationFence, fence);
    v18->_keyboardPosition.origin.x = x;
    v18->_keyboardPosition.origin.y = y;
    v18->_keyboardPosition.size.width = width;
    v18->_keyboardPosition.size.height = height;
    v18->_keyboardOnScreen = screen;
    v18->_animated = animated;
    v18->_tracking = tracking;
    v19 = +[UIKeyboard activeKeyboard];
    v18->_orientation = [v19 _keyboardOrientation];

    v18->_notification = 0;
    v20 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 16);
    v18->_beginFrame.origin = *MEMORY[0x1E695F058];
    v18->_beginFrame.size = v21;
    v18->_endFrame.origin = v20;
    v18->_endFrame.size = v21;
    v18->_duration = 0.0;
  }

  return v18;
}

- (_UIKeyboardUIInformation)initWithKeyboardFrame:(CGRect)frame onScreen:(BOOL)screen animated:(BOOL)animated tracking:(BOOL)tracking orientation:(int64_t)orientation fence:(id)fence
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  fenceCopy = fence;
  v24.receiver = self;
  v24.super_class = _UIKeyboardUIInformation;
  v19 = [(_UIKeyboardUIInformation *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_animationFence, fence);
    v20->_keyboardPosition.origin.x = x;
    v20->_keyboardPosition.origin.y = y;
    v20->_keyboardPosition.size.width = width;
    v20->_keyboardPosition.size.height = height;
    v20->_keyboardOnScreen = screen;
    v20->_animated = animated;
    v20->_tracking = tracking;
    v20->_orientation = orientation;
    v20->_notification = 0;
    v21 = *MEMORY[0x1E695F058];
    v22 = *(MEMORY[0x1E695F058] + 16);
    v20->_beginFrame.origin = *MEMORY[0x1E695F058];
    v20->_beginFrame.size = v22;
    v20->_endFrame.origin = v21;
    v20->_endFrame.size = v22;
    v20->_duration = 0.0;
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  applicationIdentifier = self->_applicationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:applicationIdentifier forKey:@"ApplicationIdentifier"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"BundleIdentifier"];
  [coderCopy encodeObject:self->_animationFence forKey:@"AnimationFence"];
  v5 = MEMORY[0x1E696B098];
  [(_UIKeyboardUIInformation *)self keyboardPosition];
  v6 = [v5 valueWithCGRect:?];
  [coderCopy encodeObject:v6 forKey:@"Position"];

  [coderCopy encodeBool:-[_UIKeyboardUIInformation keyboardOnScreen](self forKey:{"keyboardOnScreen"), @"OnScreen"}];
  [coderCopy encodeBool:-[_UIKeyboardUIInformation assistantBarVisible](self forKey:{"assistantBarVisible"), @"AssistantVisible"}];
  [coderCopy encodeBool:-[_UIKeyboardUIInformation requiresHeightForIntegratedAssistantBar](self forKey:{"requiresHeightForIntegratedAssistantBar"), @"IntegratedAssistant"}];
  [coderCopy encodeBool:-[_UIKeyboardUIInformation animated](self forKey:{"animated"), @"Animated"}];
  [coderCopy encodeBool:-[_UIKeyboardUIInformation tracking](self forKey:{"tracking"), @"Tracking"}];
  [coderCopy encodeBool:-[_UIKeyboardUIInformation resizing](self forKey:{"resizing"), @"Resizing"}];
  [coderCopy encodeInt32:-[_UIKeyboardUIInformation orientation](self forKey:{"orientation"), @"Orientation"}];
  [coderCopy encodeBool:-[_UIKeyboardUIInformation isLocal](self forKey:{"isLocal"), @"IsLocal"}];
  currentInputMode = [(_UIKeyboardUIInformation *)self currentInputMode];
  [coderCopy encodeObject:currentInputMode forKey:@"CurrentInputMode"];

  [coderCopy encodeInt32:-[_UIKeyboardUIInformation uiPosition](self forKey:{"uiPosition"), @"UIPosition"}];
  [coderCopy encodeBool:-[_UIKeyboardUIInformation keyboardScenePresentationMode](self forKey:{"keyboardScenePresentationMode") != 0, @"KeyboardScenePresentationMode"}];
  [coderCopy encodeInteger:-[_UIKeyboardUIInformation notification](self forKey:{"notification"), @"UIIVSNotificationType"}];
  [coderCopy encodeBool:-[_UIKeyboardUIInformation isStartNotification](self forKey:{"isStartNotification"), @"NotificationIsStartNotification"}];
  v8 = MEMORY[0x1E696B098];
  [(_UIKeyboardUIInformation *)self beginFrame];
  v9 = [v8 valueWithCGRect:?];
  [coderCopy encodeObject:v9 forKey:@"NotificationsBeginFrame"];

  v10 = MEMORY[0x1E696B098];
  [(_UIKeyboardUIInformation *)self endFrame];
  v11 = [v10 valueWithCGRect:?];
  [coderCopy encodeObject:v11 forKey:@"NotificationsEndFrame"];

  [(_UIKeyboardUIInformation *)self duration];
  *&v12 = v12;
  [coderCopy encodeFloat:@"NotificationsDuration" forKey:v12];
  [coderCopy encodeInteger:-[_UIKeyboardUIInformation options](self forKey:{"options"), @"NotificationsAnimationOptions"}];
  [coderCopy encodeBool:-[_UIKeyboardUIInformation changedAccessoryOnly](self forKey:{"changedAccessoryOnly"), @"NotificationsAccessoryChanged"}];
  [coderCopy encodeBool:-[_UIKeyboardUIInformation assistantOnScreenOnly](self forKey:{"assistantOnScreenOnly"), @"NotificationsAssistantPosition"}];
  v13 = MEMORY[0x1E696B098];
  [(_UIKeyboardUIInformation *)self assistantFrame];
  v14 = [v13 valueWithCGRect:?];
  [coderCopy encodeObject:v14 forKey:@"NotificationsAssistantFrame"];

  [coderCopy encodeBool:-[_UIKeyboardUIInformation forceNotification](self forKey:{"forceNotification"), @"NotificationsForceNotification"}];
  [coderCopy encodeBool:-[_UIKeyboardUIInformation wasCausedRemotely](self forKey:{"wasCausedRemotely"), @"NotificationsCausedRemotely"}];
  [coderCopy encodeBool:-[_UIKeyboardUIInformation dueToRotation](self forKey:{"dueToRotation"), @"NotificationsDueToRotation"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  [(_UIKeyboardUIInformation *)self keyboardPosition];
  v5 = [v4 initWithKeyboardFrame:self->_keyboardOnScreen onScreen:self->_animated animated:self->_tracking tracking:self->_orientation orientation:self->_animationFence fence:?];
  [v5 setIsLocal:{-[_UIKeyboardUIInformation isLocal](self, "isLocal")}];
  currentInputMode = [(_UIKeyboardUIInformation *)self currentInputMode];
  v7 = [currentInputMode copy];
  [v5 setCurrentInputMode:v7];

  [v5 setUiPosition:{-[_UIKeyboardUIInformation uiPosition](self, "uiPosition")}];
  [v5 setKeyboardScenePresentationMode:{-[_UIKeyboardUIInformation keyboardScenePresentationMode](self, "keyboardScenePresentationMode")}];
  [v5 setAssistantBarVisible:{-[_UIKeyboardUIInformation assistantBarVisible](self, "assistantBarVisible")}];
  [v5 setRequiresHeightForIntegratedAssistantBar:{-[_UIKeyboardUIInformation requiresHeightForIntegratedAssistantBar](self, "requiresHeightForIntegratedAssistantBar")}];
  applicationIdentifier = [(_UIKeyboardUIInformation *)self applicationIdentifier];
  v9 = [applicationIdentifier copy];
  [v5 setApplicationIdentifier:v9];

  bundleIdentifier = [(_UIKeyboardUIInformation *)self bundleIdentifier];
  v11 = [bundleIdentifier copy];
  [v5 setBundleIdentifier:v11];

  [v5 setNotification:{-[_UIKeyboardUIInformation notification](self, "notification")}];
  [v5 setStartNotification:{-[_UIKeyboardUIInformation isStartNotification](self, "isStartNotification")}];
  [(_UIKeyboardUIInformation *)self beginFrame];
  [v5 setBeginFrame:?];
  [(_UIKeyboardUIInformation *)self endFrame];
  [v5 setEndFrame:?];
  [(_UIKeyboardUIInformation *)self duration];
  [v5 setDuration:?];
  [v5 setOptions:{-[_UIKeyboardUIInformation options](self, "options")}];
  [v5 setResizing:{-[_UIKeyboardUIInformation resizing](self, "resizing")}];
  [v5 setChangedAccessoryOnly:{-[_UIKeyboardUIInformation changedAccessoryOnly](self, "changedAccessoryOnly")}];
  [v5 setAssistantOnScreenOnly:{-[_UIKeyboardUIInformation assistantOnScreenOnly](self, "assistantOnScreenOnly")}];
  [(_UIKeyboardUIInformation *)self assistantFrame];
  [v5 setAssistantFrame:?];
  [v5 setForceNotification:{-[_UIKeyboardUIInformation forceNotification](self, "forceNotification")}];
  [v5 setWasCausedRemotely:{-[_UIKeyboardUIInformation wasCausedRemotely](self, "wasCausedRemotely")}];
  [v5 setDueToRotation:{-[_UIKeyboardUIInformation dueToRotation](self, "dueToRotation")}];
  return v5;
}

- (id)copyWithoutFence
{
  v3 = [_UIKeyboardUIInformation alloc];
  [(_UIKeyboardUIInformation *)self keyboardPosition];
  v8 = [(_UIKeyboardUIInformation *)v3 initWithKeyboardFrame:[(_UIKeyboardUIInformation *)self keyboardOnScreen] onScreen:self->_animated animated:self->_tracking tracking:self->_orientation orientation:0 fence:v4, v5, v6, v7];
  [(_UIKeyboardUIInformation *)v8 setIsLocal:[(_UIKeyboardUIInformation *)self isLocal]];
  currentInputMode = [(_UIKeyboardUIInformation *)self currentInputMode];
  v10 = [currentInputMode copy];
  [(_UIKeyboardUIInformation *)v8 setCurrentInputMode:v10];

  [(_UIKeyboardUIInformation *)v8 setUiPosition:[(_UIKeyboardUIInformation *)self uiPosition]];
  applicationIdentifier = [(_UIKeyboardUIInformation *)self applicationIdentifier];
  v12 = [applicationIdentifier copy];
  [(_UIKeyboardUIInformation *)v8 setApplicationIdentifier:v12];

  bundleIdentifier = [(_UIKeyboardUIInformation *)self bundleIdentifier];
  v14 = [bundleIdentifier copy];
  [(_UIKeyboardUIInformation *)v8 setBundleIdentifier:v14];

  [(_UIKeyboardUIInformation *)v8 setKeyboardScenePresentationMode:[(_UIKeyboardUIInformation *)self keyboardScenePresentationMode]];
  [(_UIKeyboardUIInformation *)v8 setAssistantBarVisible:[(_UIKeyboardUIInformation *)self assistantBarVisible]];
  [(_UIKeyboardUIInformation *)v8 setRequiresHeightForIntegratedAssistantBar:[(_UIKeyboardUIInformation *)self requiresHeightForIntegratedAssistantBar]];
  [(_UIKeyboardUIInformation *)v8 setResizing:[(_UIKeyboardUIInformation *)self resizing]];
  [(_UIKeyboardUIInformation *)v8 setNotification:[(_UIKeyboardUIInformation *)self notification]];
  [(_UIKeyboardUIInformation *)v8 setStartNotification:[(_UIKeyboardUIInformation *)self isStartNotification]];
  [(_UIKeyboardUIInformation *)self beginFrame];
  [(_UIKeyboardUIInformation *)v8 setBeginFrame:?];
  [(_UIKeyboardUIInformation *)self endFrame];
  [(_UIKeyboardUIInformation *)v8 setEndFrame:?];
  [(_UIKeyboardUIInformation *)self duration];
  [(_UIKeyboardUIInformation *)v8 setDuration:?];
  [(_UIKeyboardUIInformation *)v8 setOptions:[(_UIKeyboardUIInformation *)self options]];
  [(_UIKeyboardUIInformation *)v8 setChangedAccessoryOnly:[(_UIKeyboardUIInformation *)self changedAccessoryOnly]];
  [(_UIKeyboardUIInformation *)v8 setAssistantOnScreenOnly:[(_UIKeyboardUIInformation *)self assistantOnScreenOnly]];
  [(_UIKeyboardUIInformation *)self assistantFrame];
  [(_UIKeyboardUIInformation *)v8 setAssistantFrame:?];
  [(_UIKeyboardUIInformation *)v8 setForceNotification:[(_UIKeyboardUIInformation *)self forceNotification]];
  [(_UIKeyboardUIInformation *)v8 setWasCausedRemotely:[(_UIKeyboardUIInformation *)self wasCausedRemotely]];
  [(_UIKeyboardUIInformation *)v8 setDueToRotation:[(_UIKeyboardUIInformation *)self dueToRotation]];
  return v8;
}

- (_UIKeyboardUIInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = _UIKeyboardUIInformation;
  v5 = [(_UIKeyboardUIInformation *)&v38 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ApplicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnimationFence"];
    animationFence = v5->_animationFence;
    v5->_animationFence = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Position"];
    [v13 CGRectValue];
    v5->_keyboardPosition.origin.x = v14;
    v5->_keyboardPosition.origin.y = v15;
    v5->_keyboardPosition.size.width = v16;
    v5->_keyboardPosition.size.height = v17;

    v5->_keyboardOnScreen = [coderCopy decodeBoolForKey:@"OnScreen"];
    v5->_assistantBarVisible = [coderCopy decodeBoolForKey:@"AssistantVisible"];
    v5->_requiresHeightForIntegratedAssistantBar = [coderCopy decodeBoolForKey:@"IntegratedAssistant"];
    v5->_animated = [coderCopy decodeBoolForKey:@"Animated"];
    v5->_tracking = [coderCopy decodeBoolForKey:@"Tracking"];
    v5->_resizing = [coderCopy decodeBoolForKey:@"Resizing"];
    v5->_orientation = [coderCopy decodeInt32ForKey:@"Orientation"];
    v5->_isLocal = [coderCopy decodeBoolForKey:@"IsLocal"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CurrentInputMode"];
    currentInputMode = v5->_currentInputMode;
    v5->_currentInputMode = v18;

    v5->_uiPosition = [coderCopy decodeInt32ForKey:@"UIPosition"];
    v5->_keyboardScenePresentationMode = [coderCopy decodeBoolForKey:@"KeyboardScenePresentationMode"];
    v5->_notification = [coderCopy decodeIntegerForKey:@"UIIVSNotificationType"];
    v5->_startNotification = [coderCopy decodeBoolForKey:@"NotificationIsStartNotification"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NotificationsBeginFrame"];
    [v20 CGRectValue];
    v5->_beginFrame.origin.x = v21;
    v5->_beginFrame.origin.y = v22;
    v5->_beginFrame.size.width = v23;
    v5->_beginFrame.size.height = v24;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NotificationsEndFrame"];
    [v25 CGRectValue];
    v5->_endFrame.origin.x = v26;
    v5->_endFrame.origin.y = v27;
    v5->_endFrame.size.width = v28;
    v5->_endFrame.size.height = v29;

    [coderCopy decodeFloatForKey:@"NotificationsDuration"];
    v5->_duration = v30;
    v5->_options = [coderCopy decodeIntegerForKey:@"NotificationsAnimationOptions"];
    v5->_changedAccessoryOnly = [coderCopy decodeBoolForKey:@"NotificationsAccessoryChanged"];
    v5->_assistantOnScreenOnly = [coderCopy decodeBoolForKey:@"NotificationsAssistantPosition"];
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NotificationsAssistantFrame"];
    [v31 CGRectValue];
    v5->_assistantFrame.origin.x = v32;
    v5->_assistantFrame.origin.y = v33;
    v5->_assistantFrame.size.width = v34;
    v5->_assistantFrame.size.height = v35;

    v5->_forceNotification = [coderCopy decodeBoolForKey:@"NotificationsForceNotification"];
    v5->_wasCausedRemotely = [coderCopy decodeBoolForKey:@"NotificationsCausedRemotely"];
    v5->_dueToRotation = [coderCopy decodeBoolForKey:@"NotificationsDueToRotation"];
    objc_autoreleasePoolPop(v6);
    v36 = v5;
  }

  return v5;
}

- (id)notificationInfo
{
  v3 = +[UIInputViewSetNotificationInfo info];
  [(_UIKeyboardUIInformation *)self beginFrame];
  [v3 populateStartInfoWithFrame:?];
  [(_UIKeyboardUIInformation *)self endFrame];
  [v3 populateEndInfoWithFrame:?];
  [(_UIKeyboardUIInformation *)self duration];
  [v3 setDuration:?];
  [v3 setOptions:{-[_UIKeyboardUIInformation options](self, "options")}];
  [v3 setChangedAccessoryOnly:{-[_UIKeyboardUIInformation changedAccessoryOnly](self, "changedAccessoryOnly")}];
  [v3 setAssistantOnScreenOnly:{-[_UIKeyboardUIInformation assistantOnScreenOnly](self, "assistantOnScreenOnly")}];
  [(_UIKeyboardUIInformation *)self assistantFrame];
  [v3 setAssistantFrame:?];
  [v3 setForceNotification:{-[_UIKeyboardUIInformation forceNotification](self, "forceNotification")}];
  [v3 setWasCausedRemotely:{-[_UIKeyboardUIInformation wasCausedRemotely](self, "wasCausedRemotely")}];
  [v3 setDueToRotation:{-[_UIKeyboardUIInformation dueToRotation](self, "dueToRotation")}];
  [v3 setType:{-[_UIKeyboardUIInformation notification](self, "notification")}];

  return v3;
}

- (void)addNotificationInfo:(id)info isStart:(BOOL)start
{
  startCopy = start;
  infoCopy = info;
  [infoCopy beginFrame];
  [(_UIKeyboardUIInformation *)self setBeginFrame:?];
  [infoCopy endFrame];
  [(_UIKeyboardUIInformation *)self setEndFrame:?];
  [infoCopy duration];
  [(_UIKeyboardUIInformation *)self setDuration:?];
  -[_UIKeyboardUIInformation setOptions:](self, "setOptions:", [infoCopy options]);
  -[_UIKeyboardUIInformation setChangedAccessoryOnly:](self, "setChangedAccessoryOnly:", [infoCopy changedAccessoryOnly]);
  -[_UIKeyboardUIInformation setAssistantOnScreenOnly:](self, "setAssistantOnScreenOnly:", [infoCopy assistantOnScreenOnly]);
  [infoCopy assistantFrame];
  [(_UIKeyboardUIInformation *)self setAssistantFrame:?];
  -[_UIKeyboardUIInformation setForceNotification:](self, "setForceNotification:", [infoCopy forceNotification]);
  -[_UIKeyboardUIInformation setWasCausedRemotely:](self, "setWasCausedRemotely:", [infoCopy wasCausedRemotely]);
  -[_UIKeyboardUIInformation setDueToRotation:](self, "setDueToRotation:", [infoCopy dueToRotation]);
  type = [infoCopy type];

  [(_UIKeyboardUIInformation *)self setNotification:type];

  [(_UIKeyboardUIInformation *)self setStartNotification:startCopy];
}

@end