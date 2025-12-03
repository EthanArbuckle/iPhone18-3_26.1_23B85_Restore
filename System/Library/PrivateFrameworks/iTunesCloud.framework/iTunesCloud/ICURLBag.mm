@interface ICURLBag
+ (NSArray)_allBagKeys;
- (BOOL)BOOLValueForBagKey:(id)key;
- (BOOL)_shouldMescalSignBodyForURL:(id)l withSignatureConfiguration:(id)configuration;
- (BOOL)canPostKeybagSyncData;
- (BOOL)hasValueForBagKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpired;
- (BOOL)isTrustedHostForURL:(id)l;
- (BOOL)shouldAppendDeviceGUIDForURL:(id)l;
- (BOOL)shouldAppendMachineDataHeadersForURL:(id)l;
- (ICURLBagEnhancedAudioConfiguration)enhancedAudioConfiguration;
- (ICURLBagLibraryDAAPConfiguration)libraryDAAPConfiguration;
- (ICURLBagRadioConfiguration)radioConfiguration;
- (NSArray)GUIDURLRegexPatterns;
- (NSDictionary)_propertyListRepresentation;
- (NSSet)GUIDURLSchemes;
- (NSString)storefrontHeaderSuffix;
- (id)_initWithDictionary:(id)dictionary;
- (id)_initWithDictionary:(id)dictionary amsBag:(id)bag requestDate:(id)date expirationDate:(id)expirationDate serverCorrelationKey:(id)key serverEnvironment:(id)environment profileName:(id)name profileVersion:(id)self0 sourceAccountDSID:(id)self1;
- (id)_initWithPropertyListRepresentation:(id)representation;
- (id)_knownIncorrectValues;
- (id)_knownOptionalBagKeys;
- (id)_urlStringFromBagStringValue:(id)value;
- (id)_valueForBagKey:(id)key;
- (id)arrayForBagKey:(id)key;
- (id)dictionaryForBagKey:(id)key;
- (id)mescalConfigurationForRequest:(id)request;
- (id)mescalConfigurationForRequestURL:(id)l;
- (id)mescalConfigurationForResponse:(id)response;
- (id)mescalConfigurationForResponseURL:(id)l;
- (id)numberForBagKey:(id)key;
- (id)stringForBagKey:(id)key;
- (id)urlForBagKey:(id)key;
- (id)valuesForBagKeys:(id)keys;
- (int64_t)int64ValueForBagKey:(id)key;
- (void)_logMissingKey:(id)key;
- (void)_validateGUIDURLConfigIfNeeded;
- (void)createAMSSnapshotBagWithCompletion:(id)completion;
- (void)setGUIDURLRegexPatterns:(id)patterns;
- (void)setGUIDURLSchemes:(id)schemes;
@end

@implementation ICURLBag

- (BOOL)isExpired
{
  expirationDate = self->_expirationDate;
  v3 = [MEMORY[0x1E695DF00] now];
  LOBYTE(expirationDate) = [(NSDate *)expirationDate compare:v3]== NSOrderedAscending;

  return expirationDate;
}

- (ICURLBagRadioConfiguration)radioConfiguration
{
  v2 = [(ICURLBag *)self dictionaryForBagKey:@"radio"];
  if (_NSIsNSDictionary())
  {
    v3 = [[ICURLBagRadioConfiguration alloc] initWithBagRadioDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __33__ICURLBag__knownOptionalBagKeys__block_invoke()
{
  _knownOptionalBagKeys_sKnownOptionalBagKeys = [MEMORY[0x1E695DFD8] setWithObjects:{@"auth-can-post", @"isExplicitContentAgeVerificationRequired", @"ExplicitContentBadgeTreatment", @"ios-app-url", @"storefront-header-suffix", @"subscription-storefront-header-suffix", @"aps-sampling-percentage", @"clientIDDomains", @"ios-app-download-retry-count", @"lyricsOnByDefaultDisabled", @"md-domains", @"min-artist-update-polling-frequency-secs", @"ratingWarningThreshold", @"ratingWarningTitle", @"ratingWarningText", @"TLSSamplingPercentage", @"TLSSamplingSessionDuration", @"TFOSamplingPercentage", @"TFOSamplingSessionDuration", @"fuseHeaderEnrichment", @"fuseCarrierMccMncList", @"isExplicitMusicDisallowed", @"musicFriends", @"enhanced-audio", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_knownOptionalBagKeys
{
  if (_knownOptionalBagKeys_sOptionalKeysOnceToken != -1)
  {
    dispatch_once(&_knownOptionalBagKeys_sOptionalKeysOnceToken, &__block_literal_global_578);
  }

  v3 = _knownOptionalBagKeys_sKnownOptionalBagKeys;

  return v3;
}

- (ICURLBagEnhancedAudioConfiguration)enhancedAudioConfiguration
{
  v2 = [(ICURLBag *)self dictionaryForBagKey:@"enhanced-audio"];
  if (_NSIsNSDictionary())
  {
    v3 = [[ICURLBagEnhancedAudioConfiguration alloc] initWithBagEnhancedAudioDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_validateGUIDURLConfigIfNeeded
{
  v35 = *MEMORY[0x1E69E9840];
  gUIDURLRegexPatterns = [(ICURLBag *)self GUIDURLRegexPatterns];
  if (!gUIDURLRegexPatterns || (v4 = gUIDURLRegexPatterns, [(ICURLBag *)self GUIDURLSchemes], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v6 = [(ICURLBag *)self dictionaryForBagKey:@"guid-urls"];
    if (_NSIsNSDictionary())
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = [v6 objectForKey:@"regex"];
      if (_NSIsNSArray())
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          do
          {
            v13 = 0;
            do
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v29 + 1) + 8 * v13);
              if (_NSIsNSString())
              {
                v15 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v14 options:1 error:0];
                if (v15)
                {
                  [v7 addObject:v15];
                }
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
          }

          while (v11);
        }
      }

      [(ICURLBag *)self setGUIDURLRegexPatterns:v7];
      v16 = [v6 objectForKey:@"schemes"];
      v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      if (_NSIsNSArray())
      {
        v24 = v8;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v18 = v16;
        v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v26;
          do
          {
            v22 = 0;
            do
            {
              if (*v26 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v25 + 1) + 8 * v22);
              if (_NSIsNSString())
              {
                [v17 addObject:v23];
              }

              ++v22;
            }

            while (v20 != v22);
            v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v20);
        }

        v8 = v24;
      }

      if (([v17 containsObject:@"https"] & 1) == 0)
      {
        [v17 addObject:@"https"];
      }

      [(ICURLBag *)self setGUIDURLSchemes:v17];
    }
  }
}

- (NSArray)GUIDURLRegexPatterns
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_GUIDURLRegexPatterns;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSet)GUIDURLSchemes
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_GUIDURLSchemes;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)storefrontHeaderSuffix
{
  v3 = [(ICURLBag *)self stringForBagKey:@"subscription-storefront-header-suffix"];
  if (!v3)
  {
    v3 = [(ICURLBag *)self stringForBagKey:@"storefront-header-suffix"];
  }

  return v3;
}

- (id)_knownIncorrectValues
{
  if (_knownIncorrectValues_sKnownIncorrectValuesOnceToken != -1)
  {
    dispatch_once(&_knownIncorrectValues_sKnownIncorrectValuesOnceToken, &__block_literal_global_581);
  }

  v3 = _knownIncorrectValues_sKnownIncorrectValues;

  return v3;
}

void __33__ICURLBag__knownIncorrectValues__block_invoke()
{
  v0 = _knownIncorrectValues_sKnownIncorrectValues;
  _knownIncorrectValues_sKnownIncorrectValues = MEMORY[0x1E695E0F8];
}

- (void)_logMissingKey:(id)key
{
  v17 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  _knownOptionalBagKeys = [(ICURLBag *)self _knownOptionalBagKeys];
  if (([_knownOptionalBagKeys containsObject:keyCopy] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      profileName = self->_profileName;
      profileVersion = self->_profileVersion;
      v9 = 138544130;
      selfCopy = self;
      v11 = 2114;
      v12 = keyCopy;
      v13 = 2114;
      v14 = profileName;
      v15 = 2114;
      v16 = profileVersion;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Encountered missing bag key '%{public}@' in profile '%{public}@/%{public}@'", &v9, 0x2Au);
    }
  }
}

- (id)_urlStringFromBagStringValue:(id)value
{
  v36 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v4 = [valueCopy rangeOfString:@"{"];
  v28 = valueCopy;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    *&v5 = 138543874;
    v27 = v5;
    v7 = valueCopy;
    while (1)
    {
      v8 = [v7 rangeOfString:@"}" options:0 range:{v6 + 1, objc_msgSend(v7, "length", v27) + ~v6}];
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v9 = v8 - v6;
      v10 = [v7 substringWithRange:{v6 + 1, v8 - v6 - 1}];
      v11 = [v10 rangeOfString:@"$"];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL || (v12 = v11, v13 = [v10 rangeOfString:@"$" options:0 range:{v12 + 1, objc_msgSend(v10, "length") + ~v12}], v13 == 0x7FFFFFFFFFFFFFFFLL))
      {

        break;
      }

      v14 = v13 - v12;
      v15 = [v10 substringWithRange:{v12 + 1, v13 - v12 - 1}];
      v16 = +[ICHTTPCookieStore sharedCookieStore];
      v17 = v16;
      if (self->_sourceAccountDSID)
      {
        sourceAccountDSID = self->_sourceAccountDSID;
      }

      else
      {
        sourceAccountDSID = &unk_1F2C92350;
      }

      v19 = [v16 getCookieWithName:v15 userIdentifier:sourceAccountDSID];

      if (!v19)
      {
        v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = v27;
          selfCopy = self;
          v32 = 2114;
          v33 = v15;
          v34 = 2114;
          v35 = v28;
          _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Failed to find value for variable '%{public}@' in url '%{public}@'", buf, 0x20u);
        }
      }

      value = [v19 value];
      v22 = value;
      v23 = &stru_1F2C4A680;
      if (value)
      {
        v23 = value;
      }

      v24 = v23;

      v25 = [v10 stringByReplacingCharactersInRange:v12 withString:{v14 + 1, v24}];

      valueCopy = [v7 stringByReplacingCharactersInRange:v6 withString:{v9 + 1, v25}];

      v6 = [valueCopy rangeOfString:@"{"];
      v7 = valueCopy;
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_19;
      }
    }

    valueCopy = v7;
  }

