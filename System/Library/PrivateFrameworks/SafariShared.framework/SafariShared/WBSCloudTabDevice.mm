@interface WBSCloudTabDevice
+ (BOOL)isCloudTabDeviceDictionary:(id)dictionary;
+ (unint64_t)tabCountInDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (NSString)disambiguatedName;
- (WBSCloudTabDevice)initWithDeviceName:(id)name lastModified:(id)modified hasDuplicateName:(BOOL)duplicateName tabs:(id)tabs uuid:(id)uuid isEphemeralDevice:(BOOL)device;
- (WBSCloudTabDevice)initWithDictionary:(id)dictionary uuid:(id)uuid;
- (WBSCloudTabDevice)initWithParameters:(id)parameters uuid:(id)uuid;
- (id)deviceByRemovingTab:(id)tab;
- (id)deviceByRemovingTabs:(id)tabs;
- (id)deviceBySettingDisambiguatedName:(id)name;
@end

@implementation WBSCloudTabDevice

- (WBSCloudTabDevice)initWithDictionary:(id)dictionary uuid:(id)uuid
{
  uuidCopy = uuid;
  v7 = [WBSCloudTabDeviceParameters parametersWithDictionary:dictionary];
  v8 = [(WBSCloudTabDevice *)self initWithParameters:v7 uuid:uuidCopy];

  return v8;
}

- (WBSCloudTabDevice)initWithParameters:(id)parameters uuid:(id)uuid
{
  parametersCopy = parameters;
  uuidCopy = uuid;
  v21.receiver = self;
  v21.super_class = WBSCloudTabDevice;
  v8 = [(WBSCloudTabDevice *)&v21 init];
  if (v8)
  {
    v8->_closeRequestSupported = [parametersCopy closeRequestSupported];
    v8->_cloudKitBookmarkSyncingSupported = [parametersCopy cloudKitBookmarkSyncingSupported];
    deviceTypeIdentifier = [parametersCopy deviceTypeIdentifier];
    deviceTypeIdentifier = v8->_deviceTypeIdentifier;
    v8->_deviceTypeIdentifier = deviceTypeIdentifier;

    v8->_ephemeralDevice = [parametersCopy isEphemeralDevice];
    v8->_hasDuplicateName = [parametersCopy hasDuplicateName];
    lastModified = [parametersCopy lastModified];
    lastModified = v8->_lastModified;
    v8->_lastModified = lastModified;

    deviceName = [parametersCopy deviceName];
    name = v8->_name;
    v8->_name = deviceName;

    tabs = [parametersCopy tabs];
    tabs = v8->_tabs;
    v8->_tabs = tabs;

    v17 = [uuidCopy copy];
    uuid = v8->_uuid;
    v8->_uuid = v17;

    v19 = v8;
  }

  return v8;
}

- (WBSCloudTabDevice)initWithDeviceName:(id)name lastModified:(id)modified hasDuplicateName:(BOOL)duplicateName tabs:(id)tabs uuid:(id)uuid isEphemeralDevice:(BOOL)device
{
  deviceCopy = device;
  duplicateNameCopy = duplicateName;
  uuidCopy = uuid;
  tabsCopy = tabs;
  modifiedCopy = modified;
  nameCopy = name;
  v18 = objc_alloc_init(WBSCloudTabDeviceParameters);
  [(WBSCloudTabDeviceParameters *)v18 setDeviceName:nameCopy];

  [(WBSCloudTabDeviceParameters *)v18 setLastModified:modifiedCopy];
  [(WBSCloudTabDeviceParameters *)v18 setHasDuplicateName:duplicateNameCopy];
  [(WBSCloudTabDeviceParameters *)v18 setTabs:tabsCopy];

  [(WBSCloudTabDeviceParameters *)v18 setEphemeralDevice:deviceCopy];
  v19 = [(WBSCloudTabDevice *)self initWithParameters:v18 uuid:uuidCopy];

  return v19;
}

- (NSString)disambiguatedName
{
  disambiguatedName = self->_disambiguatedName;
  if (!disambiguatedName)
  {
    disambiguatedName = self->_name;
  }

  return disambiguatedName;
}

