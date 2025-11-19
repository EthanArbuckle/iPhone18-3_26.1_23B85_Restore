@interface WBWindowState
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWindowState:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)profilesToActiveTabGroups;
- (NSDictionary)tabGroupsToActiveTabs;
- (NSSet)unnamedTabGroupUUIDs;
- (NSString)description;
- (WBWindowState)initWithCoder:(id)a3;
- (WBWindowState)initWithDictionaryRepresentation:(id)a3;
- (WBWindowState)initWithDictionaryRepresentation:(id)a3 localTabGroup:(id)a4 privateTabGroup:(id)a5;
- (WBWindowState)initWithUUID:(id)a3 activeTabGroupUUID:(id)a4 localTabGroup:(id)a5 privateTabGroup:(id)a6 sceneID:(id)a7 windowID:(int)a8;
- (WBWindowState)initWithUUID:(id)a3 sceneID:(id)a4;
- (id)copyForRecovery;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localOrUnnamedTabGroupForRestoration:(BOOL)a3 inProfileWithIdentifier:(id)a4 deviceIdentifier:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBWindowState

- (NSSet)unnamedTabGroupUUIDs
{
  v2 = [(NSMutableSet *)self->_unnamedTabGroupUUIDs copy];

  return v2;
}

- (WBWindowState)initWithUUID:(id)a3 sceneID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[WBMutableTabGroup localTabGroup];
  v9 = +[WBMutableTabGroup privateTabGroup];
  v10 = [v8 uuid];
  v11 = [(WBWindowState *)self initWithUUID:v7 activeTabGroupUUID:v10 localTabGroup:v8 privateTabGroup:v9 sceneID:v6 windowID:0];

  return v11;
}

- (WBWindowState)initWithUUID:(id)a3 activeTabGroupUUID:(id)a4 localTabGroup:(id)a5 privateTabGroup:(id)a6 sceneID:(id)a7 windowID:(int)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v35.receiver = self;
  v35.super_class = WBWindowState;
  v19 = [(WBWindowState *)&v35 init];
  if (v19)
  {
    v20 = [v15 copy];
    activeTabGroupUUID = v19->_activeTabGroupUUID;
    v19->_activeTabGroupUUID = v20;

    extraAttributes = v19->_extraAttributes;
    v19->_extraAttributes = MEMORY[0x277CBEC10];

    v19->_identifier = a8;
    objc_storeStrong(&v19->_localTabGroup, a5);
    objc_storeStrong(&v19->_privateTabGroup, a6);
    v23 = [MEMORY[0x277CBEB38] dictionary];
    profilesToActiveTabGroups = v19->_profilesToActiveTabGroups;
    v19->_profilesToActiveTabGroups = v23;

    v25 = [v18 copy];
    sceneID = v19->_sceneID;
    v19->_sceneID = v25;

    v27 = [MEMORY[0x277CBEB38] dictionary];
    tabGroupsToActiveTabs = v19->_tabGroupsToActiveTabs;
    v19->_tabGroupsToActiveTabs = v27;

    v29 = [MEMORY[0x277CBEB58] set];
    unnamedTabGroupUUIDs = v19->_unnamedTabGroupUUIDs;
    v19->_unnamedTabGroupUUIDs = v29;

    v31 = [v14 copy];
    uuid = v19->_uuid;
    v19->_uuid = v31;

    v33 = v19;
  }

  return v19;
}

