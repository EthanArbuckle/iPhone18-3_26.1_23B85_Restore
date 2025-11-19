@interface STAppOverrides
+ (id)overrides;
+ (id)overridesFor:(id)a3;
+ (id)overridesForApplication:(id)a3;
- (BOOL)excludeUsageBundle;
- (BOOL)isMediaApp;
- (STAppOverrides)initWithDictionary:(id)a3;
@end

@implementation STAppOverrides

- (STAppOverrides)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = STAppOverrides;
  v5 = [(STAppOverrides *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__STAppOverrides_initWithDictionary___block_invoke;
    v8[3] = &unk_279D1D130;
    v9 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
  }

  return v6;
}

- (BOOL)isMediaApp
{
  v2 = [(STAppOverrides *)self category];
  if (v2)
  {
    v3 = v2 == 7;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (BOOL)excludeUsageBundle
{
  v3 = [(STAppOverrides *)self includeFsPaths];
  v4 = [v3 count];
  v5 = [(STAppOverrides *)self includeMediaUsage];
  v6 = [v5 count] + v4;
  v7 = [(STAppOverrides *)self includeCacheDeleteKeys];
  v8 = v6 + [v7 count] || -[STAppOverrides includeSoftwareUpdates](self, "includeSoftwareUpdates") || -[STAppOverrides forceExcludeUsageBundle](self, "forceExcludeUsageBundle");

  return v8;
}

+ (id)overridesForApplication:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 applicationIdentifier];
  v6 = [a1 overridesFor:v5];

  if (!v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v4 counterpartIdentifiers];
    v6 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = [a1 overridesFor:*(*(&v13 + 1) + 8 * i)];
          if (v10)
          {
            v6 = v10;

            v7 = v6;
            goto LABEL_12;
          }
        }

        v6 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)overridesFor:(id)a3
{
  v4 = a3;
  v5 = [a1 overrides];
  v6 = [v5 objectForKey:v4];

  return v6;
}

+ (id)overrides
{
  if (overrides_onceToken_101 != -1)
  {
    +[STAppOverrides overrides];
  }

  v3 = _appOverrides;

  return v3;
}

