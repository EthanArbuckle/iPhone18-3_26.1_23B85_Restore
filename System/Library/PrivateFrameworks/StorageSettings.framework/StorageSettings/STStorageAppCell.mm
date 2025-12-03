@interface STStorageAppCell
+ (id)specifierForAppBundleURL:(id)l;
+ (id)specifierForAppIdentifier:(id)identifier;
+ (id)specifierForAppProxy:(id)proxy;
+ (id)specifierForChildApp:(id)app;
+ (id)specifierForStorageApp:(id)app;
- (STStorageAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation STStorageAppCell

+ (id)specifierForStorageApp:(id)app
{
  v3 = MEMORY[0x277D3FAD8];
  appCopy = app;
  v5 = [v3 preferenceSpecifierNamed:&stru_282D51E38 target:0 set:0 get:0 detail:0 cell:2 edit:0];
  [v5 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v5 setProperty:appCopy forKey:@"stStorageApp"];

  return v5;
}

+ (id)specifierForChildApp:(id)app
{
  v4 = specifierForChildApp__onceToken;
  appCopy = app;
  if (v4 != -1)
  {
    +[STStorageAppCell specifierForChildApp:];
  }

  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_282D51E38 target:self set:0 get:0 detail:specifierForChildApp___appDetailClass cell:1 edit:0];
  [v6 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  appIdentifier = [appCopy appIdentifier];
  [v6 setProperty:appIdentifier forKey:*MEMORY[0x277D3FFB8]];

  [v6 setProperty:appCopy forKey:@"stStorageApp"];

  return v6;
}

Class __41__STStorageAppCell_specifierForChildApp___block_invoke()
{
  result = NSClassFromString(&cfstr_Ststorageappde.isa);
  specifierForChildApp___appDetailClass = result;
  return result;
}

+ (id)specifierForAppIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D69950];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithBundleIdentifier:identifierCopy];

  v6 = [STStorageAppCell specifierForStorageApp:v5];

  return v6;
}

+ (id)specifierForAppBundleURL:(id)l
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithURL:l];
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = [STStorageAppCell specifierForAppIdentifier:bundleIdentifier];

  return v5;
}

+ (id)specifierForAppProxy:(id)proxy
{
  bundleIdentifier = [proxy bundleIdentifier];
  v4 = [STStorageAppCell specifierForAppIdentifier:bundleIdentifier];

  return v4;
}

- (STStorageAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v14.receiver = self;
  v14.super_class = STStorageAppCell;
  v9 = [(STStorageTableCell *)&v14 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [specifierCopy propertyForKey:@"stStorageApp"];
    name = [v10 name];
    if ([name length])
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"App:%@", name];
      [(STStorageAppCell *)v9 setAccessibilityIdentifier:v12];
    }
  }

  return v9;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v28.receiver = self;
  v28.super_class = STStorageAppCell;
  [(PSTableCell *)&v28 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"stStorageApp"];
  v6 = v5;
  if (v5)
  {
    name = [v5 name];
    [(STStorageTableCell *)self setTitle:name];

    v8 = [specifierCopy propertyForKey:@"stIcon"];
    if (v8)
    {
      [(STStorageTableCell *)self setIcon:v8];
    }

    else
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __53__STStorageAppCell_refreshCellContentsWithSpecifier___block_invoke;
      v27[3] = &unk_2782E2840;
      v27[4] = self;
      STLoadTableIconForApp(v6, v27);
    }

    lastUsedDate = [v6 lastUsedDate];
    v10 = lastUsedDate;
    if (!lastUsedDate || ([lastUsedDate timeIntervalSinceReferenceDate], v11 == 0.0))
    {
      v15 = 0;
    }

    else
    {
      v12 = MEMORY[0x277CCACA8];
      if (LastUsedFormatString_onceToken != -1)
      {
        [STStorageAppCell refreshCellContentsWithSpecifier:];
      }

      v13 = LastUsedFormatString__lastUsedFormat;
      v14 = STFormattedShortDate();
      v15 = [v12 stringWithFormat:v13, v14];
    }

    [(STStorageTableCell *)self setInfo:v15];
    -[STStorageTableCell setInfoHidden:](self, "setInfoHidden:", [v15 length] == 0);
    v16 = [specifierCopy propertyForKey:@"stCloudIconHidden"];
    v17 = v16;
    if (v16)
    {
      bOOLValue = [v16 BOOLValue];
    }

    else
    {
      bOOLValue = [v6 isDemoted] ^ 1;
    }

    [(STStorageTableCell *)self setCloudIconHidden:bOOLValue];
    appSizeIfComputed = [v6 appSizeIfComputed];
    v20 = appSizeIfComputed;
    if (appSizeIfComputed)
    {
      userTotal = [appSizeIfComputed userTotal];
      v22 = STFormattedSize();
      [(STStorageTableCell *)self setSize:userTotal];
      [(STStorageTableCell *)self setSizeString:v22];
    }

    else
    {
      v23 = STSharedConcurrentQueue();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__STStorageAppCell_refreshCellContentsWithSpecifier___block_invoke_2;
      block[3] = &unk_2782E2890;
      v25 = v6;
      selfCopy = self;
      dispatch_async(v23, block);

      v22 = v25;
    }
  }
}

void __53__STStorageAppCell_refreshCellContentsWithSpecifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appSize];
  v3 = [v2 userTotal];
  if (v3 != [*(a1 + 40) size])
  {
    if (v2)
    {
      v4 = STFormattedSize();
    }

    else
    {
      v4 = &stru_282D51E38;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__STStorageAppCell_refreshCellContentsWithSpecifier___block_invoke_3;
    block[3] = &unk_2782E2868;
    v5 = *(a1 + 40);
    v8 = v4;
    v9 = v3;
    block[4] = v5;
    v6 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __53__STStorageAppCell_refreshCellContentsWithSpecifier___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setSize:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setSizeString:v3];
}

@end