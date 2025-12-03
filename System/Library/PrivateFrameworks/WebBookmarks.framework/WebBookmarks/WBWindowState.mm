@interface WBWindowState
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWindowState:(id)state;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)profilesToActiveTabGroups;
- (NSDictionary)tabGroupsToActiveTabs;
- (NSSet)unnamedTabGroupUUIDs;
- (NSString)description;
- (WBWindowState)initWithCoder:(id)coder;
- (WBWindowState)initWithDictionaryRepresentation:(id)representation;
- (WBWindowState)initWithDictionaryRepresentation:(id)representation localTabGroup:(id)group privateTabGroup:(id)tabGroup;
- (WBWindowState)initWithUUID:(id)d activeTabGroupUUID:(id)iD localTabGroup:(id)group privateTabGroup:(id)tabGroup sceneID:(id)sceneID windowID:(int)windowID;
- (WBWindowState)initWithUUID:(id)d sceneID:(id)iD;
- (id)copyForRecovery;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localOrUnnamedTabGroupForRestoration:(BOOL)restoration inProfileWithIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBWindowState

- (NSSet)unnamedTabGroupUUIDs
{
  v2 = [(NSMutableSet *)self->_unnamedTabGroupUUIDs copy];

  return v2;
}

- (WBWindowState)initWithUUID:(id)d sceneID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v8 = +[WBMutableTabGroup localTabGroup];
  v9 = +[WBMutableTabGroup privateTabGroup];
  uuid = [v8 uuid];
  v11 = [(WBWindowState *)self initWithUUID:dCopy activeTabGroupUUID:uuid localTabGroup:v8 privateTabGroup:v9 sceneID:iDCopy windowID:0];

  return v11;
}

- (WBWindowState)initWithUUID:(id)d activeTabGroupUUID:(id)iD localTabGroup:(id)group privateTabGroup:(id)tabGroup sceneID:(id)sceneID windowID:(int)windowID
{
  dCopy = d;
  iDCopy = iD;
  groupCopy = group;
  tabGroupCopy = tabGroup;
  sceneIDCopy = sceneID;
  v35.receiver = self;
  v35.super_class = WBWindowState;
  v19 = [(WBWindowState *)&v35 init];
  if (v19)
  {
    v20 = [iDCopy copy];
    activeTabGroupUUID = v19->_activeTabGroupUUID;
    v19->_activeTabGroupUUID = v20;

    extraAttributes = v19->_extraAttributes;
    v19->_extraAttributes = MEMORY[0x277CBEC10];

    v19->_identifier = windowID;
    objc_storeStrong(&v19->_localTabGroup, group);
    objc_storeStrong(&v19->_privateTabGroup, tabGroup);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    profilesToActiveTabGroups = v19->_profilesToActiveTabGroups;
    v19->_profilesToActiveTabGroups = dictionary;

    v25 = [sceneIDCopy copy];
    sceneID = v19->_sceneID;
    v19->_sceneID = v25;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    tabGroupsToActiveTabs = v19->_tabGroupsToActiveTabs;
    v19->_tabGroupsToActiveTabs = dictionary2;

    v29 = [MEMORY[0x277CBEB58] set];
    unnamedTabGroupUUIDs = v19->_unnamedTabGroupUUIDs;
    v19->_unnamedTabGroupUUIDs = v29;

    v31 = [dCopy copy];
    uuid = v19->_uuid;
    v19->_uuid = v31;

    v33 = v19;
  }

  return v19;
}

