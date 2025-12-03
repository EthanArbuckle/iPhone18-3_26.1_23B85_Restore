@interface POUserRegistrationStatus
- (POUserRegistrationStatus)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation POUserRegistrationStatus

- (id)description
{
  v20[8] = *MEMORY[0x277D85DE8];
  if (self->_platformSSOEnabled)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v20[0] = v3;
  v19[0] = @"platformSSOEnabled";
  v19[1] = @"loginUserName";
  v4 = [MEMORY[0x277D3D1E0] maskName:self->_loginUserName];
  v5 = v4;
  v6 = @"nil";
  if (v4)
  {
    v6 = v4;
  }

  v20[1] = v6;
  v19[2] = @"authenticationMethod";
  v7 = [MEMORY[0x277D3D1D0] stringForLoginType:self->_authenticationMethod];
  v20[2] = v7;
  v19[3] = @"userRegistrationStatus";
  v8 = [POConstantUtil stringForRegistrationStatus:self->_userRegistrationStatus];
  v9 = v8;
  if (self->_actionButtonEnabled)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v20[3] = v8;
  v20[4] = v10;
  v19[4] = @"actionButtonEnabled";
  v19[5] = @"actionButtonAction";
  v11 = [POConstantUtil stringForUserAction:self->_actionButtonAction];
  v20[5] = v11;
  v19[6] = @"userTokenStatus";
  v12 = [POConstantUtil stringForTokenStatus:self->_userTokenStatus];
  v13 = v12;
  v19[7] = @"authenticateButtonEnabled";
  if (self->_authenticateButtonEnabled)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v20[6] = v12;
  v20[7] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:8];
  v16 = [v15 description];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (POUserRegistrationStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = POUserRegistrationStatus;
  v5 = [(POUserRegistrationStatus *)&v32 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_isPlatformSSOEnabled);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    v5->_platformSSOEnabled = [v8 BOOLValue];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_loginUserName);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    loginUserName = v5->_loginUserName;
    v5->_loginUserName = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_authenticationMethod);
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    v5->_authenticationMethod = [v15 intValue];

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_userRegistrationStatus);
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
    v5->_userRegistrationStatus = [v18 intValue];

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_isActionButtonEnabled);
    v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];
    v5->_actionButtonEnabled = [v21 BOOLValue];

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_actionButtonAction);
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];
    v5->_actionButtonAction = [v24 intValue];

    v25 = objc_opt_class();
    v26 = NSStringFromSelector(sel_userTokenStatus);
    v27 = [coderCopy decodeObjectOfClass:v25 forKey:v26];
    v5->_userTokenStatus = [v27 intValue];

    v28 = objc_opt_class();
    v29 = NSStringFromSelector(sel_isAuthenticateButtonEnabled);
    v30 = [coderCopy decodeObjectOfClass:v28 forKey:v29];
    v5->_authenticateButtonEnabled = [v30 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  platformSSOEnabled = self->_platformSSOEnabled;
  coderCopy = coder;
  v7 = [v4 numberWithBool:platformSSOEnabled];
  v8 = NSStringFromSelector(sel_isPlatformSSOEnabled);
  [coderCopy encodeObject:v7 forKey:v8];

  loginUserName = self->_loginUserName;
  v10 = NSStringFromSelector(sel_loginUserName);
  [coderCopy encodeObject:loginUserName forKey:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_authenticationMethod];
  v12 = NSStringFromSelector(sel_authenticationMethod);
  [coderCopy encodeObject:v11 forKey:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_userRegistrationStatus];
  v14 = NSStringFromSelector(sel_userRegistrationStatus);
  [coderCopy encodeObject:v13 forKey:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_actionButtonEnabled];
  v16 = NSStringFromSelector(sel_isActionButtonEnabled);
  [coderCopy encodeObject:v15 forKey:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:self->_actionButtonAction];
  v18 = NSStringFromSelector(sel_actionButtonAction);
  [coderCopy encodeObject:v17 forKey:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:self->_userTokenStatus];
  v20 = NSStringFromSelector(sel_userTokenStatus);
  [coderCopy encodeObject:v19 forKey:v20];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_authenticateButtonEnabled];
  v21 = NSStringFromSelector(sel_isAuthenticateButtonEnabled);
  [coderCopy encodeObject:v22 forKey:v21];
}

@end