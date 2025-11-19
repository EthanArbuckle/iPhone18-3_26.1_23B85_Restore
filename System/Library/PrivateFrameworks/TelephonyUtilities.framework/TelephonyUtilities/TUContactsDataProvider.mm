@interface TUContactsDataProvider
+ (id)defaultContactKeyDescriptors;
+ (id)familyNameFirstLocaleCountryCodes;
+ (id)keysByCombiningDefaultKeysWithKeysToFetch:(id)a3;
+ (id)numberFormatter;
+ (id)unsupportedLocalesForPrefixHint;
- (BOOL)isHandleEligibleForScreenSharingRequests:(id)a3;
- (BOOL)shouldIgnoreHandle:(id)a3 withFetchRequest:(id)a4;
- (TUContactsDataProvider)init;
- (TUContactsDataProvider)initWithContactsDataSource:(id)a3;
- (id)ISOCountryCodeForHandle:(id)a3 fetchRequest:(id)a4;
- (id)compositeNameForContacts:(id)a3;
- (id)compositeNameForFetchRequest:(id)a3;
- (id)contactLabelForContacts:(id)a3 matchingHandle:(id)a4 countryCode:(id)a5;
- (id)contactWithIdentifier:(id)a3 keysToFetch:(id)a4;
- (id)contactsForHandle:(id)a3 countryCode:(id)a4 keysToFetch:(id)a5 prefixHint:(id)a6;
- (id)executeBatchFetchRequests:(id)a3;
- (id)executeFetchRequest:(id)a3;
- (id)formattedNameForHandle:(id)a3 countryCode:(id)a4;
- (id)getDeviceSetupDate;
- (id)labeledHandlesForContactWithIdentifier:(id)a3;
- (id)labeledHandlesForContacts:(id)a3;
- (id)localizedCompositeNameForContact:(id)a3 secondContact:(id)a4;
- (id)nameForContact:(id)a3;
- (id)prefixHintForFetchRequest:(id)a3;
- (id)processBatchFetchRequests:(id)a3;
- (id)resultForSingleHandleFetchRequest:(id)a3 fetchedContacts:(id)a4;
- (id)unifiedContactsForFetchRequest:(id)a3;
- (int)personIDForContact:(id)a3;
@end

@implementation TUContactsDataProvider

+ (id)familyNameFirstLocaleCountryCodes
{
  if (familyNameFirstLocaleCountryCodes_onceToken != -1)
  {
    +[TUContactsDataProvider familyNameFirstLocaleCountryCodes];
  }

  v3 = familyNameFirstLocaleCountryCodes_familyNameFirstLocaleCountryCodes;

  return v3;
}

+ (id)defaultContactKeyDescriptors
{
  if (defaultContactKeyDescriptors_onceToken != -1)
  {
    +[TUContactsDataProvider defaultContactKeyDescriptors];
  }

  v3 = defaultContactKeyDescriptors_defaultContactKeyDescriptors;

  return v3;
}

- (TUContactsDataProvider)init
{
  v3 = [MEMORY[0x1E695CE18] tu_contactStore];
  v4 = [(TUContactsDataProvider *)self initWithContactsDataSource:v3];

  return v4;
}

- (TUContactsDataProvider)initWithContactsDataSource:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = TUContactsDataProvider;
  v6 = [(TUContactsDataProvider *)&v25 init];
  if (v6)
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(TUContactsDataProvider *)v5 initWithContactsDataSource:v7];
    }

    objc_storeStrong(&v6->_contactsDataSource, a3);
    v8 = [objc_opt_class() familyNameFirstLocaleCountryCodes];
    v9 = [MEMORY[0x1E695DF58] currentLocale];
    v10 = [v9 countryCode];
    v11 = [v10 lowercaseString];
    v6->_useFamilyNameFirst = [v8 containsObject:v11];

    objc_initWeak(&location, v6);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __53__TUContactsDataProvider_initWithContactsDataSource___block_invoke;
    v22 = &unk_1E7425CF8;
    objc_copyWeak(&v23, &location);
    v12 = _Block_copy(&v19);
    localeSupportsPrefixHintForFetchRequest = v6->_localeSupportsPrefixHintForFetchRequest;
    v6->_localeSupportsPrefixHintForFetchRequest = v12;

    v14 = objc_alloc_init(TUContactsDataProviderAppleCareHandles);
    appleCareHandles = v6->_appleCareHandles;
    v6->_appleCareHandles = v14;

    v16 = [MEMORY[0x1E695E000] tu_defaults];
    userDefaults = v6->_userDefaults;
    v6->_userDefaults = v16;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v6;
}

uint64_t __53__TUContactsDataProvider_initWithContactsDataSource___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 useNetworkCountryCode])
  {
    v3 = TUNetworkCountryCode();
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = TUHomeCountryCode();
    }

    v6 = v5;

    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = TUHomeCountryCode();
    if (!v6)
    {
LABEL_8:
      v7 = [MEMORY[0x1E695DF58] currentLocale];
      v8 = [v7 countryCode];
      v6 = [v8 lowercaseString];
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [objc_opt_class() unsupportedLocalesForPrefixHint];
  v11 = [v10 containsObject:v6];

  return v11 ^ 1u;
}

