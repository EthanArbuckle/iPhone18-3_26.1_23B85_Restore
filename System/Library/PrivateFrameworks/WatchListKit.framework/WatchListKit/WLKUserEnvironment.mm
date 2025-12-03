@interface WLKUserEnvironment
+ (id)currentEnvironment;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEnvironment:(id)environment;
- (BOOL)isRunningInTVAppExtension;
- (BOOL)isRunningInTVExtension;
- (WLKUserEnvironment)init;
- (id)_consentQuery;
- (id)_entitlementsQuery;
- (id)_queryParametersV3;
- (id)_queryPostV3;
- (id)description;
- (unint64_t)hash;
@end

@implementation WLKUserEnvironment

+ (id)currentEnvironment
{
  if (__currentEnvironmentForTesting)
  {
    v2 = __currentEnvironmentForTesting;
  }

  else
  {
    v2 = objc_alloc_init(WLKUserEnvironment);
  }

  return v2;
}

- (WLKUserEnvironment)init
{
  v42.receiver = self;
  v42.super_class = WLKUserEnvironment;
  v2 = [(WLKUserEnvironment *)&v42 init];
  if (v2)
  {
    v2->_protocolVersion = WLKCurrentProtocolVersion();
    activeOrLocalAccount = [MEMORY[0x277D6C478] activeOrLocalAccount];
    ams_DSID = [activeOrLocalAccount ams_DSID];
    DSID = v2->_DSID;
    v2->_DSID = ams_DSID;

    ams_storefront = [activeOrLocalAccount ams_storefront];
    storeFrontIdentifier = v2->_storeFrontIdentifier;
    v2->_storeFrontIdentifier = ams_storefront;

    v8 = +[WLKAppLibrary defaultAppLibrary];
    dictionaryRepresentation = [v8 dictionaryRepresentation];
    entitlements = v2->_entitlements;
    v2->_entitlements = dictionaryRepresentation;

    v11 = WLKRestrictionsCountryCode();
    countryCode = v2->_countryCode;
    v2->_countryCode = v11;

    v13 = WLKRestrictionsMaximumEffectiveMovieRanking();
    movieRanking = v2->_movieRanking;
    v2->_movieRanking = v13;

    v15 = WLKRestrictionsMaximumEffectiveTVShowRanking();
    tvShowRanking = v2->_tvShowRanking;
    v2->_tvShowRanking = v15;

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@-%@", v2->_countryCode, v2->_movieRanking, v2->_tvShowRanking];
    restrictions = v2->_restrictions;
    v2->_restrictions = v17;

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v20 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];
    languageIdentifier = v2->_languageIdentifier;
    v2->_languageIdentifier = v20;

    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    v23 = [currentLocale2 objectForKey:*MEMORY[0x277CBE690]];
    countryIdentifier = v2->_countryIdentifier;
    v2->_countryIdentifier = v23;

    if (os_variant_has_internal_content())
    {
      v2->_internalBuild = 1;
    }

    if (v2->_DSID)
    {
      v25 = +[WLKSettingsStore sharedSettings];
      deniedBrands = [v25 deniedBrands];
      deniedBrands = v2->_deniedBrands;
      v2->_deniedBrands = deniedBrands;

      v28 = +[WLKSettingsStore sharedSettings];
      consentedBrands = [v28 consentedBrands];
      consentedBrands = v2->_consentedBrands;
      v2->_consentedBrands = consentedBrands;

      v31 = +[WLKSettingsStore sharedSettings];
      v2->_consented = [v31 optedIn];
    }

    else
    {
      v32 = v2->_deniedBrands;
      v33 = MEMORY[0x277CBEBF8];
      v2->_deniedBrands = MEMORY[0x277CBEBF8];

      v31 = v2->_consentedBrands;
      v2->_consentedBrands = v33;
    }

    v34 = MGCopyAnswer();
    objc_storeStrong(&v2->_platform, v34);
    if (([v34 isEqualToString:@"iPhone"] & 1) != 0 || objc_msgSend(v34, "isEqualToString:", @"iPod"))
    {
      if ([(WLKUserEnvironment *)v2 isRunningInTVExtension])
      {
        isRunningInTVAppExtension = [(WLKUserEnvironment *)v2 isRunningInTVAppExtension];
        v36 = @"iPhone-extension";
        if (isRunningInTVAppExtension)
        {
          v36 = @"vision-companion";
        }
      }

      else
      {
        v36 = @"iphone";
      }

      platform = v2->_platform;
      v2->_platform = &v36->isa;
    }

    if ([v34 isEqualToString:@"iPad"])
    {
      if ([(WLKUserEnvironment *)v2 isRunningInTVExtension])
      {
        isRunningInTVAppExtension2 = [(WLKUserEnvironment *)v2 isRunningInTVAppExtension];
        v39 = @"iPad-extension";
        if (isRunningInTVAppExtension2)
        {
          v39 = @"vision-companion";
        }
      }

      else
      {
        v39 = @"ipad";
      }
    }

    else if ([v34 isEqualToString:@"AppleTV"])
    {
      v39 = @"atv";
    }

    else if ([v34 isEqualToString:@"Watch"])
    {
      v39 = @"watch";
    }

    else
    {
      if (![v34 isEqualToString:@"Mac"])
      {
LABEL_28:

        return v2;
      }

      v39 = @"desktop";
    }

    v40 = v2->_platform;
    v2->_platform = &v39->isa;

    goto LABEL_28;
  }

  return v2;
}

