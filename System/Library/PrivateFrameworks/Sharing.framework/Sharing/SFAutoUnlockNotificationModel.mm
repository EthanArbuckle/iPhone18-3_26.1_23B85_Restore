@interface SFAutoUnlockNotificationModel
- (SFAutoUnlockNotificationModel)initWithCoder:(id)a3;
- (SFAutoUnlockNotificationModel)initWithDeviceName:(id)a3 modelIdentifier:(id)a4 type:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAutoUnlockNotificationModel

- (SFAutoUnlockNotificationModel)initWithDeviceName:(id)a3 modelIdentifier:(id)a4 type:(int64_t)a5
{
  v15.receiver = self;
  v15.super_class = SFAutoUnlockNotificationModel;
  v7 = a4;
  v8 = a3;
  v9 = [(SFAutoUnlockNotificationModel *)&v15 init];
  v10 = [v8 copy];

  deviceName = v9->_deviceName;
  v9->_deviceName = v10;

  v12 = [v7 copy];
  modelIdentifier = v9->_modelIdentifier;
  v9->_modelIdentifier = v12;

  v9->_type = a5;
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFAutoUnlockNotificationModel *)self deviceName];
  v6 = NSStringFromSelector(sel_deviceName);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SFAutoUnlockNotificationModel *)self modelIdentifier];
  v8 = NSStringFromSelector(sel_modelIdentifier);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(SFAutoUnlockNotificationModel *)self type];
  v10 = NSStringFromSelector(sel_type);
  [v4 encodeInteger:v9 forKey:v10];

  v11 = [(SFAutoUnlockNotificationModel *)self subtitle];
  v12 = NSStringFromSelector(sel_subtitle);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(SFAutoUnlockNotificationModel *)self applicationName];
  v14 = NSStringFromSelector(sel_applicationName);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(SFAutoUnlockNotificationModel *)self applicationIconData];
  v16 = NSStringFromSelector(sel_applicationIconData);
  [v4 encodeObject:v15 forKey:v16];

  v18 = [(SFAutoUnlockNotificationModel *)self navBarTitle];
  v17 = NSStringFromSelector(sel_navBarTitle);
  [v4 encodeObject:v18 forKey:v17];
}

- (SFAutoUnlockNotificationModel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_deviceName);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_modelIdentifier);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = NSStringFromSelector(sel_type);
  v12 = [v4 decodeIntegerForKey:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_subtitle);
  v15 = [v4 decodeObjectOfClass:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_applicationName);
  v18 = [v4 decodeObjectOfClass:v16 forKey:v17];

  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_applicationIconData);
  v21 = [v4 decodeObjectOfClass:v19 forKey:v20];

  v22 = objc_opt_class();
  v23 = NSStringFromSelector(sel_navBarTitle);
  v24 = [v4 decodeObjectOfClass:v22 forKey:v23];

  v25 = 0;
  if (v7 && v10)
  {
    self = [(SFAutoUnlockNotificationModel *)self initWithDeviceName:v7 modelIdentifier:v10 type:v12];
    [(SFAutoUnlockNotificationModel *)self setSubtitle:v15];
    [(SFAutoUnlockNotificationModel *)self setApplicationName:v18];
    [(SFAutoUnlockNotificationModel *)self setApplicationIconData:v21];
    [(SFAutoUnlockNotificationModel *)self setNavBarTitle:v24];
    v25 = self;
  }

  return v25;
}

@end