- (WBWindowState)initWithDictionaryRepresentation:(id)representation localTabGroup:(id)group privateTabGroup:(id)tabGroup
{
  representationCopy = representation;
  groupCopy = group;
  tabGroupCopy = tabGroup;
  v11 = [representationCopy safari_stringForKey:*MEMORY[0x277D4A5D8]];
  v12 = [representationCopy safari_stringForKey:*MEMORY[0x277D4A670]];
  if (groupCopy)
  {
    if (tabGroupCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    groupCopy = +[WBMutableTabGroup localTabGroup];
    if (tabGroupCopy)
    {
      goto LABEL_3;
    }
  }

  tabGroupCopy = +[WBMutableTabGroup privateTabGroup];
LABEL_3:
  v13 = [(WBWindowState *)self initWithUUID:v11 activeTabGroupUUID:v12 localTabGroup:groupCopy privateTabGroup:tabGroupCopy sceneID:0 windowID:0];
  if (v13)
  {
    v14 = *MEMORY[0x277D4A6B0];
    v15 = [representationCopy objectForKeyedSubscript:*MEMORY[0x277D4A6B0]];
    v16 = [v15 copy];
    windowRestorationArchiveData = v13->_windowRestorationArchiveData;
    v13->_windowRestorationArchiveData = v16;

    if (v13->_windowRestorationArchiveData)
    {
      v18 = [representationCopy mutableCopy];
      [v18 setObject:0 forKeyedSubscript:v14];
      v19 = [v18 copy];

      representationCopy = v19;
    }

    v20 = [representationCopy copy];
    extraAttributes = v13->_extraAttributes;
    v13->_extraAttributes = v20;

    v22 = [representationCopy safari_dictionaryForKey:*MEMORY[0x277D4A6C0]];
    v23 = [v22 mutableCopy];
    v24 = v23;
    if (v23)
    {
      dictionary = v23;
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    tabGroupsToActiveTabs = v13->_tabGroupsToActiveTabs;
    v13->_tabGroupsToActiveTabs = dictionary;

    v27 = [representationCopy safari_stringForKey:*MEMORY[0x277D4A668] returningNilIfEmpty:1];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid = [(WBWindowState *)equalCopy uuid];
      uuid2 = [(WBWindowState *)self uuid];
      v7 = WBSIsEqual();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isEqualToWindowState:(id)state
{
  stateCopy = state;
  if (![(WBWindowState *)self isEqual:stateCopy])
  {
    goto LABEL_10;
  }

  localTabGroup = [(WBWindowState *)self localTabGroup];
  localTabGroup2 = [stateCopy localTabGroup];
  v7 = WBSIsEqual();

  if (!v7)
  {
    goto LABEL_10;
  }

  privateTabGroup = [(WBWindowState *)self privateTabGroup];
  privateTabGroup2 = [stateCopy privateTabGroup];
  v10 = WBSIsEqual();

  if (!v10)
  {
    goto LABEL_10;
  }

  dateClosed = [(WBWindowState *)self dateClosed];
  dateClosed2 = [stateCopy dateClosed];
  v13 = WBSIsEqual();

  if (!v13)
  {
    goto LABEL_10;
  }

  extraAttributes = [(WBWindowState *)self extraAttributes];
  extraAttributes2 = [stateCopy extraAttributes];
  v16 = WBSIsEqual();

  if (!v16)
  {
    goto LABEL_10;
  }

  tabGroupsToActiveTabs = [(WBWindowState *)self tabGroupsToActiveTabs];
  tabGroupsToActiveTabs2 = [stateCopy tabGroupsToActiveTabs];
  v19 = WBSIsEqual();

  if (!v19)
  {
    goto LABEL_10;
  }

  activeProfileIdentifier = [(WBWindowState *)self activeProfileIdentifier];
  activeProfileIdentifier2 = [stateCopy activeProfileIdentifier];
  v22 = WBSIsEqual();

  if (!v22)
  {
    goto LABEL_10;
  }

  profilesToActiveTabGroups = [(WBWindowState *)self profilesToActiveTabGroups];
  profilesToActiveTabGroups2 = [stateCopy profilesToActiveTabGroups];
  v25 = WBSIsEqual();

  if (v25)
  {
    unnamedTabGroupUUIDs = [(WBWindowState *)self unnamedTabGroupUUIDs];
    unnamedTabGroupUUIDs2 = [stateCopy unnamedTabGroupUUIDs];
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
  uuid = [(WBWindowState *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(WBTabGroup *)self->_localTabGroup mutableCopyWithZone:?];
  v6 = [(WBTabGroup *)self->_privateTabGroup mutableCopyWithZone:zone];
  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithUUID:activeTabGroupUUID:localTabGroup:privateTabGroup:sceneID:windowID:", self->_uuid, self->_activeTabGroupUUID, v5, v6, self->_sceneID, self->_identifier}];
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
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v6 = [(WBWindowState *)v3 initWithUUID:uUIDString];

  v7 = [(NSDictionary *)self->_extraAttributes copy];
  [(WBWindowState *)v6 setExtraAttributes:v7];

  v8 = [(NSString *)self->_activeProfileIdentifier copy];
  [(WBWindowState *)v6 setActiveProfileIdentifier:v8];

  v9 = [(NSData *)self->_windowRestorationArchiveData copy];
  windowRestorationArchiveData = v6->_windowRestorationArchiveData;
  v6->_windowRestorationArchiveData = v9;

  return v6;
}

- (WBWindowState)initWithCoder:(id)coder
{
  v42[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A670]];
  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateClosed"];
  v4 = MEMORY[0x277CBEB98];
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v42[2] = objc_opt_class();
  v42[3] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  v6 = [v4 setWithArray:v5];
  v34 = [coderCopy decodeObjectOfClasses:v6 forKey:@"extraAttributes"];

  v33 = [coderCopy decodeIntForKey:@"identifier"];
  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localTabGroup"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateTabGroup"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneID"];
  v9 = MEMORY[0x277CBEB98];
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v11 = [v9 setWithArray:v10];
  v32 = [coderCopy decodeObjectOfClasses:v11 forKey:*MEMORY[0x277D4A6C0]];

  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A5D8]];
  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A668]];
  v12 = MEMORY[0x277CBEB98];
  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v14 = [v12 setWithArray:v13];
  v30 = [coderCopy decodeObjectOfClasses:v14 forKey:*MEMORY[0x277D4A6A8]];

  v15 = MEMORY[0x277CBEB98];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v17 = [v15 setWithArray:v16];
  v28 = [coderCopy decodeObjectOfClasses:v17 forKey:*MEMORY[0x277D4A6C8]];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A6B0]];

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