void __27__STAppOverrides_overrides__block_invoke()
{
  v72[16] = *MEMORY[0x277D85DE8];
  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v71[0] = @"com.apple.MobileSMS";
  v69[0] = @"category";
  v69[1] = @"forceVisible";
  v0 = MEMORY[0x277CBEC38];
  v70[0] = &unk_287C8E668;
  v70[1] = MEMORY[0x277CBEC38];
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
  v71[1] = @"com.apple.mobileslideshow";
  v72[0] = v33;
  v67[0] = @"category";
  v67[1] = @"forceVisible";
  v68[0] = &unk_287C8E650;
  v68[1] = v0;
  v67[2] = @"includeMediaUsage";
  v68[2] = &unk_287C8E6E0;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:3];
  v72[1] = v32;
  v71[2] = @"com.apple.mobilenotes";
  v65 = @"includeFsPaths";
  v64 = @"/private/var/mobile/Library/Notes/";
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
  v66 = v31;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
  v72[2] = v30;
  v71[3] = @"com.apple.Translate";
  v62 = @"includeCacheDeleteKeys";
  v63 = &unk_287C8E6F8;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  v72[3] = v29;
  v71[4] = @"com.apple.Preferences";
  v61[0] = v0;
  v60[0] = @"forceExcludeUsageBundle";
  v60[1] = @"defaultName";
  v27 = STStorageDataLocStr(@"SOFTWARE_UPDATE");
  v60[2] = @"forceHidden";
  v61[1] = v27;
  v61[2] = v0;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:3];
  v72[4] = v26;
  v71[5] = @"com.apple.Health";
  v58 = @"includeFsPaths";
  v59 = &unk_287C8E710;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v72[5] = v25;
  v71[6] = @"com.apple.MobileAddressBook";
  v56 = @"includeFsPaths";
  v57 = &unk_287C8E728;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v72[6] = v24;
  v71[7] = @"com.apple.iBooks";
  v54[0] = @"category";
  v54[1] = @"includeMediaUsage";
  v55[0] = &unk_287C8E680;
  v55[1] = &unk_287C8E740;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
  v71[8] = @"com.apple.mobilemail";
  v72[7] = v23;
  v52[0] = @"category";
  v52[1] = @"includeCacheDeleteKeys";
  v53[0] = &unk_287C8E698;
  v53[1] = &unk_287C8E758;
  v52[2] = @"includeContainers";
  v52[3] = @"includeFsPaths";
  v53[2] = &unk_287C8E770;
  v53[3] = &unk_287C8E788;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:4];
  v72[8] = v22;
  v71[9] = @"com.apple.Music";
  v50[0] = @"category";
  v50[1] = @"usageBundleOverride";
  v51[0] = &unk_287C8E6B0;
  v51[1] = @"com.apple.MusicUsage";
  v50[2] = @"includeFsPaths";
  v49 = @"/private/var/mobile/Media/iTunes_Control/iTunes/Artwork/";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  v50[3] = @"includeMediaUsage";
  v51[2] = v21;
  v51[3] = &unk_287C8E7A0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:4];
  v72[9] = v1;
  v71[10] = @"com.apple.podcasts";
  v47[0] = @"category";
  v47[1] = @"includeMediaUsage";
  v48[0] = &unk_287C8E6B0;
  v48[1] = &unk_287C8E7B8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
  v72[10] = v2;
  v71[11] = @"com.apple.VoiceMemos";
  v45[0] = @"category";
  v45[1] = @"includeMediaUsage";
  v46[0] = &unk_287C8E6B0;
  v46[1] = &unk_287C8E7D0;
  v45[2] = @"includeFsPaths";
  v46[2] = &unk_287C8E7E8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
  v72[11] = v3;
  v71[12] = @"com.apple.tv";
  v43[0] = @"category";
  v43[1] = @"usageBundleOverride";
  v44[0] = &unk_287C8E6B0;
  v44[1] = @"com.apple.VideosUsage";
  v43[2] = @"includeMediaUsage";
  v44[2] = &unk_287C8E800;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];
  v72[12] = v4;
  v71[13] = @"com.apple.fakeapp.MiscMedia.hidden";
  v41[0] = @"category";
  v41[1] = @"includeMediaUsage";
  v42[0] = &unk_287C8E6B0;
  v42[1] = &unk_287C8E818;
  v41[2] = @"includeFsPaths";
  v40 = @"/private/var/mobile/Media/Downloads/";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v41[3] = @"forceHidden";
  v42[2] = v5;
  v6 = MEMORY[0x277CBEC38];
  v42[3] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];
  v72[13] = v7;
  v71[14] = @"com.apple.Passbook";
  v38[1] = @"forceHidden";
  v39[0] = &unk_287C8E830;
  v38[0] = @"includeFsPaths";
  v8 = STStorageDeviceIsiPad();
  v9 = MEMORY[0x277CBEC28];
  if (v8)
  {
    v9 = v6;
  }

  v39[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v72[14] = v10;
  v71[15] = @"com.apple.reminders";
  v36 = @"includeFsPaths";
  v37 = &unk_287C8E848;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v72[15] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:16];
  [v28 addEntriesFromDictionary:v12];

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __27__STAppOverrides_overrides__block_invoke_221;
  v34[3] = &unk_279D1D130;
  v14 = v13;
  v35 = v14;
  [v28 enumerateKeysAndObjectsUsingBlock:v34];
  v15 = _appOverrides;
  _appOverrides = v14;
  v16 = v14;

  v17 = [STAppOverrides alloc];
  v18 = [(STAppOverrides *)v17 initWithDictionary:MEMORY[0x277CBEC10]];
  v19 = _defaultAppOverrides;
  _defaultAppOverrides = v18;

  v20 = *MEMORY[0x277D85DE8];
}

void __27__STAppOverrides_overrides__block_invoke_221(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[STAppOverrides alloc] initWithDictionary:v5];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

@end