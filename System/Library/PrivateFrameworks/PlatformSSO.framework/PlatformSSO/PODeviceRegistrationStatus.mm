@interface PODeviceRegistrationStatus
- (PODeviceRegistrationStatus)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PODeviceRegistrationStatus

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_platformSSOEnabled)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v15 = v3;
  v14[0] = @"platformSSOEnabled";
  v14[1] = @"accountName";
  v16 = vbslq_s8(vceqzq_s64(*&self->_accountName), vdupq_n_s64(@"nil"), *&self->_accountName);
  v14[2] = @"registeredExtensionName";
  v14[3] = @"registeredBundleIdentifier";
  registeredBundleIdentifier = self->_registeredBundleIdentifier;
  deviceRegistrationStatus = self->_deviceRegistrationStatus;
  if (!registeredBundleIdentifier)
  {
    registeredBundleIdentifier = @"nil";
  }

  v17 = registeredBundleIdentifier;
  v14[4] = @"deviceRegistrationStatus";
  v6 = [POConstantUtil stringForRegistrationStatus:deviceRegistrationStatus];
  v7 = v6;
  if (self->_actionButtonEnabled)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v18 = v6;
  v19 = v8;
  v14[5] = @"actionButtonEnabled";
  v14[6] = @"actionButtonAction";
  v9 = [POConstantUtil stringForDeviceAction:self->_actionButtonAction];
  v20 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:v14 count:7];
  v11 = [v10 description];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PODeviceRegistrationStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = PODeviceRegistrationStatus;
  v5 = [(PODeviceRegistrationStatus *)&v31 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_isPlatformSSOEnabled);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    v5->_platformSSOEnabled = [v8 BOOLValue];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_accountName);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    accountName = v5->_accountName;
    v5->_accountName = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_registeredExtensionName);
    v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
    registeredExtensionName = v5->_registeredExtensionName;
    v5->_registeredExtensionName = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_registeredBundleIdentifier);
    v19 = [v4 decodeObjectOfClass:v17 forKey:v18];
    registeredBundleIdentifier = v5->_registeredBundleIdentifier;
    v5->_registeredBundleIdentifier = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_deviceRegistrationStatus);
    v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
    v5->_deviceRegistrationStatus = [v23 intValue];

    v24 = objc_opt_class();
    v25 = NSStringFromSelector(sel_isActionButtonEnabled);
    v26 = [v4 decodeObjectOfClass:v24 forKey:v25];
    v5->_actionButtonEnabled = [v26 BOOLValue];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_actionButtonAction);
    v29 = [v4 decodeObjectOfClass:v27 forKey:v28];
    v5->_actionButtonAction = [v29 intValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  platformSSOEnabled = self->_platformSSOEnabled;
  v6 = a3;
  v7 = [v4 numberWithBool:platformSSOEnabled];
  v8 = NSStringFromSelector(sel_isPlatformSSOEnabled);
  [v6 encodeObject:v7 forKey:v8];

  registeredExtensionName = self->_registeredExtensionName;
  v10 = NSStringFromSelector(sel_registeredExtensionName);
  [v6 encodeObject:registeredExtensionName forKey:v10];

  accountName = self->_accountName;
  v12 = NSStringFromSelector(sel_accountName);
  [v6 encodeObject:accountName forKey:v12];

  registeredBundleIdentifier = self->_registeredBundleIdentifier;
  v14 = NSStringFromSelector(sel_registeredBundleIdentifier);
  [v6 encodeObject:registeredBundleIdentifier forKey:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:self->_deviceRegistrationStatus];
  v16 = NSStringFromSelector(sel_deviceRegistrationStatus);
  [v6 encodeObject:v15 forKey:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_actionButtonEnabled];
  v18 = NSStringFromSelector(sel_isActionButtonEnabled);
  [v6 encodeObject:v17 forKey:v18];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:self->_actionButtonAction];
  v19 = NSStringFromSelector(sel_actionButtonAction);
  [v6 encodeObject:v20 forKey:v19];
}

@end