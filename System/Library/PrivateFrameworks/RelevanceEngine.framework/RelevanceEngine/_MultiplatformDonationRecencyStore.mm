@interface _MultiplatformDonationRecencyStore
- (_MultiplatformDonationRecencyStore)init;
- (id)bundlesFromMostRecentlyProvidingPlatforms;
- (void)updateDataWithRemoteBundleIdentifier:(id)identifier remoteDate:(id)date localBundleIdentifier:(id)bundleIdentifier localDate:(id)localDate;
@end

@implementation _MultiplatformDonationRecencyStore

- (_MultiplatformDonationRecencyStore)init
{
  v10.receiver = self;
  v10.super_class = _MultiplatformDonationRecencyStore;
  v2 = [(_MultiplatformDonationRecencyStore *)&v10 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    appDateInfo = v2->_appDateInfo;
    v2->_appDateInfo = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    infoByLocalID = v2->_infoByLocalID;
    v2->_infoByLocalID = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    infoByRemoteID = v2->_infoByRemoteID;
    v2->_infoByRemoteID = dictionary2;
  }

  return v2;
}

- (void)updateDataWithRemoteBundleIdentifier:(id)identifier remoteDate:(id)date localBundleIdentifier:(id)bundleIdentifier localDate:(id)localDate
{
  identifierCopy = identifier;
  dateCopy = date;
  bundleIdentifierCopy = bundleIdentifier;
  localDateCopy = localDate;
  if (!identifierCopy)
  {
    v13 = 0;
    if (bundleIdentifierCopy)
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
  if (!bundleIdentifierCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  v14 = [(NSMutableDictionary *)self->_infoByLocalID objectForKeyedSubscript:bundleIdentifierCopy];
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

  if (bundleIdentifierCopy && !v23)
  {
    [(_MultiplatformDonationRecencyInfo *)v25 setLocalBundleIdentifier:bundleIdentifierCopy];
    [(NSMutableDictionary *)self->_infoByLocalID setObject:v25 forKey:bundleIdentifierCopy];
  }

  v26 = identifierCopy;
  if (identifierCopy)
  {
    v27 = v22;
  }

  else
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    [(_MultiplatformDonationRecencyInfo *)v25 setRemoteBundleIdentifier:identifierCopy];
    [(NSMutableDictionary *)self->_infoByRemoteID setObject:v25 forKey:identifierCopy];
    v26 = identifierCopy;
  }

  if (bundleIdentifierCopy && localDateCopy)
  {
    localDonationCreationDate = [(_MultiplatformDonationRecencyInfo *)v25 localDonationCreationDate];
    v29 = localDonationCreationDate;
    if (!localDonationCreationDate || ([localDonationCreationDate laterDate:localDateCopy], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqual:", localDateCopy), v30, v31))
    {
      [(_MultiplatformDonationRecencyInfo *)v25 setLocalDonationCreationDate:localDateCopy];
    }

    v26 = identifierCopy;
  }

  if (v26 && dateCopy)
  {
    remoteDonationCreationDate = [(_MultiplatformDonationRecencyInfo *)v25 remoteDonationCreationDate];
    v33 = remoteDonationCreationDate;
    if (!remoteDonationCreationDate || ([remoteDonationCreationDate laterDate:dateCopy], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqual:", dateCopy), v34, v35))
    {
      [(_MultiplatformDonationRecencyInfo *)v25 setRemoteDonationCreationDate:dateCopy];
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

        identifierForMostRecentData = [*(*(&v13 + 1) + 8 * i) identifierForMostRecentData];
        [v3 addObject:identifierForMostRecentData];
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