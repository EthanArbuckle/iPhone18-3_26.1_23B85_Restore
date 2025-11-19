@interface TPSSubscriptionListController
- (id)specifiers;
@end

@implementation TPSSubscriptionListController

- (id)specifiers
{
  v2 = self;
  v33 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(TPSListController *)v2 subscriptions];
    if ([v5 count])
    {
      v23 = v3;
      v27 = v2;
      v6 = [(TPSSubscriptionListController *)v2 specifier];
      v7 = [v6 propertyForKey:@"TPSSpecifierSubscriptionDetailControllerKey"];

      v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = v5;
      v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v8)
      {
        v9 = v8;
        v25 = *v29;
        v10 = *MEMORY[0x277D40128];
        v11 = *MEMORY[0x277D3FE58];
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v29 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v28 + 1) + 8 * i);
            v14 = MEMORY[0x277D3FAD8];
            v15 = [v13 tps_localizedLabel];
            v16 = [v14 preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:v7 cell:2 edit:0];

            [v16 setProperty:v13 forKey:v10];
            v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_282D54710 target:v27 set:0 get:0 detail:v7 cell:2 edit:0];

            [v17 setProperty:v13 forKey:v10];
            [v17 setProperty:objc_opt_class() forKey:v11];
            v18 = [v13 userDefaultVoice];
            LODWORD(v16) = [v18 BOOLValue];

            if (v16)
            {
              [v26 insertObject:v17 atIndex:0];
            }

            else
            {
              [v26 addObject:v17];
            }
          }

          v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v9);
      }

      v19 = [v26 copy];
      v2 = v27;
      v3 = v23;
      v20 = *(&v27->super.super.super.super.super.super.isa + v23);
      *(&v27->super.super.super.super.super.super.isa + v23) = v19;
    }

    v4 = *(&v2->super.super.super.super.super.super.isa + v3);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

@end