- (void)encodeWithCoder:(id)coder
{
  activeTabGroupUUID = self->_activeTabGroupUUID;
  v5 = *MEMORY[0x277D4A670];
  coderCopy = coder;
  [coderCopy encodeObject:activeTabGroupUUID forKey:v5];
  [coderCopy encodeObject:self->_dateClosed forKey:@"dateClosed"];
  [coderCopy encodeObject:self->_extraAttributes forKey:@"extraAttributes"];
  [coderCopy encodeInt:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_localTabGroup forKey:@"localTabGroup"];
  [coderCopy encodeObject:self->_privateTabGroup forKey:@"privateTabGroup"];
  [coderCopy encodeObject:self->_sceneID forKey:@"sceneID"];
  v6 = *MEMORY[0x277D4A6C0];
  [coderCopy encodeObject:self->_tabGroupsToActiveTabs forKey:*MEMORY[0x277D4A6C0]];
  [coderCopy encodeObject:self->_uuid forKey:*MEMORY[0x277D4A5D8]];
  [coderCopy encodeObject:self->_activeProfileIdentifier forKey:*MEMORY[0x277D4A668]];
  [coderCopy encodeObject:self->_profilesToActiveTabGroups forKey:v6];
  [coderCopy encodeObject:self->_unnamedTabGroupUUIDs forKey:*MEMORY[0x277D4A6C8]];
  [coderCopy encodeObject:self->_windowRestorationArchiveData forKey:*MEMORY[0x277D4A6B0]];
}

