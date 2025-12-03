@interface SUSettingsScanOptions
- (SUSettingsScanOptions)init;
- (SUSettingsScanOptions)initWithScanOptions:(id)options;
@end

@implementation SUSettingsScanOptions

- (SUSettingsScanOptions)init
{
  v4 = 0;
  v4 = [(SUSettingsScanOptions *)self initWithScanOptions:?];
  v3 = MEMORY[0x277D82BE0](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (SUSettingsScanOptions)initWithScanOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = SUSettingsScanOptions;
  v8 = [(SUSettingsScanOptions *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    if (!location[0])
    {
      v4 = objc_alloc_init(MEMORY[0x277D648F8]);
      v5 = location[0];
      location[0] = v4;
      MEMORY[0x277D82BD8](v5);
      [location[0] setForced:1];
      [location[0] setIdentifier:@"com.apple.Preferences.software_update"];
    }

    [(SUSettingsScanOptions *)selfCopy setScanOptions:location[0]];
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

@end