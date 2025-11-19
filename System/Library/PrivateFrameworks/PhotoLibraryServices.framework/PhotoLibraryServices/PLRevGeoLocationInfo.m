@interface PLRevGeoLocationInfo
+ (BOOL)isInvalidWithPlistData:(id)a3;
+ (id)_newRevGeoLocationInfoFromData:(id)a3;
+ (id)countryCodeWithGEOMapItem:(id)a3;
+ (id)infoFromPlistData:(id)a3;
+ (id)newDataFromRevGeoLocationInfo:(id)a3;
- (BOOL)hasLocation;
- (BOOL)isEqual:(id)a3;
- (BOOL)locationWasResolvedWithBestRevGeoProvider;
- (PLRevGeoLocationInfo)initWithCoder:(id)a3;
- (PLRevGeoLocationInfo)initWithGEOMapItem:(id)a3;
- (PLRevGeoLocationInfo)initWithMapItem:(id)a3 postalAddress:(id)a4 addressString:(id)a5 countryCode:(id)a6 compoundNameInfo:(id)a7 compoundSecondaryNameInfo:(id)a8 isHome:(BOOL)a9 geoServiceProvider:(id)a10;
- (id)description;
- (id)localizedDescription;
- (id)placeNamesForLocalizedDetailedDescription;
- (id)plistData;
- (unint64_t)_locationInfoOrderForCurrentLocale;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLRevGeoLocationInfo

- (PLRevGeoLocationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  if ([PLRevGeoLocationInfo isInvalidWithCoder:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapItem"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"postalAddress"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"geoServiceProvider"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"addressString"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"compoundNames"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"compoundSecondaryNames"];
    LOBYTE(v14) = [v4 decodeBoolForKey:@"isHome"];
    self = [(PLRevGeoLocationInfo *)self initWithMapItem:v6 postalAddress:v7 addressString:v9 countryCode:v10 compoundNameInfo:v11 compoundSecondaryNameInfo:v12 isHome:v14 geoServiceProvider:v8];

    v5 = self;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:13 forKey:@"version"];
  [v4 encodeObject:self->_mapItem forKey:@"mapItem"];
  [v4 encodeObject:self->_postalAddress forKey:@"postalAddress"];
  [v4 encodeObject:self->_addressString forKey:@"addressString"];
  [v4 encodeObject:self->_countryCode forKey:@"countryCode"];
  [v4 encodeObject:self->_compoundNameInfo forKey:@"compoundNames"];
  [v4 encodeObject:self->_compoundSecondaryNameInfo forKey:@"compoundSecondaryNames"];
  [v4 encodeObject:self->_geoServiceProvider forKey:@"geoServiceProvider"];
  [v4 encodeBool:self->_isHome forKey:@"isHome"];
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
      v9 = self;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[ERROR] Could not encode revGeoLocationData %@ with error:%@", buf, 0x16u);
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      mapItem = self->_mapItem;
      v7 = [(PLRevGeoLocationInfo *)v5 mapItem];
      v8 = v7;
      if (mapItem == v7)
      {
      }

      else
      {
        v9 = self->_mapItem;
        v10 = [(PLRevGeoLocationInfo *)v5 mapItem];
        LODWORD(v9) = [(PLRevGeoMapItem *)v9 isEqual:v10];

        if (!v9)
        {
          goto LABEL_19;
        }
      }

      addressString = self->_addressString;
      v13 = [(PLRevGeoLocationInfo *)v5 addressString];
      v14 = v13;
      if (addressString == v13)
      {
      }

      else
      {
        v15 = self->_addressString;
        v16 = [(PLRevGeoLocationInfo *)v5 addressString];
        LODWORD(v15) = [(NSString *)v15 isEqualToString:v16];

        if (!v15)
        {
          goto LABEL_19;
        }
      }

      compoundNameInfo = self->_compoundNameInfo;
      v18 = [(PLRevGeoLocationInfo *)v5 compoundNameInfo];
      v19 = v18;
      if (compoundNameInfo == v18)
      {
      }

      else
      {
        v20 = self->_compoundNameInfo;
        v21 = [(PLRevGeoLocationInfo *)v5 compoundNameInfo];
        LODWORD(v20) = [(PLRevGeoCompoundNameInfo *)v20 isEqual:v21];

        if (!v20)
        {
          goto LABEL_19;
        }
      }

      compoundSecondaryNameInfo = self->_compoundSecondaryNameInfo;
      v23 = [(PLRevGeoLocationInfo *)v5 compoundSecondaryNameInfo];
      v24 = v23;
      if (compoundSecondaryNameInfo == v23)
      {
      }

      else
      {
        v25 = self->_compoundSecondaryNameInfo;
        v26 = [(PLRevGeoLocationInfo *)v5 compoundSecondaryNameInfo];
        LODWORD(v25) = [(PLRevGeoCompoundNameInfo *)v25 isEqual:v26];

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
  v3 = [(PLRevGeoLocationInfo *)self compoundNameInfo];
  v4 = [v3 localizedTitleForNameInfo];
  if ([v4 length])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PLRevGeoLocationInfo *)self compoundSecondaryNameInfo];
    v7 = [v6 localizedSortedNames];
    v5 = [v7 count] != 0;
  }

  return v5;
}

