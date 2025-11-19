@interface WiFiUsageAccessPointProfile
+ (BOOL)_compareBytes:(id)a3 FromStart:(unint64_t)a4 WithLen:(unint64_t)a5 With:(id)a6;
+ (BOOL)_isProfileValidForStorage:(id)a3;
+ (BOOL)_isProfileValidForUse:(id)a3 withCachedDict:(id)a4 onlyIfCurrent:(BOOL)a5 withError:(id *)a6;
+ (id)_config;
+ (id)_loadFromUserDefaults:(id)a3 withKey:(id)a4 withCachedData:(id)a5 withError:(id *)a6;
+ (id)_toMobileAssetsProfile:(id)a3;
+ (id)apNameForBSSID:(id)a3;
+ (id)beaconsAndWPSInfo;
+ (id)errorStringForTelemetry:(id)a3;
+ (id)longProfileForBSSID:(id)a3 withError:(id *)a4;
+ (id)profileFromBeaconData:(id)a3 andParsedIE:(id)a4;
+ (id)shortProfileForBSSID:(id)a3 withError:(id *)a4;
+ (void)_applyMask:(id)a3 FromStart:(unint64_t)a4 WithLen:(unint64_t)a5 WithMask:(id)a6 AppendTo:(id)a7;
+ (void)_cleanUpStaleProfiles;
+ (void)_defaults;
+ (void)_endPrevAssoc;
+ (void)_extractFieldsFor:(id)a3 From:(id)a4 Into:(id)a5;
+ (void)_saveToUserDefaults:(id)a3 withKey:(id)a4 andValue:(id)a5;
+ (void)_submitProfileFor:(id)a3 withCachedDict:(id)a4 AndEraseWithLog:(id)a5;
+ (void)initialize;
+ (void)submitToCAForBSSID:(id)a3;
+ (void)updateConfig;
+ (void)updateWithAssocTime:(double)a3 forBssid:(id)a4;
+ (void)updateWithWPS:(id)a3;
@end

@implementation WiFiUsageAccessPointProfile

+ (void)initialize
{
  v2 = _configError;
  _configError = @"Waiting on MobileAssets callback";
}

+ (id)_config
{
  v2 = MEMORY[0x277CCACA8];
  v3 = _apProfileMinAssoc;
  v4 = _apProfileMinOccurrencies;
  v5 = _apProfileMinSecsBetweenOccurrencies;
  v6 = _maxProfiles;
  v7 = _profileCacheTimeout;
  v8 = _apProfileVersionString;
  v9 = _shortProfileBytesLen;
  v10 = *&_profileCacheTimeout / 86400.0;
  v11 = [_apProfileFields count];
  if (_apProfileListVendorIEs)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = _apProfileListVendorIEsLen;
  v14 = [_apProfileVendorFields count];
  return [v2 stringWithFormat:@"apProfileMinAssoc(sec):%f apProfileMinOccurrencies:%lu apProfileMinIntervalBetweenOccurrencies(sec):%f maxProfiles:%lu maxAgeDays:%f (%f sec)\napProfileVersion:%@ shortApProfileBytesLen:%lu { fields:%u ; listVendorIEs:%@ ; listVendorIELen:%u ; vendor fields:%u ; vendor exclude:%u }", v3, v4, v5, v6, *&v10, v7, v8, v9, v11, v12, v13, v14, objc_msgSend(_apProfileVendorExcludeFields, "count")];
}

+ (void)_defaults
{
  _apProfileVersion = 0;
  v2 = _apProfileVersionString;
  _apProfileVersionString = @"profile_AP__UNDEFINED";

  _apProfileMinAssoc = 0;
  _apProfileMinOccurrencies = 1;
  _apProfileMinSecsBetweenOccurrencies = 0;
  _maxProfiles = 0;
  _profileCacheTimeout = 0x4122750000000000;
  _shortProfileBytesLen = 20;
  _apProfileListVendorIEs = 0;
  _apProfileListVendorIEsLen = 0x7FFFFFFFFFFFFFFFLL;
  _apProfileIncludeIELen = 1;
  v3 = _apProfileFields;
  _apProfileFields = 0;

  v4 = _apProfileVendorFields;
  _apProfileVendorFields = 0;

  v5 = _apProfileVendorExcludeFields;
  _apProfileVendorExcludeFields = 0;
}

+ (void)updateConfig
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"apProfileVersion"];
  p_info = TBTileMO.info;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@. Expected String, found: %@", @"apProfileVersion", v3];
      v26 = LABEL_41:;
LABEL_42:
      v13 = 0;
LABEL_43:
      v27 = _configError;
      _configError = v26;

      [a1 _defaults];
      goto LABEL_44;
    }
  }

  else
  {
    [a1 _defaults];
  }

  v5 = _apProfileVersionString;
  _apProfileVersionString = v3;
  v6 = v3;

  _apProfileVersion = 1;
  v7 = @"apProfileMinAssocSec";
  v3 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"apProfileMinAssocSec"];

  if (!v3)
  {
    goto LABEL_40;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_40;
  }

  [v3 doubleValue];
  _apProfileMinAssoc = v8;
  v9 = @"apProfileMinOccurrencies";
  v10 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"apProfileMinOccurrencies"];

  if (!v10)
  {
    goto LABEL_47;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_47;
  }

  _apProfileMinOccurrencies = [v10 unsignedIntegerValue];
  v7 = @"apProfileMinIntervalBetweenOccurrencies";
  v3 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"apProfileMinIntervalBetweenOccurrencies"];

  if (!v3)
  {
    goto LABEL_40;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_40;
  }

  [v3 doubleValue];
  _apProfileMinSecsBetweenOccurrencies = v11;
  v9 = @"useShortAPProfile";
  v10 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"useShortAPProfile"];

  if (!v10)
  {
    goto LABEL_47;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_47;
  }

  _useShortProfile = [v10 BOOLValue];
  v7 = @"shortApProfileBytesLen";
  v3 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"shortApProfileBytesLen"];

  if (!v3)
  {
    goto LABEL_40;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_40;
  }

  _shortProfileBytesLen = [v3 unsignedIntegerValue];
  v9 = @"maxProfilesCount";
  v10 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"maxProfilesCount"];

  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_47:
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@. Expected Number, found: %@", v9, v10];
    v13 = 0;
    v3 = v10;
    goto LABEL_43;
  }

  _maxProfiles = [v10 unsignedIntegerValue];
  v7 = @"maxAgeDays";
  v3 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"maxAgeDays"];

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_40:
    [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@. Expected Number, found: %@", v7, v3];
    goto LABEL_41;
  }

  [v3 doubleValue];
  *&_profileCacheTimeout = v12 * 86400.0;
  v13 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"apProfileDefinition"];

  if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@. Expected Dictionary, found: %@", @"apProfileDefinition", v13];
    v3 = v13;
    goto LABEL_42;
  }

  v14 = [v13 objectForKeyedSubscript:@"includeIELen"];
  if (!v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.includeIELen. Expected Number, found: %@", @"apProfileDefinition", 0];
      v3 = 0;
      goto LABEL_43;
    }
  }

  _apProfileIncludeIELen = [v14 BOOLValue];
  v15 = [v13 objectForKeyedSubscript:@"fields"];

  if (!v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.fields. Expected Array, found: %@", @"apProfileDefinition", 0];
      v3 = 0;
      goto LABEL_55;
    }
  }

  v16 = _apProfileFields;
  _apProfileFields = v15;

  v3 = [v13 objectForKeyedSubscript:@"listVendorIEs"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.listVendorIEs. Expected Number, found: %@", @"apProfileDefinition", v3];
    v26 = LABEL_50:;
LABEL_55:
    p_info = (TBTileMO + 32);
    goto LABEL_43;
  }

  _apProfileListVendorIEs = [v3 BOOLValue];
  v17 = [v13 objectForKeyedSubscript:@"listVendorIEsLen"];

  if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.listVendorIEsLen. Expected Number, found: %@", @"apProfileDefinition", v17];
    v26 = LABEL_54:;
    v3 = v17;
    goto LABEL_55;
  }

  _apProfileListVendorIEsLen = [v17 integerValue];
  v3 = [v13 objectForKeyedSubscript:@"vendor"];

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.vendor. Expected Dictionary, found: %@", @"apProfileDefinition", v3];
    goto LABEL_50;
  }

  v18 = [v13 objectForKeyedSubscript:@"vendor"];
  v17 = [v18 objectForKeyedSubscript:@"fields"];

  if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.vendor.fields. Expected Array, found: %@", @"apProfileDefinition", v17];
    goto LABEL_54;
  }

  v19 = _apProfileVendorFields;
  _apProfileVendorFields = v17;

  v3 = [v13 objectForKeyedSubscript:@"vendorExclude"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.vendorExclude. Expected Dictionary, found: %@", @"apProfileDefinition", v3];
    goto LABEL_50;
  }

  v20 = [v13 objectForKeyedSubscript:@"vendorExclude"];
  v21 = [v20 objectForKeyedSubscript:@"fields"];

  v3 = v21;
  if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.vendorExclude.fields. Expected Array, found: %@", @"apProfileDefinition", v21];
    goto LABEL_50;
  }

  objc_storeStrong(&_apProfileVendorExcludeFields, v21);
  v22 = MEMORY[0x277CCACA8];
  v23 = [a1 _config];
  v24 = [v22 stringWithFormat:@"%s: configParseError:%@ (%@)]\n%@", "+[WiFiUsageAccessPointProfile updateConfig]", @"NO", &stru_28487EF20, v23];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v24, "UTF8String")];
    *buf = 136446210;
    v30 = [v25 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  p_info = (TBTileMO + 32);
LABEL_44:
  if (*(p_info + 1240) == 1)
  {
    [a1 _cleanUpStaleProfiles];
  }

  v28 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_isProfileValidForStorage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKey:@"apProfileVersion"];
  v5 = [v3 objectForKey:@"apProfileCacheTimestampCreated"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [_apProfileVersionString isEqualToString:v4];
LABEL_5:
    v8 = 0;
    if (v6 && v5)
    {
      [v5 timeIntervalSinceNow];
      v8 = *&_profileCacheTimeout >= -v9;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_apProfileVersion];
    v6 = [v7 isEqual:v4];

    goto LABEL_5;
  }

  v8 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "+[WiFiUsageAccessPointProfile _isProfileValidForStorage:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: unknown version format: %@", &v12, 0x16u);
    v8 = 0;
  }