- (id)processBatchFetchRequests:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v33 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF70] array];
  v32 = [MEMORY[0x1E695DF90] dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        v13 = [v12 handles];
        v14 = [v13 count];

        if (v14 != 1)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fetch request does not contain exactly one handle %@", v12];
          NSLog(&cfstr_TuassertionFai.isa, v15);

          if (_TUAssertShouldCrashApplication())
          {
            v16 = [v12 handles];
            v17 = [v16 count];

            if (v17 != 1)
            {
              [(TUContactsDataProvider *)a2 processBatchFetchRequests:v12];
            }
          }
        }

        [v12 removePsuedHandles];
        v18 = [v12 handles];
        v19 = [v18 firstObject];

        if (!v19)
        {
          v21 = TUDefaultLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v39 = v12;
            _os_log_error_impl(&dword_1956FD000, v21, OS_LOG_TYPE_ERROR, "Fetch request did not contain any handles or only contained one pseudonym handle: %@ ", buf, 0xCu);
          }

          goto LABEL_17;
        }

        [v5 setObject:v12 forKeyedSubscript:v19];
        [v6 addObject:v19];
        if ([(TUContactsDataProvider *)self shouldIgnoreHandle:v19 withFetchRequest:v12])
        {
          v20 = TUDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v39 = v19;
            _os_log_impl(&dword_1956FD000, v20, OS_LOG_TYPE_DEFAULT, "Not looking up contact for %@ because it is in our apple care handles", buf, 0xCu);
          }
        }

        else
        {
          v22 = [v19 type];
          if ((v22 - 2) >= 2)
          {
            if (v22 == 1)
            {
              v21 = [(TUContactsDataProvider *)self executeFetchRequest:v12];
              [v32 setObject:v21 forKeyedSubscript:v19];
LABEL_17:
            }
          }

          else
          {
            [v33 addObject:v19];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v9);
  }

  v23 = [TUBatchFetchRequestProcessingResult alloc];
  v24 = [v5 copy];
  v25 = [v33 copy];
  v26 = [v6 copy];
  v27 = [v32 copy];
  v28 = [(TUBatchFetchRequestProcessingResult *)v23 initWithHandleToFetchRequest:v24 handlesToBatchFetch:v25 allHandlesFromFetchRequests:v26 fetchRequestResults:v27];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)executeBatchFetchRequests:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(TUContactsDataProvider *)self processBatchFetchRequests:v4];
    v6 = [v5 fetchRequestResults];
    v31 = [v6 mutableCopy];

    v7 = objc_opt_class();
    v28 = v4;
    v8 = [v4 firstObject];
    v9 = [v8 auxiliaryKeysToFetch];
    v10 = [v7 keysByCombiningDefaultKeysWithKeysToFetch:v9];

    v30 = self;
    v11 = [(TUContactsDataProvider *)self contactsDataSource];
    v12 = [v5 handlesToBatchFetch];
    v27 = v10;
    v13 = [v11 tu_contactsForHandles:v12 keyDescriptors:v10 error:0];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = v5;
    obj = [v5 allHandlesFromFetchRequests];
    v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v32 + 1) + 8 * i);
          v20 = [v13 objectForKeyedSubscript:v19];
          if (!v20)
          {
            v20 = [MEMORY[0x1E695DEC8] array];
          }

          v21 = [v14 handleToFetchRequest];
          v22 = [v21 objectForKeyedSubscript:v19];
          v23 = [(TUContactsDataProvider *)v30 resultForSingleHandleFetchRequest:v22 fetchedContacts:v20];
          [v31 setObject:v23 forKeyedSubscript:v19];
        }

        v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    v24 = [v31 copy];
    v4 = v28;
  }

  else
  {
    v24 = [MEMORY[0x1E695DF20] dictionary];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)executeFetchRequest:(id)a3
{
  v89 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v88 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Executing fetch request: %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(TUContactsDataProviderResult);
  [v4 removePsuedHandles];
  if ([v4 isConversation])
  {
    v7 = [v4 handles];
    v8 = [v7 count];

    if (v8 >= 2)
    {
      v63 = v6;
      v9 = [MEMORY[0x1E695DF70] array];
      v64 = [MEMORY[0x1E695DF70] array];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v10 = [v4 handles];
      v11 = [v10 countByEnumeratingWithState:&v79 objects:v86 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v80;
        v66 = v10;
        v67 = v4;
        v65 = *v80;
        do
        {
          v14 = 0;
          v71 = v12;
          do
          {
            if (*v80 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v73 = v14;
            v15 = *(*(&v79 + 1) + 8 * v14);
            v16 = [v15 value];
            v17 = [v16 destinationIdIsPseudonym];

            if ((v17 & 1) == 0)
            {
              v18 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:v15 fetchRequest:v4];
              v19 = [objc_opt_class() defaultContactKeyDescriptors];
              v20 = [(TUContactsDataProvider *)self contactsForHandle:v15 countryCode:v18 keysToFetch:v19 prefixHint:0];

              v21 = v20;
              if ([v20 count])
              {
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v22 = v20;
                v23 = [v22 countByEnumeratingWithState:&v75 objects:v85 count:16];
                if (v23)
                {
                  v24 = v23;
                  v69 = v21;
                  v70 = v18;
                  v25 = *v76;
                  do
                  {
                    for (i = 0; i != v24; ++i)
                    {
                      if (*v76 != v25)
                      {
                        objc_enumerationMutation(v22);
                      }

                      v27 = *(*(&v75 + 1) + 8 * i);
                      v84 = v27;
                      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
                      v29 = [(TUContactsDataProvider *)self compositeNameForContacts:v28];

                      if (v29)
                      {
                        v30 = [v27 givenName];
                        [v9 addObject:v30];
                      }
                    }

                    v24 = [v22 countByEnumeratingWithState:&v75 objects:v85 count:16];
                  }

                  while (v24);
                  v10 = v66;
                  v4 = v67;
                  v13 = v65;
                  v21 = v69;
                  v18 = v70;
                }
              }

              else
              {
                v22 = [(TUContactsDataProvider *)self formattedNameForHandle:v15 countryCode:v18];
                [(TUContactsDataProviderResult *)v64 addObject:v22];
              }

              v12 = v71;
            }

            v14 = v73 + 1;
          }

          while (v73 + 1 != v12);
          v12 = [v10 countByEnumeratingWithState:&v79 objects:v86 count:16];
        }

        while (v12);
      }

      [v9 sortUsingComparator:&__block_literal_global_22];
      v6 = v64;
      [(TUContactsDataProviderResult *)v64 sortUsingComparator:&__block_literal_global_55_0];
      v31 = [MEMORY[0x1E695DF70] arrayWithArray:v9];
      [v31 addObjectsFromArray:v64];
      v32 = TUBundle();
      v33 = [v32 localizedStringForKey:@"UNKNOWN" value:&stru_1F098C218 table:@"TelephonyUtilities"];

      if ([v31 count] == 1)
      {
        v34 = [v31 objectAtIndexedSubscript:0];
        goto LABEL_41;
      }

      if ([v31 count] == 2)
      {
        v40 = MEMORY[0x1E696AEC0];
        v41 = TUBundle();
        v42 = [v41 localizedStringForKey:@"%@_AND_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
        [v31 objectAtIndexedSubscript:0];
        v44 = v43 = v4;
        v45 = [v31 objectAtIndexedSubscript:1];
        v34 = [v40 stringWithFormat:v42, v44, v45];

        v4 = v43;
      }

      else
      {
        if ([v31 count] == 3)
        {
          v46 = MEMORY[0x1E696AEC0];
          v47 = TUBundle();
          v41 = v47;
          v48 = @"%@_%@_AND_%@";
        }

        else
        {
          if ([v31 count] != 4)
          {
            if ([v31 count] < 5)
            {
              v39 = v63;
              goto LABEL_42;
            }

            v55 = [objc_opt_class() numberFormatter];
            v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v31, "count") - 3}];
            v72 = [v55 stringFromNumber:v56];

            v57 = MEMORY[0x1E696AEC0];
            v74 = TUBundle();
            v58 = [v74 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHERS" value:&stru_1F098C218 table:@"TelephonyUtilities"];
            v59 = [v31 objectAtIndexedSubscript:0];
            v60 = [v31 objectAtIndexedSubscript:1];
            [v31 objectAtIndexedSubscript:2];
            v62 = v61 = v4;
            v34 = [v57 stringWithFormat:v58, v59, v60, v62, v72];

            v4 = v61;
            v6 = v64;
            v33 = v72;
LABEL_41:
            v39 = v63;

            v33 = v34;
LABEL_42:
            [v39 setLocalizedName:v33];

            goto LABEL_43;
          }

          v46 = MEMORY[0x1E696AEC0];
          v47 = TUBundle();
          v41 = v47;
          v48 = @"%@_%@_%@_AND_ONE_OTHER";
        }

        [v47 localizedStringForKey:v48 value:&stru_1F098C218 table:@"TelephonyUtilities"];
        v49 = v68 = v4;
        v50 = [v31 objectAtIndexedSubscript:0];
        v51 = [v31 objectAtIndexedSubscript:1];
        v52 = [v31 objectAtIndexedSubscript:2];
        v34 = [v46 stringWithFormat:v49, v50, v51, v52];

        v4 = v68;
      }

      v33 = v41;
      v6 = v64;
      goto LABEL_41;
    }
  }

  v35 = [v4 contactIdentifier];

  if (!v35)
  {
    goto LABEL_31;
  }

  v36 = [v4 contactIdentifier];
  v37 = [v4 auxiliaryKeysToFetch];
  v38 = [(TUContactsDataProvider *)self contactWithIdentifier:v36 keysToFetch:v37];

  if (!v38 || (v83 = v38, [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1], v9 = objc_claimAutoreleasedReturnValue(), v38, !v9))
  {
LABEL_31:
    v9 = [(TUContactsDataProvider *)self unifiedContactsForFetchRequest:v4];
  }

  v39 = [(TUContactsDataProvider *)self resultForSingleHandleFetchRequest:v4 fetchedContacts:v9];
