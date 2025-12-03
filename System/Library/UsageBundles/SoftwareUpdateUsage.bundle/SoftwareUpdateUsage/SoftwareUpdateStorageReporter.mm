@interface SoftwareUpdateStorageReporter
- (id)usageBundleApps;
- (void)usageBundleApp:(id)app willDisplaySpecifier:(id *)specifier;
@end

@implementation SoftwareUpdateStorageReporter

- (id)usageBundleApps
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_16B8;
  v17 = sub_16C8;
  v18 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [[SUManagerClient alloc] initWithDelegate:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_16D0;
  v9[3] = &unk_4258;
  v9[4] = self;
  v12 = &v13;
  v5 = v3;
  v10 = v5;
  v6 = v4;
  v11 = v6;
  [v6 downloadAndInstallState:v9];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (void)usageBundleApp:(id)app willDisplaySpecifier:(id *)specifier
{
  if (specifier)
  {
    [*specifier setProperty:@"com.apple.Preferences" forKey:PSLazyIconAppID];
  }
}

@end