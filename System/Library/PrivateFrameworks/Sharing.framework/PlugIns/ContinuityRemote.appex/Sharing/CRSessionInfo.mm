@interface CRSessionInfo
+ (id)placeholderImage;
+ (id)sessionInfoWithNotification:(id)notification;
- (CRSessionInfo)initWithNotification:(id)notification;
- (void)initDataWithNotification:(id)notification;
- (void)initTestDataWithNotification:(id)notification;
- (void)updateKeyboardPropertiesWithTextSessionInfo:(id)info;
- (void)updateWithTextSessionInfo:(id)info;
@end

@implementation CRSessionInfo

+ (id)sessionInfoWithNotification:(id)notification
{
  notificationCopy = notification;
  v4 = [[CRSessionInfo alloc] initWithNotification:notificationCopy];

  return v4;
}

- (CRSessionInfo)initWithNotification:(id)notification
{
  notificationCopy = notification;
  v11.receiver = self;
  v11.super_class = CRSessionInfo;
  v5 = [(CRSessionInfo *)&v11 init];
  if (v5)
  {
    request = [notificationCopy request];
    content = [request content];
    userInfo = [content userInfo];
    v9 = [userInfo objectForKey:@"deviceIdentifier"];

    if (v9)
    {
      if ([v9 isEqualToString:@"00000000-0000-0000-0000-000000000000"])
      {
        [(CRSessionInfo *)v5 initTestDataWithNotification:notificationCopy];
      }

      else
      {
        [(CRSessionInfo *)v5 initDataWithNotification:notificationCopy];
      }
    }

    else
    {
      sub_100005348();
    }
  }

  return v5;
}

- (void)updateKeyboardPropertiesWithTextSessionInfo:(id)info
{
  infoCopy = info;
  self->_keyboardType = [infoCopy keyboardType];
  self->_returnKeyType = [infoCopy returnKeyType];
  secureTextEntry = [infoCopy secureTextEntry];

  self->_secureTextEntry = secureTextEntry;
}

- (void)updateWithTextSessionInfo:(id)info
{
  infoCopy = info;
  identifier = [infoCopy identifier];

  if (identifier)
  {
    identifier2 = [infoCopy identifier];
    sessionID = self->_sessionID;
    self->_sessionID = identifier2;
  }

  prompt = [infoCopy prompt];

  if (prompt)
  {
    prompt2 = [infoCopy prompt];
    descriptiveText = self->_descriptiveText;
    self->_descriptiveText = prompt2;
  }

  title = [infoCopy title];

  if (title)
  {
    title2 = [infoCopy title];
    appName = self->_appName;
    self->_appName = title2;
  }
}

- (void)initDataWithNotification:(id)notification
{
  request = [notification request];
  content = [request content];

  subtitle = [content subtitle];
  appName = self->_appName;
  self->_appName = subtitle;

  body = [content body];
  descriptiveText = self->_descriptiveText;
  self->_descriptiveText = body;

  title = [content title];
  deviceName = self->_deviceName;
  self->_deviceName = title;

  userInfo = [content userInfo];
  v20 = [userInfo objectForKey:@"appImage"];

  v13 = [UIImage imageWithData:v20];
  userInfo2 = [content userInfo];
  v15 = [userInfo2 objectForKey:@"deviceIdentifier"];

  userInfo3 = [content userInfo];
  v17 = [userInfo3 objectForKey:@"placeholderText"];

  userInfo4 = [content userInfo];
  v19 = [userInfo4 objectForKey:@"sessionID"];

  if (v13)
  {
    [(CRSessionInfo *)self setAppImage:v13];
  }

  if (v15)
  {
    [(CRSessionInfo *)self setDeviceIdentifier:v15];
  }

  if (v17)
  {
    [(CRSessionInfo *)self setPlaceholderText:v17];
  }

  if (v19)
  {
    [(CRSessionInfo *)self setSessionID:v19];
  }
}

- (void)initTestDataWithNotification:(id)notification
{
  request = [notification request];
  content = [request content];

  v6 = +[CRSessionInfo placeholderImage];
  appImage = self->_appImage;
  self->_appImage = v6;

  appName = self->_appName;
  self->_appName = @"Apple TV";

  descriptiveText = self->_descriptiveText;
  self->_descriptiveText = @"Enter text on your Apple TV";

  deviceName = self->_deviceName;
  self->_deviceName = @"My Apple TV";

  deviceIdentifier = self->_deviceIdentifier;
  self->_deviceIdentifier = @"00000000-0000-0000-0000-000000000001";

  placeholderText = self->_placeholderText;
  self->_placeholderText = @"Enter text";

  userInfo = [content userInfo];
  v14 = [userInfo objectForKey:@"postAndUpdateKey"];
  self->_shouldUpdateAfterOpen = [v14 BOOLValue];

  if (self->_shouldUpdateAfterOpen)
  {
    v15 = remote_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Should test update after open", v16, 2u);
    }
  }
}

+ (id)placeholderImage
{
  v2 = [UIImage imageWithContentsOfFile:@"/System/Library/PrivateFrameworks/Sharing.framework/ContinuityKeyboard-Placeholder"];
  v3 = remote_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v9 = 0;
    v5 = "Successfully loaded placeholder app image.";
    v6 = &v9;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v8 = 0;
    v5 = "Couldn't load test app image";
    v6 = &v8;
  }

  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
LABEL_7:

  return v2;
}

@end