@interface SNLPSSUApplicationInfo
+ (id)applicationInfoWithBundleIdentifier:(id)a3 assetURL:(id)a4 forLocale:(id)a5 error:(id *)a6;
- (SNLPSSUApplicationInfo)initWithBundleIdentifier:(id)a3 assetURL:(id)a4 forLocale:(id)a5;
- (id)description;
@end

@implementation SNLPSSUApplicationInfo

- (SNLPSSUApplicationInfo)initWithBundleIdentifier:(id)a3 assetURL:(id)a4 forLocale:(id)a5
{
  v8 = a4;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = SNLPSSUApplicationInfo;
  v10 = a3;
  v11 = [(SNLPSSUApplicationInfo *)&v18 init];
  v12 = [v10 copy];

  bundleIdentifier = v11->_bundleIdentifier;
  v11->_bundleIdentifier = v12;

  assetURL = v11->_assetURL;
  v11->_assetURL = v8;
  v15 = v8;

  locale = v11->_locale;
  v11->_locale = v9;

  return v11;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  bundleIdentifier = self->_bundleIdentifier;
  v4 = [(NSURL *)self->_assetURL path];
  v5 = [v2 stringWithFormat:@"[SNLPSSUApplicationInfo bundleIdentifier='%@' assetURL='%@']", bundleIdentifier, v4];

  return v5;
}

+ (id)applicationInfoWithBundleIdentifier:(id)a3 assetURL:(id)a4 forLocale:(id)a5 error:(id *)a6
{
  v17[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 isFileURL])
  {
    a6 = [[SNLPSSUApplicationInfo alloc] initWithBundleIdentifier:v9 assetURL:v10 forLocale:v11];
  }

  else if (a6)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"The given asset directory is not a file URL: %@.", v10, *MEMORY[0x277CCA450], *MEMORY[0x277CCA470], @"Could not build an SNLPSSUApplicationInfo object"];
    v17[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:2];

    *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SNLPSSUErrorDomain" code:1 userInfo:v13];

    a6 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return a6;
}

@end