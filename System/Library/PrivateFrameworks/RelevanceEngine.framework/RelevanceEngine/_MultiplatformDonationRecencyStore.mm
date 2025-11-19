@interface _MultiplatformDonationRecencyStore
- (_MultiplatformDonationRecencyStore)init;
- (id)bundlesFromMostRecentlyProvidingPlatforms;
- (void)updateDataWithRemoteBundleIdentifier:(id)a3 remoteDate:(id)a4 localBundleIdentifier:(id)a5 localDate:(id)a6;
@end

@implementation _MultiplatformDonationRecencyStore

- (_MultiplatformDonationRecencyStore)init
{
  v10.receiver = self;
  v10.super_class = _MultiplatformDonationRecencyStore;
  v2 = [(_MultiplatformDonationRecencyStore *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    appDateInfo = v2->_appDateInfo;
    v2->_appDateInfo = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    infoByLocalID = v2->_infoByLocalID;
    v2->_infoByLocalID = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    infoByRemoteID = v2->_infoByRemoteID;
    v2->_infoByRemoteID = v7;
  }

  return v2;
}

- (void)updateDataWithRemoteBundleIdentifier:(id)a3 remoteDate:(id)a4 localBundleIdentifier:(id)a5 localDate:(id)a6
{
  v37 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v37)
  {
    v13 = 0;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v21 = 0;
    v23 = 0;
    v22 = v13 != 0;
    if (!v13)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v13 = [(NSMutableDictionary *)self->_infoByRemoteID objectForKeyedSubscript:?];
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  v14 = [(NSMutableDictionary *)self->_infoByLocalID objectForKeyedSubscript:v11];
  v21 = v14;
  v22 = v13 != 0;
  v23 = v14 != 0;
  if (v13 && v14 && v13 != v14)
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Remote and local bundles ids should map to the same information.", v15, v16, v17, v18, v19, v20, v36);
    v22 = 1;
    v23 = 1;
  }

  else
  {
    v24 = v14;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  v24 = v13;
LABEL_12:
  v25 = v24;
  if (!v25)
  {
LABEL_13:
    v25 = objc_alloc_init(_MultiplatformDonationRecencyInfo);
    [(NSMutableArray *)self->_appDateInfo addObject:v25];
  }

  if (v11 && !v23)
  {
    [(_MultiplatformDonationRecencyInfo *)v25 setLocalBundleIdentifier:v11];
    [(NSMutableDictionary *)self->_infoByLocalID setObject:v25 forKey:v11];
  }

  v26 = v37;
  if (v37)
  {
    v27 = v22;
  }

  else
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    [(_MultiplatformDonationRecencyInfo *)v25 setRemoteBundleIdentifier:v37];
    [(NSMutableDictionary *)self->_infoByRemoteID setObject:v25 forKey:v37];
    v26 = v37;
  }

  if (v11 && v12)
  {
    v28 = [(_MultiplatformDonationRecencyInfo *)v25 localDonationCreationDate];
    v29 = v28;
    if (!v28 || ([v28 laterDate:v12], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqual:", v12), v30, v31))
    {
      [(_MultiplatformDonationRecencyInfo *)v25 setLocalDonationCreationDate:v12];
    }

    v26 = v37;
  }

  if (v26 && v10)
  {
    v32 = [(_MultiplatformDonationRecencyInfo *)v25 remoteDonationCreationDate];
    v33 = v32;
    if (!v32 || ([v32 laterDate:v10], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqual:", v10), v34, v35))
    {
      [(_MultiplatformDonationRecencyInfo *)v25 setRemoteDonationCreationDate:v10];
    }
  }
}

- (id)bundlesFromMostRecentlyProvidingPlatforms
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_appDateInfo, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_appDateInfo;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) identifierForMostRecentData];
        [v3 addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end