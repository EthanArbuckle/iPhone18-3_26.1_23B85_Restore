@interface PLRevGeoLocationInfo
+ (BOOL)isInvalidWithPlistData:(id)data;
+ (id)_newRevGeoLocationInfoFromData:(id)data;
+ (id)countryCodeWithGEOMapItem:(id)item;
+ (id)infoFromPlistData:(id)data;
+ (id)newDataFromRevGeoLocationInfo:(id)info;
- (BOOL)hasLocation;
- (BOOL)isEqual:(id)equal;
- (BOOL)locationWasResolvedWithBestRevGeoProvider;
- (PLRevGeoLocationInfo)initWithCoder:(id)coder;
- (PLRevGeoLocationInfo)initWithGEOMapItem:(id)item;
- (PLRevGeoLocationInfo)initWithMapItem:(id)item postalAddress:(id)address addressString:(id)string countryCode:(id)code compoundNameInfo:(id)info compoundSecondaryNameInfo:(id)nameInfo isHome:(BOOL)home geoServiceProvider:(id)self0;
- (id)description;
- (id)localizedDescription;
- (id)placeNamesForLocalizedDetailedDescription;
- (id)plistData;
- (unint64_t)_locationInfoOrderForCurrentLocale;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLRevGeoLocationInfo

- (PLRevGeoLocationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([PLRevGeoLocationInfo isInvalidWithCoder:coderCopy])
  {
    selfCopy = 0;
  }

  else
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapItem"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"postalAddress"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geoServiceProvider"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"addressString"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"compoundNames"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"compoundSecondaryNames"];
    LOBYTE(v14) = [coderCopy decodeBoolForKey:@"isHome"];
    self = [(PLRevGeoLocationInfo *)self initWithMapItem:v6 postalAddress:v7 addressString:v9 countryCode:v10 compoundNameInfo:v11 compoundSecondaryNameInfo:v12 isHome:v14 geoServiceProvider:v8];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:13 forKey:@"version"];
  [coderCopy encodeObject:self->_mapItem forKey:@"mapItem"];
  [coderCopy encodeObject:self->_postalAddress forKey:@"postalAddress"];
  [coderCopy encodeObject:self->_addressString forKey:@"addressString"];
  [coderCopy encodeObject:self->_countryCode forKey:@"countryCode"];
  [coderCopy encodeObject:self->_compoundNameInfo forKey:@"compoundNames"];
  [coderCopy encodeObject:self->_compoundSecondaryNameInfo forKey:@"compoundSecondaryNames"];
  [coderCopy encodeObject:self->_geoServiceProvider forKey:@"geoServiceProvider"];
  [coderCopy encodeBool:self->_isHome forKey:@"isHome"];
}

- (id)plistData
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[ERROR] Could not encode revGeoLocationData %@ with error:%@", buf, 0x16u);
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      mapItem = self->_mapItem;
      mapItem = [(PLRevGeoLocationInfo *)v5 mapItem];
      v8 = mapItem;
      if (mapItem == mapItem)
      {
      }

      else
      {
        v9 = self->_mapItem;
        mapItem2 = [(PLRevGeoLocationInfo *)v5 mapItem];
        LODWORD(v9) = [(PLRevGeoMapItem *)v9 isEqual:mapItem2];

        if (!v9)
        {
          goto LABEL_19;
        }
      }

      addressString = self->_addressString;
      addressString = [(PLRevGeoLocationInfo *)v5 addressString];
      v14 = addressString;
      if (addressString == addressString)
      {
      }

      else
      {
        v15 = self->_addressString;
        addressString2 = [(PLRevGeoLocationInfo *)v5 addressString];
        LODWORD(v15) = [(NSString *)v15 isEqualToString:addressString2];

        if (!v15)
        {
          goto LABEL_19;
        }
      }

      compoundNameInfo = self->_compoundNameInfo;
      compoundNameInfo = [(PLRevGeoLocationInfo *)v5 compoundNameInfo];
      v19 = compoundNameInfo;
      if (compoundNameInfo == compoundNameInfo)
      {
      }

      else
      {
        v20 = self->_compoundNameInfo;
        compoundNameInfo2 = [(PLRevGeoLocationInfo *)v5 compoundNameInfo];
        LODWORD(v20) = [(PLRevGeoCompoundNameInfo *)v20 isEqual:compoundNameInfo2];

        if (!v20)
        {
          goto LABEL_19;
        }
      }

      compoundSecondaryNameInfo = self->_compoundSecondaryNameInfo;
      compoundSecondaryNameInfo = [(PLRevGeoLocationInfo *)v5 compoundSecondaryNameInfo];
      v24 = compoundSecondaryNameInfo;
      if (compoundSecondaryNameInfo == compoundSecondaryNameInfo)
      {
      }

      else
      {
        v25 = self->_compoundSecondaryNameInfo;
        compoundSecondaryNameInfo2 = [(PLRevGeoLocationInfo *)v5 compoundSecondaryNameInfo];
        LODWORD(v25) = [(PLRevGeoCompoundNameInfo *)v25 isEqual:compoundSecondaryNameInfo2];

        if (!v25)
        {
LABEL_19:
          v11 = 0;
LABEL_22:

          goto LABEL_23;
        }
      }

      isHome = self->_isHome;
      v11 = isHome == [(PLRevGeoLocationInfo *)v5 isHome];
      goto LABEL_22;
    }

    v11 = 0;
  }

