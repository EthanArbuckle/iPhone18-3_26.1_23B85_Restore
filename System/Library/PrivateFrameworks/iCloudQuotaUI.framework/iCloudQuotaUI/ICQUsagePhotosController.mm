@interface ICQUsagePhotosController
+ (id)mediaGroups;
- (id)sizeForSpecifier:(id)a3;
- (id)specifiers;
@end

@implementation ICQUsagePhotosController

+ (id)mediaGroups
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"photolibrary";
  v4[1] = @"syncedfromitunes";
  v4[2] = @"myphotostream";
  v4[3] = @"sharedphotostream";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:4];

  return v2;
}

- (id)sizeForSpecifier:(id)a3
{
  v3 = a3;
  v4 = +[ICQUsageStorageMonitor sharedMonitor];
  v5 = [v3 identifier];

  v6 = [v4 mediaCollectionForKey:v5];

  v7 = MEMORY[0x277CCA8E8];
  [v6 totalSize];
  v9 = [v7 stringFromByteCount:v8 countStyle:2];

  return v9;
}

- (id)specifiers
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v26 = *MEMORY[0x277D3FC48];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = MEMORY[0x277D3FAD8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"PHOTOS" value:&stru_28844FC60 table:@"Usage Statistics"];
    v8 = [v5 preferenceSpecifierNamed:v7 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    [v8 setProperty:@"PSUsageSizeHeader" forKey:*MEMORY[0x277D3FFA0]];
    v9 = [(ICQUsagePhotosController *)self specifier];
    v10 = [v9 propertyForKey:@"TOTAL_SIZE"];
    [v8 setProperty:v10 forKey:@"SIZE"];

    v29 = v4;
    v25 = v8;
    [v4 insertObject:v8 atIndex:0];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = self;
    obj = [objc_opt_class() mediaGroups];
    v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      v28 = *MEMORY[0x277D3FFB8];
      v27 = *MEMORY[0x277D3FE58];
      do
      {
        v14 = 0;
        do
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v32 + 1) + 8 * v14);
          v16 = +[ICQUsageStorageMonitor sharedMonitor];
          v17 = [v16 mediaCollectionForKey:v15];

          [v17 totalSize];
          if (v18 > 0.0)
          {
            v19 = MEMORY[0x277D3FAD8];
            v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v21 = [v20 localizedStringForKey:v15 value:&stru_28844FC60 table:@"Usage Statistics"];
            v22 = [v19 preferenceSpecifierNamed:v21 target:v30 set:0 get:sel_sizeForSpecifier_ detail:0 cell:4 edit:0];

            [v22 setProperty:v15 forKey:v28];
            [v22 setProperty:objc_opt_class() forKey:v27];
            [v29 addObject:v22];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v12);
    }

    v23 = *(&v30->super.super.super.super.super.super.super.isa + v26);
    *(&v30->super.super.super.super.super.super.super.isa + v26) = v29;

    v3 = *(&v30->super.super.super.super.super.super.super.isa + v26);
  }

  return v3;
}

@end