- (BOOL)isRunningInTVExtension
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  tvExtensionBundleIDs = [(WLKUserEnvironment *)self tvExtensionBundleIDs];
  LOBYTE(mainBundle) = [tvExtensionBundleIDs containsObject:bundleIdentifier];

  return mainBundle;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  _queryParametersV3 = [(WLKUserEnvironment *)self _queryParametersV3];
  _queryPostV3 = [(WLKUserEnvironment *)self _queryPostV3];
  [v3 wlk_setObjectUnlessNilOrEmpty:_queryParametersV3 forKey:@"params"];
  [v3 wlk_setObjectUnlessNilOrEmpty:_queryPostV3 forKey:@"post"];
  [v3 wlk_setObjectUnlessNil:self->_DSID forKey:@"account"];
  [v3 wlk_setObjectUnlessNil:self->_languageIdentifier forKey:@"language"];
  wlk_deepHash = [v3 wlk_deepHash];

  return wlk_deepHash;
}

- (id)_queryParametersV3
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", -[WLKUserEnvironment protocolVersion](self, "protocolVersion")];
  [v3 wlk_setObjectUnlessNil:v4 forKey:@"v"];
  platform = [(WLKUserEnvironment *)self platform];
  [v3 wlk_setObjectUnlessNil:platform forKey:@"pfm"];

  [v3 wlk_setObjectUnlessNil:self->_countryIdentifier forKey:@"region"];
  storeFrontIdentifier = [(WLKUserEnvironment *)self storeFrontIdentifier];
  [v3 wlk_setObjectUnlessNil:storeFrontIdentifier forKey:@"sfh"];

  if ([(WLKUserEnvironment *)self internalBuild])
  {
    [v3 setObject:@"true" forKeyedSubscript:@"ib"];
  }

  movieRanking = [(WLKUserEnvironment *)self movieRanking];

  if (movieRanking)
  {
    v8 = MEMORY[0x277CCACA8];
    countryCode = [(WLKUserEnvironment *)self countryCode];
    movieRanking2 = [(WLKUserEnvironment *)self movieRanking];
    v11 = [v8 stringWithFormat:@"%@:%lu", countryCode, objc_msgSend(movieRanking2, "longValue")];
    [v3 setObject:v11 forKeyedSubscript:@"mr"];
  }

  tvShowRanking = [(WLKUserEnvironment *)self tvShowRanking];

  if (tvShowRanking)
  {
    v13 = MEMORY[0x277CCACA8];
    countryCode2 = [(WLKUserEnvironment *)self countryCode];
    tvShowRanking2 = [(WLKUserEnvironment *)self tvShowRanking];
    v16 = [v13 stringWithFormat:@"%@:%lu", countryCode2, objc_msgSend(tvShowRanking2, "longValue")];
    [v3 setObject:v16 forKeyedSubscript:@"tvr"];
  }

  v17 = [v3 copy];

  return v17;
}

