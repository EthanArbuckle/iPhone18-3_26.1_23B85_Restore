@interface ICQDaemonOffer
+ (id)defaultPlaceholderKeys;
+ (id)placeholderKeysInString:(id)a3 fromKeys:(id)a4;
+ (id)stringWithPlaceholderFormat:(id)a3 alternateString:(id)a4;
+ (id)stringWithPlaceholderFormat:(id)a3 substitutions:(id)a4;
+ (id)substitutionForPlaceholderKey:(id)a3 outIsBelowMin:(BOOL *)a4;
+ (id)substitutionsForPlaceholderKeys:(id)a3 checkIfBelowMin:(BOOL)a4 outIsMissingSubstitution:(BOOL *)a5;
- (BOOL)isBuddyOffer;
- (BOOL)isDefaultOffer;
- (BOOL)isEventOffer;
- (BOOL)isPremiumOffer;
- (ICQDaemonOffer)initWithDictionary:(id)a3;
- (NSDictionary)lockScreenInfo;
- (id)_eligibleAppLaunchLinks;
- (id)_initWithAccount:(id)a3 error:(id)a4;
- (id)_initWithAccount:(id)a3 serverDictionary:(id)a4;
- (id)_mutablePersistenceDictionary;
- (id)alertSpecificationForAlertKey:(id)a3;
- (id)appLaunchLinkForBundleID:(id)a3;
- (int64_t)level;
- (int64_t)requestType;
- (void)_addSampleAlert;
- (void)_initSubclassFromServerDictionary;
- (void)cacheLiftUIContent;
- (void)setServerDictionary:(id)a3;
@end

@implementation ICQDaemonOffer

- (int64_t)level
{
  v2 = [(ICQDaemonPersisted *)self serverDictionary];
  v3 = [v2 objectForKeyedSubscript:@"type"];
  v4 = _ICQLevelForString(v3);

  return v4;
}

- (BOOL)isBuddyOffer
{
  v2 = [(ICQDaemonPersisted *)self serverDictionary];
  v3 = _ICQIsBuddyOfferDictionary(v2);

  return v3;
}

- (BOOL)isDefaultOffer
{
  v2 = [(ICQDaemonPersisted *)self serverDictionary];
  v3 = _ICQIsDefaultOfferDictionary(v2);

  return v3;
}

- (BOOL)isPremiumOffer
{
  v2 = [(ICQDaemonPersisted *)self serverDictionary];
  v3 = _ICQIsPremiumOfferDictionary(v2);

  return v3;
}

- (BOOL)isEventOffer
{
  v2 = [(ICQDaemonPersisted *)self serverDictionary];
  v3 = _ICQIsEventOfferDictionary(v2);

  return v3;
}

- (int64_t)requestType
{
  if ([(ICQDaemonOffer *)self isBuddyOffer])
  {
    return 4;
  }

  if ([(ICQDaemonOffer *)self isPremiumOffer])
  {
    return 2;
  }

  if ([(ICQDaemonOffer *)self isDefaultOffer])
  {
    return 1;
  }

  if ([(ICQDaemonOffer *)self isEventOffer])
  {
    return 5;
  }

  return 3;
}

- (void)cacheLiftUIContent
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(ICQDaemonOffer *)self internalAppLaunchLinks];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) cacheLiftUIContentIfNeeded];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (ICQDaemonOffer)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICQDaemonOffer;
  v5 = [(ICQDaemonPersisted *)&v9 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eligibleAppLaunchLinks"];
    savedEligibleAppLaunchLinks = v5->_savedEligibleAppLaunchLinks;
    v5->_savedEligibleAppLaunchLinks = v6;

    [(ICQDaemonOffer *)v5 _initSubclassFromServerDictionary];
  }

  return v5;
}

- (id)_initWithAccount:(id)a3 serverDictionary:(id)a4
{
  v5.receiver = self;
  v5.super_class = ICQDaemonOffer;
  return [(ICQDaemonPersisted *)&v5 _initWithAccount:a3 serverDictionary:a4];
}