- (WBWindowState)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy safari_stringForKey:*MEMORY[0x277D4A5D8]];
  if ([v5 length])
  {
    v6 = [representationCopy safari_stringForKey:*MEMORY[0x277D4A670]];
    v7 = [WBMutableTabGroup alloc];
    v8 = [representationCopy safari_dictionaryForKey:@"localTabGroup"];
    v9 = [(WBTabGroup *)v7 initWithDictionaryRepresentation:v8];

    v10 = [WBMutableTabGroup alloc];
    v11 = [representationCopy safari_dictionaryForKey:@"privateTabGroup"];
    v12 = [(WBTabGroup *)v10 initWithDictionaryRepresentation:v11];

    selfCopy2 = 0;
    if (v9 && v12)
    {
      if (![v6 length])
      {
        uuid = [(WBTabGroup *)v9 uuid];

        v6 = uuid;
      }

      v15 = [representationCopy safari_stringForKey:@"sceneID"];
      if (![v15 length])
      {

        v15 = 0;
      }

      v16 = [representationCopy safari_numberForKey:@"identifier"];
      intValue = [v16 intValue];

      self = [(WBWindowState *)self initWithUUID:v5 activeTabGroupUUID:v6 localTabGroup:v9 privateTabGroup:v12 sceneID:v15 windowID:intValue];
      if (self)
      {
        v18 = [representationCopy safari_dictionaryForKey:@"extraAttributes"];
        extraAttributes = self->_extraAttributes;
        self->_extraAttributes = v18;

        v20 = [representationCopy safari_dictionaryForKey:*MEMORY[0x277D4A6C0]];
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

        v25 = [representationCopy safari_dateForKey:@"dateClosed"];
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
        v28 = [representationCopy safari_stringForKey:*MEMORY[0x277D4A668]];
        activeProfileIdentifier = self->_activeProfileIdentifier;
        self->_activeProfileIdentifier = v28;

        v30 = [representationCopy safari_dictionaryForKey:*MEMORY[0x277D4A6A8]];
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
        v38 = [representationCopy safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A6C8]];
        v39 = [v37 setWithArray:v38];
        unnamedTabGroupUUIDs = self->_unnamedTabGroupUUIDs;
        self->_unnamedTabGroupUUIDs = v39;

        v41 = [representationCopy objectForKey:*MEMORY[0x277D4A6B0]];
        v42 = [v41 copy];
        windowRestorationArchiveData = self->_windowRestorationArchiveData;
        self->_windowRestorationArchiveData = v42;

        selfCopy = self;
      }

      selfCopy2 = self;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
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
  dictionaryRepresentation = [(WBTabGroup *)self->_localTabGroup dictionaryRepresentation];
  v26[2] = dictionaryRepresentation;
  v25[3] = @"privateTabGroup";
  dictionaryRepresentation2 = [(WBTabGroup *)self->_privateTabGroup dictionaryRepresentation];
  v8 = dictionaryRepresentation2;
  sceneID = &stru_288259858;
  if (self->_sceneID)
  {
    sceneID = self->_sceneID;
  }

  v26[3] = dictionaryRepresentation2;
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
  distantFuture = dateClosed;
  if (!dateClosed)
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v14 = *MEMORY[0x277D4A6C0];
  tabGroupsToActiveTabs = self->_tabGroupsToActiveTabs;
  profilesToActiveTabGroups = self->_profilesToActiveTabGroups;
  v26[7] = distantFuture;
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
  allObjects = [(NSMutableSet *)self->_unnamedTabGroupUUIDs allObjects];
  v25[12] = *MEMORY[0x277D4A6B0];
  windowRestorationArchiveData = self->_windowRestorationArchiveData;
  v26[11] = allObjects;
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

- (id)localOrUnnamedTabGroupForRestoration:(BOOL)restoration inProfileWithIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier
{
  restorationCopy = restoration;
  identifierCopy = identifier;
  deviceIdentifierCopy = deviceIdentifier;
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
    profileIdentifier = [(WBTabGroup *)unnamedTabGroupForRestoration profileIdentifier];
    v14 = WBSIsEqual();

    if (v14)
    {
      localTabGroup = self->_unnamedTabGroupForRestoration;
      goto LABEL_6;
    }
  }

  if (!restorationCopy || ([(NSMutableSet *)self->_unnamedTabGroupUUIDs anyObject], (uUIDString = objc_claimAutoreleasedReturnValue()) == 0))
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    [(NSMutableSet *)self->_unnamedTabGroupUUIDs addObject:uUIDString];
  }

  v18 = [WBMutableTabGroup unnamedTabGroupWithUUID:uUIDString profileIdentifier:identifierCopy deviceIdentifier:deviceIdentifierCopy];
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
  activeTabGroupUUID = [(WBWindowState *)self activeTabGroupUUID];
  identifier = [(WBWindowState *)self identifier];
  sceneID = [(WBWindowState *)self sceneID];
  uuid = [(WBWindowState *)self uuid];
  windowRestorationArchiveData = [(WBWindowState *)self windowRestorationArchiveData];
  v5 = [windowRestorationArchiveData length];
  localTabGroup = [(WBWindowState *)self localTabGroup];
  uuid2 = [localTabGroup uuid];
  localTabGroup2 = [(WBWindowState *)self localTabGroup];
  identifier2 = [localTabGroup2 identifier];
  localTabGroup3 = [(WBWindowState *)self localTabGroup];
  tabs = [localTabGroup3 tabs];
  v11 = [tabs count];
  activeTabGroupUUID2 = [(WBWindowState *)self activeTabGroupUUID];
  v13 = [v21 stringWithFormat:@"<%@: %p activeTabGroupUUID = %@; identifier = %d; sceneID = %@; uuid = %@; restoration_archive = %lu; localTabGroup = %@<%d> with %ld tab(s), selectedTabGroup = %@, isPrivate = %d>", v19, self, activeTabGroupUUID, identifier, sceneID, uuid, v5, uuid2, identifier2, v11, activeTabGroupUUID2, -[WBWindowState isPrivateWindow](self, "isPrivateWindow")];;

  return v13;
}

@end