- (WBWindowState)initWithDictionaryRepresentation:(id)a3 localTabGroup:(id)a4 privateTabGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 safari_stringForKey:*MEMORY[0x277D4A5D8]];
  v12 = [v8 safari_stringForKey:*MEMORY[0x277D4A670]];
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = +[WBMutableTabGroup localTabGroup];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v10 = +[WBMutableTabGroup privateTabGroup];
LABEL_3:
  v13 = [(WBWindowState *)self initWithUUID:v11 activeTabGroupUUID:v12 localTabGroup:v9 privateTabGroup:v10 sceneID:0 windowID:0];
  if (v13)
  {
    v14 = *MEMORY[0x277D4A6B0];
    v15 = [v8 objectForKeyedSubscript:*MEMORY[0x277D4A6B0]];
    v16 = [v15 copy];
    windowRestorationArchiveData = v13->_windowRestorationArchiveData;
    v13->_windowRestorationArchiveData = v16;

    if (v13->_windowRestorationArchiveData)
    {
      v18 = [v8 mutableCopy];
      [v18 setObject:0 forKeyedSubscript:v14];
      v19 = [v18 copy];

      v8 = v19;
    }

    v20 = [v8 copy];
    extraAttributes = v13->_extraAttributes;
    v13->_extraAttributes = v20;

    v22 = [v8 safari_dictionaryForKey:*MEMORY[0x277D4A6C0]];
    v23 = [v22 mutableCopy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = [MEMORY[0x277CBEB38] dictionary];
    }

    tabGroupsToActiveTabs = v13->_tabGroupsToActiveTabs;
    v13->_tabGroupsToActiveTabs = v25;

    v27 = [v8 safari_stringForKey:*MEMORY[0x277D4A668] returningNilIfEmpty:1];
    v28 = v27;
    v29 = *MEMORY[0x277D49BD8];
    if (v27)
    {
      v30 = v27;
    }

    else
    {
      v30 = *MEMORY[0x277D49BD8];
    }

    [(WBWindowState *)v13 setActiveProfileIdentifier:v30];

    v31 = v13;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WBWindowState *)v4 uuid];
      v6 = [(WBWindowState *)self uuid];
      v7 = WBSIsEqual();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isEqualToWindowState:(id)a3
{
  v4 = a3;
  if (![(WBWindowState *)self isEqual:v4])
  {
    goto LABEL_10;
  }

  v5 = [(WBWindowState *)self localTabGroup];
  v6 = [v4 localTabGroup];
  v7 = WBSIsEqual();

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [(WBWindowState *)self privateTabGroup];
  v9 = [v4 privateTabGroup];
  v10 = WBSIsEqual();

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = [(WBWindowState *)self dateClosed];
  v12 = [v4 dateClosed];
  v13 = WBSIsEqual();

  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = [(WBWindowState *)self extraAttributes];
  v15 = [v4 extraAttributes];
  v16 = WBSIsEqual();

  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = [(WBWindowState *)self tabGroupsToActiveTabs];
  v18 = [v4 tabGroupsToActiveTabs];
  v19 = WBSIsEqual();

  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = [(WBWindowState *)self activeProfileIdentifier];
  v21 = [v4 activeProfileIdentifier];
  v22 = WBSIsEqual();

  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = [(WBWindowState *)self profilesToActiveTabGroups];
  v24 = [v4 profilesToActiveTabGroups];
  v25 = WBSIsEqual();

  if (v25)
  {
    v26 = [(WBWindowState *)self unnamedTabGroupUUIDs];
    v27 = [v4 unnamedTabGroupUUIDs];
    v28 = WBSIsEqual();
  }

  else
  {
LABEL_10:
    v28 = 0;
  }

  return v28;
}

- (unint64_t)hash
{
  v2 = [(WBWindowState *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(WBTabGroup *)self->_localTabGroup mutableCopyWithZone:?];
  v6 = [(WBTabGroup *)self->_privateTabGroup mutableCopyWithZone:a3];
  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithUUID:activeTabGroupUUID:localTabGroup:privateTabGroup:sceneID:windowID:", self->_uuid, self->_activeTabGroupUUID, v5, v6, self->_sceneID, self->_identifier}];
  [v7 setDateClosed:self->_dateClosed];
  v8 = [(NSDictionary *)self->_extraAttributes copy];
  [v7 setExtraAttributes:v8];

  v9 = [(NSMutableDictionary *)self->_tabGroupsToActiveTabs copy];
  [v7 setTabGroupsToActiveTabs:v9];

  v10 = [(NSString *)self->_activeProfileIdentifier copy];
  [v7 setActiveProfileIdentifier:v10];

  v11 = [(NSMutableDictionary *)self->_profilesToActiveTabGroups mutableCopy];
  v12 = v7[2];
  v7[2] = v11;

  v13 = [(NSMutableSet *)self->_unnamedTabGroupUUIDs mutableCopy];
  v14 = v7[3];
  v7[3] = v13;

  v15 = [(NSData *)self->_windowRestorationArchiveData copy];
  v16 = v7[14];
  v7[14] = v15;

  return v7;
}

- (id)copyForRecovery
{
  v3 = [WBWindowState alloc];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];
  v6 = [(WBWindowState *)v3 initWithUUID:v5];

  v7 = [(NSDictionary *)self->_extraAttributes copy];
  [(WBWindowState *)v6 setExtraAttributes:v7];

  v8 = [(NSString *)self->_activeProfileIdentifier copy];
  [(WBWindowState *)v6 setActiveProfileIdentifier:v8];

  v9 = [(NSData *)self->_windowRestorationArchiveData copy];
  windowRestorationArchiveData = v6->_windowRestorationArchiveData;
  v6->_windowRestorationArchiveData = v9;

  return v6;
}

