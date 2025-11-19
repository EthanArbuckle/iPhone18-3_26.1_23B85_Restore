@interface PUILocationServicesClipsListController
+ (int)clipsLocationUsage;
- (id)specifiers;
@end

@implementation PUILocationServicesClipsListController

+ (int)clipsLocationUsage
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(PUILocationServicesClipsListController);
  [(PUILocationServicesClipsListController *)v2 specifiers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) identifier];
        v10 = [(PUILocationServicesListController *)v2 locationUsageForEntity:v9];

        if (v10 == 4)
        {
          v6 = 4;
        }

        else
        {
          if (v10 == 3)
          {
            v6 = 3;
            goto LABEL_20;
          }

          if (v6 != 4 && v10 == 2)
          {
            v6 = 2;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_20:

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)specifiers
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CONFIRM_LOCATION_GROUP"];
    v7 = PUI_LocalizedStringForDimSum(@"CONFIRM_LOCATION_FOOTER");
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [v5 addObject:v6];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v8 = getCLCopyAppsUsingLocationSymbolLoc_ptr;
    v24 = getCLCopyAppsUsingLocationSymbolLoc_ptr;
    if (!getCLCopyAppsUsingLocationSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v26 = __getCLCopyAppsUsingLocationSymbolLoc_block_invoke;
      v27 = &unk_279BA0D08;
      v28 = &v21;
      __getCLCopyAppsUsingLocationSymbolLoc_block_invoke(&buf);
      v8 = v22[3];
    }

    _Block_object_dispose(&v21, 8);
    if (!v8)
    {
      [PUILockdownModeController getEligibleDevicesWithCompletion:];
      __break(1u);
    }

    v9 = v8();
    v10 = _PUILoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_2657FE000, v10, OS_LOG_TYPE_DEFAULT, "specifiers -- CLCopyAppsUsingLocation:\n%@", &buf, 0xCu);
    }

    locationEntitiesDetails = self->super._locationEntitiesDetails;
    self->super._locationEntitiesDetails = v9;
    v12 = v9;

    v13 = MEMORY[0x277D3FAD8];
    v14 = PUI_LocalizedStringForDimSum(@"CONFIRM_LOCATION");
    v15 = [v13 preferenceSpecifierNamed:v14 target:self set:sel_setEntityAuthorized_specifier_ get:sel_isEntityAuthorized_ detail:0 cell:6 edit:0];

    [v15 setProperty:@"/System/Library/LocationBundles/ClipServicesLocation.bundle" forKey:*MEMORY[0x277D3FFB8]];
    v16 = [(PUILocationServicesListController *)self isEntityAuthorized:v15];
    [v15 setProperty:v16 forKey:*MEMORY[0x277D3FEF0]];

    [v5 addObject:v15];
    v17 = [(PUILocationServicesListController *)self locationDetailSpecifiersWithDetailsMatching:&__block_literal_global_9];
    [v5 addObjectsFromArray:v17];

    v18 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    [(PUILocationServicesListController *)self updateSpecifiersForImposedSettingsWithReload:0];
    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

BOOL __52__PUILocationServicesClipsListController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"BundleId"];
  v3 = PUIIsAppClip(v2);

  return v3;
}

@end