LABEL_10:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (void)_cleanUpStaleProfiles
{
  v63 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = [a1 _getDefaults];
  v4 = [v3 dictionaryRepresentation];

  v44 = [MEMORY[0x277CBEB18] array];
  v43 = [MEMORY[0x277CBEB38] dictionary];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v62 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v50;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        v11 = [WiFiUsagePrivacyFilter reformatMACAddress:v10];

        if (v11)
        {
          v12 = [v4 objectForKey:v10];
          if ([a1 _isProfileValidForStorage:v12])
          {
            v13 = [v12 objectForKey:@"apProfileCacheTimestamp"];
            [v43 setObject:v10 forKeyedSubscript:v13];
          }

          else
          {
            [v44 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v49 objects:v62 count:16];
    }

    while (v7);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v44 count];
    v15 = [v43 count];
    *buf = 136315906;
    v55 = "+[WiFiUsageAccessPointProfile _cleanUpStaleProfiles]";
    v56 = 2048;
    v57 = v14;
    v58 = 2048;
    v59 = v15;
    v60 = 2048;
    v61 = _maxProfiles;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - staleEntries:%lu validEntries:%lu _maxProfiles:%lu", buf, 0x2Au);
  }

  v16 = [v43 count];
  if (v16 > _maxProfiles)
  {
    v17 = [v43 allKeys];
    v18 = [v17 sortedArrayUsingSelector:sel_compare_];

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: sortedEntries:%@", "+[WiFiUsageAccessPointProfile _cleanUpStaleProfiles]", v18];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v19, "UTF8String")];
      v21 = [v20 UTF8String];
      *buf = 136446210;
      v55 = v21;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v22 = [v43 count];
    if (v22 != _maxProfiles)
    {
      v23 = 0;
      v24 = MEMORY[0x277D86220];
      do
      {
        v25 = [v18 objectAtIndexedSubscript:v23];
        v26 = [v43 objectForKeyedSubscript:v25];
        [v44 addObject:v26];

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v18 objectAtIndexedSubscript:v23];
          v28 = [v43 objectForKeyedSubscript:v27];
          *buf = 136315394;
          v55 = "+[WiFiUsageAccessPointProfile _cleanUpStaleProfiles]";
          v56 = 2112;
          v57 = v28;
          _os_log_impl(&dword_2332D7000, v24, OS_LOG_TYPE_DEFAULT, "%s - marking %@ as stale", buf, 0x16u);
        }

        ++v23;
        v29 = [v43 count];
      }

      while (v29 - _maxProfiles > v23);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v44 count];
    v31 = [v43 count];
    *buf = 136315906;
    v55 = "+[WiFiUsageAccessPointProfile _cleanUpStaleProfiles]";
    v56 = 2048;
    v57 = v30;
    v58 = 2048;
    v59 = v31;
    v60 = 2048;
    v61 = _maxProfiles;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - staleEntries:%lu validEntries:%lu _maxProfiles:%lu", buf, 0x2Au);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v32 = v44;
  v33 = [v32 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v46;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v46 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v45 + 1) + 8 * j);
        v38 = [v4 objectForKeyedSubscript:v37];
        v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"stale (from %s)", "+[WiFiUsageAccessPointProfile _cleanUpStaleProfiles]"];
        [a1 _submitProfileFor:v37 withCachedDict:v38 AndEraseWithLog:v39];
      }

      v34 = [v32 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v34);
  }

  v40 = [a1 _getDefaults];
  [v40 synchronize];

  objc_autoreleasePoolPop(context);
  v41 = *MEMORY[0x277D85DE8];
}

