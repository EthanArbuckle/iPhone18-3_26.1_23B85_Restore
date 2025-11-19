@interface SKAPFSContainerDisk
- (id)copyVolumesWithIncludeSnapshots:(BOOL)a3;
- (id)designatedPhysicalStore;
- (id)dictionaryRepresentation;
- (id)minimalDictionaryRepresentation;
- (id)physicalStores;
- (id)volumes;
- (id)volumesExcludingSnapshots;
- (void)updateWithDictionary:(id)a3;
@end

@implementation SKAPFSContainerDisk

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v7.receiver = v5;
  v7.super_class = SKAPFSContainerDisk;
  [(SKDisk *)&v7 updateWithDictionary:v4];
  v6 = [v4 objectForKey:@"designatedPSUUID"];
  [(SKAPFSContainerDisk *)v5 setDesignatedPSUUID:v6];

  objc_sync_exit(v5);
}

- (id)minimalDictionaryRepresentation
{
  v2 = self;
  objc_sync_enter(v2);
  v7.receiver = v2;
  v7.super_class = SKAPFSContainerDisk;
  v3 = [(SKDisk *)&v7 minimalDictionaryRepresentation];
  v4 = [(SKAPFSContainerDisk *)v2 designatedPSUUID];

  if (v4)
  {
    v5 = [(SKAPFSContainerDisk *)v2 designatedPSUUID];
    [v3 setObject:v5 forKey:@"designatedPSUUID"];
  }

  objc_sync_exit(v2);

  return v3;
}

- (id)dictionaryRepresentation
{
  v2 = self;
  objc_sync_enter(v2);
  v5.receiver = v2;
  v5.super_class = SKAPFSContainerDisk;
  v3 = [(SKDisk *)&v5 dictionaryRepresentation];
  objc_sync_exit(v2);

  return v3;
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
  v5 = [v3 allDisks];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
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

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)copyVolumesWithIncludeSnapshots:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [(SKDisk *)self children];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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
          if (a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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

        v9 = [(SKAPFSContainerDisk *)self designatedPSUUID];
        if (!v9)
        {
          goto LABEL_12;
        }

        v10 = v9;
        v11 = [(SKAPFSContainerDisk *)self designatedPSUUID];
        v12 = [v8 apfsUUID];
        v13 = [v11 isEqualToString:v12];

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