LABEL_23:

  return v11;
}

- (BOOL)hasLocation
{
  compoundNameInfo = [(PLRevGeoLocationInfo *)self compoundNameInfo];
  localizedTitleForNameInfo = [compoundNameInfo localizedTitleForNameInfo];
  if ([localizedTitleForNameInfo length])
  {
    v5 = 1;
  }

  else
  {
    compoundSecondaryNameInfo = [(PLRevGeoLocationInfo *)self compoundSecondaryNameInfo];
    localizedSortedNames = [compoundSecondaryNameInfo localizedSortedNames];
    v5 = [localizedSortedNames count] != 0;
  }

  return v5;
}

- (unint64_t)_locationInfoOrderForCurrentLocale
{
  v18 = *MEMORY[0x1E69E9840];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  if (![firstObject length])
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    languageCode = [currentLocale languageCode];

    firstObject = languageCode;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [&unk_1F0FBFB98 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    v10 = 1;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(&unk_1F0FBFB98);
      }

      if ([firstObject hasPrefix:*(*(&v13 + 1) + 8 * v11)])
      {
        break;
      }

      if (v8 == ++v11)
      {
        v8 = [&unk_1F0FBFB98 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v10 = 0;
  }

  return v10;
}

- (id)placeNamesForLocalizedDetailedDescription
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(PLRevGeoLocationInfo *)self placeWithAnnotation:0];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v5 = +[PLRevGeoLocationInfo _namingOrderForAssetDetailedReverseGeoDescription];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v3 bestPlaceInfoForOrderType:{objc_msgSend(*(*(&v16 + 1) + 8 * i), "unsignedIntegerValue")}];
        placeName = [v10 placeName];
        if (placeName)
        {
          [v4 addObject:placeName];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([(PLRevGeoLocationInfo *)self _locationInfoOrderForCurrentLocale]== 1)
  {
    reversedOrderedSet = [v4 reversedOrderedSet];
  }

  else
  {
    reversedOrderedSet = v4;
  }

  v13 = reversedOrderedSet;
  v14 = [reversedOrderedSet copy];

  return v14;
}

- (id)localizedDescription
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [(PLRevGeoLocationInfo *)self placeWithAnnotation:0];
  +[PLRevGeoLocationInfo _namingOrderForAssetReverseGeoDescription];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = v30 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v28;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v3);
        }

        unsignedIntegerValue = [*(*(&v27 + 1) + 8 * i) unsignedIntegerValue];
        v11 = [v2 bestPlaceInfoForOrderType:unsignedIntegerValue];
        v12 = v11;
        if (v11)
        {
          if (!v7)
          {
            v7 = v11;
            v6 = unsignedIntegerValue;
          }

          if ([v12 hasArea])
          {
            [v12 maximumArea];
            if (v13 >= 500.0)
            {

              v6 = unsignedIntegerValue;
              v7 = v12;
              goto LABEL_16;
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

LABEL_16:

  placeName = [v7 placeName];
  v15 = placeName;
  if (!placeName)
  {
    localizedTitleForNameInfo = 0;
    goto LABEL_27;
  }

  v31 = placeName;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  if (v6 == 3)
  {
    v17 = [v2 bestPlaceInfoForOrderType:5];
    placeName2 = [v17 placeName];
    lowercaseString = [placeName2 lowercaseString];

    if (lowercaseString)
    {
      lowercaseString2 = [v15 lowercaseString];
      if ([lowercaseString containsString:lowercaseString2])
      {
      }

      else
      {
        lowercaseString3 = [v15 lowercaseString];
        v24 = [lowercaseString3 containsString:lowercaseString];

        if ((v24 & 1) == 0)
        {
          placeName3 = [v17 placeName];
          goto LABEL_25;
        }
      }
    }

    placeName3 = 0;
LABEL_25:

    goto LABEL_26;
  }

  placeName3 = 0;
LABEL_26:
  v25 = [[PLRevGeoCompoundNameInfo alloc] initWithNamePrefix:placeName3 nameSuffix:0 sortedNames:v16 isContinuation:0 suffixWhenPrefixOnly:0];
  localizedTitleForNameInfo = [(PLRevGeoCompoundNameInfo *)v25 localizedTitleForNameInfo];

LABEL_27:

  return localizedTitleForNameInfo;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PLRevGeoLocationInfo;
  v4 = [(PLRevGeoLocationInfo *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ mapItem: %@, postalAddress: %@, countryCode: %@, addressString: %@, compoundNameInfo: %@, compoundSecondaryNameInfo: %@, mapItem: %d", v4, self->_mapItem, self->_postalAddress, self->_addressString, self->_countryCode, self->_compoundNameInfo, self->_compoundSecondaryNameInfo, self->_isHome];

  return v5;
}

- (PLRevGeoLocationInfo)initWithMapItem:(id)item postalAddress:(id)address addressString:(id)string countryCode:(id)code compoundNameInfo:(id)info compoundSecondaryNameInfo:(id)nameInfo isHome:(BOOL)home geoServiceProvider:(id)self0
{
  itemCopy = item;
  addressCopy = address;
  stringCopy = string;
  codeCopy = code;
  infoCopy = info;
  obj = nameInfo;
  nameInfoCopy = nameInfo;
  providerCopy = provider;
  v28.receiver = self;
  v28.super_class = PLRevGeoLocationInfo;
  v20 = [(PLRevGeoLocationInfo *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_mapItem, item);
    objc_storeStrong(&v21->_postalAddress, address);
    objc_storeStrong(&v21->_addressString, string);
    objc_storeStrong(&v21->_countryCode, code);
    objc_storeStrong(&v21->_compoundNameInfo, info);
    objc_storeStrong(&v21->_compoundSecondaryNameInfo, obj);
    v21->_isHome = home;
    objc_storeStrong(&v21->_geoServiceProvider, provider);
  }

  return v21;
}

+ (BOOL)isInvalidWithPlistData:(id)data
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v11 = 0;
  v6 = [[v4 alloc] initForReadingFromData:dataCopy error:&v11];

  v7 = v11;
  if (v7)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "[ERROR] Could not create unarchiver for revGeoLocationData with error:%@", buf, 0xCu);
    }

    v9 = 1;
  }

  else
  {
    v9 = [self isInvalidWithCoder:v6];
    [v6 finishDecoding];
  }

  return v9;
}

