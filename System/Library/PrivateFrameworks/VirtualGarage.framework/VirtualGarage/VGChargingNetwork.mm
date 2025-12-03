@interface VGChargingNetwork
- (BOOL)isEqual:(id)equal;
- (VGChargingNetwork)initWithBrandInfoMapping:(id)mapping;
- (VGChargingNetwork)initWithChargingNetworkStorage:(id)storage;
- (VGChargingNetwork)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VGChargingNetwork

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [equalCopy globalBrandID] == self->_globalBrandID;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  globalBrandID = self->_globalBrandID;
  coderCopy = coder;
  [coderCopy encodeInt64:globalBrandID forKey:@"_globalBrandID"];
  [coderCopy encodeObject:self->_name forKey:@"_name"];
}

- (VGChargingNetwork)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = VGChargingNetwork;
  v5 = [(VGChargingNetwork *)&v9 init];
  if (v5)
  {
    v5->_globalBrandID = [coderCopy decodeInt64ForKey:@"_globalBrandID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VGChargingNetwork);
  v4->_globalBrandID = self->_globalBrandID;
  v5 = [(NSString *)self->_name copy];
  name = v4->_name;
  v4->_name = v5;

  return v4;
}

- (VGChargingNetwork)initWithChargingNetworkStorage:(id)storage
{
  v16 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  if ([storageCopy hasIdentifier])
  {
    v13.receiver = self;
    v13.super_class = VGChargingNetwork;
    v5 = [(VGChargingNetwork *)&v13 init];
    if (v5)
    {
      name = [storageCopy name];
      v7 = [name copy];
      name = v5->_name;
      v5->_name = v7;

      v5->_globalBrandID = [storageCopy identifier];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v10 = VGGetChargingNetworksLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = storageCopy;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "Failed to initialize a network with storage: %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (VGChargingNetwork)initWithBrandInfoMapping:(id)mapping
{
  selfCopy = self;
  v41 = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale countryCode];
  lowercaseString = [countryCode lowercaseString];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = mappingCopy;
  scopedBrandInfos = [mappingCopy scopedBrandInfos];
  v8 = [scopedBrandInfos countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v35;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v35 != v11)
      {
        objc_enumerationMutation(scopedBrandInfos);
      }

      v13 = *(*(&v34 + 1) + 8 * v12);
      isoCountryCode = [v13 isoCountryCode];
      v15 = [lowercaseString isEqualToString:isoCountryCode];

      if (v15)
      {
        break;
      }

      isoCountryCode2 = [v13 isoCountryCode];
      v17 = [@"global" isEqualToString:isoCountryCode2];

      if (v17)
      {
        v18 = v13;

        v10 = v18;
      }

      if (v9 == ++v12)
      {
        v9 = [scopedBrandInfos countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    v19 = v13;

    v21 = selfCopy;
    v20 = v32;
    if (v19)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = 0;
LABEL_15:

    v21 = selfCopy;
    v20 = v32;
  }

  v22 = VGGetChargingNetworksLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v39 = v20;
    _os_log_impl(&dword_270EC1000, v22, OS_LOG_TYPE_INFO, "Didn't find local scoped brand info in mapping: %@, falling back to global", buf, 0xCu);
  }

  v10 = v10;
  v19 = v10;
LABEL_19:
  v23 = MEMORY[0x277D0EB70];
  localizedNames = [v19 localizedNames];
  v25 = [v23 bestStringForCurrentLocale:localizedNames fallbackToFirstAvailable:1];

  if (v25)
  {
    v33.receiver = v21;
    v33.super_class = VGChargingNetwork;
    v26 = [(VGChargingNetwork *)&v33 init];
    if (v26)
    {
      v26->_globalBrandID = [v20 globalBrandId];
      objc_storeStrong(&v26->_name, v25);
    }

    v21 = v26;
    v27 = v21;
  }

  else
  {
    v28 = VGGetChargingNetworksLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v39 = v20;
      _os_log_impl(&dword_270EC1000, v28, OS_LOG_TYPE_ERROR, "Failed to initialize a network with mapping: %{public}@", buf, 0xCu);
    }

    v27 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v27;
}

@end