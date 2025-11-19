@interface SUSUISoftwareUpdateInstallOptions
- (SUSUISoftwareUpdateInstallOptions)init;
- (id)description;
@end

@implementation SUSUISoftwareUpdateInstallOptions

- (SUSUISoftwareUpdateInstallOptions)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = SUSUISoftwareUpdateInstallOptions;
  v6 = [(SUSUISoftwareUpdateInstallOptions *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    v6->_automaticInstallAttempt = 0;
    v6->_installDark = 0;
    v6->_rescheduleIfAuthFails = 0;
    v6->_ignorableConstraints = 0;
  }

  v3 = v6;
  objc_storeStrong(&v6, 0);
  return v3;
}

- (id)description
{
  v9 = self;
  v8[1] = a2;
  v8[0] = [BSDescriptionBuilder builderWithObject:self];
  v2 = [v8[0] appendBool:v9->_installDark withName:@"InstallDark"];
  v3 = [v8[0] appendBool:v9->_automaticInstallAttempt withName:@"AutomaticInstallAttempt"];
  v4 = [v8[0] appendBool:v9->_rescheduleIfAuthFails withName:@"RescheduleIfAuthFails"];
  v5 = [v8[0] appendUnsignedInteger:v9->_ignorableConstraints withName:@"IgnorableConstraints"];
  v7 = [v8[0] build];
  objc_storeStrong(v8, 0);

  return v7;
}

@end