+ (void)_endPrevAssoc
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [a1 _getDefaults];
  v3 = [v2 dictionaryRepresentation];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = v3;
  obj = [v3 allKeys];
  v4 = [obj countByEnumeratingWithState:&v31 objects:v45 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v32;
    *&v5 = 136316162;
    v27 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [WiFiUsagePrivacyFilter reformatMACAddress:v10, v27];

        if (v11)
        {
          v12 = [v30 objectForKey:v10];
          v13 = [v12 objectForKeyedSubscript:@"apProfileMaxAssocTime"];
          v14 = [v13 unsignedIntegerValue];

          v15 = [v12 objectForKeyedSubscript:@"apProfileCacheTimestamp"];
          v16 = [v12 objectForKeyedSubscript:@"apProfileForLatestAssoc"];
          v17 = [v16 BOOLValue];

          [v15 timeIntervalSinceNow];
          if (v17)
          {
            v19 = -v18;
            if (v14 >= v19)
            {
              v22 = a1;
            }

            else
            {
              v20 = *&_apProfileMinAssoc > v14;
              if (*&_apProfileMinAssoc > v19)
              {
                v20 = 0;
              }

              v7 |= v20;
              v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v19];
              v22 = a1;
              [a1 _saveToUserDefaults:v10 withKey:@"apProfileMaxAssocTime" andValue:v21];
            }

            [v22 _saveToUserDefaults:v10 withKey:@"apProfileForLatestAssoc" andValue:MEMORY[0x277CBEC28]];
            if (v7)
            {
              if ([v22 _isProfileValidForUse:v10 withCachedDict:0 withError:0])
              {
                v23 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v24 = [v22 profileForBSSID:v10 withError:0];
                  *buf = v27;
                  v36 = "+[WiFiUsageAccessPointProfile _endPrevAssoc]";
                  v37 = 2160;
                  v38 = 1752392040;
                  v39 = 2112;
                  v40 = v10;
                  v41 = 2160;
                  v42 = 1752392040;
                  v43 = 2112;
                  v44 = v24;
                  _os_log_impl(&dword_2332D7000, v23, OS_LOG_TYPE_DEFAULT, "%s: profile for %{mask.hash}@ is valid: %{mask.hash}@", buf, 0x34u);
                }
              }

              v7 = 1;
            }

            else
            {
              v7 = 0;
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v45 count:16];
    }

    while (v6);
  }

  v25 = [a1 _getDefaults];
  [v25 synchronize];

  v26 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_compareBytes:(id)a3 FromStart:(unint64_t)a4 WithLen:(unint64_t)a5 With:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = [v9 length];
  if (a5 > 4 || v11 < a5 + a4)
  {
    v14 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 136316162;
      *&v17[4] = "+[WiFiUsageAccessPointProfile _compareBytes:FromStart:WithLen:With:]";
      v18 = 2048;
      v19 = [v9 length];
      v20 = 2048;
      v21 = a4;
      v22 = 2048;
      v23 = a5;
      v24 = 2048;
      v25 = 4;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - fieldData len is %lu but start=%lu and len=%lu (<= %lu) - returning FALSE", v17, 0x34u);
      v14 = 0;
    }
  }

  else
  {
    v12 = [v9 bytes];
    *v17 = [v10 unsignedIntValue];
    if (a5)
    {
      v13 = (v12 + a4);
      v14 = 1;
      do
      {
        v14 = v14 && v17[--a5] == *v13++;
      }

      while (a5);
    }

    else
    {
      v14 = 1;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (void)_applyMask:(id)a3 FromStart:(unint64_t)a4 WithLen:(unint64_t)a5 WithMask:(id)a6 AppendTo:(id)a7
{
  v17 = a3;
  v11 = a6;
  v12 = a7;
  if ([v17 length] >= a5 + a4)
  {
    v13 = [v17 bytes];
    v18 = [v11 unsignedIntValue];
    if (a5)
    {
      v14 = (v13 + a4);
      v15 = &v18;
      do
      {
        if (v11)
        {
          v16 = (*v14 & *v15);
        }

        else
        {
          v16 = *v14;
        }

        [v12 appendFormat:@"%02X", v16];
        ++v14;
        v15 = (v15 + 1);
        --a5;
      }

      while (a5);
    }
  }
}

+ (void)_extractFieldsFor:(id)a3 From:(id)a4 Into:(id)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 objectForKeyedSubscript:@"subfields"];
  if (v10)
  {
    v11 = [v7 objectForKeyedSubscript:@"subfields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v7 objectForKeyedSubscript:@"subfields"];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 objectForKeyedSubscript:@"len"];
  if (v13)
  {
    v14 = [v7 objectForKeyedSubscript:@"len"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v7 objectForKeyedSubscript:@"len"];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [v7 objectForKeyedSubscript:@"mask"];
  if (v16)
  {
    v17 = [v7 objectForKeyedSubscript:@"mask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v7 objectForKeyedSubscript:@"mask"];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v12)
  {
    v47 = v18;
    v48 = v15;
    v51 = v9;
    v49 = v12;
    v50 = v7;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v12;
    v19 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
    v20 = 0x277CCA000uLL;
    if (v19)
    {
      v21 = v19;
      v54 = *v56;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v56 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v55 + 1) + 8 * i);
          v24 = [v23 objectForKeyedSubscript:{@"start", v47, v48, v49, v50}];
          if (v24)
          {
            v25 = [v23 objectForKeyedSubscript:@"start"];
            v26 = *(v20 + 2992);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [v23 objectForKeyedSubscript:@"start"];
            }

            else
            {
              v27 = 0;
            }
          }

          else
          {
            v27 = 0;
          }

          v28 = v8;

          v29 = [v23 objectForKeyedSubscript:@"len"];
          if (v29)
          {
            v30 = [v23 objectForKeyedSubscript:@"len"];
            v31 = *(v20 + 2992);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = [v23 objectForKeyedSubscript:@"len"];
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = 0;
          }

          v33 = [v23 objectForKeyedSubscript:@"mask"];
          if (v33)
          {
            v34 = [v23 objectForKeyedSubscript:@"mask"];
            v35 = v20;
            v36 = v34;
            v37 = *(v35 + 2992);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = [v23 objectForKeyedSubscript:@"mask"];
            }

            else
            {
              v38 = 0;
            }

            v20 = 0x277CCA000;
          }

          else
          {
            v38 = 0;
          }

          v8 = v28;
          if ([v28 length])
          {
            if (v32 && v27)
            {
              v39 = [v27 integerValue];
              v40 = [v32 unsignedIntValue];
              v41 = v39;
              v20 = 0x277CCA000;
              [a1 _applyMask:v28 FromStart:v41 WithLen:v40 WithMask:v38 AppendTo:v51];
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v42 = [v27 unsignedIntValue];
              v43 = [v32 unsignedIntValue];
              *buf = 136315906;
              v60 = "+[WiFiUsageAccessPointProfile _extractFieldsFor:From:Into:]";
              v61 = 1024;
              v62 = v42;
              v20 = 0x277CCA000;
              v63 = 1024;
              v64 = v43;
              v65 = 2112;
              v66 = v23;
              _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Subfield has wrong format (start:%u, len:%u) - ignoring %@", buf, 0x22u);
            }
          }
        }

        v21 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
      }

      while (v21);
    }

    v12 = v49;
    v7 = v50;
    v9 = v51;
    v18 = v47;
    v15 = v48;
  }

  else
  {
    v44 = [v8 length];
    if (v44 >= [v15 unsignedIntValue])
    {
      v45 = [v15 unsignedIntValue];
    }

    else
    {
      v45 = [v8 length];
    }

    [a1 _applyMask:v8 FromStart:0 WithLen:v45 WithMask:v18 AppendTo:v9];
  }

  v46 = *MEMORY[0x277D85DE8];
}

