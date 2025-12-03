@interface VSAppInstallMetadata
- (VSAppInstallMetadata)init;
- (VSAppInstallMetadata)initWithApplicationRecord:(id)record;
- (int64_t)installSource;
@end

@implementation VSAppInstallMetadata

- (VSAppInstallMetadata)init
{
  v3.receiver = self;
  v3.super_class = VSAppInstallMetadata;
  return [(VSAppInstallMetadata *)&v3 init];
}

- (VSAppInstallMetadata)initWithApplicationRecord:(id)record
{
  recordCopy = record;
  v12.receiver = self;
  v12.super_class = VSAppInstallMetadata;
  v5 = [(VSAppInstallMetadata *)&v12 init];
  if (v5)
  {
    v5->_beta = [recordCopy isBeta];
    iTunesMetadata = [recordCopy iTunesMetadata];
    sourceApp = [iTunesMetadata sourceApp];
    sourceApp = v5->_sourceApp;
    v5->_sourceApp = sourceApp;

    v5->_profileValidated = [recordCopy isProfileValidated];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    bundleIdentifier = [recordCopy bundleIdentifier];
    v5->_managed = [mEMORY[0x277D262A0] isAppManaged:bundleIdentifier];
  }

  return v5;
}

- (int64_t)installSource
{
  sourceApp = [(VSAppInstallMetadata *)self sourceApp];
  v4 = [sourceApp isEqualToString:@"com.apple.AppStore"];

  if (v4)
  {
    return 0;
  }

  sourceApp2 = [(VSAppInstallMetadata *)self sourceApp];
  v7 = [sourceApp2 isEqualToString:@"com.apple.Magellan"];

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