- (id)_initWithAccount:(id)a3 error:(id)a4
{
  v5.receiver = self;
  v5.super_class = ICQDaemonOffer;
  return [(ICQDaemonPersisted *)&v5 _initWithAccount:a3 error:a4];
}

- (void)setServerDictionary:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICQDaemonOffer;
  [(ICQDaemonPersisted *)&v4 setServerDictionary:a3];
  [(ICQDaemonOffer *)self _initSubclassFromServerDictionary];
}

- (id)_mutablePersistenceDictionary
{
  v8.receiver = self;
  v8.super_class = ICQDaemonOffer;
  v3 = [(ICQDaemonPersisted *)&v8 _mutablePersistenceDictionary];
  v4 = v3;
  if (v3)
  {
    if (self->_notificationID)
    {
      notificationID = self->_notificationID;
    }

    else
    {
      notificationID = &stru_288431E38;
    }

    [v3 setObject:notificationID forKey:@"notificationId"];
    v6 = [(ICQDaemonOffer *)self _eligibleAppLaunchLinks];
    [v4 setObject:v6 forKey:@"eligibleAppLaunchLinks"];
  }

  return v4;
}

- (void)_initSubclassFromServerDictionary
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = [(ICQDaemonPersisted *)self serverDictionary];
  v4 = _ICQStringFromDictionaryKey(v3, @"offerId", &stru_288431E38);
  offerId = self->_offerId;
  self->_offerId = v4;

  v6 = [(ICQDaemonPersisted *)self serverDictionary];
  v7 = _ICQStringFromDictionaryKey(v6, @"notificationId", &stru_288431E38);
  notificationID = self->_notificationID;
  self->_notificationID = v7;

  v9 = [(ICQDaemonPersisted *)self serverDictionary];
  v10 = _ICQAlertSpecificationForServerDict(v9);
  internalAlertSpecification = self->_internalAlertSpecification;
  self->_internalAlertSpecification = v10;

  v12 = [(ICQDaemonPersisted *)self serverDictionary];
  v13 = [v12 objectForKeyedSubscript:@"followUpInfo"];
  if (!v13)
  {
    v13 = [v12 objectForKeyedSubscript:@"followupInfo"];
    if (!v13)
    {
      v14 = _ICQGetLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [(ICQDaemonOffer *)v14 _initSubclassFromServerDictionary];
      }

      goto LABEL_19;
    }
  }

  v14 = v13;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = _ICQGetLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_impl(&dword_275572000, v20, OS_LOG_TYPE_DEFAULT, "followupInfo: expected NSDictionary, got %@", buf, 0xCu);
    }

LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  v15 = [[_ICQDetailFollowupSpecification alloc] initWithServerDictionary:v12];
  *buf = 0;
  _ICQServerDictToOfferTypeAndLevel(v12, buf, 0);
  [(_ICQFollowupSpecification *)v15 setForAccountGroup:(*buf < 9uLL) & (0x162u >> buf[0])];
  v16 = v12;
  v17 = [v16 objectForKeyedSubscript:@"followUpInfo"];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [v16 objectForKeyedSubscript:@"followupInfo"];
  }

  v21 = v19;

  v22 = [v21 objectForKeyedSubscript:@"displayStyle"];
  v23 = [v22 isEqualToString:@"INLINE_EXPANDED"];

  [(_ICQFollowupSpecification *)v15 setFollowupDisplayStyle:v23];
  v24 = v16;
  v25 = [v24 objectForKeyedSubscript:@"followUpInfo"];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = [v24 objectForKeyedSubscript:@"followupInfo"];
  }

  v28 = v27;

  v29 = [v28 objectForKeyedSubscript:@"sfSymbolId"];

  [(_ICQFollowupSpecification *)v15 setSfSymbolID:v29];
  v30 = v24;
  v31 = [v30 objectForKeyedSubscript:@"followUpInfo"];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = [v30 objectForKeyedSubscript:@"followupInfo"];
  }

  v34 = v33;

  v35 = [v34 objectForKeyedSubscript:@"sfSymbolBundlePath"];

  [(_ICQFollowupSpecification *)v15 setSfSymbolBundlePath:v35];
