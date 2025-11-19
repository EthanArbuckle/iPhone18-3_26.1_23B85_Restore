@interface STStorageAppCell
+ (id)specifierForAppBundleURL:(id)a3;
+ (id)specifierForAppIdentifier:(id)a3;
+ (id)specifierForAppProxy:(id)a3;
+ (id)specifierForChildApp:(id)a3;
+ (id)specifierForStorageApp:(id)a3;
- (STStorageAppCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation STStorageAppCell

+ (id)specifierForStorageApp:(id)a3
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = a3;
  v5 = [v3 preferenceSpecifierNamed:&stru_282D51E38 target:0 set:0 get:0 detail:0 cell:2 edit:0];
  [v5 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v5 setProperty:v4 forKey:@"stStorageApp"];

  return v5;
}

+ (id)specifierForChildApp:(id)a3
{
  v4 = specifierForChildApp__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    +[STStorageAppCell specifierForChildApp:];
  }

  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_282D51E38 target:a1 set:0 get:0 detail:specifierForChildApp___appDetailClass cell:1 edit:0];
  [v6 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v7 = [v5 appIdentifier];
  [v6 setProperty:v7 forKey:*MEMORY[0x277D3FFB8]];

  [v6 setProperty:v5 forKey:@"stStorageApp"];

  return v6;
}

Class __41__STStorageAppCell_specifierForChildApp___block_invoke()
{
  result = NSClassFromString(&cfstr_Ststorageappde.isa);
  specifierForChildApp___appDetailClass = result;
  return result;
}

+ (id)specifierForAppIdentifier:(id)a3
{
  v3 = MEMORY[0x277D69950];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4];

  v6 = [STStorageAppCell specifierForStorageApp:v5];

  return v6;
}

+ (id)specifierForAppBundleURL:(id)a3
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithURL:a3];
  v4 = [v3 bundleIdentifier];
  v5 = [STStorageAppCell specifierForAppIdentifier:v4];

  return v5;
}

+ (id)specifierForAppProxy:(id)a3
{
  v3 = [a3 bundleIdentifier];
  v4 = [STStorageAppCell specifierForAppIdentifier:v3];

  return v4;
}

- (STStorageAppCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = STStorageAppCell;
  v9 = [(STStorageTableCell *)&v14 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = [v8 propertyForKey:@"stStorageApp"];
    v11 = [v10 name];
    if ([v11 length])
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"App:%@", v11];
      [(STStorageAppCell *)v9 setAccessibilityIdentifier:v12];
    }
  }

  return v9;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = STStorageAppCell;
  [(PSTableCell *)&v28 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:@"stStorageApp"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 name];
    [(STStorageTableCell *)self setTitle:v7];

    v8 = [v4 propertyForKey:@"stIcon"];
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

    v9 = [v6 lastUsedDate];
    v10 = v9;
    if (!v9 || ([v9 timeIntervalSinceReferenceDate], v11 == 0.0))
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
    v16 = [v4 propertyForKey:@"stCloudIconHidden"];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 BOOLValue];
    }

    else
    {
      v18 = [v6 isDemoted] ^ 1;
    }

    [(STStorageTableCell *)self setCloudIconHidden:v18];
    v19 = [v6 appSizeIfComputed];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 userTotal];
      v22 = STFormattedSize();
      [(STStorageTableCell *)self setSize:v21];
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
      v26 = self;
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