+ (id)_toMobileAssetsProfile:(id)a3
{
  v132 = *MEMORY[0x277D85DE8];
  v91 = a3;
  v90 = objc_opt_new();
  v85 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v85 setNumberStyle:1];
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = _apProfileFields;
  v3 = [obj countByEnumeratingWithState:&v115 objects:v131 count:16];
  if (v3)
  {
    v4 = v3;
    v97 = *v116;
    do
    {
      v5 = 0;
      v92 = v4;
      do
      {
        if (*v116 != v97)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v115 + 1) + 8 * v5);
        v7 = [v6 objectForKeyedSubscript:@"name"];
        if (v7)
        {
          v8 = [v6 objectForKeyedSubscript:@"name"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v6 objectForKeyedSubscript:@"name"];
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }

        v10 = [v6 objectForKeyedSubscript:@"len"];
        if (v10)
        {
          v11 = [v6 objectForKeyedSubscript:@"len"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v6 objectForKeyedSubscript:@"len"];
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = [v6 objectForKeyedSubscript:@"mask"];
        if (v13)
        {
          v14 = [v6 objectForKeyedSubscript:@"mask"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v6 objectForKeyedSubscript:@"mask"];
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        if (v9)
        {
          if ([v9 hasPrefix:@"EL "])
          {
            v16 = [v9 substringFromIndex:{objc_msgSend(@"EL ", "length")}];
            v17 = [v85 numberFromString:v16];
            v18 = [v91 taggedIEList];
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"BeaconInformationElement_", v16];
            v20 = [v18 objectForKeyedSubscript:v19];

            [v90 appendFormat:@"%02X", objc_msgSend(v17, "unsignedIntValue")];
            if (_apProfileIncludeIELen == 1)
            {
              [v90 appendFormat:@"%02X", objc_msgSend(v20, "length")];
              v4 = v92;
            }

            else
            {
              v4 = v92;
              if (v20)
              {
                v26 = @"1";
              }

              else
              {
                v26 = @"0";
              }

              [v90 appendString:v26];
            }

            [a1 _extractFieldsFor:v6 From:v20 Into:v90];
          }

          else
          {
            if (![v9 hasPrefix:@"exEL "])
            {
              v27 = [v91 valueForKey:v9];
              v28 = [v27 unsignedLongValue];

              v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%0%ulX", 2 * objc_msgSend(v12, "unsignedIntValue")];
              if (v12)
              {
                if ([v12 longValue] < 1 || objc_msgSend(v12, "longValue") < 9)
                {
                  if (v15)
                  {
                    v28 &= [v15 unsignedLongValue];
                  }

                  if ([v12 longValue] == -1)
                  {
                    [v90 appendFormat:@"%lu", v28];
                  }

                  else
                  {
                    [v90 appendFormat:v29, v28];
                  }
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v30 = [v12 longValue];
                  *buf = 136315906;
                  v124 = "+[WiFiUsageAccessPointProfile _toMobileAssetsProfile:]";
                  v125 = 2112;
                  v126 = v6;
                  v127 = 2048;
                  v128 = v30;
                  v129 = 2048;
                  v130 = 8;
                  v31 = MEMORY[0x277D86220];
                  v32 = "%s - Field %@ len (%ld) is too large for non TLV values (max=%lu)";
                  v33 = 42;
                  goto LABEL_51;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v124 = "+[WiFiUsageAccessPointProfile _toMobileAssetsProfile:]";
                v125 = 2112;
                v126 = v6;
                v31 = MEMORY[0x277D86220];
                v32 = "%s - Field %@ has wrong format (missing len) - ignoring";
                v33 = 22;
LABEL_51:
                _os_log_impl(&dword_2332D7000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, v33);
              }

              goto LABEL_57;
            }

            v21 = [v9 substringFromIndex:{objc_msgSend(@"exEL ", "length")}];
            v22 = [v85 numberFromString:v21];
            v23 = [v91 extendedIEList];
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@255_%@", @"BeaconInformationElement_", v21];
            v25 = [v23 objectForKeyedSubscript:v24];

            [v90 appendString:@"FF"];
            if (_apProfileIncludeIELen == 1)
            {
              [v90 appendFormat:@"%02X", objc_msgSend(v25, "length")];
              v4 = v92;
            }

            else
            {
              v4 = v92;
              if (v25)
              {
                v34 = @"1";
              }

              else
              {
                v34 = @"0";
              }

              [v90 appendString:v34];
            }

            [v90 appendFormat:@"%02X", objc_msgSend(v22, "unsignedIntValue")];
            [a1 _extractFieldsFor:v6 From:v25 Into:v90];
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v124 = "+[WiFiUsageAccessPointProfile _toMobileAssetsProfile:]";
          v125 = 2112;
          v126 = v6;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Field has wrong format (missing name) - ignoring : %@", buf, 0x16u);
        }

LABEL_57:

        ++v5;
      }

      while (v4 != v5);
      v4 = [obj countByEnumeratingWithState:&v115 objects:v131 count:16];
    }

    while (v4);
  }

  v87 = objc_opt_new();
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v35 = [v91 vendorIEList];
  v36 = [v35 allKeys];
  v37 = [v36 sortedArrayUsingSelector:?];

  v86 = v37;
  v89 = [v37 countByEnumeratingWithState:&v111 objects:v122 count:16];
  v38 = v90;
  if (!v89)
  {
    goto LABEL_127;
  }

  v88 = *v112;
  do
  {
    for (i = 0; i != v89; i = v75 + 1)
    {
      if (*v112 != v88)
      {
        objc_enumerationMutation(v86);
      }

      v93 = i;
      v40 = *(*(&v111 + 1) + 8 * i);
      v41 = [v91 vendorIEList];
      obja = [v41 objectForKeyedSubscript:v40];

      if (_apProfileListVendorIEs == 1)
      {
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v98 = _apProfileVendorExcludeFields;
        v42 = [v98 countByEnumeratingWithState:&v107 objects:v121 count:16];
        if (!v42)
        {
          goto LABEL_92;
        }

        v43 = v42;
        v44 = *v108;
        while (1)
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v108 != v44)
            {
              objc_enumerationMutation(v98);
            }

            v46 = *(*(&v107 + 1) + 8 * j);
            v47 = [v46 objectForKeyedSubscript:@"match_len"];
            if (v47)
            {
              v48 = [v46 objectForKeyedSubscript:@"match_len"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v49 = [v46 objectForKeyedSubscript:@"match_len"];
              }

              else
              {
                v49 = 0;
              }
            }

            else
            {
              v49 = 0;
            }

            v50 = [v46 objectForKeyedSubscript:@"match_value"];
            if (!v50)
            {
              v53 = 0;
LABEL_87:
              v54 = MEMORY[0x277D86220];
LABEL_88:
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v124 = "+[WiFiUsageAccessPointProfile _toMobileAssetsProfile:]";
                v125 = 2112;
                v126 = v49;
                v127 = 2112;
                v128 = v53;
                v129 = 2112;
                v130 = v46;
                _os_log_impl(&dword_2332D7000, v54, OS_LOG_TYPE_DEFAULT, "%s - Field has wrong format (missing match_len (%@) and|or match_value (%@) and|or matchLen is larger than 8) - ignoring : %@", buf, 0x2Au);
              }

              goto LABEL_90;
            }

            v51 = v50;
            v52 = [v46 objectForKeyedSubscript:@"match_value"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v53 = [v46 objectForKeyedSubscript:@"match_value"];
            }

            else
            {
              v53 = 0;
            }

            if (!v49)
            {
              goto LABEL_87;
            }

            v54 = MEMORY[0x277D86220];
            if (!v53 || [v49 unsignedIntValue] >= 9)
            {
              goto LABEL_88;
            }

            v55 = [obja length];
            if (v55 >= [v49 unsignedIntValue] && objc_msgSend(a1, "_compareBytes:FromStart:WithLen:With:", obja, 0, objc_msgSend(v49, "unsignedIntValue"), v53))
            {

              v38 = v90;
              v75 = v93;
              v76 = obja;
              goto LABEL_124;
            }

LABEL_90:
          }

          v43 = [v98 countByEnumeratingWithState:&v107 objects:v121 count:16];
          if (!v43)
          {
LABEL_92:

            break;
          }
        }
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v98 = _apProfileVendorFields;
      v56 = [v98 countByEnumeratingWithState:&v103 objects:v120 count:16];
      if (!v56)
      {
        goto LABEL_120;
      }

      v57 = v56;
      v58 = *v104;
      do
      {
        for (k = 0; k != v57; ++k)
        {
          if (*v104 != v58)
          {
            objc_enumerationMutation(v98);
          }

          v60 = *(*(&v103 + 1) + 8 * k);
          v61 = [v60 objectForKeyedSubscript:@"match_len"];
          if (v61)
          {
            v62 = [v60 objectForKeyedSubscript:@"match_len"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v63 = [v60 objectForKeyedSubscript:@"match_len"];
            }

            else
            {
              v63 = 0;
            }
          }

          else
          {
            v63 = 0;
          }

          v64 = [v60 objectForKeyedSubscript:@"match_value"];
          if (!v64)
          {
            v67 = 0;
LABEL_115:
            v68 = MEMORY[0x277D86220];
LABEL_116:
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v124 = "+[WiFiUsageAccessPointProfile _toMobileAssetsProfile:]";
              v125 = 2112;
              v126 = v63;
              v127 = 2112;
              v128 = v67;
              v129 = 2112;
              v130 = v60;
              _os_log_impl(&dword_2332D7000, v68, OS_LOG_TYPE_DEFAULT, "%s - Field has wrong format (missing match_len (%@) and|or match_value (%@) and|or matchLen is larger than 8) - ignoring : %@", buf, 0x2Au);
            }

            goto LABEL_118;
          }

          v65 = v64;
          v66 = [v60 objectForKeyedSubscript:@"match_value"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v67 = [v60 objectForKeyedSubscript:@"match_value"];
          }

          else
          {
            v67 = 0;
          }

          if (!v63)
          {
            goto LABEL_115;
          }

          v68 = MEMORY[0x277D86220];
          if (!v67 || [v63 unsignedIntValue] >= 9)
          {
            goto LABEL_116;
          }

          v69 = [obja length];
          if (v69 >= [v63 unsignedIntValue] && objc_msgSend(a1, "_compareBytes:FromStart:WithLen:With:", obja, 0, objc_msgSend(v63, "unsignedIntValue"), v67))
          {
            v73 = objc_opt_new();
            v74 = v60;
            v76 = obja;
            [a1 _extractFieldsFor:v74 From:obja Into:v73];
            [v87 addObject:v73];

            v38 = v90;
            v75 = v93;
            goto LABEL_124;
          }

LABEL_118:
        }

        v57 = [v98 countByEnumeratingWithState:&v103 objects:v120 count:16];
      }

      while (v57);
LABEL_120:

      v38 = v90;
      v75 = v93;
      v76 = obja;
      if (_apProfileListVendorIEs == 1)
      {
        v70 = [obja bytes];
        v71 = [obja length];
        v72 = _apProfileListVendorIEsLen;
        if (v71 < _apProfileListVendorIEsLen)
        {
          v72 = [obja length];
        }

        v98 = [WiFiUsagePrivacyFilter toHEXString:v70 length:v72];
        [v87 addObject:?];
LABEL_124:
      }
    }

    v89 = [v86 countByEnumeratingWithState:&v111 objects:v122 count:16];
  }

  while (v89);