LABEL_20:

  internalFollowupSpecification = self->_internalFollowupSpecification;
  self->_internalFollowupSpecification = &v15->super;

  v37 = [(ICQDaemonPersisted *)self serverDictionary];
  v38 = [v37 objectForKeyedSubscript:@"appLaunchLink"];
  if (!v38)
  {
    v39 = _ICQGetLogSystem();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [(ICQDaemonOffer *)v39 _initSubclassFromServerDictionary];
    }

    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = _ICQGetLogSystem();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v38;
      _os_log_impl(&dword_275572000, v39, OS_LOG_TYPE_DEFAULT, "appLaunchLinks: expected NSArray, got %@", buf, 0xCu);
    }

LABEL_35:
    v48 = 0;
    goto LABEL_40;
  }

  v55 = v37;
  v39 = [MEMORY[0x277CBEBF8] mutableCopy];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v40 = v38;
  v41 = [v40 countByEnumeratingWithState:&v56 objects:buf count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v57;
    while (2)
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v57 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v56 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v49 = _ICQGetLogSystem();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *v60 = 138412290;
            v61 = v45;
            _os_log_impl(&dword_275572000, v49, OS_LOG_TYPE_DEFAULT, "appLaunchLink: expected NSDictionary, got %@", v60, 0xCu);
          }

          v48 = 0;
          goto LABEL_39;
        }

        v46 = v45;
        v47 = [[_ICQAppLaunchLink alloc] initWithServerDictionary:v46];

        [v39 addObject:v47];
      }

      v42 = [v40 countByEnumeratingWithState:&v56 objects:buf count:16];
      if (v42)
      {
        continue;
      }

      break;
    }
  }

  v39 = v39;
  v48 = v39;
LABEL_39:
  v37 = v55;
LABEL_40:

  internalAppLaunchLinks = self->_internalAppLaunchLinks;
  self->_internalAppLaunchLinks = v48;

  if ([(ICQDaemonOffer *)self isBuddyOffer])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v51 = _ICQGetLogSystem();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v51, OS_LOG_TYPE_DEFAULT, "Error: buddy offer object of incorrect class -- will persist at the wrong key", buf, 2u);
      }
    }
  }

  if ([(ICQDaemonOffer *)self isDefaultOffer])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v52 = _ICQGetLogSystem();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v52, OS_LOG_TYPE_DEFAULT, "Error: default offer object of incorrect class -- will persist at the wrong key", buf, 2u);
      }
    }
  }

  if ([(ICQDaemonOffer *)self isPremiumOffer])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v53 = _ICQGetLogSystem();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v53, OS_LOG_TYPE_DEFAULT, "Error: premium offer object of incorrect class -- will persist at the wrong key", buf, 2u);
      }
    }
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (id)_eligibleAppLaunchLinks
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_internalAppLaunchLinks;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isEligible])
        {
          v10 = [v9 appId];
          [v3 addObject:v10];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)appLaunchLinkForBundleID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSArray *)self->_savedEligibleAppLaunchLinks containsObject:v4])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_internalAppLaunchLinks;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 appId];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_13;
          }
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSDictionary)lockScreenInfo
{
  v2 = [(ICQDaemonPersisted *)self serverDictionary];
  v3 = [v2 objectForKeyedSubscript:@"lockScreenInfo"];

  return v3;
}