LABEL_19:

  return valueCopy;
}

- (BOOL)_shouldMescalSignBodyForURL:(id)l withSignatureConfiguration:(id)configuration
{
  v54 = *MEMORY[0x1E69E9840];
  lCopy = l;
  configurationCopy = configuration;
  v8 = configurationCopy;
  v9 = 0;
  if (lCopy && configurationCopy)
  {
    absoluteString = [lCopy absoluteString];
    lastPathComponent = [lCopy lastPathComponent];
    if (_NSIsNSDictionary())
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v13)
      {
        v14 = v13;
        v33 = v8;
        v34 = lCopy;
        v15 = *v45;
        v38 = lastPathComponent;
        v39 = absoluteString;
        v36 = v12;
        selfCopy = self;
        v35 = *v45;
        while (2)
        {
          v16 = 0;
          v40 = v14;
          do
          {
            if (*v45 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v44 + 1) + 8 * v16);
            if (_NSIsNSString() && [absoluteString rangeOfString:v17] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v43 = v17;
              v18 = [v12 objectForKey:v17];
              if (_NSIsNSArray())
              {
                if ([v18 containsObject:lastPathComponent])
                {

LABEL_34:
                  v9 = 1;
                  goto LABEL_35;
                }

                v41 = v16;
                v42 = v18;
                os_unfair_lock_lock(&self->_lock);
                v19 = [(NSMutableDictionary *)self->_convertedActionsCache objectForKey:v43];
                if (!v19)
                {
                  v20 = v18;
                  v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v20, "count")}];
                  uppercaseLetterCharacterSet = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
                  v48 = 0u;
                  v49 = 0u;
                  v50 = 0u;
                  v51 = 0u;
                  v22 = v20;
                  v23 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
                  if (v23)
                  {
                    v24 = v23;
                    v25 = *v49;
                    do
                    {
                      for (i = 0; i != v24; ++i)
                      {
                        if (*v49 != v25)
                        {
                          objc_enumerationMutation(v22);
                        }

                        v27 = [*(*(&v48 + 1) + 8 * i) mutableCopy];
                        v28 = [v27 rangeOfCharacterFromSet:uppercaseLetterCharacterSet options:0 range:{0, objc_msgSend(v27, "length")}];
                        if (v28 != 0x7FFFFFFFFFFFFFFFLL)
                        {
                          for (j = v28; j != 0x7FFFFFFFFFFFFFFFLL; j = [v27 rangeOfCharacterFromSet:uppercaseLetterCharacterSet options:0 range:{j + 2, objc_msgSend(v27, "length") - (j + 2)}])
                          {
                            [v27 insertString:@"-" atIndex:j];
                          }
                        }

                        lowercaseString = [v27 lowercaseString];
                        [v19 addObject:lowercaseString];
                      }

                      v24 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
                    }

                    while (v24);
                  }

                  self = selfCopy;
                  [(NSMutableDictionary *)selfCopy->_convertedActionsCache setObject:v19 forKey:v43];
                  lastPathComponent = v38;
                  absoluteString = v39;
                  v15 = v35;
                  v12 = v36;
                  v14 = v40;
                }

                os_unfair_lock_unlock(&self->_lock);
                v31 = [v19 containsObject:lastPathComponent];

                v16 = v41;
                if (v31)
                {
                  goto LABEL_34;
                }
              }

              else
              {
              }
            }

            ++v16;
          }

          while (v16 != v14);
          v14 = [v12 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

        v9 = 0;
LABEL_35:
        v8 = v33;
        lCopy = v34;
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
  }

  return v9;
}