- (id)_queryPostV3
{
  v49 = *MEMORY[0x277D85DE8];
  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NSDictionary *)self->_entitlements objectForKeyedSubscript:@"Installed"];
  v5 = [(NSDictionary *)self->_entitlements objectForKeyedSubscript:@"Subscribed"];
  v6 = [(NSDictionary *)self->_entitlements objectForKeyedSubscript:@"Test"];
  v7 = [(NSDictionary *)self->_entitlements objectForKeyedSubscript:@"SubscriptionInfo"];
  v35 = v4;
  [v3 wlk_setObjectUnlessNilOrEmpty:v4 forKey:@"ibids"];
  v37 = v3;
  v34 = v6;
  [v3 wlk_setObjectUnlessNilOrEmpty:v6 forKey:@"tbids"];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    do
    {
      v12 = 0;
      do
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v43 + 1) + 8 * v12);
        v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v14 wlk_setObjectUnlessNil:v13 forKey:@"bundleId"];
        v15 = [v7 objectForKeyedSubscript:v13];
        if ([v15 length])
        {
          if (_queryPostV3_onceToken != -1)
          {
            [WLKUserEnvironment _queryPostV3];
          }

          v16 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:_queryPostV3_JSONEscapeSet];

          [v14 wlk_setObjectUnlessNil:v16 forKey:@"subInfo"];
          v15 = v16;
        }

        v17 = [v14 copy];
        [v8 addObject:v17];

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v10);
  }

  v18 = [v8 copy];
  [v37 wlk_setObjectUnlessNilOrEmpty:v18 forKey:@"sbids"];

  v19 = [v37 copy];
  [v36 wlk_setObjectUnlessNilOrEmpty:v19 forKey:@"entitlementInfo"];

  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = +[WLKFeatureEnablement tvAppEnabledFeatures];
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v23 = v21;
  v24 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v40;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v23);
        }

        jsonRepresentation = [*(*(&v39 + 1) + 8 * i) jsonRepresentation];
        [v22 addObject:jsonRepresentation];
      }

      v25 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v25);
  }

  v29 = [v22 copy];
  [v20 wlk_setObjectUnlessNilOrEmpty:v29 forKey:@"clientFeatures"];

  v30 = [v20 copy];
  [v36 wlk_setObjectUnlessNilOrEmpty:v30 forKey:@"featureFlags"];

  v31 = [v36 copy];
  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WLKUserEnvironment *)self isEqualToEnvironment:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = environmentCopy;
  if (environmentCopy)
  {
    protocolVersion = self->_protocolVersion;
    if (protocolVersion == [environmentCopy protocolVersion])
    {
      DSID = self->_DSID;
      dSID = [v5 DSID];
      v9 = DSID;
      v10 = dSID;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        LOBYTE(platform) = 0;
        if (!v9 || !v10)
        {
          p_isa = &v10->super.super.isa;
LABEL_47:

          goto LABEL_48;
        }

        v13 = [(NSNumber *)v9 isEqual:v10];

        if (!v13)
        {
          LOBYTE(platform) = 0;
LABEL_49:

          goto LABEL_50;
        }
      }

      storeFrontIdentifier = self->_storeFrontIdentifier;
      storeFrontIdentifier = [v5 storeFrontIdentifier];
      p_isa = storeFrontIdentifier;
      v17 = storeFrontIdentifier;
      v9 = v17;
      if (p_isa == v17)
      {
      }

      else
      {
        LOBYTE(platform) = 0;
        if (!p_isa || !v17)
        {
          v21 = &v17->super.super.isa;
LABEL_46:

          goto LABEL_47;
        }

        v18 = [(NSString *)p_isa isEqual:v17];

        if (!v18)
        {
          LOBYTE(platform) = 0;
LABEL_48:

          goto LABEL_49;
        }
      }

      languageIdentifier = self->_languageIdentifier;
      languageIdentifier = [v5 languageIdentifier];
      v21 = languageIdentifier;
      v22 = languageIdentifier;
      p_isa = v22;
      if (v21 == v22)
      {
      }

      else
      {
        LOBYTE(platform) = 0;
        if (!v21 || !v22)
        {
          entitlements = v22;
          goto LABEL_45;
        }

        v23 = [(NSString *)v21 isEqual:v22];

        if (!v23)
        {
          LOBYTE(platform) = 0;
          goto LABEL_47;
        }
      }

      countryIdentifier = self->_countryIdentifier;
      countryIdentifier = [v5 countryIdentifier];
      entitlements = countryIdentifier;
      v27 = countryIdentifier;
      v21 = v27;
      if (entitlements == v27)
      {
      }

      else
      {
        LOBYTE(platform) = 0;
        if (!entitlements || !v27)
        {
          restrictions = v27;
LABEL_44:

          goto LABEL_45;
        }

        LODWORD(platform) = [(NSString *)entitlements isEqual:v27];

        if (!platform)
        {
          goto LABEL_46;
        }
      }

      entitlements = self->_entitlements;
      entitlements = [v5 entitlements];
      if (WLKEqualObjects(entitlements, entitlements))
      {
        restrictions = self->_restrictions;
        restrictions = [v5 restrictions];
        if (WLKEqualObjects(restrictions, restrictions))
        {
          consentedBrands = self->_consentedBrands;
          consentedBrands = [v5 consentedBrands];
          if (WLKEqualObjects(consentedBrands, consentedBrands))
          {
            deniedBrands = self->_deniedBrands;
            deniedBrands = [v5 deniedBrands];
            if (WLKEqualObjects(deniedBrands, deniedBrands) && (consented = self->_consented, consented == [v5 consented]))
            {
              platform = self->_platform;
              platform = [v5 platform];
              LOBYTE(platform) = WLKEqualObjects(platform, platform);
            }

            else
            {
              LOBYTE(platform) = 0;
            }
          }

          else
          {
            LOBYTE(platform) = 0;
          }
        }

        else
        {
          LOBYTE(platform) = 0;
        }

        goto LABEL_44;
      }

      LOBYTE(platform) = 0;
LABEL_45:

      goto LABEL_46;
    }
  }

  LOBYTE(platform) = 0;
