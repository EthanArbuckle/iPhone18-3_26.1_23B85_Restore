@interface RemovableSoftwareLookupTable
+ (BOOL)isRestrictedAppBundleIdentifier:(id)a3;
+ (id)_fallbackItemIdentifier:(id)a3;
+ (id)_urlForBundleIdentifier:(id)a3;
- (NSDictionary)bundleDictionary;
- (RemovableSoftwareLookupTable)init;
- (id)_identifierForBundleIdentifier:(id)a3;
- (void)_invalidateLookupCache:(id)a3;
- (void)_populateBundleDictionary;
- (void)dealloc;
@end

@implementation RemovableSoftwareLookupTable

- (RemovableSoftwareLookupTable)init
{
  v7.receiver = self;
  v7.super_class = RemovableSoftwareLookupTable;
  v2 = [(RemovableSoftwareLookupTable *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__invalidateLookupCache_ name:@"ISURLBagDidLoadNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RemovableSoftwareLookupTable;
  [(RemovableSoftwareLookupTable *)&v4 dealloc];
}

- (NSDictionary)bundleDictionary
{
  [(NSLock *)self->_lock lock];
  bundleDictionary = self->_bundleDictionary;
  if (!bundleDictionary)
  {
    [(RemovableSoftwareLookupTable *)self _populateBundleDictionary];
    bundleDictionary = self->_bundleDictionary;
  }

  v4 = [(NSDictionary *)bundleDictionary copy];
  [(NSLock *)self->_lock unlock];

  return v4;
}

+ (BOOL)isRestrictedAppBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 isRestricted];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_invalidateLookupCache:(id)a3
{
  [(NSLock *)self->_lock lock];
  bundleDictionary = self->_bundleDictionary;
  self->_bundleDictionary = 0;

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)_populateBundleDictionary
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = [MEMORY[0x277CBEB38] dictionary];
  v3 = +[ISURLBagCache sharedCache];
  v4 = [MEMORY[0x277D69C90] contextWithBagType:0];
  v5 = [v3 URLBagForContext:v4];

  v6 = [v5 valueForKey:@"hideableSystemApps"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v5;
    v23 = self;
    v21 = v6;
    v7 = v6;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        v11 = 0;
        do
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v14 = [v13 objectForKey:@"id"];
            v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "integerValue")}];
            v16 = [v13 objectForKey:@"bundle-id"];

            if (v16)
            {
              v17 = v15 == 0;
            }

            else
            {
              v17 = 1;
            }

            if (!v17)
            {
              [v24 setObject:v15 forKey:v16];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    v5 = v22;
    self = v23;
    v6 = v21;
  }

  v18 = [v24 copy];
  bundleDictionary = self->_bundleDictionary;
  self->_bundleDictionary = v18;

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_identifierForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RemovableSoftwareLookupTable *)self bundleDictionary];
    v6 = [v5 objectForKey:v4];

    if (!v6)
    {
      v6 = [RemovableSoftwareLookupTable _fallbackItemIdentifier:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_fallbackItemIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.calculator"])
  {
    v4 = &unk_2884CA698;
  }

  else if ([v3 isEqualToString:@"com.apple.mobilecal"])
  {
    v4 = &unk_2884CA6B0;
  }

  else if ([v3 isEqualToString:@"com.apple.compass"])
  {
    v4 = &unk_2884CA6C8;
  }

  else if ([v3 isEqualToString:@"com.apple.facetime"])
  {
    v4 = &unk_2884CA6E0;
  }

  else if ([v3 isEqualToString:@"com.apple.mobileme.fmf1"])
  {
    v4 = &unk_2884CA6F8;
  }

  else if ([v3 isEqualToString:@"com.apple.mobileme.fmip1"])
  {
    v4 = &unk_2884CA710;
  }

  else if ([v3 isEqualToString:@"com.apple.Home"])
  {
    v4 = &unk_2884CA728;
  }

  else if ([v3 isEqualToString:@"com.apple.iBooks"])
  {
    v4 = &unk_2884CA740;
  }

  else if ([v3 isEqualToString:@"com.apple.iCloudDriveApp"])
  {
    v4 = &unk_2884CA758;
  }

  else if ([v3 isEqualToString:@"com.apple.MobileStore"])
  {
    v4 = &unk_2884CA770;
  }

  else if ([v3 isEqualToString:@"com.apple.mobilemail"])
  {
    v4 = &unk_2884CA788;
  }

  else if ([v3 isEqualToString:@"com.apple.Maps"])
  {
    v4 = &unk_2884CA7A0;
  }

  else if ([v3 isEqualToString:@"com.apple.Music"])
  {
    v4 = &unk_2884CA7B8;
  }

  else if ([v3 isEqualToString:@"com.apple.mobilenotes"])
  {
    v4 = &unk_2884CA7D0;
  }

  else if ([v3 isEqualToString:@"com.apple.MobileAddressBook"])
  {
    v4 = &unk_2884CA7E8;
  }

  else if ([v3 isEqualToString:@"com.apple.podcasts"])
  {
    v4 = &unk_2884CA800;
  }

  else if ([v3 isEqualToString:@"com.apple.reminders"])
  {
    v4 = &unk_2884CA818;
  }

  else if ([v3 isEqualToString:@"com.apple.stocks"])
  {
    v4 = &unk_2884CA830;
  }

  else if ([v3 isEqualToString:@"com.apple.tips"])
  {
    v4 = &unk_2884CA848;
  }

  else if ([v3 isEqualToString:@"com.apple.videos"])
  {
    v4 = &unk_2884CA860;
  }

  else if ([v3 isEqualToString:@"com.apple.VoiceMemos"])
  {
    v4 = &unk_2884CA878;
  }

  else if ([v3 isEqualToString:@"com.apple.Bridge"])
  {
    v4 = &unk_2884CA890;
  }

  else if ([v3 isEqualToString:@"com.apple.weather"])
  {
    v4 = &unk_2884CA8A8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_urlForBundleIdentifier:(id)a3
{
  v3 = [a1 _fallbackItemIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v4 setScheme:@"https"];
    [v4 setHost:@"itunes.apple.com"];
    [v4 setPath:@"/WebObjects/MZStore.woa/wa/viewSoftware"];
    v5 = MEMORY[0x277CCACA8];
    v6 = [v3 stringValue];
    v7 = [v5 stringWithFormat:@"id=%@&mt=8", v6];
    [v4 setQuery:v7];

    v8 = [v4 URL];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end