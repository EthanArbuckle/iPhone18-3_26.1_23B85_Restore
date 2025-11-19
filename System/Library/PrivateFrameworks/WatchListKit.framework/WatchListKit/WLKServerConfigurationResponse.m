@interface WLKServerConfigurationResponse
- (BOOL)isActiveUser;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFavoritesSyncEnabled;
- (BOOL)isValid;
- (BOOL)isValidIgnoringExpiration;
- (BOOL)isValidWithinExtendedExpiration:(double)a3;
- (BOOL)naturalLanguageSearchProperty;
- (NSDictionary)features;
- (NSDictionary)requiredRequestKeyValuePairsDictionary;
- (NSDictionary)searchReportConcernProps;
- (NSNumber)vppaSessionDurationInMillis;
- (NSString)utsk;
- (NSString)vppaStatusString;
- (WLKServerConfigurationResponse)initWithCoder:(id)a3;
- (WLKServerConfigurationResponse)initWithDictionary:(id)a3;
- (WLKServerConfigurationResponse)initWithServerResponseDictionary:(id)a3 expirationDate:(id)a4 environmentHash:(unint64_t)a5;
- (id)_VPPAInfo;
- (id)_expirationDateFromResponse:(id)a3;
- (id)_requiredRequestKVPMap;
- (id)_requiredRequestKVPMap:(id)a3;
- (id)_routes;
- (id)configurationResponseByReplacingUTSK:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)requiredRequestKeyValuePairsDictionary:(id)a3;
- (id)requiredRequestKeyValuePairsForType:(id)a3;
- (id)serverRouteNamed:(id)a3;
- (id)utsc;
- (int64_t)vppaStatus;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WLKServerConfigurationResponse

- (NSDictionary)requiredRequestKeyValuePairsDictionary
{
  v2 = [(WLKServerConfigurationResponse *)self _requiredRequestKVPMap];
  v3 = [v2 wlk_dictionaryForKey:@"Default"];

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__WLKServerConfigurationResponse_requiredRequestKeyValuePairsDictionary__block_invoke;
  v6[3] = &unk_279E5E788;
  v6[4] = &v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  if (v8[3])
  {
    v4 = v3;
  }

  else
  {
    NSLog(&cfstr_Wlkserverconfi_0.isa);
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_requiredRequestKVPMap
{
  v2 = [(WLKServerConfigurationResponse *)self _applicationProperties];
  v3 = [v2 wlk_dictionaryForKey:@"requiredParamsMap"];

  return v3;
}

void __72__WLKServerConfigurationResponse_requiredRequestKeyValuePairsDictionary__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    NSLog(&cfstr_Wlkserverconfi.isa, v8, v9);
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (NSString)vppaStatusString
{
  v2 = [(WLKServerConfigurationResponse *)self _VPPAInfo];
  v3 = [v2 wlk_stringForKey:@"state"];

  return v3;
}

- (id)_VPPAInfo
{
  v2 = [(WLKServerConfigurationResponse *)self _userProperties];
  v3 = [v2 wlk_dictionaryForKey:@"vppa"];

  return v3;
}

- (BOOL)isActiveUser
{
  v2 = [(WLKServerConfigurationResponse *)self _userProperties];
  v3 = [v2 wlk_numberForKey:@"activeUser"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)utsc
{
  v2 = [(WLKServerConfigurationResponse *)self _userProperties];
  v3 = [v2 wlk_stringForKey:@"utsc"];

  return v3;
}

- (NSString)utsk
{
  v2 = [(WLKServerConfigurationResponse *)self _utskProperties];
  v3 = [v2 wlk_stringForKey:@"utsk"];

  return v3;
}

- (BOOL)isValid
{
  responseDictionary = self->_responseDictionary;
  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    [(NSDate *)expirationDate timeIntervalSinceNow];
    v6 = v5 > 0.0;
  }

  else
  {
    v6 = 0;
  }

  environmentHash = self->_environmentHash;
  v8 = +[WLKUserEnvironment currentEnvironment];
  v9 = [v8 hash];

  if (!responseDictionary)
  {
    return 0;
  }

  if (environmentHash == v9)
  {
    return v6;
  }

  return 0;
}

- (BOOL)isValidIgnoringExpiration
{
  responseDictionary = self->_responseDictionary;
  environmentHash = self->_environmentHash;
  v4 = +[WLKUserEnvironment currentEnvironment];
  v5 = [v4 hash];

  return responseDictionary && environmentHash == v5;
}

- (id)_routes
{
  v2 = [(WLKServerConfigurationResponse *)self _applicationProperties];
  v3 = [v2 wlk_dictionaryForKey:@"routes"];

  return v3;
}

- (WLKServerConfigurationResponse)initWithDictionary:(id)a3
{
  v4 = MEMORY[0x277CCAAA0];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"response"];
  v7 = [v4 JSONObjectWithData:v6 options:0 error:0];

  v8 = [v5 objectForKeyedSubscript:@"expirationDate"];
  v9 = [v5 objectForKeyedSubscript:@"environmentHash"];

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v9 == 0)
  {
    v12 = 0;
  }

  else
  {
    self = -[WLKServerConfigurationResponse initWithServerResponseDictionary:expirationDate:environmentHash:](self, "initWithServerResponseDictionary:expirationDate:environmentHash:", v7, v8, [v9 unsignedIntegerValue]);
    v12 = self;
  }

  return v12;
}