LABEL_43:

  v53 = *MEMORY[0x1E69E9840];

  return v39;
}

- (id)resultForSingleHandleFetchRequest:(id)a3 fetchedContacts:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(TUContactsDataProviderResult);
  if ([v7 count])
  {
    v9 = [v7 firstObject];
    [(TUContactsDataProviderResult *)v8 setLegacyAddressBookIdentifier:[(TUContactsDataProvider *)self personIDForContact:v9]];
  }

  if ([v7 count])
  {
    v10 = [(TUContactsDataProvider *)self compositeNameForContacts:v7];
    [(TUContactsDataProviderResult *)v8 setLocalizedName:v10];

    v11 = [v6 handles];
    v12 = [v11 count];

    if (v12 == 1)
    {
      v13 = [v6 handles];
      v14 = [v13 firstObject];

      v15 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:v14 fetchRequest:v6];
      v16 = [(TUContactsDataProvider *)self contactLabelForContacts:v7 matchingHandle:v14 countryCode:v15];
      [(TUContactsDataProviderResult *)v8 setContactLabel:v16];
    }

    if ([v7 count] == 1)
    {
      v17 = [v7 firstObject];
      v18 = [v17 organizationName];
      [(TUContactsDataProviderResult *)v8 setCompanyName:v18];
    }
  }

  v19 = [(TUContactsDataProviderResult *)v8 localizedName];

  if (!v19)
  {
    v20 = TUDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v6 handles];
      *v36 = 138412290;
      *&v36[4] = v21;
      _os_log_impl(&dword_1956FD000, v20, OS_LOG_TYPE_DEFAULT, "Finding the appropriate localized name to use for handles: %@", v36, 0xCu);
    }

    v22 = [(TUContactsDataProvider *)self compositeNameForFetchRequest:v6];
    if (v22)
    {
      [(TUContactsDataProviderResult *)v8 setLocalizedName:v22];
      v23 = TUDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(TUContactsDataProviderResult *)v8 localizedName];
        *v36 = 138412290;
        *&v36[4] = v24;
        v25 = "     - using formatted destination ID '%@'";