LABEL_127:

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v77 = [v87 allObjects];
  v78 = [v77 sortedArrayUsingSelector:sel_compare_];

  v79 = [v78 countByEnumeratingWithState:&v99 objects:v119 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v100;
    do
    {
      for (m = 0; m != v80; ++m)
      {
        if (*v100 != v81)
        {
          objc_enumerationMutation(v78);
        }

        [v38 appendFormat:@"DD%@", *(*(&v99 + 1) + 8 * m)];
      }

      v80 = [v78 countByEnumeratingWithState:&v99 objects:v119 count:16];
    }

    while (v80);
  }

  v83 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (id)_loadFromUserDefaults:(id)a3 withKey:(id)a4 withCachedData:(id)a5 withError:(id *)a6
{
  v35[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v10)
  {
    v15 = 0;
    goto LABEL_19;
  }

  if (v12)
  {
    v14 = v12;
    if (!v11)
    {
LABEL_11:
      if (v14)
      {
        a6 = [v14 mutableCopy];
        v17 = [v14 objectForKeyedSubscript:@"apProfileBeaconInfo"];
        [a6 addEntriesFromDictionary:v17];

        v18 = [v14 objectForKeyedSubscript:@"apProfileWPSInfo"];
        [a6 addEntriesFromDictionary:v18];

        [a6 setValue:0 forKey:@"apProfileBeaconInfo"];
        [a6 setValue:0 forKey:@"apProfileWPSInfo"];
        v19 = [a6 objectForKeyedSubscript:@"apProfileCacheTimestampCreated"];
        [v19 timeIntervalSinceNow];
        v21 = -v20;

        v22 = [a1 _getBinTimeInterval:1 As:v21];
        [a6 setValue:v22 forKey:@"ageAtRemoval"];

        [a6 setValue:0 forKey:@"apProfileCacheTimestampCreated"];
        v23 = [a6 objectForKeyedSubscript:@"apProfileCacheTimestamp"];
        [v23 timeIntervalSinceNow];
        v25 = -v24;

        v26 = [a1 _getBinTimeInterval:1 As:v25];
        [a6 setValue:v26 forKey:@"timeSinceLastRefresh"];

        [a6 setValue:0 forKey:@"apProfileCacheTimestamp"];
        [a6 setValue:0 forKey:@"submittedToCA"];
        v27 = [v14 objectForKey:@"apProfileBeaconInfoParsingSuccessful"];
        v28 = [v27 BOOLValue];

        if (v28)
        {
          [a6 setValue:0 forKey:@"apProfileBeaconRaw"];
        }

        goto LABEL_18;
      }

      if (a6)
      {
        v29 = MEMORY[0x277CCA9B8];
        v34 = *MEMORY[0x277CCA470];
        v35[0] = @"Unknown";
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        *a6 = [v29 errorWithDomain:@"com.apple.wifi.policy.approfile" code:3 userInfo:v30];

LABEL_17:
        a6 = 0;
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v16 = [a1 _getDefaults];
    v14 = [v16 dictionaryForKey:v10];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  if (!v14)
  {
    goto LABEL_11;
  }

  if ([v11 isEqualToString:@"apProfileID"] && !objc_msgSend(a1, "_isProfileValidForStorage:", v14))
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"stale (from %s)", "+[WiFiUsageAccessPointProfile _loadFromUserDefaults:withKey:withCachedData:withError:]"];
    [a1 _submitProfileFor:v10 withCachedDict:v14 AndEraseWithLog:v31];

    goto LABEL_17;
  }

  a6 = [v14 objectForKey:v11];
LABEL_18:
  v15 = a6;

LABEL_19:
  v32 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (void)_saveToUserDefaults:(id)a3 withKey:(id)a4 andValue:(id)a5
{
  v19 = a3;
  v8 = MEMORY[0x277CBEB38];
  v9 = a5;
  v10 = a4;
  v11 = [v8 dictionary];
  v12 = [a1 _getDefaults];
  v13 = [WiFiUsagePrivacyFilter reformatMACAddress:v19];
  v14 = [v12 dictionaryForKey:v13];

  if (v14)
  {
    [v11 addEntriesFromDictionary:v14];
  }

  else
  {
    v15 = [MEMORY[0x277CBEAA8] date];
    [v11 setValue:v15 forKey:@"apProfileCacheTimestampCreated"];

    [v11 setValue:_apProfileVersionString forKey:@"apProfileVersion"];
  }

  [v11 setValue:v9 forKey:v10];

  v16 = [MEMORY[0x277CBEAA8] date];
  [v11 setValue:v16 forKey:@"apProfileCacheTimestamp"];

  v17 = [a1 _getDefaults];
  v18 = [WiFiUsagePrivacyFilter reformatMACAddress:v19];
  [v17 setObject:v11 forKey:v18];
}

+ (id)profileFromBeaconData:(id)a3 andParsedIE:(id)a4
{
  v118 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7 || ([v7 objectForKeyedSubscript:@"BSSID"], v9 = objc_claimAutoreleasedReturnValue(), +[WiFiUsagePrivacyFilter reformatMACAddress:](WiFiUsagePrivacyFilter, "reformatMACAddress:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        v11 = @"not nil";
      }

      else
      {
        v11 = @"nil";
      }

      v12 = [v8 objectForKeyedSubscript:@"BSSID"];
      *buf = 136315650;
      *&buf[4] = "+[WiFiUsageAccessPointProfile profileFromBeaconData:andParsedIE:]";
      *&buf[12] = 2112;
      *&buf[14] = v11;
      v110 = 2112;
      v111 = v12;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: unable to learn currentBSSID (ParsedIE:%@ bssid:%@)", buf, 0x20u);
    }

    v10 = 0;
  }

  if (_apProfileVersion != 1)
  {
    v21 = 0;
    goto LABEL_74;
  }

  [a1 _endPrevAssoc];
  v13 = objc_alloc_init(a1);
  [v13 setBssid:0];
  [v13 setApProfile:0];
  if (!v6)
  {
    [a1 updateWithWPS:v8];
    goto LABEL_17;
  }

  v107 = a1;
  v14 = [[WiFiUsageParsedBeacon alloc] initWithBeaconData:v6 andAdditionalMetadata:v8];
  v15 = [(WiFiUsageParsedBeacon *)v14 bssid];
  [v13 setBssid:v15];

  v16 = [(WiFiUsageParsedBeacon *)v14 vendorIEList];
  v17 = [v16 allKeys];
  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF BEGINSWITH[c] '00:17:F2-6' OR SELF BEGINSWITH[c] '00:17:F2-9'"];
  v19 = [v17 filteredArrayUsingPredicate:v18];

  v108 = v14;
  if ([(__CFString *)v19 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v13 bssid];
      *buf = 136315906;
      *&buf[4] = "+[WiFiUsageAccessPointProfile profileFromBeaconData:andParsedIE:]";
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      v110 = 2112;
      v111 = v20;
      v112 = 2112;
      v113 = v19;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: (%{mask.hash}@) contains PersonalHotspotIEs:%@ -- skip", buf, 0x2Au);
    }

    goto LABEL_72;
  }

  v106 = v19;
  v22 = [(WiFiUsageParsedBeacon *)v14 taggedIEList];
  v23 = MEMORY[0x277CBEC28];
  v24 = [v22 allKeysForObject:MEMORY[0x277CBEC28]];

  v25 = [(WiFiUsageParsedBeacon *)v14 extendedIEList];
  v26 = [v25 allKeysForObject:v23];

  v27 = [(WiFiUsageParsedBeacon *)v14 parsingSuccessful];
  v28 = v14;
  v29 = v24;
  if (v27 && ![v24 count] && !objc_msgSend(v26, "count"))
  {
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v13 bssid];
    v31 = [(WiFiUsageParsedBeacon *)v28 parsingSuccessful];
    *buf = 136316418;
    v32 = @"NO";
    *&buf[4] = "+[WiFiUsageAccessPointProfile profileFromBeaconData:andParsedIE:]";
    *&buf[12] = 2160;
    *&buf[14] = 1752392040;
    v110 = 2112;
    if (v31)
    {
      v32 = @"YES";
    }

    v111 = v30;
    v112 = 2112;
    v113 = v32;
    v114 = 2112;
    v115 = v24;
    v116 = 2112;
    v117 = v26;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: (%{mask.hash}@) parsingSuccessful: %@ invalidElements:%@ invalidExtElements:%@ -- skip", buf, 0x3Eu);
  }

  if (+[WiFiUsagePrivacyFilter isInternalInstall])
  {
LABEL_26:
    v102 = v26;
    v33 = [v13 bssid];
    v104 = [WiFiUsageAccessPointProfile _cachedProfile:v33];

    v34 = [v13 bssid];
    v35 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v34 withKey:@"apProfileBeaconInfoOccurrencies" withCachedData:0];
    v36 = [v35 unsignedIntegerValue];

    v37 = [v13 bssid];
    v103 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v37 withKey:@"apProfileCacheTimestamp" withCachedData:0];

    v38 = [v13 bssid];
    v105 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v38 withKey:@"apProfile_shortID" withCachedData:0];

    v28 = v108;
    if (_apProfileVersion == 1)
    {
      v39 = [WiFiUsageAccessPointProfile _toMobileAssetsProfile:v108];
      [v13 setApProfile:v39];
    }

    v40 = [v13 apProfile];
    v41 = v106;
    if (!v40)
    {
      v101 = 0;
LABEL_65:
      v43 = v103;
      goto LABEL_66;
    }

    v42 = v40;
    v43 = v103;
    if (v103)
    {
      [v103 timeIntervalSinceNow];
      v45 = -v44;
      v46 = *&_apProfileMinSecsBetweenOccurrencies;

      if (v46 >= v45)
      {
        v101 = 0;
LABEL_66:
        v90 = [v13 bssid];
        v91 = [v90 isEqualToString:v10];

        if (v91)
        {
          v92 = [v13 bssid];
          [WiFiUsageAccessPointProfile _saveToUserDefaults:v92 withKey:@"apProfileForLatestAssoc" andValue:MEMORY[0x277CBEC38]];
        }

        v93 = [(WiFiUsageParsedBeacon *)v28 dictionaryRepresentation];
        v94 = [v93 objectForKeyedSubscript:@"hasColocatedMLOs"];
        [v13 setHasColocatedMLOs:{objc_msgSend(v94, "length") != 0}];

        v47 = 1;
        v26 = v102;
        v48 = v101;
        goto LABEL_69;
      }
    }

    else
    {
    }

    v49 = [v13 apProfile];
    v50 = [v49 isEqualToString:v104];

    if (v36 && v36 + v50 && v50 && v105 && (v51 = [v105 length], v51 == 2 * _shortProfileBytesLen))
    {
      v98 = v36 + v50;
      v101 = 0;
      v52 = v108;
      v53 = 0x2789C5000;
    }

    else
    {
      v54 = [v13 bssid];
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"replaced (from %s)", "+[WiFiUsageAccessPointProfile profileFromBeaconData:andParsedIE:]"];
      [v107 _submitProfileFor:v54 withCachedDict:0 AndEraseWithLog:v55];

      v56 = [v13 bssid];
      v57 = [v13 apProfile];
      [WiFiUsageAccessPointProfile _saveToUserDefaults:v56 withKey:@"apProfileID" andValue:v57];

      v99 = [v13 bssid];
      v58 = [v13 apProfile];
      v59 = _shortProfileBytesLen;
      v60 = v58;
      v61 = v60;
      memset(buf, 0, 20);
      if (v60)
      {
        v62 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v60 length:{"cStringUsingEncoding:", 4), objc_msgSend(v60, "length")}];
      }

      else
      {
        v62 = 0;
      }

      if (CC_SHA1([v62 bytes], objc_msgSend(v62, "length"), buf) == buf)
      {
        v63 = [WiFiUsagePrivacyFilter toHEXString:buf length:20];
      }

      else
      {
        v63 = 0;
      }

      if (2 * v59 < [v63 length])
      {
        v64 = [v63 substringFromIndex:{objc_msgSend(v63, "length") - 2 * v59}];

        v63 = v64;
      }

      [WiFiUsageAccessPointProfile _saveToUserDefaults:v99 withKey:@"apProfile_shortID" andValue:v63];
      v53 = 0x2789C5000uLL;
      v65 = [v13 bssid];
      v52 = v108;
      v66 = [(WiFiUsageParsedBeacon *)v108 dictionaryRepresentation];
      [WiFiUsageAccessPointProfile _saveToUserDefaults:v65 withKey:@"apProfileBeaconInfo" andValue:v66];

      v67 = [v13 bssid];
      [WiFiUsageAccessPointProfile _saveToUserDefaults:v67 withKey:@"apProfileBeaconRaw" andValue:v6];

      v98 = 1;
      v101 = 1;
    }

    v68 = *(v53 + 3472);
    v69 = [v13 bssid];
    v70 = [v68 _loadFromUserDefaults:v69 withKey:@"apProfileBeaconInfo" withCachedData:0];

    v97 = v70;
    v100 = [v70 objectForKey:@"apName"];
    v71 = [(WiFiUsageParsedBeacon *)v52 apName];
    if (v71)
    {
      v72 = v71;
      if (v100)
      {
        v52 = v108;
        v73 = [(WiFiUsageParsedBeacon *)v108 apName];
        v74 = [v73 isEqualToString:v100];

        v53 = 0x2789C5000;
        if (v74)
        {
          goto LABEL_56;
        }
      }

      else
      {

        v52 = v108;
        v53 = 0x2789C5000uLL;
      }

      v75 = *(v53 + 3472);
      v76 = [v13 bssid];
      v77 = [(WiFiUsageParsedBeacon *)v52 dictionaryRepresentation];
      [v75 _saveToUserDefaults:v76 withKey:@"apProfileBeaconInfo" andValue:v77];

      v78 = *(v53 + 3472);
      v79 = [v13 bssid];
      [v78 _saveToUserDefaults:v79 withKey:@"apProfileBeaconRaw" andValue:v6];
    }