- (id)deviceByRemovingTab:(id)tab
{
  tabCopy = tab;
  tabs = self->_tabs;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__WBSCloudTabDevice_deviceByRemovingTab___block_invoke;
  v12[3] = &unk_1E7FB8768;
  v6 = tabCopy;
  v13 = v6;
  v7 = [(NSArray *)tabs indexOfObjectPassingTest:v12];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(WBSCloudTabDevice *)self copy];
  }

  else
  {
    v9 = v7;
    v10 = [(NSArray *)self->_tabs mutableCopy];
    [v10 removeObjectAtIndex:v9];
    v8 = [[WBSCloudTabDevice alloc] initWithDeviceName:self->_name lastModified:self->_lastModified hasDuplicateName:self->_hasDuplicateName tabs:v10 uuid:self->_uuid isEphemeralDevice:self->_ephemeralDevice];
  }

  return v8;
}

- (id)deviceByRemovingTabs:(id)tabs
{
  tabsCopy = tabs;
  tabs = self->_tabs;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__WBSCloudTabDevice_deviceByRemovingTabs___block_invoke;
  v11[3] = &unk_1E7FB8768;
  v6 = tabsCopy;
  v12 = v6;
  v7 = [(NSArray *)tabs indexesOfObjectsPassingTest:v11];
  if ([v7 count])
  {
    v8 = [(NSArray *)self->_tabs mutableCopy];
    [v8 removeObjectsAtIndexes:v7];
    v9 = [[WBSCloudTabDevice alloc] initWithDeviceName:self->_name lastModified:self->_lastModified hasDuplicateName:self->_hasDuplicateName tabs:v8 uuid:self->_uuid isEphemeralDevice:self->_ephemeralDevice];
  }

  else
  {
    v9 = [(WBSCloudTabDevice *)self copy];
  }

  return v9;
}

uint64_t __42__WBSCloudTabDevice_deviceByRemovingTabs___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * i) hasSameUUIDAndURLAsTab:{v3, v9}])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)deviceBySettingDisambiguatedName:(id)name
{
  nameCopy = name;
  v5 = [[WBSCloudTabDevice alloc] initWithDeviceName:self->_name lastModified:self->_lastModified hasDuplicateName:self->_hasDuplicateName tabs:self->_tabs uuid:self->_uuid isEphemeralDevice:self->_ephemeralDevice];
  v6 = [nameCopy copy];

  disambiguatedName = v5->_disambiguatedName;
  v5->_disambiguatedName = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (uuid = self->_uuid, [(WBSCloudTabDevice *)equalCopy uuid], v6 = objc_claimAutoreleasedReturnValue(), LODWORD(uuid) = [(NSString *)uuid isEqualToString:v6], v6, uuid))
    {
      dictionaryRepresentation = [(WBSCloudTabDevice *)self dictionaryRepresentation];
      dictionaryRepresentation2 = [(WBSCloudTabDevice *)equalCopy dictionaryRepresentation];
      v9 = [dictionaryRepresentation isEqualToDictionary:dictionaryRepresentation2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = self->_name;
  uuid = self->_uuid;
  closeRequestSupported = self->_closeRequestSupported;
  lastModified = self->_lastModified;
  v10 = [(NSArray *)self->_tabs componentsJoinedByString:@", \r    "];
  v11 = [v3 stringWithFormat:@"<%@: %p name = %@; uuid = %@; closeRequestSupported = %d; lastModified = %@; tabs = (\r    %@\r)>", v5, self, name, uuid, closeRequestSupported, lastModified, v10];;

  return v11;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [WBSCloudTabDeviceParameters parametersWithDevice:self];
  dictionaryRepresentation = [v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

+ (BOOL)isCloudTabDeviceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [dictionaryCopy safari_stringForKey:@"DictionaryType"];
    if ([v4 length])
    {
      v5 = [v4 isEqualToString:@"Device"];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)tabCountInDictionary:(id)dictionary
{
  v3 = [dictionary safari_arrayForKey:@"Tabs"];
  v4 = [v3 count];

  return v4;
}

@end