- (WBWindowState)initWithCoder:(id)a3
{
  v42[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v38 = [v3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A670]];
  v36 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"dateClosed"];
  v4 = MEMORY[0x277CBEB98];
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v42[2] = objc_opt_class();
  v42[3] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  v6 = [v4 setWithArray:v5];
  v34 = [v3 decodeObjectOfClasses:v6 forKey:@"extraAttributes"];

  v33 = [v3 decodeIntForKey:@"identifier"];
  v37 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"localTabGroup"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"privateTabGroup"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sceneID"];
  v9 = MEMORY[0x277CBEB98];
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v11 = [v9 setWithArray:v10];
  v32 = [v3 decodeObjectOfClasses:v11 forKey:*MEMORY[0x277D4A6C0]];

  v29 = [v3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A5D8]];
  v31 = [v3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A668]];
  v12 = MEMORY[0x277CBEB98];
  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v14 = [v12 setWithArray:v13];
  v30 = [v3 decodeObjectOfClasses:v14 forKey:*MEMORY[0x277D4A6A8]];

  v15 = MEMORY[0x277CBEB98];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v17 = [v15 setWithArray:v16];
  v28 = [v3 decodeObjectOfClasses:v17 forKey:*MEMORY[0x277D4A6C8]];

  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A6B0]];

  v19 = [(WBWindowState *)self initWithUUID:v29 activeTabGroupUUID:v38 localTabGroup:v37 privateTabGroup:v7 sceneID:v8 windowID:v33];
  [(WBWindowState *)v19 setDateClosed:v36];
  [(WBWindowState *)v19 setExtraAttributes:v34];
  [(WBWindowState *)v19 setTabGroupsToActiveTabs:v32];
  [(WBWindowState *)v19 setActiveProfileIdentifier:v31];
  v20 = [v30 mutableCopy];
  profilesToActiveTabGroups = v19->_profilesToActiveTabGroups;
  v19->_profilesToActiveTabGroups = v20;

  v22 = [v28 mutableCopy];
  unnamedTabGroupUUIDs = v19->_unnamedTabGroupUUIDs;
  v19->_unnamedTabGroupUUIDs = v22;

  v24 = [v18 copy];
  windowRestorationArchiveData = v19->_windowRestorationArchiveData;
  v19->_windowRestorationArchiveData = v24;

  v26 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  activeTabGroupUUID = self->_activeTabGroupUUID;
  v5 = *MEMORY[0x277D4A670];
  v7 = a3;
  [v7 encodeObject:activeTabGroupUUID forKey:v5];
  [v7 encodeObject:self->_dateClosed forKey:@"dateClosed"];
  [v7 encodeObject:self->_extraAttributes forKey:@"extraAttributes"];
  [v7 encodeInt:self->_identifier forKey:@"identifier"];
  [v7 encodeObject:self->_localTabGroup forKey:@"localTabGroup"];
  [v7 encodeObject:self->_privateTabGroup forKey:@"privateTabGroup"];
  [v7 encodeObject:self->_sceneID forKey:@"sceneID"];
  v6 = *MEMORY[0x277D4A6C0];
  [v7 encodeObject:self->_tabGroupsToActiveTabs forKey:*MEMORY[0x277D4A6C0]];
  [v7 encodeObject:self->_uuid forKey:*MEMORY[0x277D4A5D8]];
  [v7 encodeObject:self->_activeProfileIdentifier forKey:*MEMORY[0x277D4A668]];
  [v7 encodeObject:self->_profilesToActiveTabGroups forKey:v6];
  [v7 encodeObject:self->_unnamedTabGroupUUIDs forKey:*MEMORY[0x277D4A6C8]];
  [v7 encodeObject:self->_windowRestorationArchiveData forKey:*MEMORY[0x277D4A6B0]];
}