LABEL_56:
    v80 = *(v53 + 3472);
    v81 = [v13 bssid];
    v82 = MEMORY[0x277CCABB0];
    if ([(WiFiUsageParsedBeacon *)v52 parsingSuccessful])
    {
      v41 = v106;
      v83 = v29;
      if ([v29 count])
      {
        v84 = 0;
      }

      else
      {
        v84 = [v102 count] == 0;
      }
    }

    else
    {
      v83 = v29;
      v84 = 0;
      v41 = v106;
    }

    v85 = [v82 numberWithBool:v84];
    [v80 _saveToUserDefaults:v81 withKey:@"apProfileBeaconInfoParsingSuccessful" andValue:v85];

    v86 = [v13 bssid];
    if ([(WiFiUsageParsedBeacon *)v108 parsingSuccessful])
    {
      [WiFiUsageAccessPointProfile _saveToUserDefaults:v86 withKey:@"apProfileBeaconInfoParsingErrorAfter" andValue:0];
    }

    else
    {
      v87 = [(WiFiUsageParsedBeacon *)v108 lastParsedOK];
      [WiFiUsageAccessPointProfile _saveToUserDefaults:v86 withKey:@"apProfileBeaconInfoParsingErrorAfter" andValue:v87];
    }

    v88 = [v13 bssid];
    v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v98];
    [WiFiUsageAccessPointProfile _saveToUserDefaults:v88 withKey:@"apProfileBeaconInfoOccurrencies" andValue:v89];

    v28 = v108;
    v29 = v83;
    goto LABEL_65;
  }

  v47 = 0;
  v48 = 0;
  v41 = v106;
LABEL_69:

  if (!v47)
  {
LABEL_72:
    v21 = 0;
    goto LABEL_73;
  }

  [v107 updateWithWPS:v8];
  if (v48)
  {
    [v107 _cleanUpStaleProfiles];
  }

LABEL_17:
  v21 = v13;
LABEL_73:

