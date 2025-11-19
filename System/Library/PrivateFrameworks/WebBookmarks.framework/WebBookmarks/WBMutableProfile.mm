@interface WBMutableProfile
+ (id)createDefaultProfileWithTabGroups:(id)a3;
- (WBMutableProfile)initWithBookmark:(id)a3 kind:(int64_t)a4 tabGroups:(id)a5;
- (WBMutableProfile)initWithBookmark:(id)a3 tabGroups:(id)a4;
- (WBSCRDTPosition)syncPosition;
- (void)markBackgroundImageAsModified;
- (void)mergeWithProfile:(id)a3;
- (void)setColor:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setSetting:(id)a3 forKey:(id)a4;
- (void)setSettingsDictionary:(id)a3;
- (void)setStartPageSectionsDataRepresentation:(id)a3;
- (void)setSymbolImageName:(id)a3;
- (void)setSyncPosition:(id)a3;
- (void)setTabGroups:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation WBMutableProfile

+ (id)createDefaultProfileWithTabGroups:(id)a3
{
  v3 = a3;
  v4 = [WebBookmark alloc];
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];
  v8 = [v5 stringWithFormat:@"~DefaultProfileDeviceIdentifier-%@", v7];
  v9 = [(WebBookmark *)v4 initFolderWithParentID:0 subtype:2 deviceIdentifier:v8 collectionType:1];

  v10 = *MEMORY[0x277D49BD8];
  [v9 _setUUID:*MEMORY[0x277D49BD8]];
  [v9 _setServerID:v10];
  v11 = [[WBMutableProfile alloc] initWithBookmark:v9 kind:0 tabGroups:v3];

  [(WBMutableProfile *)v11 setSyncable:1];
  v12 = [MEMORY[0x277D499E8] defaultPersonalProfileSymbolImage];
  [(WBMutableProfile *)v11 setSymbolImageName:v12];

  v13 = [MEMORY[0x277D499E8] defaultPersonalProfileColor];
  [(WBMutableProfile *)v11 setColor:v13];

  return v11;
}

- (WBMutableProfile)initWithBookmark:(id)a3 tabGroups:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 UUID];
  v9 = [v8 isEqualToString:*MEMORY[0x277D49BD8]] ^ 1;

  v10 = [(WBMutableProfile *)self initWithBookmark:v7 kind:v9 tabGroups:v6];
  return v10;
}

- (WBMutableProfile)initWithBookmark:(id)a3 kind:(int64_t)a4 tabGroups:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(WBProfile *)self initWithBookmark:a3 kind:a4];
  if (v9)
  {
    v10 = [v8 mutableCopy];
    tabGroups = v9->super._tabGroups;
    v9->super._tabGroups = v10;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v9->super._tabGroups;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * v16);
          v18 = [(WBProfile *)v9 identifier];
          [v17 setProfileIdentifier:v18];

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    v19 = v9;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

- (WBSCRDTPosition)syncPosition
{
  v2 = [(WBProfile *)self bookmark];
  v3 = [v2 syncPosition];

  return v3;
}

- (void)setSyncPosition:(id)a3
{
  v4 = a3;
  v5 = [(WBProfile *)self bookmark];
  [v5 setSyncPosition:v4];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(WBProfile *)self bookmark];
  [v5 setTitle:v4];
}

- (void)setSymbolImageName:(id)a3
{
  v4 = a3;
  v5 = [(WBProfile *)self bookmark];
  [v5 setSymbolImageName:v4];
}

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WBProfile *)self bookmark];
  [v5 _setUUID:v4];
}

- (void)setTabGroups:(id)a3
{
  v4 = [a3 mutableCopy];
  tabGroups = self->super._tabGroups;
  self->super._tabGroups = v4;

  MEMORY[0x2821F96F8](v4, tabGroups);
}

- (void)markBackgroundImageAsModified
{
  v3 = MEMORY[0x277CCABB0];
  v7 = [(WBProfile *)self bookmark];
  v4 = [v7 backgroundImageModifiedState];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "BOOLValue") ^ 1}];
  v6 = [(WBProfile *)self bookmark];
  [v6 setBackgroundImageModifiedState:v5];
}

- (void)setStartPageSectionsDataRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(WBProfile *)self bookmark];
  [v5 setStartPageSectionsDataRepresentation:v4];
}

- (void)setSettingsDictionary:(id)a3
{
  v4 = [a3 mutableCopy];
  settingsDictionary = self->super._settingsDictionary;
  self->super._settingsDictionary = v4;

  MEMORY[0x2821F96F8](v4, settingsDictionary);
}

- (void)setSetting:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBProfile *)self bookmark];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__WBMutableProfile_setSetting_forKey___block_invoke;
  v11[3] = &unk_279E75D50;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [v8 performWithFieldsWriteLock:v11];
}

void __38__WBMutableProfile_setSetting_forKey___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v18 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v18 value];
  v7 = [v6 isEqual:*(a1 + 48)];

  if ((v7 & 1) == 0)
  {
    v8 = v18;
    if (!v18)
    {
      v9 = objc_alloc(MEMORY[0x277D49E70]);
      v10 = *(a1 + 48);
      v11 = objc_alloc(MEMORY[0x277D49E78]);
      v12 = [*(a1 + 32) bookmark];
      v13 = [v12 deviceIdentifier];
      v14 = [v11 initWithDeviceIdentifier:v13 generation:1];
      v15 = [*(a1 + 32) bookmark];
      v16 = [v15 deviceIdentifier];
      v19 = [v9 initWithValue:v10 generation:v14 deviceIdentifier:v16];

      [*(*(a1 + 32) + 24) setObject:v19 forKeyedSubscript:*(a1 + 40)];
      v8 = v19;
    }

    v18 = v8;
    [v8 setValue:*(a1 + 48)];
    [v18 incrementGenerationIfNeeded];
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"modified"];
    v17 = [*(a1 + 32) bookmark];
    [v17 markAttributesAsModified:0x100000];
  }
}

- (void)setColor:(id)a3
{
  v4 = [a3 dataRepresentation];
  [(WBMutableProfile *)self setSetting:v4 forKey:*MEMORY[0x277D49CF0]];
}

- (void)mergeWithProfile:(id)a3
{
  v7 = a3;
  if ([v7 isSyncable])
  {
    v4 = [(WBProfile *)self bookmark];
    v5 = [v7 bookmark];
    [v4 mergeWithBookmark:v5];

    v6 = [v7 recentsStore];
    [(WBProfile *)self setRecentsStore:v6];
  }
}

@end