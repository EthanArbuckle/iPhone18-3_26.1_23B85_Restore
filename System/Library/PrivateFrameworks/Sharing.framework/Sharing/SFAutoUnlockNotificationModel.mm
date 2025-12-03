@interface SFAutoUnlockNotificationModel
- (SFAutoUnlockNotificationModel)initWithCoder:(id)coder;
- (SFAutoUnlockNotificationModel)initWithDeviceName:(id)name modelIdentifier:(id)identifier type:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAutoUnlockNotificationModel

- (SFAutoUnlockNotificationModel)initWithDeviceName:(id)name modelIdentifier:(id)identifier type:(int64_t)type
{
  v15.receiver = self;
  v15.super_class = SFAutoUnlockNotificationModel;
  identifierCopy = identifier;
  nameCopy = name;
  v9 = [(SFAutoUnlockNotificationModel *)&v15 init];
  v10 = [nameCopy copy];

  deviceName = v9->_deviceName;
  v9->_deviceName = v10;

  v12 = [identifierCopy copy];
  modelIdentifier = v9->_modelIdentifier;
  v9->_modelIdentifier = v12;

  v9->_type = type;
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceName = [(SFAutoUnlockNotificationModel *)self deviceName];
  v6 = NSStringFromSelector(sel_deviceName);
  [coderCopy encodeObject:deviceName forKey:v6];

  modelIdentifier = [(SFAutoUnlockNotificationModel *)self modelIdentifier];
  v8 = NSStringFromSelector(sel_modelIdentifier);
  [coderCopy encodeObject:modelIdentifier forKey:v8];

  type = [(SFAutoUnlockNotificationModel *)self type];
  v10 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v10];

  subtitle = [(SFAutoUnlockNotificationModel *)self subtitle];
  v12 = NSStringFromSelector(sel_subtitle);
  [coderCopy encodeObject:subtitle forKey:v12];

  applicationName = [(SFAutoUnlockNotificationModel *)self applicationName];
  v14 = NSStringFromSelector(sel_applicationName);
  [coderCopy encodeObject:applicationName forKey:v14];

  applicationIconData = [(SFAutoUnlockNotificationModel *)self applicationIconData];
  v16 = NSStringFromSelector(sel_applicationIconData);
  [coderCopy encodeObject:applicationIconData forKey:v16];

  navBarTitle = [(SFAutoUnlockNotificationModel *)self navBarTitle];
  v17 = NSStringFromSelector(sel_navBarTitle);
  [coderCopy encodeObject:navBarTitle forKey:v17];
}

- (SFAutoUnlockNotificationModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_deviceName);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_modelIdentifier);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = NSStringFromSelector(sel_type);
  v12 = [coderCopy decodeIntegerForKey:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_subtitle);
  v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_applicationName);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_applicationIconData);
  v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];

  v22 = objc_opt_class();
  v23 = NSStringFromSelector(sel_navBarTitle);
  v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];

  selfCopy = 0;
  if (v7 && v10)
  {
    self = [(SFAutoUnlockNotificationModel *)self initWithDeviceName:v7 modelIdentifier:v10 type:v12];
    [(SFAutoUnlockNotificationModel *)self setSubtitle:v15];
    [(SFAutoUnlockNotificationModel *)self setApplicationName:v18];
    [(SFAutoUnlockNotificationModel *)self setApplicationIconData:v21];
    [(SFAutoUnlockNotificationModel *)self setNavBarTitle:v24];
    selfCopy = self;
  }

  return selfCopy;
}

@end