- (id)alertSpecificationForAlertKey:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v4 = [(ICQDaemonPersisted *)self serverDictionary];
  v5 = [v4 objectForKeyedSubscript:@"inlineAlertInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v12 objectForKeyedSubscript:@"alertKey"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 isEqualToString:v18])
            {
              v14 = _ICQAlertSpecificationForServerDict(v12);

              v9 = v14;
            }
          }

          else
          {
            v13 = _ICQGetLogSystem();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v24 = v12;
              _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "expected inlineAlertInfo to be NSArray<NSDictionary *> but found %@", buf, 0xCu);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v5 = v17;
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)defaultPlaceholderKeys
{
  if (defaultPlaceholderKeys_onceToken != -1)
  {
    +[ICQDaemonOffer(Internal) defaultPlaceholderKeys];
  }

  v3 = defaultPlaceholderKeys_sPlaceholderKeysDefault;

  return v3;
}

void __50__ICQDaemonOffer_Internal__defaultPlaceholderKeys__block_invoke()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"PhotoLibrarySize";
  v5[1] = @"PhotoLibraryUploadSize";
  v5[2] = @"PhotosVideosCount";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v2 = [v0 setWithArray:v1];
  v3 = defaultPlaceholderKeys_sPlaceholderKeysDefault;
  defaultPlaceholderKeys_sPlaceholderKeysDefault = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)placeholderKeysInString:(id)a3 fromKeys:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 componentsSeparatedByString:@"%$"];
  if ([v6 count] >= 2)
  {
    v8 = objc_opt_new();
    if ([v6 count] >= 2)
    {
      v9 = 1;
      do
      {
        v10 = [v6 objectAtIndexedSubscript:v9];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = v5;
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v19 + 1) + 8 * i);
              if ([v10 hasPrefix:v16])
              {
                [v8 addObject:v16];
                goto LABEL_15;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_15:

        ++v9;
      }

      while (v9 < [v6 count]);
    }

    v7 = [v8 copy];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)substitutionForPlaceholderKey:(id)a3 outIsBelowMin:(BOOL *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 isEqualToString:@"PhotoLibrarySize"])
  {
    v6 = +[ICQDaemonOfferConditions photosLibrarySize];
LABEL_3:
    v7 = 1;
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"PhotoLibraryUploadSize"])
  {
    v9 = +[ICQDaemonOfferConditions photosLibraryUploadSize];
    v6 = v9;
    if (!a4 || [v9 integerValue] >= 100000000)
    {
      goto LABEL_3;
    }

    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v6;
      v19 = 2048;
      v20 = 100000000;
      _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "photosLibraryUploadSize: %@ < %lld -- recommending alternate string", &v17, 0x16u);
    }

    v7 = 1;
    *a4 = 1;
  }

  else
  {
    if (![v5 isEqualToString:@"PhotosVideosCount"])
    {
      v6 = 0;
      goto LABEL_19;
    }

    v13 = +[ICQDaemonOfferConditions photosVideosCount];
    v6 = v13;
    if (a4 && [v13 integerValue] <= 0)
    {
      v16 = _ICQGetLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412546;
        v18 = v6;
        v19 = 2048;
        v20 = 1;
        _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "photosVideosCount: %@ < %lld -- recommending alternate string", &v17, 0x16u);
      }

      v7 = 0;
      *a4 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_4:
  if (!v6)
  {
LABEL_19:
    v8 = 0;
    goto LABEL_20;
  }

  if (v7)
  {
    v8 = [MEMORY[0x277CCA8E8] stringFromByteCount:objc_msgSend(v6 countStyle:{"longLongValue"), 2}];
  }

  else
  {
    v11 = objc_opt_new();
    v12 = [MEMORY[0x277CBEAF8] currentLocale];
    [v11 setLocale:v12];

    [v11 setNumberStyle:1];
    [v11 setUsesGroupingSeparator:1];
    [v11 setMaximumFractionDigits:0];
    v8 = [v11 stringFromNumber:v6];
  }

