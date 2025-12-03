@interface TUConversationInvitationPreference
+ (NSSet)incomingCallAndNotificationInvitationPreferences;
+ (NSSet)incomingCallInvitationPreferences;
+ (NSSet)letMeInResponseInvitationPreferences;
+ (NSSet)nearbyInvitationPreferences;
+ (NSSet)noNotificationInvitationPreferences;
+ (NSSet)screenShareRequestInvitationPreferences;
+ (NSSet)standardInvitationPreferencesForLink;
+ (id)invitationPreferencesForAllHandlesWithStyles:(int64_t)styles;
+ (int64_t)validateNotificationStyles:(int64_t)styles;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInvitationPreference:(id)preference;
- (TUConversationInvitationPreference)initWithCoder:(id)coder;
- (TUConversationInvitationPreference)initWithHandleType:(int64_t)type notificationStyles:(int64_t)styles;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationInvitationPreference

- (TUConversationInvitationPreference)initWithHandleType:(int64_t)type notificationStyles:(int64_t)styles
{
  v9.receiver = self;
  v9.super_class = TUConversationInvitationPreference;
  v6 = [(TUConversationInvitationPreference *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_handleType = type;
    v6->_notificationStyles = [objc_opt_class() validateNotificationStyles:styles];
  }

  return v7;
}

+ (int64_t)validateNotificationStyles:(int64_t)styles
{
  v3 = 30;
  if ((styles & 4) == 0)
  {
    v3 = 18;
  }

  v4 = v3 & styles;
  if (styles)
  {
    return styles & 0x21;
  }

  else
  {
    return v4;
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" handleType=%ld", -[TUConversationInvitationPreference handleType](self, "handleType")];
  [v3 appendFormat:@" notificationStyles=%ld", -[TUConversationInvitationPreference notificationStyles](self, "notificationStyles")];
  if (([(TUConversationInvitationPreference *)self notificationStyles]& 1) != 0)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@" notificationStyles.NoNotification=%@", v4];
  if (([(TUConversationInvitationPreference *)self notificationStyles]& 2) != 0)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@" notificationStyles.UserNotification=%@", v5];
  if (([(TUConversationInvitationPreference *)self notificationStyles]& 4) != 0)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@" notificationStyles.IncomingCall=%@", v6];
  if (([(TUConversationInvitationPreference *)self notificationStyles]& 8) != 0)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@" notificationStyles.IndefiniteCall=%@", v7];
  if (([(TUConversationInvitationPreference *)self notificationStyles]& 0x10) != 0)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@" notificationStyles.ScreenShareRequest=%@", v8];
  if (([(TUConversationInvitationPreference *)self notificationStyles]& 0x20) != 0)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 appendFormat:@" notificationStyles.Nearby=%@", v9];
  [v3 appendString:@">"];
  v10 = [v3 copy];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationInvitationPreference *)self isEqualToInvitationPreference:equalCopy];

  return v5;
}

- (BOOL)isEqualToInvitationPreference:(id)preference
{
  preferenceCopy = preference;
  handleType = [(TUConversationInvitationPreference *)self handleType];
  if (handleType == [preferenceCopy handleType])
  {
    notificationStyles = [(TUConversationInvitationPreference *)self notificationStyles];
    v7 = notificationStyles == [preferenceCopy notificationStyles];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  handleType = self->_handleType;
  notificationStyles = self->_notificationStyles;

  return [v4 initWithHandleType:handleType notificationStyles:notificationStyles];
}

- (TUConversationInvitationPreference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_handleType);
  v6 = [coderCopy decodeIntegerForKey:v5];

  v7 = NSStringFromSelector(sel_notificationStyles);
  v8 = [coderCopy decodeIntegerForKey:v7];

  return [(TUConversationInvitationPreference *)self initWithHandleType:v6 notificationStyles:v8];
}

- (void)encodeWithCoder:(id)coder
{
  handleType = self->_handleType;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_handleType);
  [coderCopy encodeInteger:handleType forKey:v6];

  notificationStyles = self->_notificationStyles;
  v8 = NSStringFromSelector(sel_notificationStyles);
  [coderCopy encodeInteger:notificationStyles forKey:v8];
}

+ (id)invitationPreferencesForAllHandlesWithStyles:(int64_t)styles
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = [[TUConversationInvitationPreference alloc] initWithHandleType:2 notificationStyles:styles];
  v6 = [[TUConversationInvitationPreference alloc] initWithHandleType:3 notificationStyles:styles, v5];
  v12[1] = v6;
  v7 = [[TUConversationInvitationPreference alloc] initWithHandleType:1 notificationStyles:styles];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v9 = [v4 initWithArray:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (NSSet)standardInvitationPreferencesForLink
{
  v2 = objc_opt_class();

  return [v2 invitationPreferencesForAllHandlesWithStyles:2];
}

+ (NSSet)letMeInResponseInvitationPreferences
{
  v2 = objc_opt_class();

  return [v2 invitationPreferencesForAllHandlesWithStyles:1];
}

+ (NSSet)noNotificationInvitationPreferences
{
  v2 = objc_opt_class();

  return [v2 invitationPreferencesForAllHandlesWithStyles:1];
}

+ (NSSet)incomingCallInvitationPreferences
{
  v2 = objc_opt_class();

  return [v2 invitationPreferencesForAllHandlesWithStyles:4];
}

+ (NSSet)incomingCallAndNotificationInvitationPreferences
{
  v2 = objc_opt_class();

  return [v2 invitationPreferencesForAllHandlesWithStyles:6];
}

+ (NSSet)screenShareRequestInvitationPreferences
{
  v2 = objc_opt_class();

  return [v2 invitationPreferencesForAllHandlesWithStyles:16];
}

+ (NSSet)nearbyInvitationPreferences
{
  v2 = objc_opt_class();

  return [v2 invitationPreferencesForAllHandlesWithStyles:33];
}

@end