LABEL_22:
        _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, v25, v36, 0xCu);
      }
    }

    else if ([v6 isEmergency])
    {
      v26 = TUBundle();
      v27 = [v26 localizedStringForKey:@"EMERGENCY_SERVICES" value:&stru_1F098C218 table:@"TelephonyUtilities"];
      [(TUContactsDataProviderResult *)v8 setLocalizedName:v27];

      v23 = TUDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(TUContactsDataProviderResult *)v8 localizedName];
        *v36 = 138412290;
        *&v36[4] = v24;
        v25 = "     - call is to emergency services, we'll use the emergency services string: '%@'";
        goto LABEL_22;
      }
    }

    else
    {
      v28 = [v6 isBlocked];
      v29 = TUBundle();
      v30 = v29;
      if (v28)
      {
        v31 = [v29 localizedStringForKey:@"BLOCKED" value:&stru_1F098C218 table:@"TelephonyUtilities"];
        [(TUContactsDataProviderResult *)v8 setLocalizedName:v31];

        v23 = TUDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(TUContactsDataProviderResult *)v8 localizedName];
          *v36 = 138412290;
          *&v36[4] = v24;
          v25 = "     - call is blocked, we'll use the blocked string: '%@'";
          goto LABEL_22;
        }
      }

      else
      {
        v32 = [v29 localizedStringForKey:@"UNKNOWN" value:&stru_1F098C218 table:@"TelephonyUtilities"];
        [(TUContactsDataProviderResult *)v8 setLocalizedName:v32];

        v23 = TUDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(TUContactsDataProviderResult *)v8 localizedName];
          *v36 = 138412290;
          *&v36[4] = v24;
          v25 = "     - falling back to the unknown string: '%@'";
          goto LABEL_22;
        }
      }
    }
  }

  [(TUContactsDataProviderResult *)v8 setContacts:v7, *v36];
  v33 = TUDefaultLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 138412290;
    *&v36[4] = v8;
    _os_log_impl(&dword_1956FD000, v33, OS_LOG_TYPE_DEFAULT, "Determined dataProviderResult: %@", v36, 0xCu);
  }

  v34 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)contactLabelForContacts:(id)a3 matchingHandle:(id)a4 countryCode:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  [(TUContactsDataProvider *)self labeledHandlesForContacts:a3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v22 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v14 handle];
        v16 = [v15 isCanonicallyEqualToHandle:v8 isoCountryCode:v9];

        if (v16)
        {
          v11 = [v14 label];
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)labeledHandlesForContactWithIdentifier:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695E0F0];
  v5 = [(TUContactsDataProvider *)self contactWithIdentifier:a3 keysToFetch:MEMORY[0x1E695E0F0]];
  v6 = v5;
  if (v5)
  {
    v10[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v4 = [(TUContactsDataProvider *)self labeledHandlesForContacts:v7];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)labeledHandlesForContacts:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v3;
  v41 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v41)
  {
    v40 = *v53;
    do
    {
      v5 = 0;
      do
      {
        if (*v53 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v52 + 1) + 8 * v5);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v42 = v6;
        v43 = v5;
        v7 = [v6 phoneNumbers];
        v8 = [v7 countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v49;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v49 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v48 + 1) + 8 * i);
              v13 = [TUHandle alloc];
              v14 = [v12 value];
              v15 = [v14 unformattedInternationalStringValue];
              v16 = [(TUHandle *)v13 initWithType:2 value:v15];

              v17 = [TULabeledHandle alloc];
              v18 = MEMORY[0x1E695CEE0];
              v19 = [v12 label];
              v20 = [v18 localizedStringForLabel:v19];
              v21 = -[TULabeledHandle initWithHandle:label:isSuggested:](v17, "initWithHandle:label:isSuggested:", v16, v20, [v12 tuIsSuggested]);

              [v4 addObject:v21];
            }

            v9 = [v7 countByEnumeratingWithState:&v48 objects:v57 count:16];
          }

          while (v9);
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v22 = [v42 emailAddresses];
        v23 = [v22 countByEnumeratingWithState:&v44 objects:v56 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v45;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v45 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v44 + 1) + 8 * j);
              v28 = [TUHandle alloc];
              v29 = [v27 value];
              v30 = [(TUHandle *)v28 initWithType:3 value:v29];

              v31 = [TULabeledHandle alloc];
              v32 = MEMORY[0x1E695CEE0];
              v33 = [v27 label];
              v34 = [v32 localizedStringForLabel:v33];
              v35 = -[TULabeledHandle initWithHandle:label:isSuggested:](v31, "initWithHandle:label:isSuggested:", v30, v34, [v27 tuIsSuggested]);

              [v4 addObject:v35];
            }

            v24 = [v22 countByEnumeratingWithState:&v44 objects:v56 count:16];
          }

          while (v24);
        }

        v5 = v43 + 1;
      }

      while (v43 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v41);
  }

  v36 = [v4 copy];
  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

