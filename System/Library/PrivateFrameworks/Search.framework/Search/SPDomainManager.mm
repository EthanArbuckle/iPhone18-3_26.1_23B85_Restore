@interface SPDomainManager
+ (void)initialize;
- (void)_removeAllDomainsForDisplayIdentifier:(id)identifier;
- (void)registerApplication:(id)application withCategories:(id)categories;
@end

@implementation SPDomainManager

- (void)_removeAllDomainsForDisplayIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:MEMORY[0x1E695E0F0]];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4 - 1;
    do
    {
      v6 = [v3 objectAtIndex:v5];
      v7 = [v6 objectForKey:@"SPDisplayIdentifier"];
      v8 = [v7 isEqualToString:identifierCopy];

      if (v8)
      {
        [v3 removeObjectAtIndex:v5];
      }

      --v5;
    }

    while (v5 != -1);
  }
}

- (void)registerApplication:(id)application withCategories:(id)categories
{
  v28 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  categoriesCopy = categories;
  selfCopy = self;
  [(SPDomainManager *)self _removeAllDomainsForDisplayIdentifier:applicationCopy];
  v8 = [MEMORY[0x1E695DF70] arrayWithArray:MEMORY[0x1E695E0F0]];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = categoriesCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{applicationCopy, @"SPDisplayIdentifier", *(*(&v19 + 1) + 8 * v13), @"SPCategory", 0}];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v11);
  }

  v15 = SPLogForSPLogCategoryDefault();
  v16 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v15, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 138412546;
    v24 = v9;
    v25 = 2112;
    v26 = applicationCopy;
    _os_log_impl(&dword_1C81BF000, v15, ((v16 & 1) == 0), "Installed application domains %@ for %@", buf, 0x16u);
  }

  [(SPDomainManager *)selfCopy notifyIndexer];
  v17 = *MEMORY[0x1E69E9840];
}

+ (void)initialize
{
  v11[26] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    v3 = objc_alloc_init(SPDomainManager);
    v4 = __defaultManager;
    __defaultManager = v3;

    v10[0] = &unk_1F47DBEE8;
    v10[1] = &unk_1F47DBF60;
    v11[0] = @"com.apple.other";
    v11[1] = @"com.apple.MobileAddressBook";
    v10[2] = &unk_1F47DBF00;
    v10[3] = &unk_1F47DBF18;
    v11[2] = @"com.apple.mobilemail";
    v11[3] = @"com.apple.application";
    v10[4] = &unk_1F47DBFC0;
    v10[5] = &unk_1F47DBF30;
    v11[4] = @"com.apple.mobilenotes";
    v11[5] = @"com.apple.Music";
    v10[6] = &unk_1F47DBF78;
    v10[7] = &unk_1F47DBFF0;
    v11[6] = @"com.apple.podcasts";
    v11[7] = @"com.apple.videos";
    v10[8] = &unk_1F47DBF48;
    v10[9] = &unk_1F47DBF90;
    v11[8] = @"com.apple.ibooks";
    v11[9] = @"com.apple.mobilecal";
    v10[10] = &unk_1F47DBFA8;
    v10[11] = &unk_1F47DC008;
    v11[10] = @"com.apple.bookmarks";
    v11[11] = @"com.apple.VoiceMemos";
    v10[12] = &unk_1F47DC020;
    v10[13] = &unk_1F47DC038;
    v11[12] = @"com.apple.reminders";
    v11[13] = @"com.apple.document";
    v10[14] = &unk_1F47DC050;
    v10[15] = &unk_1F47DBED0;
    v11[14] = @"com.apple.clouddocument";
    v11[15] = @"com.apple.parsec";
    v10[16] = &unk_1F47DBFD8;
    v10[17] = &unk_1F47DC068;
    v11[16] = @"com.apple.websearch";
    v11[17] = @"com.apple.Preferences";
    v10[18] = &unk_1F47DC080;
    v10[19] = &unk_1F47DBEB8;
    v11[18] = @"com.apple.psuedocontact";
    v11[19] = @"com.apple.corespotlight";
    v10[20] = &unk_1F47DC098;
    v10[21] = &unk_1F47DC0B0;
    v11[20] = @"com.apple.Maps";
    v11[21] = @"com.apple.calculation";
    v10[22] = &unk_1F47DC0C8;
    v10[23] = &unk_1F47DC0E0;
    v11[22] = @"com.apple.conversions";
    v11[23] = @"com.apple.mobilesafari";
    v10[24] = &unk_1F47DC0F8;
    v10[25] = &unk_1F47DBEB8;
    v11[24] = @"com.apple.MobileSMS";
    v11[25] = @"com.apple.zkws";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:26];
    v6 = __SPNativeSearchDomainToBundleIdMapping;
    __SPNativeSearchDomainToBundleIdMapping = v5;

    v7 = SPGetDisabledDomainSet();
    __siriSuggestionsEnabled = [v7 containsObject:@"DOMAIN_ZKWS"] ^ 1;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _userPrefsChanged, @"com.apple.spotlightui.prefschanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end