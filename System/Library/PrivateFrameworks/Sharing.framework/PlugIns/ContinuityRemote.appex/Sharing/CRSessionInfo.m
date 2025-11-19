@interface CRSessionInfo
+ (id)placeholderImage;
+ (id)sessionInfoWithNotification:(id)a3;
- (CRSessionInfo)initWithNotification:(id)a3;
- (void)initDataWithNotification:(id)a3;
- (void)initTestDataWithNotification:(id)a3;
- (void)updateKeyboardPropertiesWithTextSessionInfo:(id)a3;
- (void)updateWithTextSessionInfo:(id)a3;
@end

@implementation CRSessionInfo

+ (id)sessionInfoWithNotification:(id)a3
{
  v3 = a3;
  v4 = [[CRSessionInfo alloc] initWithNotification:v3];

  return v4;
}

- (CRSessionInfo)initWithNotification:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRSessionInfo;
  v5 = [(CRSessionInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 request];
    v7 = [v6 content];
    v8 = [v7 userInfo];
    v9 = [v8 objectForKey:@"deviceIdentifier"];

    if (v9)
    {
      if ([v9 isEqualToString:@"00000000-0000-0000-0000-000000000000"])
      {
        [(CRSessionInfo *)v5 initTestDataWithNotification:v4];
      }

      else
      {
        [(CRSessionInfo *)v5 initDataWithNotification:v4];
      }
    }

    else
    {
      sub_100005348();
    }
  }

  return v5;
}

- (void)updateKeyboardPropertiesWithTextSessionInfo:(id)a3
{
  v4 = a3;
  self->_keyboardType = [v4 keyboardType];
  self->_returnKeyType = [v4 returnKeyType];
  v5 = [v4 secureTextEntry];

  self->_secureTextEntry = v5;
}

- (void)updateWithTextSessionInfo:(id)a3
{
  v13 = a3;
  v4 = [v13 identifier];

  if (v4)
  {
    v5 = [v13 identifier];
    sessionID = self->_sessionID;
    self->_sessionID = v5;
  }

  v7 = [v13 prompt];

  if (v7)
  {
    v8 = [v13 prompt];
    descriptiveText = self->_descriptiveText;
    self->_descriptiveText = v8;
  }

  v10 = [v13 title];

  if (v10)
  {
    v11 = [v13 title];
    appName = self->_appName;
    self->_appName = v11;
  }
}

- (void)initDataWithNotification:(id)a3
{
  v4 = [a3 request];
  v5 = [v4 content];

  v6 = [v5 subtitle];
  appName = self->_appName;
  self->_appName = v6;

  v8 = [v5 body];
  descriptiveText = self->_descriptiveText;
  self->_descriptiveText = v8;

  v10 = [v5 title];
  deviceName = self->_deviceName;
  self->_deviceName = v10;

  v12 = [v5 userInfo];
  v20 = [v12 objectForKey:@"appImage"];

  v13 = [UIImage imageWithData:v20];
  v14 = [v5 userInfo];
  v15 = [v14 objectForKey:@"deviceIdentifier"];

  v16 = [v5 userInfo];
  v17 = [v16 objectForKey:@"placeholderText"];

  v18 = [v5 userInfo];
  v19 = [v18 objectForKey:@"sessionID"];

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

- (void)initTestDataWithNotification:(id)a3
{
  v4 = [a3 request];
  v5 = [v4 content];

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

  v13 = [v5 userInfo];
  v14 = [v13 objectForKey:@"postAndUpdateKey"];
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