- (NSDictionary)_propertyListRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  bagValues = self->_bagValues;
  if (bagValues)
  {
    [v3 setObject:bagValues forKey:@"bag_dictionary"];
  }

  amsBag = self->_amsBag;
  if (amsBag)
  {
    compile = [(AMSSnapshotBag *)amsBag compile];
    v21 = 0;
    v8 = [compile resultWithError:&v21];
    v9 = v21;

    if (v8)
    {
      [v4 setObject:v8 forKey:@"ams_bag_data"];
    }

    else
    {
      v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v24 = 2114;
        v25 = v9;
        _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to serialize ams bag. err=%{public}@", buf, 0x16u);
      }
    }
  }

  v11 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_requestDate timeIntervalSinceReferenceDate];
  v12 = [v11 numberWithDouble:?];
  [v4 setObject:v12 forKey:@"request_time"];

  v13 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_expirationDate timeIntervalSinceReferenceDate];
  v14 = [v13 numberWithDouble:?];
  [v4 setObject:v14 forKey:@"expiration_time"];

  serverCorrelationKey = self->_serverCorrelationKey;
  if (serverCorrelationKey)
  {
    [v4 setObject:serverCorrelationKey forKey:@"server_correlation_key"];
  }

  serverEnvironment = self->_serverEnvironment;
  if (serverEnvironment)
  {
    [v4 setObject:serverEnvironment forKey:@"server_environment"];
  }

  profileName = self->_profileName;
  if (profileName)
  {
    [v4 setObject:profileName forKey:@"profile_name"];
  }

  profileVersion = self->_profileVersion;
  if (profileVersion)
  {
    [v4 setObject:profileVersion forKey:@"profile_version"];
  }

  sourceAccountDSID = self->_sourceAccountDSID;
  if (sourceAccountDSID)
  {
    [v4 setObject:sourceAccountDSID forKey:@"aource_account_dsid"];
  }

  return v4;
}

- (id)_initWithPropertyListRepresentation:(id)representation
{
  v26 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v23 = [representationCopy ic_dictionaryValueForKey:@"bag_dictionary"];
  v5 = [representationCopy ic_numberValueForKey:@"request_time"];
  [v5 doubleValue];
  v7 = v6;

  v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v7];
  v8 = [representationCopy ic_numberValueForKey:@"expiration_time"];
  [v8 doubleValue];
  v10 = v9;

  v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v10];
  v20 = [representationCopy ic_stringValueForKey:@"server_correlation_key"];
  v19 = [representationCopy ic_stringValueForKey:@"server_environment"];
  v11 = [representationCopy ic_stringValueForKey:@"profile_name"];
  v12 = [representationCopy ic_stringValueForKey:@"profile_version"];
  v13 = [representationCopy ic_numberValueForKey:@"aource_account_dsid"];
  v14 = [representationCopy ic_dataValueForKey:@"ams_bag_data"];

  if (!v14)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v15 = [objc_alloc(MEMORY[0x1E698CB30]) initWithData:v14];
  if (!v15)
  {
    v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create ams bag from data", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
  v18 = [(ICURLBag *)self _initWithDictionary:v23 amsBag:v15 requestDate:v22 expirationDate:v21 serverCorrelationKey:v20 serverEnvironment:v19 profileName:v11 profileVersion:v12 sourceAccountDSID:v13];

  return v18;
}

- (id)_valueForBagKey:(id)key
{
  keyCopy = key;
  bagValues = [(ICURLBag *)self bagValues];
  v6 = [bagValues objectForKey:keyCopy];

  return v6;
}

- (void)setGUIDURLSchemes:(id)schemes
{
  schemesCopy = schemes;
  os_unfair_lock_lock(&self->_lock);
  GUIDURLSchemes = self->_GUIDURLSchemes;
  self->_GUIDURLSchemes = schemesCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setGUIDURLRegexPatterns:(id)patterns
{
  patternsCopy = patterns;
  os_unfair_lock_lock(&self->_lock);
  GUIDURLRegexPatterns = self->_GUIDURLRegexPatterns;
  self->_GUIDURLRegexPatterns = patternsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)createAMSSnapshotBagWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = self->_amsBag;
  if (v5)
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E698CB38]);
    bagValues = [(ICURLBag *)self bagValues];
    [v8 setData:bagValues];

    expirationDate = [(ICURLBag *)self expirationDate];
    [v8 setExpirationDate:expirationDate];

    profileName = [(ICURLBag *)self profileName];
    [v8 setProfile:profileName];

    profileVersion = [(ICURLBag *)self profileVersion];
    [v8 setProfileVersion:profileVersion];

    v13 = 0;
    v6 = [v8 buildWithError:&v13];
    v7 = v13;
    if (!(v6 | v7))
    {
      v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:0 debugDescription:@"Failed to create a snapshot bag"];
    }
  }

  completionCopy[2](completionCopy, v6, v7);
}

