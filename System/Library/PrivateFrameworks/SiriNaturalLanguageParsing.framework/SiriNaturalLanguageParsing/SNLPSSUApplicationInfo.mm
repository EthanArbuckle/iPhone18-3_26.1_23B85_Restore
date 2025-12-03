@interface SNLPSSUApplicationInfo
+ (id)applicationInfoWithBundleIdentifier:(id)identifier assetURL:(id)l forLocale:(id)locale error:(id *)error;
- (SNLPSSUApplicationInfo)initWithBundleIdentifier:(id)identifier assetURL:(id)l forLocale:(id)locale;
- (id)description;
@end

@implementation SNLPSSUApplicationInfo

- (SNLPSSUApplicationInfo)initWithBundleIdentifier:(id)identifier assetURL:(id)l forLocale:(id)locale
{
  lCopy = l;
  localeCopy = locale;
  v18.receiver = self;
  v18.super_class = SNLPSSUApplicationInfo;
  identifierCopy = identifier;
  v11 = [(SNLPSSUApplicationInfo *)&v18 init];
  v12 = [identifierCopy copy];

  bundleIdentifier = v11->_bundleIdentifier;
  v11->_bundleIdentifier = v12;

  assetURL = v11->_assetURL;
  v11->_assetURL = lCopy;
  v15 = lCopy;

  locale = v11->_locale;
  v11->_locale = localeCopy;

  return v11;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  bundleIdentifier = self->_bundleIdentifier;
  path = [(NSURL *)self->_assetURL path];
  v5 = [v2 stringWithFormat:@"[SNLPSSUApplicationInfo bundleIdentifier='%@' assetURL='%@']", bundleIdentifier, path];

  return v5;
}

+ (id)applicationInfoWithBundleIdentifier:(id)identifier assetURL:(id)l forLocale:(id)locale error:(id *)error
{
  v17[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  lCopy = l;
  localeCopy = locale;
  if ([lCopy isFileURL])
  {
    error = [[SNLPSSUApplicationInfo alloc] initWithBundleIdentifier:identifierCopy assetURL:lCopy forLocale:localeCopy];
  }

  else if (error)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"The given asset directory is not a file URL: %@.", lCopy, *MEMORY[0x277CCA450], *MEMORY[0x277CCA470], @"Could not build an SNLPSSUApplicationInfo object"];
    v17[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:2];

    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"SNLPSSUErrorDomain" code:1 userInfo:v13];

    error = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return error;
}

@end