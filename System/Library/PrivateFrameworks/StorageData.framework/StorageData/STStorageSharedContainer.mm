@interface STStorageSharedContainer
- (STStorageSharedContainer)initWithPath:(id)a3 owners:(id)a4;
- (void)setOwners:(id)a3;
@end

@implementation STStorageSharedContainer

- (STStorageSharedContainer)initWithPath:(id)a3 owners:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = STStorageSharedContainer;
  v9 = [(STStorageSharedContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, a3);
    [(STStorageSharedContainer *)v10 setOwners:v8];
  }

  return v10;
}

- (void)setOwners:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v4 = [v31 mutableCopy];
  v29 = a3;
  if ([v4 count])
  {
    v5 = 0;
    obj = 0;
    v6 = v4;
    do
    {
      v7 = [v6 firstObject];
      [v6 removeObjectAtIndex:0];
      v8 = [v7 vendorName];
      if ([v8 length])
      {
        v33 = v7;
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
              v16 = [v15 vendorName];
              v17 = [v16 isEqualToString:v8];

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
          v7 = v33;
        }

        else
        {
          v5 = v34 + 1;
          v7 = v33;
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

  objc_storeStrong(&self->_owners, v29);
  v20 = obj;
  if (!obj)
  {
    v20 = [(NSArray *)self->_owners firstObject];
  }

  objc_storeStrong(&self->_appRep, v20);
  if (!obj)
  {
  }

  v21 = [(STStorageApp *)self->_appRep appIdentifier];
  [(STStorageApp *)self setAppIdentifier:v21];

  v22 = [(STStorageApp *)self->_appRep bundleIdentifier];
  [(STStorageApp *)self setBundleIdentifier:v22];

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