- (BOOL)isTrustedHostForURL:(id)l
{
  v28 = *MEMORY[0x1E69E9840];
  host = [l host];
  if (![host length])
  {
    v20 = 0;
    goto LABEL_25;
  }

  v5 = [(ICURLBag *)self arrayForBagKey:@"trustedDomains"];
  if (!_NSIsNSArray())
  {
    v20 = 0;
    goto LABEL_24;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v7)
  {
    v20 = 0;
    goto LABEL_23;
  }

  v8 = v7;
  v22 = v5;
  v9 = *v24;
  v10 = @".";
  v11 = @"*";
LABEL_5:
  v12 = 0;
  while (1)
  {
    if (*v24 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v13 = *(*(&v23 + 1) + 8 * v12);
    if (_NSIsNSString())
    {
      break;
    }

LABEL_14:
    if (v8 == ++v12)
    {
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        goto LABEL_5;
      }

      v20 = 0;
      goto LABEL_20;
    }
  }

  if ([v13 hasPrefix:v10] && (objc_msgSend(host, "hasSuffix:", v13) & 1) != 0)
  {
LABEL_19:
    v20 = 1;
LABEL_20:
    v5 = v22;
    goto LABEL_23;
  }

  if (![v13 hasPrefix:v11] || (objc_msgSend(v13, "substringFromIndex:", 1), v14 = v9, v15 = v6, v16 = v10, v17 = v11, v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(host, "hasSuffix:", v18), v18, v11 = v17, v10 = v16, v6 = v15, v9 = v14, (v19 & 1) == 0))
  {
    if (![host caseInsensitiveCompare:v13])
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v5 = v22;
  v20 = 1;
LABEL_23:

LABEL_24:
LABEL_25:

  return v20;
}

- (BOOL)canPostKeybagSyncData
{
  v2 = [(ICURLBag *)self numberForBagKey:@"auth-can-post"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (ICURLBagLibraryDAAPConfiguration)libraryDAAPConfiguration
{
  v2 = [(ICURLBag *)self dictionaryForBagKey:@"library-daap"];
  if (_NSIsNSDictionary())
  {
    v3 = [[ICURLBagLibraryDAAPConfiguration alloc] initWithBagLibraryDAAPDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)mescalConfigurationForResponse:(id)response
{
  v4 = [response URL];
  if (v4 && ([(ICURLBag *)self dictionaryForBagKey:@"sign-sap-response"], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(ICURLBag *)self _shouldMescalSignBodyForURL:v4 withSignatureConfiguration:v5], v5, v6))
  {
    v7 = objc_alloc_init(ICURLBagMescalConfiguration);
    [(ICURLBagMescalConfiguration *)v7 setShouldSignBody:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mescalConfigurationForResponseURL:(id)l
{
  if (l)
  {
    v4 = MEMORY[0x1E695AC70];
    lCopy = l;
    v6 = [[v4 alloc] initWithURL:lCopy MIMEType:0 expectedContentLength:0 textEncodingName:0];

    v7 = [(ICURLBag *)self mescalConfigurationForResponse:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mescalConfigurationForRequest:(id)request
{
  v96 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = [requestCopy URL];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  absoluteString = [v5 absoluteString];
  lastPathComponent = [v5 lastPathComponent];
  v10 = [(ICURLBag *)self dictionaryForBagKey:@"sign-sap-request"];
  v11 = [(ICURLBag *)self _shouldMescalSignBodyForURL:v5 withSignatureConfiguration:v10];

  v12 = [(ICURLBag *)self dictionaryForBagKey:@"signed-actions"];
  v70 = v12;
  if (_NSIsNSDictionary())
  {
    v68 = v11;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v87 objects:v95 count:16];
    if (v14)
    {
      v15 = v14;
      v64 = lastPathComponent;
      v66 = v5;
      v62 = requestCopy;
      v16 = *v88;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v88 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v87 + 1) + 8 * i);
          if (_NSIsNSString() && [absoluteString rangeOfString:v18] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = [v13 objectForKey:v18];
            if (_NSIsNSDictionary())
            {
              v21 = [v20 objectForKey:lastPathComponent];
              v5 = v66;
              if (_NSIsNSDictionary())
              {
                v60 = [v21 objectForKey:@"fields"];
                v55 = v21;
                v56 = v20;
                if (_NSIsNSArray())
                {
                  v85 = 0u;
                  v86 = 0u;
                  v83 = 0u;
                  v84 = 0u;
                  v22 = v60;
                  v23 = [v22 countByEnumeratingWithState:&v83 objects:v94 count:16];
                  if (v23)
                  {
                    v24 = v23;
                    v25 = *v84;
                    do
                    {
                      for (j = 0; j != v24; ++j)
                      {
                        if (*v84 != v25)
                        {
                          objc_enumerationMutation(v22);
                        }

                        [v6 addObject:*(*(&v83 + 1) + 8 * j)];
                      }

                      v24 = [v22 countByEnumeratingWithState:&v83 objects:v94 count:16];
                    }

                    while (v24);
                  }

                  lastPathComponent = v64;
                  v5 = v66;
                  v21 = v55;
                  v20 = v56;
                }

                v58 = [v21 objectForKey:@"headers"];
                if (_NSIsNSArray())
                {
                  v81 = 0u;
                  v82 = 0u;
                  v79 = 0u;
                  v80 = 0u;
                  v27 = v58;
                  v28 = [v27 countByEnumeratingWithState:&v79 objects:v93 count:16];
                  if (v28)
                  {
                    v29 = v28;
                    v30 = *v80;
                    do
                    {
                      for (k = 0; k != v29; ++k)
                      {
                        if (*v80 != v30)
                        {
                          objc_enumerationMutation(v27);
                        }

                        [v7 addObject:*(*(&v79 + 1) + 8 * k)];
                      }

                      v29 = [v27 countByEnumeratingWithState:&v79 objects:v93 count:16];
                    }

                    while (v29);
                  }

                  lastPathComponent = v64;
                  v5 = v66;
                  v21 = v55;
                  v20 = v56;
                }

                v32 = v21;
                v19 = [v21 ic_BOOLValueForKey:@"path"];
              }

              else
              {
                v32 = v21;
                v19 = 0;
              }

              requestCopy = v62;
            }

            else
            {
              v19 = 0;
              requestCopy = v62;
              v5 = v66;
            }

            goto LABEL_39;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v87 objects:v95 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v19 = 0;
      requestCopy = v62;
      v5 = v66;
    }

    else
    {
      v19 = 0;
    }

LABEL_39:

    v11 = v68;
  }

  else
  {
    v19 = 0;
  }

  v33 = [(ICURLBag *)self dictionaryForBagKey:@"musicCommon"];
  if (!_NSIsNSDictionary())
  {
    if (!v11)
    {
      goto LABEL_49;
    }

LABEL_47:
    v37 = 1;
LABEL_52:
    v38 = objc_alloc_init(ICURLBagMescalConfiguration);
    [(ICURLBagMescalConfiguration *)v38 setShouldSignBody:v37];
    if ([v6 count])
    {
      v39 = v6;
    }

    else
    {
      v39 = 0;
    }

    [(ICURLBagMescalConfiguration *)v38 setFields:v39];
    if ([v7 count])
    {
      v40 = v7;
    }

    else
    {
      v40 = 0;
    }

    [(ICURLBagMescalConfiguration *)v38 setHeaders:v40];
    [(ICURLBagMescalConfiguration *)v38 setShouldIncludePath:v19];
    goto LABEL_59;
  }

  v34 = v11;
  v35 = [v33 objectForKey:@"musicMescal"];
  if (!_NSIsNSDictionary())
  {

    if (!v34)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v69 = v19;
  v36 = [v35 objectForKey:@"actions"];
  if (!_NSIsNSArray() || ![v36 containsObject:lastPathComponent])
  {

    v19 = v69;
    if (!v34)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v61 = v36;
  if (v34)
  {
    v57 = 1;
  }

  else
  {
    hTTPMethod = [requestCopy HTTPMethod];
    v57 = [hTTPMethod isEqualToString:@"POST"];
  }

  v43 = v36;
  v59 = [v35 objectForKey:@"fields"];
  v63 = requestCopy;
  v65 = lastPathComponent;
  v67 = v5;
  if (_NSIsNSArray())
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v44 = v59;
    v45 = [v44 countByEnumeratingWithState:&v75 objects:v92 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v76;
      do
      {
        for (m = 0; m != v46; ++m)
        {
          if (*v76 != v47)
          {
            objc_enumerationMutation(v44);
          }

          [v6 addObject:*(*(&v75 + 1) + 8 * m)];
        }

        v46 = [v44 countByEnumeratingWithState:&v75 objects:v92 count:16];
      }

      while (v46);
    }

    requestCopy = v63;
    lastPathComponent = v65;
    v5 = v67;
    v43 = v36;
  }

  v49 = [v35 objectForKey:@"headers"];
  if (_NSIsNSArray())
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v50 = v49;
    v51 = [v50 countByEnumeratingWithState:&v71 objects:v91 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v72;
      do
      {
        for (n = 0; n != v52; ++n)
        {
          if (*v72 != v53)
          {
            objc_enumerationMutation(v50);
          }

          [v7 addObject:*(*(&v71 + 1) + 8 * n)];
        }

        v52 = [v50 countByEnumeratingWithState:&v71 objects:v91 count:16];
      }

      while (v52);
    }

    requestCopy = v63;
    lastPathComponent = v65;
    v5 = v67;
    v43 = v61;
  }

  v19 = v69;
  if (v57)
  {
    goto LABEL_47;
  }

LABEL_49:
  if ([v6 count] || (objc_msgSend(v7, "count") != 0) | v19 & 1)
  {
    v37 = 0;
    goto LABEL_52;
  }

  v38 = 0;
LABEL_59:

  return v38;
}

- (id)mescalConfigurationForRequestURL:(id)l
{
  v4 = [MEMORY[0x1E695AC68] requestWithURL:l];
  v5 = [(ICURLBag *)self mescalConfigurationForRequest:v4];

  return v5;
}

- (BOOL)shouldAppendMachineDataHeadersForURL:(id)l
{
  v22 = *MEMORY[0x1E69E9840];
  host = [l host];
  v5 = [(ICURLBag *)self arrayForBagKey:@"amd-domains"];
  if (_NSIsNSArray())
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v16 = v5;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if (_NSIsNSString())
          {
            if ([v11 hasPrefix:@"."])
            {
              if ([host hasSuffix:v11])
              {
                goto LABEL_19;
              }
            }

            else if ([v11 hasPrefix:@"*"])
            {
              v12 = 1;
              v13 = [v11 substringFromIndex:1];
              v14 = [host hasSuffix:v13];

              if (v14)
              {
                goto LABEL_20;
              }
            }

            else if (![v11 caseInsensitiveCompare:host])
            {
LABEL_19:
              v12 = 1;
              goto LABEL_20;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v12 = 0;
LABEL_20:
      v5 = v16;
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

  return v12;
}

- (BOOL)shouldAppendDeviceGUIDForURL:(id)l
{
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  [(ICURLBag *)self _validateGUIDURLConfigIfNeeded];
  gUIDURLRegexPatterns = [(ICURLBag *)self GUIDURLRegexPatterns];
  if (![gUIDURLRegexPatterns count])
  {

    goto LABEL_13;
  }

  gUIDURLSchemes = [(ICURLBag *)self GUIDURLSchemes];
  scheme = [lCopy scheme];
  v8 = [gUIDURLSchemes containsObject:scheme];

  if (!v8)
  {
LABEL_13:
    v16 = 0;
    goto LABEL_16;
  }

  absoluteString = [lCopy absoluteString];
  v10 = [absoluteString length];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  gUIDURLRegexPatterns2 = [(ICURLBag *)self GUIDURLRegexPatterns];
  v12 = [gUIDURLRegexPatterns2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(gUIDURLRegexPatterns2);
        }

        if ([*(*(&v18 + 1) + 8 * i) rangeOfFirstMatchInString:absoluteString options:0 range:{0, v10}] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = 1;
          goto LABEL_15;
        }
      }

      v13 = [gUIDURLRegexPatterns2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_15:

LABEL_16:
  return v16;
}

- (BOOL)BOOLValueForBagKey:(id)key
{
  v31 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  amsBag = self->_amsBag;
  if (amsBag)
  {
    v6 = [(AMSSnapshotBag *)amsBag BOOLForKey:keyCopy];
    v22 = 0;
    v7 = [v6 valueWithError:&v22];
    v8 = v22;

    if (v8)
    {

      v9 = [(AMSSnapshotBag *)self->_amsBag stringForKey:keyCopy];
      v21 = 0;
      v10 = [v9 valueWithError:&v21];
      v8 = v21;

      if (v8)
      {
        v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          selfCopy2 = self;
          v25 = 2114;
          v26 = keyCopy;
          v27 = 2114;
          v28 = v8;
          _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load value for bag key '%{public}@'. err=%{public}@", buf, 0x20u);
        }
      }

      if (v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = v7;
      if (v7)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = [(ICURLBag *)self _valueForBagKey:keyCopy];
  if (!v10)
  {
    [(ICURLBag *)self _logMissingKey:keyCopy];
    goto LABEL_17;
  }

LABEL_13:
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      profileName = self->_profileName;
      v14 = objc_opt_class();
      *buf = 138544130;
      selfCopy2 = self;
      v25 = 2114;
      v26 = keyCopy;
      v27 = 2114;
      v28 = profileName;
      v29 = 2114;
      v30 = v14;
      v15 = v14;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Found unexpected type for bag key '%{public}@' in profile '%{public}@: '%{public}@ (expected Number)", buf, 0x2Au);
    }

    v16 = MEMORY[0x1E69B13D8];
    v17 = *MEMORY[0x1E69B1350];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found unexpected type for bag key '%@' in profile '%@': '%@' (expected Number)", keyCopy, self->_profileName, objc_opt_class()];
    [v16 snapshotWithDomain:v17 type:@"Bug" subType:@"ICURLBag" context:v18 triggerThresholdValues:&stru_1F2C4A680 events:0 completion:0];

    v10 = 0;
  }

LABEL_17:
  bOOLValue = [v10 BOOLValue];

  return bOOLValue;
}

- (int64_t)int64ValueForBagKey:(id)key
{
  v3 = [(ICURLBag *)self numberForBagKey:key];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (id)numberForBagKey:(id)key
{
  v27 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  amsBag = self->_amsBag;
  if (amsBag)
  {
    v6 = [(AMSSnapshotBag *)amsBag integerForKey:keyCopy];
    v18 = 0;
    v7 = [v6 valueWithError:&v18];
    v8 = v18;

    if (v8)
    {
      v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v21 = 2114;
        v22 = keyCopy;
        v23 = 2114;
        v24 = v8;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load value for bag key '%{public}@'. err=%{public}@", buf, 0x20u);
      }
    }

    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = 0;
  }

  v7 = [(ICURLBag *)self _valueForBagKey:keyCopy];
  if (!v7)
  {
    [(ICURLBag *)self _logMissingKey:keyCopy];
    goto LABEL_15;
  }

LABEL_10:
  if ((_NSIsNSNumber() & 1) == 0)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      profileName = self->_profileName;
      v12 = objc_opt_class();
      *buf = 138544130;
      selfCopy2 = self;
      v21 = 2114;
      v22 = keyCopy;
      v23 = 2114;
      v24 = profileName;
      v25 = 2114;
      v26 = v12;
      v13 = v12;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Found unexpected type for bag key '%{public}@' in profile '%{public}@: '%{public}@ (expected Number)", buf, 0x2Au);
    }

    v14 = MEMORY[0x1E69B13D8];
    v15 = *MEMORY[0x1E69B1350];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found unexpected type for bag key '%@' in profile '%@': '%@' (expected Number)", keyCopy, self->_profileName, objc_opt_class()];
    [v14 snapshotWithDomain:v15 type:@"Bug" subType:@"ICURLBag" context:v16 triggerThresholdValues:&stru_1F2C4A680 events:0 completion:0];

    v7 = 0;
  }

LABEL_15:

  return v7;
}

- (id)urlForBagKey:(id)key
{
  v35 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  amsBag = self->_amsBag;
  if (amsBag)
  {
    v6 = [(AMSSnapshotBag *)amsBag URLForKey:keyCopy];
    v26 = 0;
    v7 = [v6 valueWithError:&v26];
    v8 = v26;

    if (v8)
    {
      v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy3 = self;
        v29 = 2114;
        v30 = keyCopy;
        v31 = 2114;
        v32 = v8;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load value for bag key '%{public}@'. err=%{public}@", buf, 0x20u);
      }
    }

    if (v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = [(ICURLBag *)self _valueForBagKey:keyCopy];
  if (!v10)
  {
LABEL_19:

    [(ICURLBag *)self _logMissingKey:keyCopy];
    goto LABEL_20;
  }

  v11 = MEMORY[0x1E695DFF8];
  v12 = [(ICURLBag *)self _urlStringFromBagStringValue:v10];
  v7 = [v11 URLWithString:v12];

  if (!v7)
  {
    v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      profileName = self->_profileName;
      *buf = 138544130;
      selfCopy3 = self;
      v29 = 2114;
      v30 = keyCopy;
      v31 = 2114;
      v32 = profileName;
      v33 = 2114;
      v34 = v10;
      _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create url for bag key '%{public}@' in profile '%{public}@': '%{public}@'", buf, 0x2Au);
    }

    v22 = MEMORY[0x1E69B13D8];
    v23 = *MEMORY[0x1E69B1350];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create url for bag key '%@' in profile '%@': '%@'", keyCopy, self->_profileName, v10];
    [v22 snapshotWithDomain:v23 type:@"Bug" subType:@"ICURLBag" context:v24 triggerThresholdValues:&stru_1F2C4A680 events:0 completion:0];

    goto LABEL_19;
  }

LABEL_12:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_21;
  }

  v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = self->_profileName;
    v15 = objc_opt_class();
    *buf = 138544130;
    selfCopy3 = self;
    v29 = 2114;
    v30 = keyCopy;
    v31 = 2114;
    v32 = v14;
    v33 = 2114;
    v34 = v15;
    v16 = v15;
    _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Found unexpected type for bag key '%{public}@' in profile '%{public}@: '%{public}@ (expected URL)", buf, 0x2Au);
  }

  v17 = MEMORY[0x1E69B13D8];
  v18 = *MEMORY[0x1E69B1350];
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found unexpected type for bag key '%@' in profile '%@': '%@' (expected URL)", keyCopy, self->_profileName, objc_opt_class()];
  [v17 snapshotWithDomain:v18 type:@"Bug" subType:@"ICURLBag" context:v19 triggerThresholdValues:&stru_1F2C4A680 events:0 completion:0];

LABEL_20:
  v7 = 0;
LABEL_21:

  return v7;
}

- (id)dictionaryForBagKey:(id)key
{
  v33 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  amsBag = self->_amsBag;
  if (!amsBag)
  {
    v8 = 0;
LABEL_9:
    v7 = [(ICURLBag *)self _valueForBagKey:keyCopy];
    goto LABEL_10;
  }

  v6 = [(AMSSnapshotBag *)amsBag dictionaryForKey:keyCopy];
  v24 = 0;
  v7 = [v6 valueWithError:&v24];
  v8 = v24;

  if (v8)
  {
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy3 = self;
      v27 = 2114;
      v28 = keyCopy;
      v29 = 2114;
      v30 = v8;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load value for bag key '%{public}@'. err=%{public}@", buf, 0x20u);
    }
  }

  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (_NSIsNSDictionary())
  {
    v10 = [v7 mutableCopy];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __32__ICURLBag_dictionaryForBagKey___block_invoke;
    v21[3] = &unk_1E7BF8B48;
    v22 = v10;
    selfCopy2 = self;
    v11 = v10;
    [v7 enumerateKeysAndObjectsUsingBlock:v21];
    v12 = [v11 copy];

    v7 = v12;
  }

  if (v7)
  {
    if ((_NSIsNSDictionary() & 1) == 0)
    {
      v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        profileName = self->_profileName;
        v15 = objc_opt_class();
        *buf = 138544130;
        selfCopy3 = self;
        v27 = 2114;
        v28 = keyCopy;
        v29 = 2114;
        v30 = profileName;
        v31 = 2114;
        v32 = v15;
        v16 = v15;
        _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Found unexpected type for bag key '%{public}@' in profile '%{public}@: '%{public}@ (expected Dictionary)", buf, 0x2Au);
      }

      v17 = MEMORY[0x1E69B13D8];
      v18 = *MEMORY[0x1E69B1350];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found unexpected type for bag key '%@' in profile '%@': '%@' (expected Dictionary)", keyCopy, self->_profileName, objc_opt_class()];
      [v17 snapshotWithDomain:v18 type:@"Bug" subType:@"ICURLBag" context:v19 triggerThresholdValues:&stru_1F2C4A680 events:0 completion:0];

      v7 = 0;
    }
  }

  else
  {
    [(ICURLBag *)self _logMissingKey:keyCopy];
  }

  return v7;
}

void __32__ICURLBag_dictionaryForBagKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (_NSIsNSString() && [v5 hasPrefix:@"http"])
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) _urlStringFromBagStringValue:v5];
    [v6 setObject:v7 forKey:v8];
  }

  else
  {
    [*(a1 + 32) setObject:v5 forKey:v8];
  }
}

