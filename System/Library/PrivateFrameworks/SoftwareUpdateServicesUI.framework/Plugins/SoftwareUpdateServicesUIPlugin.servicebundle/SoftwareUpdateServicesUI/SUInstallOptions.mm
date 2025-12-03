@interface SUInstallOptions
- (id)initWithSUSUIInstallOptions:(id)options;
@end

@implementation SUInstallOptions

- (id)initWithSUSUIInstallOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v3 = selfCopy;
  selfCopy = 0;
  v9 = [(SUInstallOptions *)v3 init];
  selfCopy = v9;
  objc_storeStrong(&selfCopy, v9);
  if (v9)
  {
    installDark = [location[0] installDark];
    [(SUInstallOptions *)selfCopy setDarkBoot:installDark];
    automaticInstallAttempt = [location[0] automaticInstallAttempt];
    [(SUInstallOptions *)selfCopy setAutomaticInstallation:automaticInstallAttempt];
    ignorableConstraints = [location[0] ignorableConstraints];
    [(SUInstallOptions *)selfCopy setIgnorableConstraints:ignorableConstraints];
  }

  v8 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

@end