- (WBWindowState)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 safari_stringForKey:*MEMORY[0x277D4A5D8]];
  if ([v5 length])
  {
    v6 = [v4 safari_stringForKey:*MEMORY[0x277D4A670]];
    v7 = [WBMutableTabGroup alloc];
    v8 = [v4 safari_dictionaryForKey:@"localTabGroup"];
    v9 = [(WBTabGroup *)v7 initWithDictionaryRepresentation:v8];

    v10 = [WBMutableTabGroup alloc];
    v11 = [v4 safari_dictionaryForKey:@"privateTabGroup"];
    v12 = [(WBTabGroup *)v10 initWithDictionaryRepresentation:v11];

    v13 = 0;
    if (v9 && v12)
    {
      if (![v6 length])
      {
        v14 = [(WBTabGroup *)v9 uuid];

        v6 = v14;
      }

      v15 = [v4 safari_stringForKey:@"sceneID"];
      if (![v15 length])
      {

        v15 = 0;
      }

      v16 = [v4 safari_numberForKey:@"identifier"];
      v17 = [v16 intValue];

      self = [(WBWindowState *)self initWithUUID:v5 activeTabGroupUUID:v6 localTabGroup:v9 privateTabGroup:v12 sceneID:v15 windowID:v17];
      if (self)
      {
        v18 = [v4 safari_dictionaryForKey:@"extraAttributes"];
        extraAttributes = self->_extraAttributes;
        self->_extraAttributes = v18;

        v20 = [v4 safari_dictionaryForKey:*MEMORY[0x277D4A6C0]];
        v21 = [v20 mutableCopy];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = [MEMORY[0x277CBEB58] set];
        }

        tabGroupsToActiveTabs = self->_tabGroupsToActiveTabs;
        self->_tabGroupsToActiveTabs = v23;

        v25 = [v4 safari_dateForKey:@"dateClosed"];
        [v25 timeIntervalSinceNow];
        v46 = v25;
        if (v26 >= 0.0)
        {
          v27 = 0;
        }

        else
        {
          v27 = v25;
        }

        objc_storeStrong(&self->_dateClosed, v27);
        v28 = [v4 safari_stringForKey:*MEMORY[0x277D4A668]];
        activeProfileIdentifier = self->_activeProfileIdentifier;
        self->_activeProfileIdentifier = v28;

        v30 = [v4 safari_dictionaryForKey:*MEMORY[0x277D4A6A8]];
        v31 = [v30 mutableCopy];
        v32 = v31;
        if (v31)
        {
          v33 = v31;
          profilesToActiveTabGroups = self->_profilesToActiveTabGroups;
          self->_profilesToActiveTabGroups = v33;
          v35 = 0x277CBE000;
        }

        else
        {
          v35 = 0x277CBE000uLL;
          v36 = [MEMORY[0x277CBEB58] set];
          profilesToActiveTabGroups = self->_profilesToActiveTabGroups;
          self->_profilesToActiveTabGroups = v36;
        }

        v37 = *(v35 + 2904);
        v38 = [v4 safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A6C8]];
        v39 = [v37 setWithArray:v38];
        unnamedTabGroupUUIDs = self->_unnamedTabGroupUUIDs;
        self->_unnamedTabGroupUUIDs = v39;

        v41 = [v4 objectForKey:*MEMORY[0x277D4A6B0]];
        v42 = [v41 copy];
        windowRestorationArchiveData = self->_windowRestorationArchiveData;
        self->_windowRestorationArchiveData = v42;

        v44 = self;
      }

      v13 = self;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSDictionary)dictionaryRepresentation
{
  v26[13] = *MEMORY[0x277D85DE8];
  uuid = self->_uuid;
  v4 = *MEMORY[0x277D4A670];
  v25[0] = *MEMORY[0x277D4A5D8];
  v25[1] = v4;
  activeTabGroupUUID = self->_activeTabGroupUUID;
  v26[0] = uuid;
  v26[1] = activeTabGroupUUID;
  v25[2] = @"localTabGroup";
  v6 = [(WBTabGroup *)self->_localTabGroup dictionaryRepresentation];
  v26[2] = v6;
  v25[3] = @"privateTabGroup";
  v7 = [(WBTabGroup *)self->_privateTabGroup dictionaryRepresentation];
  v8 = v7;
  sceneID = &stru_288259858;
  if (self->_sceneID)
  {
    sceneID = self->_sceneID;
  }

  v26[3] = v7;
  v26[4] = sceneID;
  v25[4] = @"sceneID";
  v25[5] = @"identifier";
  v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_identifier];
  dateClosed = self->_dateClosed;
  extraAttributes = self->_extraAttributes;
  v26[5] = v10;
  v26[6] = extraAttributes;
  v25[6] = @"extraAttributes";
  v25[7] = @"dateClosed";
  v13 = dateClosed;
  if (!dateClosed)
  {
    v13 = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v14 = *MEMORY[0x277D4A6C0];
  tabGroupsToActiveTabs = self->_tabGroupsToActiveTabs;
  profilesToActiveTabGroups = self->_profilesToActiveTabGroups;
  v26[7] = v13;
  v26[8] = tabGroupsToActiveTabs;
  v17 = *MEMORY[0x277D4A668];
  v25[8] = v14;
  v25[9] = v17;
  v18 = *MEMORY[0x277D4A6A8];
  v26[9] = self->_activeProfileIdentifier;
  v26[10] = profilesToActiveTabGroups;
  v19 = *MEMORY[0x277D4A6C8];
  v25[10] = v18;
  v25[11] = v19;
  v20 = [(NSMutableSet *)self->_unnamedTabGroupUUIDs allObjects];
  v25[12] = *MEMORY[0x277D4A6B0];
  windowRestorationArchiveData = self->_windowRestorationArchiveData;
  v26[11] = v20;
  v26[12] = windowRestorationArchiveData;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:13];

  if (!dateClosed)
  {
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (NSDictionary)tabGroupsToActiveTabs
{
  v2 = [(NSMutableDictionary *)self->_tabGroupsToActiveTabs copy];

  return v2;
}

- (NSDictionary)profilesToActiveTabGroups
{
  v2 = [(NSMutableDictionary *)self->_profilesToActiveTabGroups copy];

  return v2;
}

- (id)localOrUnnamedTabGroupForRestoration:(BOOL)a3 inProfileWithIdentifier:(id)a4 deviceIdentifier:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = *MEMORY[0x277D49BD8];
  if (WBSIsEqual())
  {
    localTabGroup = self->_localTabGroup;
LABEL_6:
    v15 = localTabGroup;
    goto LABEL_11;
  }

  unnamedTabGroupForRestoration = self->_unnamedTabGroupForRestoration;
  if (unnamedTabGroupForRestoration)
  {
    v13 = [(WBTabGroup *)unnamedTabGroupForRestoration profileIdentifier];
    v14 = WBSIsEqual();

    if (v14)
    {
      localTabGroup = self->_unnamedTabGroupForRestoration;
      goto LABEL_6;
    }
  }

  if (!v6 || ([(NSMutableSet *)self->_unnamedTabGroupUUIDs anyObject], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17 = [MEMORY[0x277CCAD78] UUID];
    v16 = [v17 UUIDString];

    [(NSMutableSet *)self->_unnamedTabGroupUUIDs addObject:v16];
  }

  v18 = [WBMutableTabGroup unnamedTabGroupWithUUID:v16 profileIdentifier:v8 deviceIdentifier:v9];
  v19 = self->_unnamedTabGroupForRestoration;
  self->_unnamedTabGroupForRestoration = v18;

  v15 = self->_unnamedTabGroupForRestoration;
LABEL_11:

  return v15;
}

- (NSString)description
{
  v21 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v19 = NSStringFromClass(v3);
  v17 = [(WBWindowState *)self activeTabGroupUUID];
  v16 = [(WBWindowState *)self identifier];
  v15 = [(WBWindowState *)self sceneID];
  v4 = [(WBWindowState *)self uuid];
  v20 = [(WBWindowState *)self windowRestorationArchiveData];
  v5 = [v20 length];
  v18 = [(WBWindowState *)self localTabGroup];
  v6 = [v18 uuid];
  v7 = [(WBWindowState *)self localTabGroup];
  v8 = [v7 identifier];
  v9 = [(WBWindowState *)self localTabGroup];
  v10 = [v9 tabs];
  v11 = [v10 count];
  v12 = [(WBWindowState *)self activeTabGroupUUID];
  v13 = [v21 stringWithFormat:@"<%@: %p activeTabGroupUUID = %@; identifier = %d; sceneID = %@; uuid = %@; restoration_archive = %lu; localTabGroup = %@<%d> with %ld tab(s), selectedTabGroup = %@, isPrivate = %d>", v19, self, v17, v16, v15, v4, v5, v6, v8, v11, v12, -[WBWindowState isPrivateWindow](self, "isPrivateWindow")];;

  return v13;
}

@end