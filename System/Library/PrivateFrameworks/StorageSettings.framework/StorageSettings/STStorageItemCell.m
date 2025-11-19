@interface STStorageItemCell
+ (id)specifierForItemURL:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation STStorageItemCell

+ (id)specifierForItemURL:(id)a3
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = a3;
  v5 = [v3 preferenceSpecifierNamed:&stru_282D51E38 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v5 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v5 setProperty:v4 forKey:@"stItemURL"];

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v19.receiver = self;
  v19.super_class = STStorageItemCell;
  v4 = a3;
  [(PSTableCell *)&v19 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:@"stItemURL"];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CDAAD8]);
    ScreenScale();
    v8 = [v6 initWithFileAtURL:v5 size:4 scale:29.0 representationTypes:{29.0, v7}];
    v9 = [MEMORY[0x277CDAAE0] sharedGenerator];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__STStorageItemCell_refreshCellContentsWithSpecifier___block_invoke;
    v18[3] = &unk_2782E2958;
    v18[4] = self;
    [v9 generateBestRepresentationForRequest:v8 completionHandler:v18];

    v17 = 0;
    [v5 getResourceValue:&v17 forKey:*MEMORY[0x277CBE8D0] error:0];
    v10 = v17;
    if (![v10 length])
    {
      v11 = [v5 URLByDeletingPathExtension];
      v12 = [v11 lastPathComponent];

      v10 = v12;
    }

    [(STStorageTableCell *)self setTitle:v10];
    v13 = dispatch_get_global_queue(9, 0);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__STStorageItemCell_refreshCellContentsWithSpecifier___block_invoke_3;
    v14[3] = &unk_2782E2890;
    v15 = v5;
    v16 = self;
    dispatch_async(v13, v14);
  }

  else
  {
    [(STStorageTableCell *)self setIcon:0];
    [(STStorageTableCell *)self setTitle:@"<No URL specified>"];
    [(STStorageTableCell *)self setInfo:0];
    [(STStorageTableCell *)self setSize:0];
    NSLog(&cfstr_ErrorNoUrlProv.isa);
  }
}

void __54__STStorageItemCell_refreshCellContentsWithSpecifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__STStorageItemCell_refreshCellContentsWithSpecifier___block_invoke_2;
  block[3] = &unk_2782E2930;
  block[4] = *(a1 + 32);
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __54__STStorageItemCell_refreshCellContentsWithSpecifier___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    PSBlankIconImage();
  }

  else
  {
    [*(a1 + 48) UIImage];
  }
  v2 = ;
  [*(a1 + 32) setIcon:v2];
}

void __54__STStorageItemCell_refreshCellContentsWithSpecifier___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v21 = 0;
  [v2 getResourceValue:&v21 forKey:*MEMORY[0x277CBE908] error:0];
  v3 = v21;
  if (!v3)
  {
    v4 = *(a1 + 32);
    v20 = 0;
    [v4 getResourceValue:&v20 forKey:*MEMORY[0x277CBE7D0] error:0];
    v3 = v20;
  }

  v5 = *(a1 + 32);
  v19 = 0;
  [v5 getResourceValue:&v19 forKey:*MEMORY[0x277CBE7A8] error:0];
  v6 = v19;
  if (v6 || (v7 = *(a1 + 32), v18 = 0, [v7 getResourceValue:&v18 forKey:*MEMORY[0x277CBE7B0] error:0], (v6 = v18) != 0))
  {
    v8 = v6;
  }

  else
  {
    v11 = *(a1 + 32);
    v17 = 0;
    [v11 getResourceValue:&v17 forKey:*MEMORY[0x277CBE7C0] error:0];
    v8 = v17;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  [v8 timeIntervalSinceReferenceDate];
  if (v9 == 0.0)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = STFormattedShortDate();
LABEL_10:
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__STStorageItemCell_refreshCellContentsWithSpecifier___block_invoke_4;
  v14[3] = &unk_2782E2930;
  v14[4] = *(a1 + 40);
  v15 = v10;
  v16 = v3;
  v12 = v3;
  v13 = v10;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

uint64_t __54__STStorageItemCell_refreshCellContentsWithSpecifier___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setInfo:*(a1 + 40)];
  v2 = [*(a1 + 48) longLongValue];
  v3 = *(a1 + 32);

  return [v3 setSize:v2];
}

@end