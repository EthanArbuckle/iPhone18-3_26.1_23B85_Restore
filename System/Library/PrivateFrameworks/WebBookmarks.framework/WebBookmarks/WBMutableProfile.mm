@interface WBMutableProfile
+ (id)createDefaultProfileWithTabGroups:(id)groups;
- (WBMutableProfile)initWithBookmark:(id)bookmark kind:(int64_t)kind tabGroups:(id)groups;
- (WBMutableProfile)initWithBookmark:(id)bookmark tabGroups:(id)groups;
- (WBSCRDTPosition)syncPosition;
- (void)markBackgroundImageAsModified;
- (void)mergeWithProfile:(id)profile;
- (void)setColor:(id)color;
- (void)setIdentifier:(id)identifier;
- (void)setSetting:(id)setting forKey:(id)key;
- (void)setSettingsDictionary:(id)dictionary;
- (void)setStartPageSectionsDataRepresentation:(id)representation;
- (void)setSymbolImageName:(id)name;
- (void)setSyncPosition:(id)position;
- (void)setTabGroups:(id)groups;
- (void)setTitle:(id)title;
@end

@implementation WBMutableProfile

+ (id)createDefaultProfileWithTabGroups:(id)groups
{
  groupsCopy = groups;
  v4 = [WebBookmark alloc];
  v5 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v8 = [v5 stringWithFormat:@"~DefaultProfileDeviceIdentifier-%@", uUIDString];
  v9 = [(WebBookmark *)v4 initFolderWithParentID:0 subtype:2 deviceIdentifier:v8 collectionType:1];

  v10 = *MEMORY[0x277D49BD8];
  [v9 _setUUID:*MEMORY[0x277D49BD8]];
  [v9 _setServerID:v10];
  v11 = [[WBMutableProfile alloc] initWithBookmark:v9 kind:0 tabGroups:groupsCopy];

  [(WBMutableProfile *)v11 setSyncable:1];
  defaultPersonalProfileSymbolImage = [MEMORY[0x277D499E8] defaultPersonalProfileSymbolImage];
  [(WBMutableProfile *)v11 setSymbolImageName:defaultPersonalProfileSymbolImage];

  defaultPersonalProfileColor = [MEMORY[0x277D499E8] defaultPersonalProfileColor];
  [(WBMutableProfile *)v11 setColor:defaultPersonalProfileColor];

  return v11;
}

- (WBMutableProfile)initWithBookmark:(id)bookmark tabGroups:(id)groups
{
  groupsCopy = groups;
  bookmarkCopy = bookmark;
  uUID = [bookmarkCopy UUID];
  v9 = [uUID isEqualToString:*MEMORY[0x277D49BD8]] ^ 1;

  v10 = [(WBMutableProfile *)self initWithBookmark:bookmarkCopy kind:v9 tabGroups:groupsCopy];
  return v10;
}

- (WBMutableProfile)initWithBookmark:(id)bookmark kind:(int64_t)kind tabGroups:(id)groups
{
  v27 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v9 = [(WBProfile *)self initWithBookmark:bookmark kind:kind];
  if (v9)
  {
    v10 = [groupsCopy mutableCopy];
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
          identifier = [(WBProfile *)v9 identifier];
          [v17 setProfileIdentifier:identifier];

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
  bookmark = [(WBProfile *)self bookmark];
  syncPosition = [bookmark syncPosition];

  return syncPosition;
}

- (void)setSyncPosition:(id)position
{
  positionCopy = position;
  bookmark = [(WBProfile *)self bookmark];
  [bookmark setSyncPosition:positionCopy];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  bookmark = [(WBProfile *)self bookmark];
  [bookmark setTitle:titleCopy];
}

- (void)setSymbolImageName:(id)name
{
  nameCopy = name;
  bookmark = [(WBProfile *)self bookmark];
  [bookmark setSymbolImageName:nameCopy];
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  bookmark = [(WBProfile *)self bookmark];
  [bookmark _setUUID:identifierCopy];
}

- (void)setTabGroups:(id)groups
{
  v4 = [groups mutableCopy];
  tabGroups = self->super._tabGroups;
  self->super._tabGroups = v4;

  MEMORY[0x2821F96F8](v4, tabGroups);
}

- (void)markBackgroundImageAsModified
{
  v3 = MEMORY[0x277CCABB0];
  bookmark = [(WBProfile *)self bookmark];
  backgroundImageModifiedState = [bookmark backgroundImageModifiedState];
  v5 = [v3 numberWithInt:{objc_msgSend(backgroundImageModifiedState, "BOOLValue") ^ 1}];
  bookmark2 = [(WBProfile *)self bookmark];
  [bookmark2 setBackgroundImageModifiedState:v5];
}

- (void)setStartPageSectionsDataRepresentation:(id)representation
{
  representationCopy = representation;
  bookmark = [(WBProfile *)self bookmark];
  [bookmark setStartPageSectionsDataRepresentation:representationCopy];
}

- (void)setSettingsDictionary:(id)dictionary
{
  v4 = [dictionary mutableCopy];
  settingsDictionary = self->super._settingsDictionary;
  self->super._settingsDictionary = v4;

  MEMORY[0x2821F96F8](v4, settingsDictionary);
}

- (void)setSetting:(id)setting forKey:(id)key
{
  settingCopy = setting;
  keyCopy = key;
  bookmark = [(WBProfile *)self bookmark];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__WBMutableProfile_setSetting_forKey___block_invoke;
  v11[3] = &unk_279E75D50;
  v11[4] = self;
  v12 = keyCopy;
  v13 = settingCopy;
  v9 = settingCopy;
  v10 = keyCopy;
  [bookmark performWithFieldsWriteLock:v11];
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

- (void)setColor:(id)color
{
  dataRepresentation = [color dataRepresentation];
  [(WBMutableProfile *)self setSetting:dataRepresentation forKey:*MEMORY[0x277D49CF0]];
}

- (void)mergeWithProfile:(id)profile
{
  profileCopy = profile;
  if ([profileCopy isSyncable])
  {
    bookmark = [(WBProfile *)self bookmark];
    bookmark2 = [profileCopy bookmark];
    [bookmark mergeWithBookmark:bookmark2];

    recentsStore = [profileCopy recentsStore];
    [(WBProfile *)self setRecentsStore:recentsStore];
  }
}

@end