- (id)arrayForBagKey:(id)key
{
  v27 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  amsBag = self->_amsBag;
  if (amsBag)
  {
    v6 = [(AMSSnapshotBag *)amsBag arrayForKey:keyCopy];
    v18 = 0;
    v7 = [v6 valueWithError:&v18];
    v8 = v18;

    if (v8)
    {
      v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v21 = 2114;
        v22 = keyCopy;
        v23 = 2114;
        v24 = v8;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load value for bag key '%{public}@'. err=%{public}@", buf, 0x20u);
      }
    }

    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = 0;
  }

  v7 = [(ICURLBag *)self _valueForBagKey:keyCopy];
  if (!v7)
  {
    [(ICURLBag *)self _logMissingKey:keyCopy];
    goto LABEL_15;
  }

LABEL_10:
  if ((_NSIsNSArray() & 1) == 0)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      profileName = self->_profileName;
      v12 = objc_opt_class();
      *buf = 138544130;
      selfCopy2 = self;
      v21 = 2114;
      v22 = keyCopy;
      v23 = 2114;
      v24 = profileName;
      v25 = 2114;
      v26 = v12;
      v13 = v12;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Found unexpected type for bag key '%{public}@' in profile '%{public}@: '%{public}@ (expected Array)", buf, 0x2Au);
    }

    v14 = MEMORY[0x1E69B13D8];
    v15 = *MEMORY[0x1E69B1350];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found unexpected type for bag key '%@' in profile '%@': '%@' (expected Array)", keyCopy, self->_profileName, objc_opt_class()];
    [v14 snapshotWithDomain:v15 type:@"Bug" subType:@"ICURLBag" context:v16 triggerThresholdValues:&stru_1F2C4A680 events:0 completion:0];

    v7 = 0;
  }