- (unint64_t)_locationInfoOrderForCurrentLocale
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 preferredLocalizations];
  v4 = [v3 firstObject];

  if (![v4 length])
  {
    v5 = [MEMORY[0x1E695DF58] currentLocale];
    v6 = [v5 languageCode];

    v4 = v6;
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

      if ([v4 hasPrefix:*(*(&v13 + 1) + 8 * v11)])
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
        v11 = [v10 placeName];
        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([(PLRevGeoLocationInfo *)self _locationInfoOrderForCurrentLocale]== 1)
  {
    v12 = [v4 reversedOrderedSet];
  }

  else
  {
    v12 = v4;
  }

  v13 = v12;
  v14 = [v12 copy];

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

        v10 = [*(*(&v27 + 1) + 8 * i) unsignedIntegerValue];
        v11 = [v2 bestPlaceInfoForOrderType:v10];
        v12 = v11;
        if (v11)
        {
          if (!v7)
          {
            v7 = v11;
            v6 = v10;
          }

          if ([v12 hasArea])
          {
            [v12 maximumArea];
            if (v13 >= 500.0)
            {

              v6 = v10;
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

  v14 = [v7 placeName];
  v15 = v14;
  if (!v14)
  {
    v21 = 0;
    goto LABEL_27;
  }

  v31 = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  if (v6 == 3)
  {
    v17 = [v2 bestPlaceInfoForOrderType:5];
    v18 = [v17 placeName];
    v19 = [v18 lowercaseString];

    if (v19)
    {
      v20 = [v15 lowercaseString];
      if ([v19 containsString:v20])
      {
      }

      else
      {
        v23 = [v15 lowercaseString];
        v24 = [v23 containsString:v19];

        if ((v24 & 1) == 0)
        {
          v22 = [v17 placeName];
          goto LABEL_25;
        }
      }
    }

    v22 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v22 = 0;
LABEL_26:
  v25 = [[PLRevGeoCompoundNameInfo alloc] initWithNamePrefix:v22 nameSuffix:0 sortedNames:v16 isContinuation:0 suffixWhenPrefixOnly:0];
  v21 = [(PLRevGeoCompoundNameInfo *)v25 localizedTitleForNameInfo];

LABEL_27:

  return v21;
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

- (PLRevGeoLocationInfo)initWithMapItem:(id)a3 postalAddress:(id)a4 addressString:(id)a5 countryCode:(id)a6 compoundNameInfo:(id)a7 compoundSecondaryNameInfo:(id)a8 isHome:(BOOL)a9 geoServiceProvider:(id)a10
{
  v17 = a3;
  v18 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  obj = a8;
  v24 = a8;
  v19 = a10;
  v28.receiver = self;
  v28.super_class = PLRevGeoLocationInfo;
  v20 = [(PLRevGeoLocationInfo *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_mapItem, a3);
    objc_storeStrong(&v21->_postalAddress, a4);
    objc_storeStrong(&v21->_addressString, a5);
    objc_storeStrong(&v21->_countryCode, a6);
    objc_storeStrong(&v21->_compoundNameInfo, a7);
    objc_storeStrong(&v21->_compoundSecondaryNameInfo, obj);
    v21->_isHome = a9;
    objc_storeStrong(&v21->_geoServiceProvider, a10);
  }

  return v21;
}

+ (BOOL)isInvalidWithPlistData:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ACD0];
  v5 = a3;
  v11 = 0;
  v6 = [[v4 alloc] initForReadingFromData:v5 error:&v11];

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
    v9 = [a1 isInvalidWithCoder:v6];
    [v6 finishDecoding];
  }

  return v9;
}

+ (id)infoFromPlistData:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = MEMORY[0x1E696ACD0];
    v4 = a3;
    v9 = 0;
    v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v9];

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

+ (id)_newRevGeoLocationInfoFromData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:0];
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)newDataFromRevGeoLocationInfo:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:0];
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PLRevGeoLocationInfo)initWithGEOMapItem:(id)a3
{
  v4 = a3;
  v5 = [PLRevGeoMapItem mapItemWithGEOMapItem:v4];
  v6 = [v4 geoAddress];
  v7 = [v6 postalAddress];

  v8 = [v4 addressObject];
  v9 = [v8 fullAddressWithMultiline:0];

  v10 = [PLRevGeoLocationInfo countryCodeWithGEOMapItem:v4];

  v11 = +[PLRevGeoLocationHelper currentRevGeoProvider];
  LOBYTE(v14) = 0;
  v12 = [(PLRevGeoLocationInfo *)self initWithMapItem:v5 postalAddress:v7 addressString:v9 countryCode:v10 compoundNameInfo:0 compoundSecondaryNameInfo:0 isHome:v14 geoServiceProvider:v11];

  return v12;
}

- (BOOL)locationWasResolvedWithBestRevGeoProvider
{
  v3 = +[PLRevGeoLocationHelper currentRevGeoProvider];
  v4 = [(PLRevGeoLocationInfo *)self geoServiceProvider];
  if (([v3 isEqualToString:v4] & 1) != 0 || (v5 = +[PLRevGeoLocationHelper isAutoNaviRevGeoProvider:](PLRevGeoLocationHelper, "isAutoNaviRevGeoProvider:", v4), -[PLRevGeoLocationInfo countryCode](self, "countryCode"), v6 = objc_claimAutoreleasedReturnValue(), v7 = +[PLRevGeoLocationHelper isAutoNaviCountryCode:](PLRevGeoLocationHelper, "isAutoNaviCountryCode:", v6), v6, v5 == v7))
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = v7 ^ +[PLRevGeoLocationHelper isCurrentRevGeoProviderAutoNavi];
  }

  return v8;
}

+ (id)countryCodeWithGEOMapItem:(id)a3
{
  v3 = [a3 geoAddress];
  v4 = v3;
  if (v3 && [v3 hasStructuredAddress])
  {
    v5 = [v4 structuredAddress];
    if ([v5 hasCountryCode])
    {
      v6 = [v5 countryCode];
      v7 = [v6 copy];
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