- (id)contactWithIdentifier:(id)a3 keysToFetch:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(TUContactsDataProvider *)self contactsDataSource];
  v9 = [objc_opt_class() keysByCombiningDefaultKeysWithKeysToFetch:v7];

  v16 = 0;
  v10 = [v8 unifiedContactWithIdentifier:v6 keysToFetch:v9 error:&v16];
  v11 = v16;

  if (v10)
  {
    v12 = TUDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "Found contact: %@ for contactIdentifier %@: ", buf, 0x16u);
    }
  }

  else
  {
    v12 = [v11 domain];
    if ([v12 isEqualToString:*MEMORY[0x1E695C448]])
    {
      v13 = [v11 code];

      if (v13 == 200)
      {
        goto LABEL_9;
      }

      v12 = TUDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [TUContactsDataProvider contactWithIdentifier:keysToFetch:];
      }
    }
  }

LABEL_9:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)unifiedContactsForFetchRequest:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = [MEMORY[0x1E695DF70] array];
  v5 = objc_opt_class();
  v6 = [v4 auxiliaryKeysToFetch];
  v23 = [v5 keysByCombiningDefaultKeysWithKeysToFetch:v6];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v4 handles];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v25;
    *&v9 = 138412546;
    v21 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ([(TUContactsDataProvider *)self shouldIgnoreHandle:v13 withFetchRequest:v4, v21])
        {
          v14 = TUDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v13;
            _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "Not looking up contact for %@ because it is in our apple care handles", buf, 0xCu);
          }
        }

        else
        {
          v14 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:v13 fetchRequest:v4];
          v15 = [(TUContactsDataProvider *)self prefixHintForFetchRequest:v4];
          v16 = [(TUContactsDataProvider *)self contactsForHandle:v13 countryCode:v14 keysToFetch:v23 prefixHint:v15];

          if (v16)
          {
            [v22 addObjectsFromArray:v16];
          }

          else
          {
            v17 = TUDefaultLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = v21;
              v29 = v13;
              v30 = 2112;
              v31 = 0;
              _os_log_error_impl(&dword_1956FD000, v17, OS_LOG_TYPE_ERROR, "Error while fetching contacts for handle %@: %@", buf, 0x16u);
            }
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v10);
  }

  v18 = [v22 copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)contactsForHandle:(id)a3 countryCode:(id)a4 keysToFetch:(id)a5 prefixHint:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 type];
  switch(v14)
  {
    case 1:
      v24 = objc_alloc(MEMORY[0x1E695CFA0]);
      v25 = [v10 value];
      v15 = [v24 initWithUrlString:0 username:v25 userIdentifier:0 service:0];

      v17 = [(TUContactsDataProvider *)self contactsDataSource];
      v18 = [MEMORY[0x1E695CD58] predicateForContactsMatchingSocialProfile:v15];
      v26 = [objc_opt_class() defaultContactKeyDescriptors];
      v29 = 0;
      v19 = [v17 unifiedContactsMatchingPredicate:v18 keysToFetch:v26 error:&v29];
      v23 = v29;

LABEL_8:
      if (v19)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    case 2:
      v21 = MEMORY[0x1E695CF50];
      v22 = [v10 value];
      v15 = [v21 phoneNumberWithDigits:v22 countryCode:v11];

      v17 = [(TUContactsDataProvider *)self contactsDataSource];
      v18 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v15 prefixHint:v13];
      v30 = 0;
      v19 = [v17 unifiedContactsMatchingPredicate:v18 keysToFetch:v12 error:&v30];
      v20 = v30;
      goto LABEL_6;
    case 3:
      v15 = [(TUContactsDataProvider *)self contactsDataSource];
      v16 = MEMORY[0x1E695CD58];
      v17 = [v10 value];
      v18 = [v16 predicateForContactsMatchingEmailAddress:v17];
      v31 = 0;
      v19 = [v15 unifiedContactsMatchingPredicate:v18 keysToFetch:v12 error:&v31];
      v20 = v31;