LABEL_15:

  return v7;
}

- (id)stringForBagKey:(id)key
{
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  amsBag = self->_amsBag;
  if (!amsBag)
  {
    v8 = 0;
LABEL_9:
    v7 = [(ICURLBag *)self _valueForBagKey:keyCopy];
    goto LABEL_10;
  }

  v6 = [(AMSSnapshotBag *)amsBag stringForKey:keyCopy];
  v19 = 0;
  v7 = [v6 valueWithError:&v19];
  v8 = v19;

  if (v8)
  {
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v22 = 2114;
      v23 = keyCopy;
      v24 = 2114;
      v25 = v8;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load value for bag key '%{public}@'. err=%{public}@", buf, 0x20u);
    }
  }

  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (_NSIsNSString() && [v7 hasPrefix:@"http"])
  {
    v10 = [(ICURLBag *)self _urlStringFromBagStringValue:v7];

    v7 = v10;
  }

  if (v7)
  {
    if ((_NSIsNSString() & 1) == 0)
    {
      v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        profileName = self->_profileName;
        v13 = objc_opt_class();
        *buf = 138544130;
        selfCopy2 = self;
        v22 = 2114;
        v23 = keyCopy;
        v24 = 2114;
        v25 = profileName;
        v26 = 2114;
        v27 = v13;
        v14 = v13;
        _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Found unexpected type for bag key '%{public}@' in profile '%{public}@: '%{public}@ (expected String)", buf, 0x2Au);
      }

      v15 = MEMORY[0x1E69B13D8];
      v16 = *MEMORY[0x1E69B1350];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found unexpected type for bag key '%@' in profile '%@': '%@' (expected String)", keyCopy, self->_profileName, objc_opt_class()];
      [v15 snapshotWithDomain:v16 type:@"Bug" subType:@"ICURLBag" context:v17 triggerThresholdValues:&stru_1F2C4A680 events:0 completion:0];

      v7 = 0;
    }
  }

  else
  {
    [(ICURLBag *)self _logMissingKey:keyCopy];
  }

  return v7;
}