LABEL_50:

  return platform;
}

- (id)description
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v19[0] = @"protocol version:";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_protocolVersion];
  DSID = self->_DSID;
  storeFrontIdentifier = self->_storeFrontIdentifier;
  v20[0] = v6;
  v20[1] = DSID;
  v19[1] = @"dsid";
  v19[2] = @"storefront";
  v20[2] = storeFrontIdentifier;
  v19[3] = @"language";
  v19[4] = @"country";
  v21 = vbslq_s8(vceqzq_s64(*&self->_languageIdentifier), vdupq_n_s64(&stru_288206BC0), *&self->_languageIdentifier);
  v19[5] = @"entitlements";
  v19[6] = @"restrictions";
  restrictions = self->_restrictions;
  entitlements = self->_entitlements;
  v23 = restrictions;
  consentedBrands = self->_consentedBrands;
  v19[7] = @"cbrids";
  v19[8] = @"dbrids";
  deniedBrands = self->_deniedBrands;
  v24 = consentedBrands;
  v25 = deniedBrands;
  v19[9] = @"gac";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_consented];
  platform = self->_platform;
  v26 = v12;
  v27 = platform;
  v19[10] = @"platform";
  v19[11] = @"hash";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WLKUserEnvironment hash](self, "hash")}];
  v28 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:12];
  v16 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_entitlementsQuery
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = [(NSDictionary *)self->_entitlements objectForKeyedSubscript:@"Installed"];
  v3 = [(NSDictionary *)self->_entitlements objectForKeyedSubscript:@"Subscribed"];
  v20 = [(NSDictionary *)self->_entitlements objectForKeyedSubscript:@"Test"];
  v4 = [(NSDictionary *)self->_entitlements objectForKeyedSubscript:@"SubscriptionInfo"];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = [v4 objectForKeyedSubscript:v10];
        if ([v11 length])
        {
          if (_entitlementsQuery_onceToken != -1)
          {
            [WLKUserEnvironment _entitlementsQuery];
          }

          v12 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:_entitlementsQuery_JSONEscapeSet];

          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v10, v12];
          [v5 addObject:v13];

          v11 = v12;
        }

        else
        {
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([v21 count])
  {
    v15 = [v21 componentsJoinedByString:{@", "}];
    [dictionary setObject:v15 forKeyedSubscript:@"ibids"];
  }

  if ([obj count])
  {
    v16 = [v5 componentsJoinedByString:{@", "}];
    [dictionary setObject:v16 forKeyedSubscript:@"sbids"];
  }

  if ([v20 count])
  {
    v17 = [v20 componentsJoinedByString:{@", "}];
    [dictionary setObject:v17 forKeyedSubscript:@"tbids"];
  }

  v18 = *MEMORY[0x277D85DE8];

  return dictionary;
}

void __40__WLKUserEnvironment__entitlementsQuery__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  v1 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  [v0 removeCharactersInString:{@":, "}];
  v2 = _entitlementsQuery_JSONEscapeSet;
  _entitlementsQuery_JSONEscapeSet = v0;
}

- (id)_consentQuery
{
  activeAccount = [MEMORY[0x277D6C478] activeAccount];
  if (activeAccount)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    consented = [(WLKUserEnvironment *)self consented];
    if (consented)
    {
      v6 = @"true";
    }

    else
    {
      v6 = @"false";
    }

    [v4 setObject:v6 forKeyedSubscript:@"gac"];
    if (consented)
    {
      consentedBrands = [(WLKUserEnvironment *)self consentedBrands];
      if ([consentedBrands count])
      {
        v8 = [consentedBrands componentsJoinedByString:{@", "}];
        [v4 setObject:v8 forKeyedSubscript:@"cbrids"];
      }

      deniedBrands = [(WLKUserEnvironment *)self deniedBrands];
      if ([deniedBrands count])
      {
        v10 = [deniedBrands componentsJoinedByString:{@", "}];
        [v4 setObject:v10 forKeyedSubscript:@"dbrids"];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __34__WLKUserEnvironment__queryPostV3__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  v1 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  [v0 removeCharactersInString:{@":, "}];
  v2 = _queryPostV3_JSONEscapeSet;
  _queryPostV3_JSONEscapeSet = v0;
}

- (BOOL)isRunningInTVAppExtension
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  LOBYTE(mainBundle) = [bundleIdentifier isEqual:@"com.apple.VideosUI.TVAppExtension"];
  return mainBundle;
}

@end