+ (id)infoFromPlistData:(id)data
{
  v12 = *MEMORY[0x1E69E9840];
  if (data)
  {
    v3 = MEMORY[0x1E696ACD0];
    dataCopy = data;
    v9 = 0;
    v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v9];

    v6 = v9;
    if (!v5)
    {
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "[ERROR] Could not decode revGeoLocationData with error:%@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_newRevGeoLocationInfoFromData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:0];
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)newDataFromRevGeoLocationInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:infoCopy format:200 options:0 error:0];
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PLRevGeoLocationInfo)initWithGEOMapItem:(id)item
{
  itemCopy = item;
  v5 = [PLRevGeoMapItem mapItemWithGEOMapItem:itemCopy];
  geoAddress = [itemCopy geoAddress];
  postalAddress = [geoAddress postalAddress];

  addressObject = [itemCopy addressObject];
  v9 = [addressObject fullAddressWithMultiline:0];

  v10 = [PLRevGeoLocationInfo countryCodeWithGEOMapItem:itemCopy];

  v11 = +[PLRevGeoLocationHelper currentRevGeoProvider];
  LOBYTE(v14) = 0;
  v12 = [(PLRevGeoLocationInfo *)self initWithMapItem:v5 postalAddress:postalAddress addressString:v9 countryCode:v10 compoundNameInfo:0 compoundSecondaryNameInfo:0 isHome:v14 geoServiceProvider:v11];

  return v12;
}

- (BOOL)locationWasResolvedWithBestRevGeoProvider
{
  v3 = +[PLRevGeoLocationHelper currentRevGeoProvider];
  geoServiceProvider = [(PLRevGeoLocationInfo *)self geoServiceProvider];
  if (([v3 isEqualToString:geoServiceProvider] & 1) != 0 || (v5 = +[PLRevGeoLocationHelper isAutoNaviRevGeoProvider:](PLRevGeoLocationHelper, "isAutoNaviRevGeoProvider:", geoServiceProvider), -[PLRevGeoLocationInfo countryCode](self, "countryCode"), v6 = objc_claimAutoreleasedReturnValue(), v7 = +[PLRevGeoLocationHelper isAutoNaviCountryCode:](PLRevGeoLocationHelper, "isAutoNaviCountryCode:", v6), v6, v5 == v7))
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = v7 ^ +[PLRevGeoLocationHelper isCurrentRevGeoProviderAutoNavi];
  }

  return v8;
}

+ (id)countryCodeWithGEOMapItem:(id)item
{
  geoAddress = [item geoAddress];
  v4 = geoAddress;
  if (geoAddress && [geoAddress hasStructuredAddress])
  {
    structuredAddress = [v4 structuredAddress];
    if ([structuredAddress hasCountryCode])
    {
      countryCode = [structuredAddress countryCode];
      v7 = [countryCode copy];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end