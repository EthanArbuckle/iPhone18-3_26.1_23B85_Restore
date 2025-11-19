@interface VSAppInstallMetadata
- (VSAppInstallMetadata)init;
- (VSAppInstallMetadata)initWithApplicationRecord:(id)a3;
- (int64_t)installSource;
@end

@implementation VSAppInstallMetadata

- (VSAppInstallMetadata)init
{
  v3.receiver = self;
  v3.super_class = VSAppInstallMetadata;
  return [(VSAppInstallMetadata *)&v3 init];
}

- (VSAppInstallMetadata)initWithApplicationRecord:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VSAppInstallMetadata;
  v5 = [(VSAppInstallMetadata *)&v12 init];
  if (v5)
  {
    v5->_beta = [v4 isBeta];
    v6 = [v4 iTunesMetadata];
    v7 = [v6 sourceApp];
    sourceApp = v5->_sourceApp;
    v5->_sourceApp = v7;

    v5->_profileValidated = [v4 isProfileValidated];
    v9 = [MEMORY[0x277D262A0] sharedConnection];
    v10 = [v4 bundleIdentifier];
    v5->_managed = [v9 isAppManaged:v10];
  }

  return v5;
}

- (int64_t)installSource
{
  v3 = [(VSAppInstallMetadata *)self sourceApp];
  v4 = [v3 isEqualToString:@"com.apple.AppStore"];

  if (v4)
  {
    return 0;
  }

  v6 = [(VSAppInstallMetadata *)self sourceApp];
  v7 = [v6 isEqualToString:@"com.apple.Magellan"];

  if (v7)
  {
    return 1;
  }

  if ([(VSAppInstallMetadata *)self isBeta])
  {
    return 3;
  }

  if ([(VSAppInstallMetadata *)self isManaged])
  {
    return 2;
  }

  if ([(VSAppInstallMetadata *)self isProfileValidated])
  {
    return 4;
  }

  return 5;
}

@end