- (BOOL)hasValueForBagKey:(id)key
{
  v3 = [(ICURLBag *)self _valueForBagKey:key];
  v4 = v3 != 0;

  return v4;
}

- (id)valuesForBagKeys:(id)keys
{
  v20 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = keysCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(ICURLBag *)self _valueForBagKey:v11, v15];
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  bagValues = [(ICURLBag *)self bagValues];
  bagValues2 = [equalCopy bagValues];

  if (bagValues == bagValues2)
  {
    v7 = 1;
  }

  else
  {
    v7 = [bagValues isEqual:bagValues2];
  }

  return v7;
}

- (id)_initWithDictionary:(id)dictionary amsBag:(id)bag requestDate:(id)date expirationDate:(id)expirationDate serverCorrelationKey:(id)key serverEnvironment:(id)environment profileName:(id)name profileVersion:(id)self0 sourceAccountDSID:(id)self1
{
  dictionaryCopy = dictionary;
  bagCopy = bag;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  keyCopy = key;
  environmentCopy = environment;
  nameCopy = name;
  versionCopy = version;
  dCopy = d;
  v46.receiver = self;
  v46.super_class = ICURLBag;
  v25 = [(ICURLBag *)&v46 init];
  if (v25)
  {
    v26 = [dictionaryCopy copy];
    bagValues = v25->_bagValues;
    v25->_bagValues = v26;

    objc_storeStrong(&v25->_amsBag, bag);
    v28 = [dateCopy copy];
    requestDate = v25->_requestDate;
    v25->_requestDate = v28;

    v30 = [expirationDateCopy copy];
    expirationDate = v25->_expirationDate;
    v25->_expirationDate = v30;

    v32 = [keyCopy copy];
    serverCorrelationKey = v25->_serverCorrelationKey;
    v25->_serverCorrelationKey = v32;

    v34 = [environmentCopy copy];
    serverEnvironment = v25->_serverEnvironment;
    v25->_serverEnvironment = v34;

    v36 = [nameCopy copy];
    profileName = v25->_profileName;
    v25->_profileName = v36;

    v38 = [versionCopy copy];
    profileVersion = v25->_profileVersion;
    v25->_profileVersion = v38;

    v40 = [dCopy copy];
    sourceAccountDSID = v25->_sourceAccountDSID;
    v25->_sourceAccountDSID = v40;

    v25->_lock._os_unfair_lock_opaque = 0;
    v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
    convertedActionsCache = v25->_convertedActionsCache;
    v25->_convertedActionsCache = v42;
  }

  return v25;
}

- (id)_initWithDictionary:(id)dictionary
{
  v4 = MEMORY[0x1E695DF00];
  dictionaryCopy = dictionary;
  v6 = [v4 now];
  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:14400.0];
  v8 = [(ICURLBag *)self _initWithDictionary:dictionaryCopy amsBag:0 requestDate:v6 expirationDate:v7 serverCorrelationKey:0 serverEnvironment:0 profileName:0 profileVersion:0 sourceAccountDSID:0];

  return v8;
}

+ (NSArray)_allBagKeys
{
  if (_allBagKeys_sAllKnownKeysOnceToken != -1)
  {
    dispatch_once(&_allBagKeys_sAllKnownKeysOnceToken, &__block_literal_global_34805);
  }

  v3 = _allBagKeys_sAllKnownBagKeys;

  return v3;
}