LABEL_74:
  v95 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (void)updateWithWPS:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"BSSID"];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"WPS_PROB_RESP_IE"];
      if (v6)
      {
        v7 = [MEMORY[0x277CBEB38] dictionary];
        v8 = [v6 objectForKeyedSubscript:@"IE_KEY_WPS_PRIMARY_DEV_TYPE"];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 objectForKeyedSubscript:@"WPS_DEV_TYPE_CAT"];
          [v7 setObject:v10 forKeyedSubscript:@"apProfileWPSDeviceCategory"];

          v11 = [v9 objectForKeyedSubscript:@"WPS_DEV_TYPE_SUB_CAT"];
          [v7 setObject:v11 forKeyedSubscript:@"apProfileWPSDeviceSubcategory"];
        }

        v12 = [v6 objectForKeyedSubscript:@"IE_KEY_WPS_MODEL_NAME"];
        v13 = [WiFiUsagePrivacyFilter reformatMACAddress:v12];
        if (v13)
        {
          [v7 setObject:@"dropped" forKeyedSubscript:@"apProfileWPSDeviceModelName"];
        }

        else
        {
          v14 = [v6 objectForKeyedSubscript:@"IE_KEY_WPS_MODEL_NAME"];
          [v7 setObject:v14 forKeyedSubscript:@"apProfileWPSDeviceModelName"];
        }

        v15 = [v6 objectForKeyedSubscript:@"IE_KEY_WPS_MODEL_NUM"];
        v16 = [WiFiUsagePrivacyFilter reformatMACAddress:v15];
        if (v16)
        {
          [v7 setObject:@"dropped" forKeyedSubscript:@"apProfileWPSDeviceModelNumber"];
        }

        else
        {
          v17 = [v6 objectForKeyedSubscript:@"IE_KEY_WPS_MODEL_NUM"];
          [v7 setObject:v17 forKeyedSubscript:@"apProfileWPSDeviceModelNumber"];
        }

        v18 = [v6 objectForKeyedSubscript:@"IE_KEY_WPS_MANUFACTURER"];
        v19 = [WiFiUsagePrivacyFilter reformatMACAddress:v18];
        if (v19)
        {
          [v7 setObject:@"dropped" forKeyedSubscript:@"apProfileWPSDeviceManufacturer"];
        }

        else
        {
          v20 = [v6 objectForKeyedSubscript:@"IE_KEY_WPS_MANUFACTURER"];
          [v7 setObject:v20 forKeyedSubscript:@"apProfileWPSDeviceManufacturer"];
        }

        [WiFiUsageAccessPointProfile _saveToUserDefaults:v5 withKey:@"apProfileWPSInfo" andValue:v7];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "+[WiFiUsageAccessPointProfile updateWithWPS:]";
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: no BSSID in ParsedIE", &v22, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)updateWithAssocTime:(double)a3 forBssid:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = [WiFiUsagePrivacyFilter reformatMACAddress:a4];
  v7 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v6 withKey:@"apProfileVersion" withCachedData:0];
  if (v7)
  {
    v8 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v6 withKey:@"apProfileMaxAssocTime" withCachedData:0];
    v9 = [v8 unsignedIntegerValue];

    if (v9 <= a3)
    {
      v10 = *&_apProfileMinAssoc;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
      [a1 _saveToUserDefaults:v6 withKey:@"apProfileMaxAssocTime" andValue:v11];

      [WiFiUsageAccessPointProfile _saveToUserDefaults:v6 withKey:@"apProfileForLatestAssoc" andValue:MEMORY[0x277CBEC28]];
      v12 = v10 <= v9 || v10 > a3;
      if (!v12 && [a1 _isProfileValidForUse:v6 withCachedDict:0 withError:0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = [a1 profileForBSSID:v6 withError:0];
        v15 = 136316162;
        v16 = "+[WiFiUsageAccessPointProfile updateWithAssocTime:forBssid:]";
        v17 = 2160;
        v18 = 1752392040;
        v19 = 2112;
        v20 = v6;
        v21 = 2160;
        v22 = 1752392040;
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: profile for %{mask.hash}@ is valid: %{mask.hash}@", &v15, 0x34u);
      }
    }

    else
    {
      [WiFiUsageAccessPointProfile _saveToUserDefaults:v6 withKey:@"apProfileForLatestAssoc" andValue:MEMORY[0x277CBEC28]];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)_submitProfileFor:(id)a3 withCachedDict:(id)a4 AndEraseWithLog:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v8 withKey:@"apProfileVersion" withCachedData:v9];
  if (v11)
  {
    v12 = [a1 _isProfileValidForUse:v8 withCachedDict:v9 withError:0];
    v13 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v8 withKey:@"submittedToCA" withCachedData:v9];
    v14 = [v13 BOOLValue];

    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
    v17 = 0x2789C5000;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v12)
      {
        v18 = &stru_28487EF20;
      }

      else
      {
        v18 = @"NOT ";
      }

      if (v14)
      {
        v19 = &stru_28487EF20;
      }

      else
      {
        v19 = @"NOT ";
      }

      if (v14)
      {
        v20 = &stru_28487EF20;
      }

      else
      {
        v20 = @"-- skip";
      }

      if (((v14 | v12) & 1) == 0)
      {
        if (+[WiFiUsagePrivacyFilter isInternalInstall])
        {
          v20 = @"-- skip";
        }

        else
        {
          v20 = &stru_28487EF20;
        }
      }

      *buf = 136316418;
      v30 = "+[WiFiUsageAccessPointProfile _submitProfileFor:withCachedDict:AndEraseWithLog:]";
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v18;
      v35 = 2112;
      v36 = v19;
      v37 = 2112;
      v38 = v20;
      v39 = 2112;
      v40 = v10;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: profile for %@ is %@valid and %@already sentToCA%@ (%@)", buf, 0x3Eu);
      v17 = 0x2789C5000uLL;
    }

    if ((v14 & 1) == 0 && ((v12 & 1) != 0 || [*(v17 + 3912) isInternalInstall]))
    {
      v21 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v8 withKey:0 withCachedData:v9];
      if (v21)
      {
        v22 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [a1 _saveToUserDefaults:v8 withKey:@"submittedToCA" andValue:v22];

        if (v10)
        {
          v23 = -[__CFString componentsSeparatedByString:](v10, "componentsSeparatedByString:", @"(");
          v24 = [v23 objectAtIndexedSubscript:0];
          [v21 setValue:v24 forKey:@"reasonForSending"];
        }

        v21 = v21;
        AnalyticsSendEventLazy();
      }
    }

    else
    {
      v21 = 0;
    }

    v25 = [a1 _getDefaults];
    v26 = [*(v17 + 3912) reformatMACAddress:v8];
    [v25 removeObjectForKey:v26];

    if (v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v27 = [*(v17 + 3912) reformatMACAddress:v8];
      *buf = 136315906;
      v30 = "+[WiFiUsageAccessPointProfile _submitProfileFor:withCachedDict:AndEraseWithLog:]";
      v31 = 2160;
      v32 = 1752392040;
      v33 = 2112;
      v34 = v27;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: removed %{mask.hash}@ from defaults: %@", buf, 0x2Au);
    }
  }

  else
  {
    v21 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
}