- (WLKServerConfigurationResponse)initWithServerResponseDictionary:(id)a3 expirationDate:(id)a4 environmentHash:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = WLKServerConfigurationResponse;
  v10 = [(WLKServerConfigurationResponse *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    responseDictionary = v10->_responseDictionary;
    v10->_responseDictionary = v11;

    v13 = v9;
    if (!v13)
    {
      v13 = [(WLKServerConfigurationResponse *)v10 _expirationDateFromResponse:v10->_responseDictionary];
    }

    expirationDate = v10->_expirationDate;
    v10->_expirationDate = v13;

    v10->_environmentHash = a5;
  }

  return v10;
}

- (id)configurationResponseByReplacingUTSK:(id)a3
{
  v4 = a3;
  v5 = [(WLKServerConfigurationResponse *)self responseDictionary];
  v6 = [v5 wlk_dictionaryByReplacingOccurrencesOfKey:@"utsk" with:v4];

  v7 = [WLKServerConfigurationResponse alloc];
  v8 = [(WLKServerConfigurationResponse *)self expirationDate];
  v9 = [(WLKServerConfigurationResponse *)v7 initWithServerResponseDictionary:v6 expirationDate:v8 environmentHash:[(WLKServerConfigurationResponse *)self environmentHash]];

  return v9;
}

