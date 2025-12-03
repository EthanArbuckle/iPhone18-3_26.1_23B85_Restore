@interface SKAPFSContainerDisk
- (id)copyVolumesWithIncludeSnapshots:(BOOL)snapshots;
- (id)designatedPhysicalStore;
- (id)dictionaryRepresentation;
- (id)minimalDictionaryRepresentation;
- (id)physicalStores;
- (id)volumes;
- (id)volumesExcludingSnapshots;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation SKAPFSContainerDisk

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7.receiver = selfCopy;
  v7.super_class = SKAPFSContainerDisk;
  [(SKDisk *)&v7 updateWithDictionary:dictionaryCopy];
  v6 = [dictionaryCopy objectForKey:@"designatedPSUUID"];
  [(SKAPFSContainerDisk *)selfCopy setDesignatedPSUUID:v6];

  objc_sync_exit(selfCopy);
}

- (id)minimalDictionaryRepresentation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7.receiver = selfCopy;
  v7.super_class = SKAPFSContainerDisk;
  minimalDictionaryRepresentation = [(SKDisk *)&v7 minimalDictionaryRepresentation];
  designatedPSUUID = [(SKAPFSContainerDisk *)selfCopy designatedPSUUID];

  if (designatedPSUUID)
  {
    designatedPSUUID2 = [(SKAPFSContainerDisk *)selfCopy designatedPSUUID];
    [minimalDictionaryRepresentation setObject:designatedPSUUID2 forKey:@"designatedPSUUID"];
  }

  objc_sync_exit(selfCopy);

  return minimalDictionaryRepresentation;
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5.receiver = selfCopy;
  v5.super_class = SKAPFSContainerDisk;
  dictionaryRepresentation = [(SKDisk *)&v5 dictionaryRepresentation];
  objc_sync_exit(selfCopy);

  return dictionaryRepresentation;
}

- (id)physicalStores
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = +[SKBaseManager sharedManager];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allDisks = [v3 allDisks];
  v6 = [allDisks countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allDisks);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          if ([v11 isOurContainerWithDisk:self])
          {
            [v4 addObject:v11];
          }
        }
      }

      v7 = [allDisks countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)copyVolumesWithIncludeSnapshots:(BOOL)snapshots
{
  v19 = *MEMORY[0x277D85DE8];
  children = [(SKDisk *)self children];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(children, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = children;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (snapshots || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            [v5 addObject:{v11, v14}];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)volumes
{
  v2 = [(SKAPFSContainerDisk *)self copyVolumesWithIncludeSnapshots:1];

  return v2;
}

- (id)volumesExcludingSnapshots
{
  v2 = [(SKAPFSContainerDisk *)self copyVolumesWithIncludeSnapshots:0];

  return v2;
}

- (id)designatedPhysicalStore
{
  v22 = *MEMORY[0x277D85DE8];
  [(SKAPFSContainerDisk *)self physicalStores];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([(SKDisk *)self isLiveFSAPFSDisk])
        {
          goto LABEL_12;
        }

        designatedPSUUID = [(SKAPFSContainerDisk *)self designatedPSUUID];
        if (!designatedPSUUID)
        {
          goto LABEL_12;
        }

        v10 = designatedPSUUID;
        designatedPSUUID2 = [(SKAPFSContainerDisk *)self designatedPSUUID];
        apfsUUID = [v8 apfsUUID];
        v13 = [designatedPSUUID2 isEqualToString:apfsUUID];

        if (v13)
        {
LABEL_12:
          v14 = v8;
          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v14 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end