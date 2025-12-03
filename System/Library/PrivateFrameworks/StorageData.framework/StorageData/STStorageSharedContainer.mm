@interface STStorageSharedContainer
- (STStorageSharedContainer)initWithPath:(id)path owners:(id)owners;
- (void)setOwners:(id)owners;
@end

@implementation STStorageSharedContainer

- (STStorageSharedContainer)initWithPath:(id)path owners:(id)owners
{
  pathCopy = path;
  ownersCopy = owners;
  v12.receiver = self;
  v12.super_class = STStorageSharedContainer;
  v9 = [(STStorageSharedContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, path);
    [(STStorageSharedContainer *)v10 setOwners:ownersCopy];
  }

  return v10;
}

- (void)setOwners:(id)owners
{
  v40 = *MEMORY[0x277D85DE8];
  ownersCopy = owners;
  v4 = [ownersCopy mutableCopy];
  ownersCopy2 = owners;
  if ([v4 count])
  {
    v5 = 0;
    obj = 0;
    v6 = v4;
    do
    {
      firstObject = [v6 firstObject];
      [v6 removeObjectAtIndex:0];
      vendorName = [firstObject vendorName];
      if ([vendorName length])
      {
        v33 = firstObject;
        v34 = v5;
        v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v9 = v6;
        v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v36;
          v13 = 1;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v36 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v35 + 1) + 8 * i);
              vendorName2 = [v15 vendorName];
              v17 = [vendorName2 isEqualToString:vendorName];

              if (v17)
              {
                ++v13;
              }

              else
              {
                [v4 addObject:v15];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v11);
        }

        else
        {
          v13 = 1;
        }

        v18 = v13 <= v34;
        v5 = v34;
        if (v18)
        {
          firstObject = v33;
        }

        else
        {
          v5 = v34 + 1;
          firstObject = v33;
          v19 = v33;

          obj = v19;
        }

        v6 = v4;
      }

      else
      {
        v4 = v6;
      }
    }

    while ([v4 count]);
  }

  else
  {
    obj = 0;
  }

  objc_storeStrong(&self->_owners, ownersCopy2);
  firstObject2 = obj;
  if (!obj)
  {
    firstObject2 = [(NSArray *)self->_owners firstObject];
  }

  objc_storeStrong(&self->_appRep, firstObject2);
  if (!obj)
  {
  }

  appIdentifier = [(STStorageApp *)self->_appRep appIdentifier];
  [(STStorageApp *)self setAppIdentifier:appIdentifier];

  bundleIdentifier = [(STStorageApp *)self->_appRep bundleIdentifier];
  [(STStorageApp *)self setBundleIdentifier:bundleIdentifier];

  [(STStorageApp *)self setAppKind:2];
  appRep = self->_appRep;
  if (appRep)
  {
    [(STStorageApp *)appRep vendorName];
  }

  else
  {
    STStorageDataLocStr(@"SHARED_DATA");
  }
  v24 = ;
  [(STStorageApp *)self setName:v24];

  v25 = MEMORY[0x277CCACA8];
  v26 = STStorageDataLocStr(@"SHARED_FMT %ld");
  v27 = [v25 localizedStringWithFormat:v26, -[NSArray count](self->_owners, "count")];
  [(STStorageApp *)self setVendorName:v27];

  v28 = *MEMORY[0x277D85DE8];
}

@end