LABEL_6:
      v23 = v20;
      goto LABEL_8;
  }

  v23 = 0;
LABEL_11:
  v27 = TUDefaultLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [TUContactsDataProvider contactsForHandle:countryCode:keysToFetch:prefixHint:];
  }

  v19 = MEMORY[0x1E695E0F0];
LABEL_14:

  return v19;
}

- (id)nameForContact:(id)a3
{
  v4 = a3;
  if ([(TUContactsDataProvider *)self shouldUseGivenName])
  {
    [v4 givenName];
  }

  else
  {
    [MEMORY[0x1E695CD80] stringFromContact:v4 style:0];
  }
  v5 = ;

  return v5;
}

- (id)localizedCompositeNameForContact:(id)a3 secondContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 givenName];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [v6 familyName];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v7 givenName];
  if (!v12)
  {
LABEL_10:

LABEL_11:
LABEL_12:
    v23 = [(TUContactsDataProvider *)self nameForContact:v6];
    v28 = [(TUContactsDataProvider *)self nameForContact:v7];
    v24 = v28;
    if (!v23 || !v28)
    {
      if (v23)
      {
        v31 = v23;
      }

      else
      {
        v31 = v28;
      }

      v30 = v31;
      goto LABEL_21;
    }

    v29 = MEMORY[0x1E696AEC0];
    v25 = TUBundle();
    v26 = [v25 localizedStringForKey:@"%@_OR_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v27 = [v29 stringWithFormat:v26, v23, v24];
    goto LABEL_15;
  }

  v13 = v12;
  v14 = [v7 familyName];
  if (!v14)
  {

    goto LABEL_10;
  }

  v15 = v14;
  v16 = [v7 familyName];
  v17 = [v6 familyName];
  v18 = [v16 localizedCaseInsensitiveCompare:v17];

  if (v18)
  {
    goto LABEL_12;
  }

  v19 = [v7 givenName];
  v20 = [v6 givenName];
  v21 = [v19 localizedCaseInsensitiveCompare:v20];

  if (v21)
  {
    if (![(TUContactsDataProvider *)self shouldUseGivenName])
    {
      v33 = [(TUContactsDataProvider *)self shouldUseFamilyNameFirst];
      v34 = MEMORY[0x1E696AEC0];
      if (v33)
      {
        v35 = objc_alloc(MEMORY[0x1E696AEC0]);
        v23 = TUBundle();
        v24 = [v23 localizedStringForKey:@"%@_%@_OR_%@_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
        v25 = [v7 familyName];
        v26 = [v6 givenName];
        v36 = [v7 familyName];
        v37 = [v7 givenName];
        v30 = [v35 initWithFormat:v24, v25, v26, v36, v37];
      }

      else
      {
        v23 = TUBundle();
        v24 = [v23 localizedStringForKey:@"%@_OR_%@_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
        v25 = [v6 givenName];
        v26 = [v7 givenName];
        v36 = [v7 familyName];
        v30 = [v34 stringWithFormat:v24, v25, v26, v36];
      }

      goto LABEL_16;
    }

    v22 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = TUBundle();
    v24 = [v23 localizedStringForKey:@"%@_OR_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v25 = [v6 givenName];
    v26 = [v7 givenName];
    v27 = [v22 initWithFormat:v24, v25, v26];
LABEL_15:
    v30 = v27;
LABEL_16:

LABEL_21:
    goto LABEL_22;
  }

  v30 = [(TUContactsDataProvider *)self nameForContact:v6];
LABEL_22:

  return v30;
}

- (id)compositeNameForContacts:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 firstObject];
  if ([v4 count] == 1)
  {
    v6 = [(TUContactsDataProvider *)self nameForContact:v5];
  }

  else if ([v4 count] == 2)
  {
    v7 = [v4 objectAtIndexedSubscript:1];
    v6 = [(TUContactsDataProvider *)self localizedCompositeNameForContact:v5 secondContact:v7];
  }

  else
  {
    if ([v4 count] >= 3)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v8 = v4;
      v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v25;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [(TUContactsDataProvider *)self nameForContact:*(*(&v24 + 1) + 8 * i)];
            if (v13)
            {
              v14 = v13;

              v15 = MEMORY[0x1E696AEC0];
              v16 = TUBundle();
              v17 = [v16 localizedStringForKey:@"%@_OR_%@_OTHERS" value:&stru_1F098C218 table:@"TelephonyUtilities"];
              v18 = [objc_opt_class() numberFormatter];
              v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count") - 1}];
              v20 = [v18 stringFromNumber:v19];
              v6 = [v15 stringWithFormat:v17, v14, v20, v24];

              goto LABEL_17;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }

    v6 = 0;
  }

LABEL_17:
  v21 = TUDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v6;
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "Determined compositeName: %@ for contacts: %@", buf, 0x16u);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)compositeNameForFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 handles];
  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
    v7 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:v6 fetchRequest:v4];
    v8 = [v5 firstObject];
    v9 = [(TUContactsDataProvider *)self formattedNameForHandle:v8 countryCode:v7];