- (id)requiredRequestKeyValuePairsDictionary:(id)a3
{
  v4 = a3;
  v5 = [(WLKServerConfigurationResponse *)self _requiredRequestKVPMap:v4];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__WLKServerConfigurationResponse_requiredRequestKeyValuePairsDictionary___block_invoke;
  v8[3] = &unk_279E5E788;
  v8[4] = &v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  if (v10[3])
  {
    v6 = v5;
  }

  else
  {
    NSLog(&cfstr_Wlkserverconfi_0.isa);
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __73__WLKServerConfigurationResponse_requiredRequestKeyValuePairsDictionary___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    NSLog(&cfstr_Wlkserverconfi.isa, v8, v9);
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (NSNumber)vppaSessionDurationInMillis
{
  v2 = [(WLKServerConfigurationResponse *)self _VPPAInfo];
  v3 = [v2 wlk_numberForKey:@"sessionDurationInMillis"];

  return v3;
}

- (int64_t)vppaStatus
{
  v2 = [(WLKServerConfigurationResponse *)self vppaStatusString];
  v3 = [v2 lowercaseString];

  if ([v3 isEqualToString:@"reminder"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"grace"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"expired"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)features
{
  v2 = [(WLKServerConfigurationResponse *)self _applicationProperties];
  v3 = [v2 wlk_dictionaryForKey:@"featureEnablers"];

  return v3;
}

- (BOOL)naturalLanguageSearchProperty
{
  v2 = [(WLKServerConfigurationResponse *)self _applicationProperties];
  v3 = [v2 wlk_BOOLForKey:@"naturalLanguageSearchEnabled" defaultValue:0];

  return v3;
}

- (NSDictionary)searchReportConcernProps
{
  v2 = [(WLKServerConfigurationResponse *)self _applicationProperties];
  v3 = [v2 wlk_dictionaryForKey:@"searchReportConcernProps"];

  return v3;
}

- (BOOL)isFavoritesSyncEnabled
{
  v2 = [(WLKServerConfigurationResponse *)self _userProperties];
  v3 = [v2 wlk_numberForKey:@"favoritesSyncEnabled"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)requiredRequestKeyValuePairsForType:(id)a3
{
  v4 = a3;
  v5 = [(WLKServerConfigurationResponse *)self _requiredRequestKVPMap];
  v6 = [v5 wlk_dictionaryForKey:v4];

  return v6;
}

- (id)serverRouteNamed:(id)a3
{
  v4 = a3;
  v5 = [(WLKServerConfigurationResponse *)self _routes];
  v6 = [v5 wlk_dictionaryForKey:v4];

  if (v6)
  {
    v7 = [[WLKServerRoute alloc] initWithDictionary:v6 routeName:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:self->_responseDictionary])
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:self->_responseDictionary options:0 error:0];
    if (v4)
    {
      [v3 setObject:v4 forKeyedSubscript:@"response"];
    }

    [v3 setObject:self->_expirationDate forKeyedSubscript:@"expirationDate"];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_environmentHash];
    [v3 setObject:v5 forKeyedSubscript:@"environmentHash"];

    v6 = [v3 copy];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [WLKServerConfigurationResponse dictionaryRepresentation];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)isValidWithinExtendedExpiration:(double)a3
{
  responseDictionary = self->_responseDictionary;
  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    [(NSDate *)expirationDate timeIntervalSinceNow];
    v8 = v7 > 0.0;
  }

  else
  {
    v8 = 0;
  }

  environmentHash = self->_environmentHash;
  v10 = +[WLKUserEnvironment currentEnvironment];
  v11 = [v10 hash];

  if (v8)
  {
    return responseDictionary && environmentHash == v11;
  }

  else
  {
    v14 = self->_expirationDate;
    if (v14)
    {
      [(NSDate *)v14 timeIntervalSinceNow];
      v16 = v15 + a3 > 0.0;
    }

    else
    {
      v16 = 0;
    }

    v17 = environmentHash == v11 && v16;
    return responseDictionary && v17;
  }
}

- (unint64_t)hash
{
  v3 = [(WLKServerConfigurationResponse *)self environmentHash];
  v4 = [(WLKServerConfigurationResponse *)self responseDictionary];
  v5 = [v4 hash] ^ v3;

  v6 = [(WLKServerConfigurationResponse *)self expirationDate];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(WLKServerConfigurationResponse *)self expirationDate];
        v8 = [(WLKServerConfigurationResponse *)v6 expirationDate];
        v9 = v7;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          if (!v9 || !v10)
          {
            goto LABEL_17;
          }

          v12 = [v9 isEqual:v10];

          if ((v12 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v14 = [(WLKServerConfigurationResponse *)self responseDictionary];
        v15 = [(WLKServerConfigurationResponse *)v6 responseDictionary];
        v9 = v14;
        v16 = v15;
        v11 = v16;
        if (v9 == v16)
        {

LABEL_20:
          v18 = [(WLKServerConfigurationResponse *)self environmentHash];
          v13 = v18 == [(WLKServerConfigurationResponse *)v6 environmentHash];
          goto LABEL_21;
        }

        if (v9 && v16)
        {
          v17 = [v9 isEqual:v16];

          if (v17)
          {
            goto LABEL_20;
          }

LABEL_18:
          v13 = 0;
LABEL_21:

          goto LABEL_22;
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    v13 = 0;
  }

LABEL_22:

  return v13;
}

- (id)description
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = WLKServerConfigurationResponse;
  v4 = [(WLKServerConfigurationResponse *)&v12 description];
  expirationDate = self->_expirationDate;
  environmentHash = self->_environmentHash;
  v13[0] = @"expiration";
  v13[1] = @"environment hash";
  v14[0] = expirationDate;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:environmentHash];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v9 = [v3 stringWithFormat:@"%@ %@", v4, v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSDictionary *)self->_responseDictionary copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSDate *)self->_expirationDate copy];
  v8 = v4[3];
  v4[3] = v7;

  v4[4] = self->_environmentHash;
  return v4;
}

- (WLKServerConfigurationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [(WLKServerConfigurationResponse *)self init];
    if (v5)
    {
      v6 = [v4 decodePropertyListForKey:@"response"];
      responseDictionary = v5->_responseDictionary;
      v5->_responseDictionary = v6;

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
      expirationDate = v5->_expirationDate;
      v5->_expirationDate = v8;

      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"environmentHash"];
      v5->_environmentHash = [v10 unsignedIntegerValue];
    }

    self = v5;
    v11 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  [v4 encodeObject:self->_responseDictionary forKey:@"response"];
  [v4 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_environmentHash];
  [v4 encodeObject:v5 forKey:@"environmentHash"];
}

