@interface WBDevice
+ (id)deviceWithParameters:(id)parameters unnamedTabGroups:(id)groups profileIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSArray)tabs;
- (NSString)description;
- (NSString)privacyPreservingDescription;
- (WBDevice)initWithBookmark:(id)bookmark unnamedTabGroups:(id)groups profileIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)mergeWithDevice:(id)device;
@end

@implementation WBDevice

+ (id)deviceWithParameters:(id)parameters unnamedTabGroups:(id)groups profileIdentifier:(id)identifier
{
  parametersCopy = parameters;
  identifierCopy = identifier;
  groupsCopy = groups;
  if ([parametersCopy isRemoteDevice])
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  v12 = [WebBookmark alloc];
  deviceIdentifier = [parametersCopy deviceIdentifier];
  v14 = [(WebBookmark *)v12 initFolderWithParentID:0 subtype:v11 deviceIdentifier:deviceIdentifier collectionType:1];

  title = [parametersCopy title];
  [v14 setTitle:title];

  creationDeviceIdentifier = [parametersCopy creationDeviceIdentifier];

  if (creationDeviceIdentifier)
  {
    creationDeviceIdentifier2 = [parametersCopy creationDeviceIdentifier];
    [v14 setCreationDeviceIdentifier:creationDeviceIdentifier2];
  }

  deviceTypeIdentifier = [parametersCopy deviceTypeIdentifier];

  if (deviceTypeIdentifier)
  {
    deviceTypeIdentifier2 = [parametersCopy deviceTypeIdentifier];
    [v14 setDeviceTypeIdentifier:deviceTypeIdentifier2];
  }

  v20 = [[self alloc] initWithBookmark:v14 unnamedTabGroups:groupsCopy profileIdentifier:identifierCopy];

  return v20;
}

- (WBDevice)initWithBookmark:(id)bookmark unnamedTabGroups:(id)groups profileIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  groupsCopy = groups;
  identifierCopy = identifier;
  v30.receiver = self;
  v30.super_class = WBDevice;
  v12 = [(WBDevice *)&v30 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bookmark, bookmark);
    v13->_remoteDevice = [bookmarkCopy subtype] == 4;
    v14 = [groupsCopy copy];
    unnamedTabGroups = v13->_unnamedTabGroups;
    v13->_unnamedTabGroups = v14;

    v16 = [identifierCopy copy];
    profileIdentifier = v13->_profileIdentifier;
    v13->_profileIdentifier = v16;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = groupsCopy;
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

          [*(*(&v26 + 1) + 8 * v22++) setProfileIdentifier:{identifierCopy, v26}];
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
      uuid = [(WBDevice *)equalCopy uuid];
      uuid2 = [(WBDevice *)self uuid];
      v7 = [uuid isEqual:uuid2];
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
  array = [MEMORY[0x277CBEB18] array];
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

        tabs = [*(*(&v13 + 1) + 8 * i) tabs];
        v10 = [tabs safari_filterObjectsUsingBlock:&__block_literal_global_23];

        [array addObjectsFromArray:v10];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return array;
}

- (unint64_t)hash
{
  uuid = [(WBDevice *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
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
  _identifier = [(WBDevice *)self _identifier];
  title = [(WBDevice *)self title];
  uuid = [(WBDevice *)self uuid];
  v9 = [v3 stringWithFormat:@"<%@: %p identifier = %d; title = %@; uuid = %@>", v5, self, _identifier, title, uuid];;

  return v9;
}

- (NSString)privacyPreservingDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  _identifier = [(WBDevice *)self _identifier];
  uuid = [(WBDevice *)self uuid];
  v8 = [v3 stringWithFormat:@"<%@: %p identifier = %d; uuid = %@>", v5, self, _identifier, uuid];;

  return v8;
}

- (void)mergeWithDevice:(id)device
{
  bookmark = self->_bookmark;
  bookmark = [device bookmark];
  [(WebBookmark *)bookmark mergeWithBookmark:bookmark];
}

@end