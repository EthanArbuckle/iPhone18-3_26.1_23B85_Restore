@interface WBDevice
+ (id)deviceWithParameters:(id)a3 unnamedTabGroups:(id)a4 profileIdentifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSArray)tabs;
- (NSString)description;
- (NSString)privacyPreservingDescription;
- (WBDevice)initWithBookmark:(id)a3 unnamedTabGroups:(id)a4 profileIdentifier:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)mergeWithDevice:(id)a3;
@end

@implementation WBDevice

+ (id)deviceWithParameters:(id)a3 unnamedTabGroups:(id)a4 profileIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([v8 isRemoteDevice])
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  v12 = [WebBookmark alloc];
  v13 = [v8 deviceIdentifier];
  v14 = [(WebBookmark *)v12 initFolderWithParentID:0 subtype:v11 deviceIdentifier:v13 collectionType:1];

  v15 = [v8 title];
  [v14 setTitle:v15];

  v16 = [v8 creationDeviceIdentifier];

  if (v16)
  {
    v17 = [v8 creationDeviceIdentifier];
    [v14 setCreationDeviceIdentifier:v17];
  }

  v18 = [v8 deviceTypeIdentifier];

  if (v18)
  {
    v19 = [v8 deviceTypeIdentifier];
    [v14 setDeviceTypeIdentifier:v19];
  }

  v20 = [[a1 alloc] initWithBookmark:v14 unnamedTabGroups:v10 profileIdentifier:v9];

  return v20;
}

- (WBDevice)initWithBookmark:(id)a3 unnamedTabGroups:(id)a4 profileIdentifier:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v30.receiver = self;
  v30.super_class = WBDevice;
  v12 = [(WBDevice *)&v30 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bookmark, a3);
    v13->_remoteDevice = [v9 subtype] == 4;
    v14 = [v10 copy];
    unnamedTabGroups = v13->_unnamedTabGroups;
    v13->_unnamedTabGroups = v14;

    v16 = [v11 copy];
    profileIdentifier = v13->_profileIdentifier;
    v13->_profileIdentifier = v16;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = v10;
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        v22 = 0;
        do
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v26 + 1) + 8 * v22++) setProfileIdentifier:{v11, v26}];
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v20);
    }

    v23 = v13;
  }

  v24 = *MEMORY[0x277D85DE8];
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
      v5 = [(WBDevice *)v4 uuid];
      v6 = [(WBDevice *)self uuid];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSArray)tabs
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_unnamedTabGroups;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        v9 = [*(*(&v13 + 1) + 8 * i) tabs];
        v10 = [v9 safari_filterObjectsUsingBlock:&__block_literal_global_23];

        [v3 addObjectsFromArray:v10];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(WBDevice *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(WebBookmark *)self->_bookmark copy];
  v6 = [[WBDevice allocWithZone:?]unnamedTabGroups:"initWithBookmark:unnamedTabGroups:profileIdentifier:" profileIdentifier:v5, self->_unnamedTabGroups, self->_profileIdentifier];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WBDevice *)self _identifier];
  v7 = [(WBDevice *)self title];
  v8 = [(WBDevice *)self uuid];
  v9 = [v3 stringWithFormat:@"<%@: %p identifier = %d; title = %@; uuid = %@>", v5, self, v6, v7, v8];;

  return v9;
}

- (NSString)privacyPreservingDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WBDevice *)self _identifier];
  v7 = [(WBDevice *)self uuid];
  v8 = [v3 stringWithFormat:@"<%@: %p identifier = %d; uuid = %@>", v5, self, v6, v7];;

  return v8;
}

- (void)mergeWithDevice:(id)a3
{
  bookmark = self->_bookmark;
  v4 = [a3 bookmark];
  [(WebBookmark *)bookmark mergeWithBookmark:v4];
}

@end