+ (void)submitToCAForBSSID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [WiFiUsagePrivacyFilter reformatMACAddress:a3];
  v5 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v4 withKey:@"apProfileVersion" withCachedData:0];
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[WiFiUsageAccessPointProfile submitToCAForBSSID:];
  }

  if (([a1 _isProfileValidForUse:v4 withCachedDict:0 withError:0] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[WiFiUsageAccessPointProfile submitToCAForBSSID:];
  }

  v6 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v4 withKey:@"submittedToCA" withCachedData:0];
  v7 = [v6 BOOLValue];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(WiFiUsageAccessPointProfile *)v4 submitToCAForBSSID:v7];
  }

  v8 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v4 withKey:0 withCachedData:0];
  v9 = v8;
  if (v8)
  {
    [v8 setValue:@"DebugCommand" forKey:@"reasonForSending"];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: submitting CA metric %@ : %@", "+[WiFiUsageAccessPointProfile submitToCAForBSSID:]", @"com.apple.wifi.AP_Capabilities_Profile", v9];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v10, "UTF8String")];
      *buf = 136446210;
      v15 = [v11 UTF8String];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v13 = v9;
    AnalyticsSendEventLazy();
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_isProfileValidForUse:(id)a3 withCachedDict:(id)a4 onlyIfCurrent:(BOOL)a5 withError:(id *)a6
{
  v7 = a5;
  v80[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v11 = [WiFiUsagePrivacyFilter reformatMACAddress:v9];

    if (_apProfileVersion)
    {
      v12 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v11 withKey:@"apProfileVersion" withCachedData:v10 withError:a6];
      if (a6 && *a6)
      {
        v13 = 0;
LABEL_41:

        goto LABEL_42;
      }

      v15 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v11 withKey:@"apProfileBeaconInfoOccurrencies" withCachedData:v10];
      v48 = [v15 unsignedIntegerValue];

      v16 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v11 withKey:@"apProfileMaxAssocTime" withCachedData:v10];
      v47 = [v16 unsignedIntegerValue];

      v17 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v11 withKey:@"apProfileCacheTimestamp" withCachedData:v10];
      v18 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v11 withKey:@"apProfileForLatestAssoc" withCachedData:v10];
      v19 = [v18 BOOLValue];

      v20 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v11 withKey:@"apProfileBeaconInfoParsingSuccessful" withCachedData:v10];
      v21 = [v20 BOOLValue];

      v22 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v11 withKey:@"apProfileBeaconInfoParsingErrorAfter" withCachedData:v10];
      v23 = v22;
      if (v7 && (v19 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v56 = "+[WiFiUsageAccessPointProfile _isProfileValidForUse:withCachedDict:onlyIfCurrent:withError:]";
          v57 = 2160;
          v58 = 1752392040;
          v59 = 2112;
          v60 = v11;
          v61 = 2112;
          v62 = v17;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: bssid %{mask.hash}@ has not been derived from a beacon retrieved after the current association (last updated: %@)", buf, 0x2Au);
        }

        if (!a6)
        {
          goto LABEL_18;
        }

        v24 = MEMORY[0x277CCA9B8];
        v77 = *MEMORY[0x277CCA470];
        v78 = @"WUAPProfileErrorProfileNotCurrent";
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        v26 = v24;
        v27 = 2;
        goto LABEL_16;
      }

      v28 = v22;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([_apProfileVersionString isEqualToString:v12] & v21) == 1 && v48 >= _apProfileMinOccurrencies && (*&_apProfileMinAssoc <= v47 || v19 && (objc_msgSend(v17, "timeIntervalSinceNow", v47, *&_apProfileMinAssoc), *&_apProfileMinAssoc < -v29)))
      {
        v13 = 1;
      }

      else
      {
        if (v12)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v30 = _apProfileVersionString;
            v31 = @"NO";
            if (v21)
            {
              v32 = @"YES";
            }

            else
            {
              v32 = @"NO";
            }

            v46 = _apProfileMinAssoc;
            if (v19)
            {
              v31 = @"YES";
            }

            v44 = _apProfileMinOccurrencies;
            v45 = v31;
            [v17 timeIntervalSinceNow];
            *buf = 136317698;
            v56 = "+[WiFiUsageAccessPointProfile _isProfileValidForUse:withCachedDict:onlyIfCurrent:withError:]";
            v57 = 2112;
            v58 = v11;
            v59 = 2112;
            v60 = v12;
            v61 = 2112;
            v62 = v30;
            v63 = 2112;
            v64 = v32;
            v65 = 2048;
            v66 = v48;
            v67 = 2048;
            v68 = v44;
            v69 = 2048;
            v70 = v47;
            v71 = 2048;
            v72 = v46;
            v73 = 2112;
            v74 = v45;
            v75 = 2048;
            v76 = -v33;
            _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Profile for bssid: %@ is NOT valid: version:%@ (current:%@) parsingSuccessful:%@ occurrencies:%lu (>=%lu) maxAssocTime(sec):%lu (>=%f) isCurrent:%@ lastUpdated/currentAssocTime(sec):%f", buf, 0x70u);
          }

          v23 = v28;
          if ((v21 & 1) == 0)
          {
            v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Parsing Failed. Last Parsed: %@", v28];
            v25 = v37;
            if (a6)
            {
              v38 = MEMORY[0x277CCA9B8];
              v53 = *MEMORY[0x277CCA470];
              v54 = v37;
              v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
              *a6 = [v38 errorWithDomain:@"com.apple.wifi.policy.approfile" code:4 userInfo:v39];

              v23 = v28;
            }

            goto LABEL_17;
          }

          if (v48 >= _apProfileMinOccurrencies)
          {
            v40 = v47;
            v41 = *&_apProfileMinAssoc;
            if (*&_apProfileMinAssoc <= v47)
            {
              if (!v19)
              {
                goto LABEL_18;
              }

              [v17 timeIntervalSinceNow];
              v13 = 0;
              if (!a6)
              {
                goto LABEL_40;
              }

              v40 = -v42;
              v41 = *&_apProfileMinAssoc;
              if (*&_apProfileMinAssoc >= v40)
              {
                goto LABEL_40;
              }
            }

            else if (!a6)
            {
              goto LABEL_18;
            }

            v43 = MEMORY[0x277CCA9B8];
            v49 = *MEMORY[0x277CCA470];
            v50 = @"WUAPProfileErrorMinAssocTimeNotMet";
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:{1, v40, v41}];
            v26 = v43;
            v27 = 6;
          }

          else
          {
            if (!a6)
            {
              goto LABEL_18;
            }

            v34 = MEMORY[0x277CCA9B8];
            v51 = *MEMORY[0x277CCA470];
            v52 = @"WUAPProfileErrorMinOccurrencesNotMet";
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
            v26 = v34;
            v27 = 5;
          }

LABEL_16:
          *a6 = [v26 errorWithDomain:@"com.apple.wifi.policy.approfile" code:v27 userInfo:v25];
LABEL_17:

LABEL_18:
          v13 = 0;
LABEL_40:

          goto LABEL_41;
        }

        v13 = 0;
      }

      v23 = v28;
      goto LABEL_40;
    }

    if (a6)
    {
      v14 = MEMORY[0x277CCA9B8];
      v79 = *MEMORY[0x277CCA470];
      v80[0] = @"WUAPProfileErrorPreInit";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:&v79 count:1];
      [v14 errorWithDomain:@"com.apple.wifi.policy.approfile" code:1 userInfo:v12];
      *a6 = v13 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = 0;
LABEL_42:

  v35 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)longProfileForBSSID:(id)a3 withError:(id *)a4
{
  v6 = [WiFiUsagePrivacyFilter reformatMACAddress:a3];
  v7 = [a1 _isProfileValidForUse:v6 withCachedDict:0 withError:a4];
  v8 = 0;
  if (v7)
  {
    v9 = [WiFiUsageAccessPointProfile _cachedProfile:v6];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", _apProfileVersionString, v9];
  }

  return v8;
}

+ (id)shortProfileForBSSID:(id)a3 withError:(id *)a4
{
  v6 = [WiFiUsagePrivacyFilter reformatMACAddress:a3];
  v7 = [a1 _isProfileValidForUse:v6 withCachedDict:0 withError:a4];
  v8 = 0;
  if (v7)
  {
    v9 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v6 withKey:@"apProfile_shortID" withCachedData:0];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", _apProfileVersionString, v9];
  }

  return v8;
}

+ (id)errorStringForTelemetry:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCA470]];

  if (v4 && [v4 hasPrefix:@"WUAPProfile"])
  {
    v5 = [v4 substringFromIndex:{objc_msgSend(@"WUAPProfile", "length")}];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

+ (id)beaconsAndWPSInfo
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [a1 _getDefaults];
  v4 = [v3 dictionaryRepresentation];

  v30 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [v4 allKeys];
  v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = [WiFiUsagePrivacyFilter reformatMACAddress:v9];

        if (v10)
        {
          v11 = objc_opt_new();
          v12 = [v4 objectForKeyedSubscript:v9];
          v13 = [a1 _loadFromUserDefaults:v9 withKey:@"apProfileBeaconInfo" withCachedData:v12];
          v14 = [v13 objectForKey:@"BeaconInformationElement_0"];

          [v11 setBssid:v9];
          v15 = [v4 objectForKeyedSubscript:v9];
          v16 = [a1 _loadFromUserDefaults:v9 withKey:@"apProfileBeaconRaw" withCachedData:v15];
          [v11 setBeacon:v16];

          if (v14)
          {
            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
            [v11 setSsid:v17];
          }

          v18 = [v4 objectForKeyedSubscript:v9];
          v19 = [a1 _loadFromUserDefaults:v9 withKey:@"apProfileWPSInfo" withCachedData:v18];
          [v11 setApProfileWPSInfo:v19];

          v20 = [v4 objectForKeyedSubscript:v9];
          v21 = [a1 _loadFromUserDefaults:v9 withKey:@"apProfileVersion" withCachedData:v20];
          [v11 setApProfileVersion:v21];

          v22 = [v4 objectForKeyedSubscript:v9];
          v23 = [a1 _loadFromUserDefaults:v9 withKey:@"apProfileID" withCachedData:v22];
          [v11 setApProfileID:v23];

          v24 = [v4 objectForKeyedSubscript:v9];
          v25 = [a1 _loadFromUserDefaults:v9 withKey:@"apProfile_shortID" withCachedData:v24];
          [v11 setApProfile_shortID:v25];

          v26 = [v4 objectForKeyedSubscript:v9];
          v27 = [a1 _loadFromUserDefaults:v9 withKey:@"apProfileCacheTimestampCreated" withCachedData:v26];

          if (v11 && v27)
          {
            [v30 setObject:v11 forKey:v27];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v6);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)apNameForBSSID:(id)a3
{
  v3 = [WiFiUsagePrivacyFilter reformatMACAddress:a3];
  v4 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v3 withKey:@"apProfileBeaconInfo" withCachedData:0];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"apName"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)submitToCAForBSSID:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: profile for bssid %@ doesn't exist", v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

+ (void)submitToCAForBSSID:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: profile for bssid %@ is not valid", v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

+ (void)submitToCAForBSSID:(uint64_t)a1 .cold.3(uint64_t a1, char a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = "not yet";
  v5 = "+[WiFiUsageAccessPointProfile submitToCAForBSSID:]";
  v4 = 136315650;
  if (a2)
  {
    v2 = "already sent";
  }

  v6 = 2112;
  v7 = a1;
  v8 = 2080;
  v9 = v2;
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: profile for bssid %@ is %s sent to CA", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

@end