LABEL_7:

    goto LABEL_8;
  }

  if ([v5 count] == 2)
  {
    v6 = [v5 firstObject];
    v7 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:v6 fetchRequest:v4];
    v10 = [v4 handles];
    v8 = [v10 lastObject];

    v20 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:v8 fetchRequest:v4];
    v22 = MEMORY[0x1E696AEC0];
    v11 = TUBundle();
    v12 = [v11 localizedStringForKey:@"%@_AND_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v13 = [(TUContactsDataProvider *)self formattedNameForHandle:v6 countryCode:v7];
    v14 = [(TUContactsDataProvider *)self formattedNameForHandle:v8 countryCode:v20];
    v9 = [v22 stringWithFormat:v12, v13, v14];

    goto LABEL_7;
  }

  if ([v5 count] >= 3)
  {
    v6 = [v5 firstObject];
    v7 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:v6 fetchRequest:v4];
    v23 = MEMORY[0x1E696AEC0];
    v8 = TUBundle();
    v21 = [v8 localizedStringForKey:@"%@_AND_%@_OTHERS" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v19 = [(TUContactsDataProvider *)self formattedNameForHandle:v6 countryCode:v7];
    v15 = [objc_opt_class() numberFormatter];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count") - 1}];
    v17 = [v15 stringFromNumber:v16];
    v9 = [v23 stringWithFormat:v21, v19, v17];

    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)formattedNameForHandle:(id)a3 countryCode:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 value];
  if (![v7 length])
  {
    v8 = [v5 normalizedValue];

    v7 = v8;
  }

  v9 = [v5 type];
  v10 = TUDefaultLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9 == 2)
  {
    if (v11)
    {
      v16 = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "     - we'll format the destinationID '%@' with the country code '%@'", &v16, 0x16u);
    }

    v12 = TUFormattedPhoneNumber(v7, v6);
  }

  else
  {
    if (v11)
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "     - handle can't/shouldn't be formatted as a phone number, so using the unmodified destination ID '%@'", &v16, 0xCu);
    }

    v12 = v7;
  }

  v13 = v12;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)shouldIgnoreHandle:(id)a3 withFetchRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isIncoming] && (objc_msgSend(v7, "isVerified") & 1) == 0)
  {
    v9 = [(TUContactsDataProvider *)self appleCareHandles];
    v8 = [v9 contains:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getDeviceSetupDate
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(TUContactsDataProvider *)self deviceSetupDate];

  if (v3)
  {
    v4 = [(TUContactsDataProvider *)self deviceSetupDate];
    goto LABEL_12;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = getBYSetupUserDispositionClass_softClass;
  v15 = getBYSetupUserDispositionClass_softClass;
  if (!getBYSetupUserDispositionClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v17 = __getBYSetupUserDispositionClass_block_invoke;
    v18 = &unk_1E7424CD8;
    v19 = &v12;
    __getBYSetupUserDispositionClass_block_invoke(&buf);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = [v5 current];
  v8 = [v7 date];

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "BYSetupUserDisposition: %@", &buf, 0xCu);
  }

  if (v8)
  {
    v4 = v8;
LABEL_10:
    [(TUContactsDataProvider *)self setDeviceSetupDate:v4];
    goto LABEL_11;
  }

  v4 = CFPreferencesCopyValue(@"SetupLastExit", @"com.apple.purplebuddy", @"mobile", *MEMORY[0x1E695E898]);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)isHandleEligibleForScreenSharingRequests:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_TUIsInternalInstall() && (-[TUContactsDataProvider userDefaults](self, "userDefaults"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 BOOLForKey:@"ignoreContactCreationDateKey"], v5, v6))
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, &v7->super, OS_LOG_TYPE_DEFAULT, "Handle is eligible for screen sharing because ignoreContactCreationDateKey is YES", buf, 2u);
    }

    v8 = 1;
  }

  else
  {
    v7 = [[TUContactsDataProviderFetchRequest alloc] initWithHandle:v4];
    [(TUContactsDataProviderFetchRequest *)v7 setAuxiliaryKeysToFetch:&unk_1F09C6358];
    v9 = [(TUContactsDataProvider *)self executeFetchRequest:v7];
    v10 = TUDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 contacts];
      *buf = 138412290;
      v47 = v11;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Found contacts %@", buf, 0xCu);
    }

    v12 = [v9 contacts];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [MEMORY[0x1E695DF00] date];
      v15 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v15 setDay:-1];
      v16 = [MEMORY[0x1E695DEE8] currentCalendar];
      v17 = [v16 dateByAddingComponents:v15 toDate:v14 options:0];
      v18 = [(TUContactsDataProvider *)self getDeviceSetupDate];
      v19 = TUDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v18;
        _os_log_impl(&dword_1956FD000, v19, OS_LOG_TYPE_DEFAULT, "Got device setup date %@", buf, 0xCu);
      }

      if (v18 && [v18 compare:v17] == 1)
      {
        v8 = 1;
      }

      else
      {
        v37 = v16;
        v38 = v15;
        v39 = v14;
        v41 = v4;
        v20 = MEMORY[0x1E695DF70];
        v21 = [v9 contacts];
        v22 = [v20 arrayWithCapacity:{objc_msgSend(v21, "count")}];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = v9;
        v23 = [v9 contacts];
        v24 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v43;
          while (2)
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v43 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v42 + 1) + 8 * i);
              v29 = [v28 creationDate];
              [v22 addObject:v29];

              v30 = [v28 creationDate];
              v31 = [v30 compare:v17];

              if (v31 == -1)
              {
                v32 = TUDefaultLog();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  v33 = [v28 creationDate];
                  *buf = 138412546;
                  v47 = v28;
                  v48 = 2112;
                  v49 = v33;
                  _os_log_impl(&dword_1956FD000, v32, OS_LOG_TYPE_DEFAULT, "Found contact %@ with creation date %@", buf, 0x16u);
                }

                v8 = 1;
                goto LABEL_29;
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        v23 = TUDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v22;
          _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "No contact had a creation date > 24 hours ago. Creation dates: %@", buf, 0xCu);
        }

        v8 = 0;