void __23__ICURLBag__allBagKeys__block_invoke()
{
  v2[133] = *MEMORY[0x1E69E9840];
  v2[0] = @"guid-urls";
  v2[1] = @"getMatchStatusSrv";
  v2[2] = @"isMatchServiceEnabled";
  v2[3] = @"cloud-welcome";
  v2[4] = @"amd-domains";
  v2[5] = @"sign-sap-request";
  v2[6] = @"sign-sap-response";
  v2[7] = @"signed-actions";
  v2[8] = @"musicCommon";
  v2[9] = @"sign-sap-setup-cert";
  v2[10] = @"sign-sap-setup";
  v2[11] = @"fps-cert";
  v2[12] = @"fps-request";
  v2[13] = @"subDownload";
  v2[14] = @"md-finish-provisioning";
  v2[15] = @"amd-finish-provisioning";
  v2[16] = @"md-sync-machine";
  v2[17] = @"amd-sync-machine";
  v2[18] = @"redownloadProduct";
  v2[19] = @"paidRedownloadProduct";
  v2[20] = @"auth-can-post";
  v2[21] = @"songDownloadDone";
  v2[22] = @"radio";
  v2[23] = @"storefront-header-suffix";
  v2[24] = @"musicForYou";
  v2[25] = @"browse";
  v2[26] = @"grouping";
  v2[27] = @"radioTab";
  v2[28] = @"getSubscriptionStatusSrv";
  v2[29] = @"lease-start";
  v2[30] = @"lease-renew";
  v2[31] = @"lease-stop";
  v2[32] = @"storeplatform-lookup-url";
  v2[33] = @"storeplatform-lookup-url-unpersonalized";
  v2[34] = @"delegatePlayback";
  v2[35] = @"enableSubscription";
  v2[36] = @"disableSubscrption";
  v2[37] = @"getSubscriptionStatus";
  v2[38] = @"getWholeHouseAudioPlayInfo";
  v2[39] = @"play-activity-feed-request-post-url";
  v2[40] = @"authorizeMachine";
  v2[41] = @"mobile-network-constraints";
  v2[42] = @"library-auth-service-token-url";
  v2[43] = @"musicSubscription";
  v2[44] = @"buyProduct";
  v2[45] = @"push-notification-types";
  v2[46] = @"push-notifications";
  v2[47] = @"revokeMusicToken";
  v2[48] = @"subscription-status-refresh-interval-in-seconds";
  v2[49] = @"push-notification-allowexplicit";
  v2[50] = @"library-daap";
  v2[51] = @"preference-service-sync-url";
  v2[52] = @"preference-service-scheduled-sync-period-in-minutes";
  v2[53] = @"musicFriends";
  v2[54] = @"isExplicitContentAgeVerificationRequired";
  v2[55] = @"ExplicitContentBadgeTreatment";
  v2[56] = @"korAgeVerificationUrl";
  v2[57] = @"fuseHeaderEnrichment";
  v2[58] = @"fuseHeaderEnrichmentResponse";
  v2[59] = @"createMusicToken";
  v2[60] = @"inAppMessages";
  v2[61] = @"musicConnect";
  v2[62] = @"addToSiriTagHistoryBaseUrl";
  v2[63] = @"addToTRHistoryBaseUrl";
  v2[64] = @"pmlt-url";
  v2[65] = @"addToWishlistBaseUrl";
  v2[66] = @"getShareIdentifiers";
  v2[67] = @"purchase-daap";
  v2[68] = @"p2-content-restore";
  v2[69] = @"cloud-add-computer";
  v2[70] = @"storeFrontId";
  v2[71] = @"artist-new-content";
  v2[72] = @"countryCode";
  v2[73] = @"fetchSinfs";
  v2[74] = @"fuseCarrierMccMncList";
  v2[75] = @"ampMusicAPIDomains";
  v2[76] = @"enhanced-audio";
  v2[77] = @"get-play-info";
  v2[78] = @"url-regex-map";
  v2[79] = @"ios-app-url";
  v2[80] = @"js-app-url";
  v2[81] = @"trustedDomains";
  v2[82] = @"musicTabs";
  v2[83] = @"pm-feedback-base-url";
  v2[84] = @"max-mini-sinf-batch-size";
  v2[85] = @"getSubscriptionOffersSrv";
  v2[86] = @"auto-enrollment-percentage";
  v2[87] = @"use-apple-pay-classic";
  v2[88] = @"language";
  v2[89] = @"language-tag";
  v2[90] = @"manageSubscriptionsV2Url";
  v2[91] = @"AddFundsUrl";
  v2[92] = @"modifyAccount";
  v2[93] = @"marketingItemDynamicUIUrl";
  v2[94] = @"amsui-sources";
  v2[95] = @"musicui-js-url";
  v2[96] = @"commerce-ui-urls";
  v2[97] = @"musicSubscriptionOffersForStorefront";
  v2[98] = @"commerceApp";
  v2[99] = @"commerceAppBaseUrl";
  v2[100] = @"commerceAppFallbackUrl";
  v2[101] = @"financeApp";
  v2[102] = @"marketing-item-media-api-path";
  v2[103] = @"marketing-item-media-api-realm-mappings";
  v2[104] = @"subscription-storefront-header-suffix";
  v2[105] = @"redeemCodeLanding";
  v2[106] = @"cloud-library-opt-out-url";
  v2[107] = @"absinthe-requests";
  v2[108] = @"aps-sampling-percentage";
  v2[109] = @"clientIDDomains";
  v2[110] = @"ios-app-download-retry-count";
  v2[111] = @"lyricsOnByDefaultDisabled";
  v2[112] = @"md-domains";
  v2[113] = @"min-artist-update-polling-frequency-secs";
  v2[114] = @"ratingWarningThreshold";
  v2[115] = @"ratingWarningTitle";
  v2[116] = @"ratingWarningText";
  v2[117] = @"TLSSamplingPercentage";
  v2[118] = @"TLSSamplingSessionDuration";
  v2[119] = @"TFOSamplingPercentage";
  v2[120] = @"TFOSamplingSessionDuration";
  v2[121] = @"cloud-library-update-request";
  v2[122] = @"cloud-library-update-check";
  v2[123] = @"heif-format-rollout";
  v2[124] = @"sRdnld";
  v2[125] = @"isExplicitMusicDisallowed";
  v2[126] = @"processRedirectUrl";
  v2[127] = @"getMusicSDKAuthorizationsSrv";
  v2[128] = @"metrics";
  v2[129] = @"AddFundsUrl";
  v2[130] = @"manageSubscriptionsUrl";
  v2[131] = @"appleMusicDeviceOfferDeepLink";
  v2[132] = @"revokeMusicSDKAuthorizationSrv";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:133];
  v1 = _allBagKeys_sAllKnownBagKeys;
  _allBagKeys_sAllKnownBagKeys = v0;
}

@end