- (id)_requiredRequestKVPMap:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v55 = a3;
  [(WLKServerConfigurationResponse *)self _routes];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v4 = v69 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v67;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v67 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v66 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = [v10 wlk_stringForKey:@"url"];

        if ([v55 isEqualToString:v11])
        {
          v41 = [v4 objectForKeyedSubscript:v9];
          v29 = v4;
          goto LABEL_37;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v66 objects:v72 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v50 = self;

  v51 = v4;
  v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v12 = v4;
  v13 = v55;
  v54 = v12;
  v56 = [v12 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v56)
  {
    v14 = *v63;
    v15 = @"url";
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v63 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v62 + 1) + 8 * j);
        v18 = [v12 objectForKeyedSubscript:v17];
        v19 = [v18 wlk_stringForKey:v15];

        v20 = [v19 componentsSeparatedByString:@"/"];
        v21 = [v13 componentsSeparatedByString:@"/"];
        if ([v20 count] && objc_msgSend(v21, "count"))
        {
          v22 = v15;
          v23 = v14;
          v24 = [v19 componentsSeparatedByString:@"{"];
          if ([v24 count])
          {
            v25 = [v24 objectAtIndexedSubscript:0];
            v26 = [v55 containsString:v25];

            v13 = v55;
            if (v26)
            {
              [v52 addObject:v17];
            }
          }

          v12 = v54;
          v14 = v23;
          v15 = v22;
        }
      }

      v56 = [v12 countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v56);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v11 = v52;
  v27 = [v11 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (!v27)
  {
    v29 = 0;
    v45 = 0;
    v42 = v11;
    self = v50;
    v4 = v51;
LABEL_38:

    v11 = v42;
    goto LABEL_39;
  }

  v28 = v27;
  v29 = 0;
  v53 = *v59;
  while (2)
  {
    v57 = v29;
    for (k = 0; k != v28; ++k)
    {
      if (*v59 != v53)
      {
        objc_enumerationMutation(v11);
      }

      v31 = *(*(&v58 + 1) + 8 * k);
      v32 = [v12 objectForKeyedSubscript:v31];
      v33 = [v32 wlk_stringForKey:@"url"];

      v34 = [v33 componentsSeparatedByString:@"/"];
      v35 = [v55 componentsSeparatedByString:@"/"];
      v36 = [v35 lastObject];
      v37 = [v34 lastObject];
      v38 = [v36 isEqualToString:v37];

      if (v38)
      {
        v29 = v31;

        v12 = v54;
        v13 = v55;
        goto LABEL_35;
      }

      v39 = [v35 count];
      if (v39 == [v34 count])
      {
        v40 = v31;

        v57 = v40;
      }

      v12 = v54;
      v13 = v55;
    }

    v28 = [v11 countByEnumeratingWithState:&v58 objects:v70 count:16];
    v29 = v57;
    if (v28)
    {
      continue;
    }

    break;
  }

LABEL_35:

  if (v29)
  {
    v41 = [v12 objectForKeyedSubscript:v29];
    self = v50;
    v4 = v51;
LABEL_37:
    v42 = v11;
    v11 = [v41 wlk_stringForKey:@"requiredParamsType"];

    v43 = [(WLKServerConfigurationResponse *)self _applicationProperties];
    v44 = [v43 wlk_dictionaryForKey:@"requiredParamsMap"];
    v45 = [v44 wlk_dictionaryForKey:v11];

    v13 = v55;
    goto LABEL_38;
  }

  v45 = 0;
  self = v50;
  v4 = v51;
LABEL_39:

  if (!v45)
  {
    NSLog(&cfstr_Wlkserverconfi_1.isa, v13);
    v46 = [(WLKServerConfigurationResponse *)self _applicationProperties];
    v47 = [v46 wlk_dictionaryForKey:@"requiredParamsMap"];
    v45 = [v47 wlk_dictionaryForKey:@"Default"];

    v13 = v55;
  }

  v48 = *MEMORY[0x277D85DE8];

  return v45;
}

- (id)_expirationDateFromResponse:(id)a3
{
  v3 = [(WLKServerConfigurationResponse *)self _utskProperties];
  v4 = [v3 wlk_numberForKey:@"expirationInSeconds"];

  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{objc_msgSend(v4, "unsignedIntegerValue")}];

  return v5;
}

@end