LABEL_29:
        v9 = v40;
        v4 = v41;
        v15 = v38;
        v14 = v39;
        v18 = v36;

        v16 = v37;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return v8;
}

- (int)personIDForContact:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUContactsDataProvider *)self contactsDataSource];
  v6 = [v5 personFromContact:v4];

  if (v6)
  {
    RecordID = ABRecordGetRecordID(v6);
  }

  else
  {
    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not look up legacy ABPerson for contact: %@", &v11, 0xCu);
    }

    RecordID = -1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return RecordID;
}

+ (id)keysByCombiningDefaultKeysWithKeysToFetch:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = [objc_opt_class() defaultContactKeyDescriptors];
    v6 = [v5 arrayByAddingObjectsFromArray:v3];
    v7 = [v4 setWithArray:v6];
    v8 = [v7 allObjects];
  }

  else
  {
    v8 = [objc_opt_class() defaultContactKeyDescriptors];
  }

  return v8;
}

+ (id)numberFormatter
{
  if (numberFormatter_onceToken_0 != -1)
  {
    +[TUContactsDataProvider numberFormatter];
  }

  v3 = numberFormatter_numberFormatter_0;

  return v3;
}

uint64_t __41__TUContactsDataProvider_numberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = numberFormatter_numberFormatter_0;
  numberFormatter_numberFormatter_0 = v0;

  v2 = numberFormatter_numberFormatter_0;

  return [v2 setNumberStyle:1];
}

void __54__TUContactsDataProvider_defaultContactKeyDescriptors__block_invoke()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:1];
  v6[0] = v0;
  v1 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v2 = *MEMORY[0x1E695C330];
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = *MEMORY[0x1E695C208];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v4 = defaultContactKeyDescriptors_defaultContactKeyDescriptors;
  defaultContactKeyDescriptors_defaultContactKeyDescriptors = v3;

  v5 = *MEMORY[0x1E69E9840];
}

- (id)prefixHintForFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [(TUContactsDataProvider *)self localeSupportsPrefixHintForFetchRequest];
  if ((v5)[2](v5, v4))
  {
    v6 = [v4 phoneNumberPrefixHint];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)unsupportedLocalesForPrefixHint
{
  if (unsupportedLocalesForPrefixHint_onceToken != -1)
  {
    +[TUContactsDataProvider unsupportedLocalesForPrefixHint];
  }

  v3 = unsupportedLocalesForPrefixHint_unsupportedLocalesForPrefixHint;

  return v3;
}

uint64_t __57__TUContactsDataProvider_unsupportedLocalesForPrefixHint__block_invoke()
{
  unsupportedLocalesForPrefixHint_unsupportedLocalesForPrefixHint = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F09C6370];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __59__TUContactsDataProvider_familyNameFirstLocaleCountryCodes__block_invoke()
{
  familyNameFirstLocaleCountryCodes_familyNameFirstLocaleCountryCodes = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F09C6388];

  return MEMORY[0x1EEE66BB8]();
}

- (id)ISOCountryCodeForHandle:(id)a3 fetchRequest:(id)a4
{
  v5 = a4;
  v6 = [a3 isoCountryCode];
  if (![v6 length])
  {
    v7 = [v5 isoCountryCode];

    if ([v7 length])
    {
      v6 = v7;
    }

    else
    {
      if ([v5 useNetworkCountryCode])
      {
        v8 = TUNetworkCountryCode();
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = TUHomeCountryCode();
        }

        v6 = v10;
      }

      else
      {
        v6 = TUHomeCountryCode();
        v9 = v7;
      }
    }
  }

  return v6;
}

- (void)initWithContactsDataSource:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138543362;
  v7 = v4;
  _os_log_debug_impl(&dword_1956FD000, a2, OS_LOG_TYPE_DEBUG, "TUContactsDataProvider: source is a '%{public}@'", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)processBatchFetchRequests:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"TUContactsDataProvider.m" lineNumber:99 description:{@"Fetch request does not contain exactly one handle %@", a3}];
}

- (void)contactWithIdentifier:keysToFetch:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1956FD000, v0, v1, "Error while fetching contact with identifier %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)contactsForHandle:countryCode:keysToFetch:prefixHint:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1956FD000, v0, v1, "Error while fetching contacts for handle %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end