LABEL_20:

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)substitutionsForPlaceholderKeys:(id)a3 checkIfBelowMin:(BOOL)a4 outIsMissingSubstitution:(BOOL *)a5
{
  v6 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v23 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v26;
    *&v11 = 138412546;
    v22 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v24 = 0;
        v16 = [a1 substitutionForPlaceholderKey:v15 outIsBelowMin:{&v24, v22}];
        v17 = v16;
        if (!v6 || v24 != 1)
        {
          if (v16)
          {
            [v23 setObject:v16 forKeyedSubscript:v15];
            goto LABEL_15;
          }

          v18 = _ICQGetLogSystem();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v22;
            v30 = @"%$";
            v31 = 2112;
            v32 = v15;
            _os_log_impl(&dword_275572000, v18, OS_LOG_TYPE_DEFAULT, "no substitution for placeholder %@%@", buf, 0x16u);
          }
        }

        if (a5)
        {
          *a5 = 1;
        }

LABEL_15:
      }

      v12 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v12);
  }

  v19 = [v23 copy];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)stringWithPlaceholderFormat:(id)a3 alternateString:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 placeholderExistsInString:v6])
  {
    v8 = [a1 defaultPlaceholderKeys];
    v9 = [a1 placeholderKeysInString:v6 fromKeys:v8];

    v15 = 0;
    v10 = [MEMORY[0x277CBEB98] setWithArray:v9];
    v11 = [a1 substitutionsForPlaceholderKeys:v10 checkIfBelowMin:v7 != 0 outIsMissingSubstitution:&v15];

    if (v7 && (v15 & 1) != 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = [a1 stringWithPlaceholderFormat:v6 substitutions:v11];
    }

    v13 = v12;
  }

  else
  {
    v13 = v6;
  }

  return v13;
}

+ (id)stringWithPlaceholderFormat:(id)a3 substitutions:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 componentsSeparatedByString:@"%$"];
  if ([v7 count] > 1)
  {
    v27 = v5;
    v9 = [v7 objectAtIndexedSubscript:0];
    v10 = [v9 mutableCopy];

    if ([v7 count] >= 2)
    {
      v11 = 1;
      do
      {
        v12 = [v7 objectAtIndexedSubscript:v11];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v13 = v6;
        v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v29;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v28 + 1) + 8 * i);
              if ([v12 hasPrefix:v18])
              {
                v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"%$", v18];
                v21 = _ICQGetLogSystem();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  v22 = [v13 objectForKeyedSubscript:v18];
                  *buf = 138543618;
                  v33 = v20;
                  v34 = 2112;
                  v35 = v22;
                  _os_log_impl(&dword_275572000, v21, OS_LOG_TYPE_DEFAULT, "substituting for placeholder %{public}@ = %@", buf, 0x16u);
                }

                v23 = [v13 objectForKeyedSubscript:v18];
                [v10 appendString:v23];

                v24 = [v12 substringFromIndex:{objc_msgSend(v18, "length")}];
                [v10 appendString:v24];

                goto LABEL_19;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"%$", v12];
        v19 = _ICQGetLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v33 = v13;
          _os_log_impl(&dword_275572000, v19, OS_LOG_TYPE_DEFAULT, "missing substitution for substring %{public}@", buf, 0xCu);
        }

        [v10 appendString:v13];
LABEL_19:

        ++v11;
      }

      while (v11 < [v7 count]);
    }

    v8 = [v10 copy];

    v5 = v27;
  }

  else
  {
    v8 = v5;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_addSampleAlert
{
  v3 = [(ICQDaemonPersisted *)self serverDictionary];
  v7 = [v3 mutableCopy];

  if (![(ICQDaemonOffer *)self level])
  {
    v4 = _ICQStringForLevel(2);
    [v7 setObject:v4 forKey:@"type"];
  }

  v5 = [_ICQAlertSpecification alertSpecificationDictionarySampleForLevel:2];
  [v7 setObject:v5 forKey:@"alertInfo"];
  v6 = [v7 copy];
  [(ICQDaemonOffer *)self setServerDictionary:v6];
}

@end