@interface TUContactsDataProvider
+ (id)defaultContactKeyDescriptors;
+ (id)familyNameFirstLocaleCountryCodes;
+ (id)keysByCombiningDefaultKeysWithKeysToFetch:(id)fetch;
+ (id)numberFormatter;
+ (id)unsupportedLocalesForPrefixHint;
- (BOOL)isHandleEligibleForScreenSharingRequests:(id)requests;
- (BOOL)shouldIgnoreHandle:(id)handle withFetchRequest:(id)request;
- (TUContactsDataProvider)init;
- (TUContactsDataProvider)initWithContactsDataSource:(id)source;
- (id)ISOCountryCodeForHandle:(id)handle fetchRequest:(id)request;
- (id)compositeNameForContacts:(id)contacts;
- (id)compositeNameForFetchRequest:(id)request;
- (id)contactLabelForContacts:(id)contacts matchingHandle:(id)handle countryCode:(id)code;
- (id)contactWithIdentifier:(id)identifier keysToFetch:(id)fetch;
- (id)contactsForHandle:(id)handle countryCode:(id)code keysToFetch:(id)fetch prefixHint:(id)hint;
- (id)executeBatchFetchRequests:(id)requests;
- (id)executeFetchRequest:(id)request;
- (id)formattedNameForHandle:(id)handle countryCode:(id)code;
- (id)getDeviceSetupDate;
- (id)labeledHandlesForContactWithIdentifier:(id)identifier;
- (id)labeledHandlesForContacts:(id)contacts;
- (id)localizedCompositeNameForContact:(id)contact secondContact:(id)secondContact;
- (id)nameForContact:(id)contact;
- (id)prefixHintForFetchRequest:(id)request;
- (id)processBatchFetchRequests:(id)requests;
- (id)resultForSingleHandleFetchRequest:(id)request fetchedContacts:(id)contacts;
- (id)unifiedContactsForFetchRequest:(id)request;
- (int)personIDForContact:(id)contact;
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
  tu_contactStore = [MEMORY[0x1E695CE18] tu_contactStore];
  v4 = [(TUContactsDataProvider *)self initWithContactsDataSource:tu_contactStore];

  return v4;
}

- (TUContactsDataProvider)initWithContactsDataSource:(id)source
{
  sourceCopy = source;
  v25.receiver = self;
  v25.super_class = TUContactsDataProvider;
  v6 = [(TUContactsDataProvider *)&v25 init];
  if (v6)
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(TUContactsDataProvider *)sourceCopy initWithContactsDataSource:v7];
    }

    objc_storeStrong(&v6->_contactsDataSource, source);
    familyNameFirstLocaleCountryCodes = [objc_opt_class() familyNameFirstLocaleCountryCodes];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    countryCode = [currentLocale countryCode];
    lowercaseString = [countryCode lowercaseString];
    v6->_useFamilyNameFirst = [familyNameFirstLocaleCountryCodes containsObject:lowercaseString];

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

    tu_defaults = [MEMORY[0x1E695E000] tu_defaults];
    userDefaults = v6->_userDefaults;
    v6->_userDefaults = tu_defaults;

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

- (id)processBatchFetchRequests:(id)requests
{
  v41 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = requestsCopy;
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
        handles = [v12 handles];
        v14 = [handles count];

        if (v14 != 1)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fetch request does not contain exactly one handle %@", v12];
          NSLog(&cfstr_TuassertionFai.isa, v15);

          if (_TUAssertShouldCrashApplication())
          {
            handles2 = [v12 handles];
            v17 = [handles2 count];

            if (v17 != 1)
            {
              [(TUContactsDataProvider *)a2 processBatchFetchRequests:v12];
            }
          }
        }

        [v12 removePsuedHandles];
        handles3 = [v12 handles];
        firstObject = [handles3 firstObject];

        if (!firstObject)
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

        [dictionary setObject:v12 forKeyedSubscript:firstObject];
        [array2 addObject:firstObject];
        if ([(TUContactsDataProvider *)self shouldIgnoreHandle:firstObject withFetchRequest:v12])
        {
          v20 = TUDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v39 = firstObject;
            _os_log_impl(&dword_1956FD000, v20, OS_LOG_TYPE_DEFAULT, "Not looking up contact for %@ because it is in our apple care handles", buf, 0xCu);
          }
        }

        else
        {
          type = [firstObject type];
          if ((type - 2) >= 2)
          {
            if (type == 1)
            {
              v21 = [(TUContactsDataProvider *)self executeFetchRequest:v12];
              [dictionary2 setObject:v21 forKeyedSubscript:firstObject];
LABEL_17:
            }
          }

          else
          {
            [array addObject:firstObject];
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
  v24 = [dictionary copy];
  v25 = [array copy];
  v26 = [array2 copy];
  v27 = [dictionary2 copy];
  v28 = [(TUBatchFetchRequestProcessingResult *)v23 initWithHandleToFetchRequest:v24 handlesToBatchFetch:v25 allHandlesFromFetchRequests:v26 fetchRequestResults:v27];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)executeBatchFetchRequests:(id)requests
{
  v37 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  if ([requestsCopy count])
  {
    v5 = [(TUContactsDataProvider *)self processBatchFetchRequests:requestsCopy];
    fetchRequestResults = [v5 fetchRequestResults];
    v31 = [fetchRequestResults mutableCopy];

    v7 = objc_opt_class();
    v28 = requestsCopy;
    firstObject = [requestsCopy firstObject];
    auxiliaryKeysToFetch = [firstObject auxiliaryKeysToFetch];
    v10 = [v7 keysByCombiningDefaultKeysWithKeysToFetch:auxiliaryKeysToFetch];

    selfCopy = self;
    contactsDataSource = [(TUContactsDataProvider *)self contactsDataSource];
    handlesToBatchFetch = [v5 handlesToBatchFetch];
    v27 = v10;
    v13 = [contactsDataSource tu_contactsForHandles:handlesToBatchFetch keyDescriptors:v10 error:0];

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
          array = [v13 objectForKeyedSubscript:v19];
          if (!array)
          {
            array = [MEMORY[0x1E695DEC8] array];
          }

          handleToFetchRequest = [v14 handleToFetchRequest];
          v22 = [handleToFetchRequest objectForKeyedSubscript:v19];
          v23 = [(TUContactsDataProvider *)selfCopy resultForSingleHandleFetchRequest:v22 fetchedContacts:array];
          [v31 setObject:v23 forKeyedSubscript:v19];
        }

        v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    dictionary = [v31 copy];
    requestsCopy = v28;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
  }

  v25 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)executeFetchRequest:(id)request
{
  v89 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v88 = requestCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Executing fetch request: %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(TUContactsDataProviderResult);
  [requestCopy removePsuedHandles];
  if ([requestCopy isConversation])
  {
    handles = [requestCopy handles];
    v8 = [handles count];

    if (v8 >= 2)
    {
      v63 = v6;
      array = [MEMORY[0x1E695DF70] array];
      array2 = [MEMORY[0x1E695DF70] array];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      handles2 = [requestCopy handles];
      v11 = [handles2 countByEnumeratingWithState:&v79 objects:v86 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v80;
        v66 = handles2;
        v67 = requestCopy;
        v65 = *v80;
        do
        {
          v14 = 0;
          v71 = v12;
          do
          {
            if (*v80 != v13)
            {
              objc_enumerationMutation(handles2);
            }

            v73 = v14;
            v15 = *(*(&v79 + 1) + 8 * v14);
            value = [v15 value];
            destinationIdIsPseudonym = [value destinationIdIsPseudonym];

            if ((destinationIdIsPseudonym & 1) == 0)
            {
              v18 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:v15 fetchRequest:requestCopy];
              defaultContactKeyDescriptors = [objc_opt_class() defaultContactKeyDescriptors];
              v20 = [(TUContactsDataProvider *)self contactsForHandle:v15 countryCode:v18 keysToFetch:defaultContactKeyDescriptors prefixHint:0];

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
                        givenName = [v27 givenName];
                        [array addObject:givenName];
                      }
                    }

                    v24 = [v22 countByEnumeratingWithState:&v75 objects:v85 count:16];
                  }

                  while (v24);
                  handles2 = v66;
                  requestCopy = v67;
                  v13 = v65;
                  v21 = v69;
                  v18 = v70;
                }
              }

              else
              {
                v22 = [(TUContactsDataProvider *)self formattedNameForHandle:v15 countryCode:v18];
                [(TUContactsDataProviderResult *)array2 addObject:v22];
              }

              v12 = v71;
            }

            v14 = v73 + 1;
          }

          while (v73 + 1 != v12);
          v12 = [handles2 countByEnumeratingWithState:&v79 objects:v86 count:16];
        }

        while (v12);
      }

      [array sortUsingComparator:&__block_literal_global_22];
      v6 = array2;
      [(TUContactsDataProviderResult *)array2 sortUsingComparator:&__block_literal_global_55_0];
      v31 = [MEMORY[0x1E695DF70] arrayWithArray:array];
      [v31 addObjectsFromArray:array2];
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
        v44 = v43 = requestCopy;
        v45 = [v31 objectAtIndexedSubscript:1];
        v34 = [v40 stringWithFormat:v42, v44, v45];

        requestCopy = v43;
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

            numberFormatter = [objc_opt_class() numberFormatter];
            v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v31, "count") - 3}];
            v72 = [numberFormatter stringFromNumber:v56];

            v57 = MEMORY[0x1E696AEC0];
            v74 = TUBundle();
            v58 = [v74 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHERS" value:&stru_1F098C218 table:@"TelephonyUtilities"];
            v59 = [v31 objectAtIndexedSubscript:0];
            v60 = [v31 objectAtIndexedSubscript:1];
            [v31 objectAtIndexedSubscript:2];
            v62 = v61 = requestCopy;
            v34 = [v57 stringWithFormat:v58, v59, v60, v62, v72];

            requestCopy = v61;
            v6 = array2;
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
        v49 = v68 = requestCopy;
        v50 = [v31 objectAtIndexedSubscript:0];
        v51 = [v31 objectAtIndexedSubscript:1];
        v52 = [v31 objectAtIndexedSubscript:2];
        v34 = [v46 stringWithFormat:v49, v50, v51, v52];

        requestCopy = v68;
      }

      v33 = v41;
      v6 = array2;
      goto LABEL_41;
    }
  }

  contactIdentifier = [requestCopy contactIdentifier];

  if (!contactIdentifier)
  {
    goto LABEL_31;
  }

  contactIdentifier2 = [requestCopy contactIdentifier];
  auxiliaryKeysToFetch = [requestCopy auxiliaryKeysToFetch];
  v38 = [(TUContactsDataProvider *)self contactWithIdentifier:contactIdentifier2 keysToFetch:auxiliaryKeysToFetch];

  if (!v38 || (v83 = v38, [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1], array = objc_claimAutoreleasedReturnValue(), v38, !array))
  {
LABEL_31:
    array = [(TUContactsDataProvider *)self unifiedContactsForFetchRequest:requestCopy];
  }

  v39 = [(TUContactsDataProvider *)self resultForSingleHandleFetchRequest:requestCopy fetchedContacts:array];
LABEL_43:

  v53 = *MEMORY[0x1E69E9840];

  return v39;
}

- (id)resultForSingleHandleFetchRequest:(id)request fetchedContacts:(id)contacts
{
  v37 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contactsCopy = contacts;
  v8 = objc_alloc_init(TUContactsDataProviderResult);
  if ([contactsCopy count])
  {
    firstObject = [contactsCopy firstObject];
    [(TUContactsDataProviderResult *)v8 setLegacyAddressBookIdentifier:[(TUContactsDataProvider *)self personIDForContact:firstObject]];
  }

  if ([contactsCopy count])
  {
    v10 = [(TUContactsDataProvider *)self compositeNameForContacts:contactsCopy];
    [(TUContactsDataProviderResult *)v8 setLocalizedName:v10];

    handles = [requestCopy handles];
    v12 = [handles count];

    if (v12 == 1)
    {
      handles2 = [requestCopy handles];
      firstObject2 = [handles2 firstObject];

      v15 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:firstObject2 fetchRequest:requestCopy];
      v16 = [(TUContactsDataProvider *)self contactLabelForContacts:contactsCopy matchingHandle:firstObject2 countryCode:v15];
      [(TUContactsDataProviderResult *)v8 setContactLabel:v16];
    }

    if ([contactsCopy count] == 1)
    {
      firstObject3 = [contactsCopy firstObject];
      organizationName = [firstObject3 organizationName];
      [(TUContactsDataProviderResult *)v8 setCompanyName:organizationName];
    }
  }

  localizedName = [(TUContactsDataProviderResult *)v8 localizedName];

  if (!localizedName)
  {
    v20 = TUDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      handles3 = [requestCopy handles];
      *v36 = 138412290;
      *&v36[4] = handles3;
      _os_log_impl(&dword_1956FD000, v20, OS_LOG_TYPE_DEFAULT, "Finding the appropriate localized name to use for handles: %@", v36, 0xCu);
    }

    v22 = [(TUContactsDataProvider *)self compositeNameForFetchRequest:requestCopy];
    if (v22)
    {
      [(TUContactsDataProviderResult *)v8 setLocalizedName:v22];
      v23 = TUDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        localizedName2 = [(TUContactsDataProviderResult *)v8 localizedName];
        *v36 = 138412290;
        *&v36[4] = localizedName2;
        v25 = "     - using formatted destination ID '%@'";
LABEL_22:
        _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, v25, v36, 0xCu);
      }
    }

    else if ([requestCopy isEmergency])
    {
      v26 = TUBundle();
      v27 = [v26 localizedStringForKey:@"EMERGENCY_SERVICES" value:&stru_1F098C218 table:@"TelephonyUtilities"];
      [(TUContactsDataProviderResult *)v8 setLocalizedName:v27];

      v23 = TUDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        localizedName2 = [(TUContactsDataProviderResult *)v8 localizedName];
        *v36 = 138412290;
        *&v36[4] = localizedName2;
        v25 = "     - call is to emergency services, we'll use the emergency services string: '%@'";
        goto LABEL_22;
      }
    }

    else
    {
      isBlocked = [requestCopy isBlocked];
      v29 = TUBundle();
      v30 = v29;
      if (isBlocked)
      {
        v31 = [v29 localizedStringForKey:@"BLOCKED" value:&stru_1F098C218 table:@"TelephonyUtilities"];
        [(TUContactsDataProviderResult *)v8 setLocalizedName:v31];

        v23 = TUDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          localizedName2 = [(TUContactsDataProviderResult *)v8 localizedName];
          *v36 = 138412290;
          *&v36[4] = localizedName2;
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
          localizedName2 = [(TUContactsDataProviderResult *)v8 localizedName];
          *v36 = 138412290;
          *&v36[4] = localizedName2;
          v25 = "     - falling back to the unknown string: '%@'";
          goto LABEL_22;
        }
      }
    }
  }

  [(TUContactsDataProviderResult *)v8 setContacts:contactsCopy, *v36];
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

- (id)contactLabelForContacts:(id)contacts matchingHandle:(id)handle countryCode:(id)code
{
  v24 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  codeCopy = code;
  [(TUContactsDataProvider *)self labeledHandlesForContacts:contacts];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v22 = 0u;
  label = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (label)
  {
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != label; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        handle = [v14 handle];
        v16 = [handle isCanonicallyEqualToHandle:handleCopy isoCountryCode:codeCopy];

        if (v16)
        {
          label = [v14 label];
          goto LABEL_11;
        }
      }

      label = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (label)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v17 = *MEMORY[0x1E69E9840];

  return label;
}

- (id)labeledHandlesForContactWithIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695E0F0];
  v5 = [(TUContactsDataProvider *)self contactWithIdentifier:identifier keysToFetch:MEMORY[0x1E695E0F0]];
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

- (id)labeledHandlesForContacts:(id)contacts
{
  v59 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  array = [MEMORY[0x1E695DF70] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = contactsCopy;
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
        phoneNumbers = [v6 phoneNumbers];
        v8 = [phoneNumbers countByEnumeratingWithState:&v48 objects:v57 count:16];
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
                objc_enumerationMutation(phoneNumbers);
              }

              v12 = *(*(&v48 + 1) + 8 * i);
              v13 = [TUHandle alloc];
              value = [v12 value];
              unformattedInternationalStringValue = [value unformattedInternationalStringValue];
              v16 = [(TUHandle *)v13 initWithType:2 value:unformattedInternationalStringValue];

              v17 = [TULabeledHandle alloc];
              v18 = MEMORY[0x1E695CEE0];
              label = [v12 label];
              v20 = [v18 localizedStringForLabel:label];
              v21 = -[TULabeledHandle initWithHandle:label:isSuggested:](v17, "initWithHandle:label:isSuggested:", v16, v20, [v12 tuIsSuggested]);

              [array addObject:v21];
            }

            v9 = [phoneNumbers countByEnumeratingWithState:&v48 objects:v57 count:16];
          }

          while (v9);
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        emailAddresses = [v42 emailAddresses];
        v23 = [emailAddresses countByEnumeratingWithState:&v44 objects:v56 count:16];
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
                objc_enumerationMutation(emailAddresses);
              }

              v27 = *(*(&v44 + 1) + 8 * j);
              v28 = [TUHandle alloc];
              value2 = [v27 value];
              v30 = [(TUHandle *)v28 initWithType:3 value:value2];

              v31 = [TULabeledHandle alloc];
              v32 = MEMORY[0x1E695CEE0];
              label2 = [v27 label];
              v34 = [v32 localizedStringForLabel:label2];
              v35 = -[TULabeledHandle initWithHandle:label:isSuggested:](v31, "initWithHandle:label:isSuggested:", v30, v34, [v27 tuIsSuggested]);

              [array addObject:v35];
            }

            v24 = [emailAddresses countByEnumeratingWithState:&v44 objects:v56 count:16];
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

  v36 = [array copy];
  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

- (id)contactWithIdentifier:(id)identifier keysToFetch:(id)fetch
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  fetchCopy = fetch;
  contactsDataSource = [(TUContactsDataProvider *)self contactsDataSource];
  v9 = [objc_opt_class() keysByCombiningDefaultKeysWithKeysToFetch:fetchCopy];

  v16 = 0;
  v10 = [contactsDataSource unifiedContactWithIdentifier:identifierCopy keysToFetch:v9 error:&v16];
  v11 = v16;

  if (v10)
  {
    domain = TUDefaultLog();
    if (os_log_type_enabled(domain, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = identifierCopy;
      _os_log_impl(&dword_1956FD000, domain, OS_LOG_TYPE_DEFAULT, "Found contact: %@ for contactIdentifier %@: ", buf, 0x16u);
    }
  }

  else
  {
    domain = [v11 domain];
    if ([domain isEqualToString:*MEMORY[0x1E695C448]])
    {
      code = [v11 code];

      if (code == 200)
      {
        goto LABEL_9;
      }

      domain = TUDefaultLog();
      if (os_log_type_enabled(domain, OS_LOG_TYPE_ERROR))
      {
        [TUContactsDataProvider contactWithIdentifier:keysToFetch:];
      }
    }
  }

LABEL_9:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)unifiedContactsForFetchRequest:(id)request
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  array = [MEMORY[0x1E695DF70] array];
  v5 = objc_opt_class();
  auxiliaryKeysToFetch = [requestCopy auxiliaryKeysToFetch];
  v23 = [v5 keysByCombiningDefaultKeysWithKeysToFetch:auxiliaryKeysToFetch];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  handles = [requestCopy handles];
  v8 = [handles countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(handles);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ([(TUContactsDataProvider *)self shouldIgnoreHandle:v13 withFetchRequest:requestCopy, v21])
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
          v14 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:v13 fetchRequest:requestCopy];
          v15 = [(TUContactsDataProvider *)self prefixHintForFetchRequest:requestCopy];
          v16 = [(TUContactsDataProvider *)self contactsForHandle:v13 countryCode:v14 keysToFetch:v23 prefixHint:v15];

          if (v16)
          {
            [array addObjectsFromArray:v16];
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

      v10 = [handles countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v10);
  }

  v18 = [array copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)contactsForHandle:(id)handle countryCode:(id)code keysToFetch:(id)fetch prefixHint:(id)hint
{
  handleCopy = handle;
  codeCopy = code;
  fetchCopy = fetch;
  hintCopy = hint;
  type = [handleCopy type];
  switch(type)
  {
    case 1:
      v24 = objc_alloc(MEMORY[0x1E695CFA0]);
      value = [handleCopy value];
      contactsDataSource2 = [v24 initWithUrlString:0 username:value userIdentifier:0 service:0];

      contactsDataSource = [(TUContactsDataProvider *)self contactsDataSource];
      v18 = [MEMORY[0x1E695CD58] predicateForContactsMatchingSocialProfile:contactsDataSource2];
      defaultContactKeyDescriptors = [objc_opt_class() defaultContactKeyDescriptors];
      v29 = 0;
      v19 = [contactsDataSource unifiedContactsMatchingPredicate:v18 keysToFetch:defaultContactKeyDescriptors error:&v29];
      v23 = v29;

LABEL_8:
      if (v19)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    case 2:
      v21 = MEMORY[0x1E695CF50];
      value2 = [handleCopy value];
      contactsDataSource2 = [v21 phoneNumberWithDigits:value2 countryCode:codeCopy];

      contactsDataSource = [(TUContactsDataProvider *)self contactsDataSource];
      v18 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:contactsDataSource2 prefixHint:hintCopy];
      v30 = 0;
      v19 = [contactsDataSource unifiedContactsMatchingPredicate:v18 keysToFetch:fetchCopy error:&v30];
      v20 = v30;
      goto LABEL_6;
    case 3:
      contactsDataSource2 = [(TUContactsDataProvider *)self contactsDataSource];
      v16 = MEMORY[0x1E695CD58];
      contactsDataSource = [handleCopy value];
      v18 = [v16 predicateForContactsMatchingEmailAddress:contactsDataSource];
      v31 = 0;
      v19 = [contactsDataSource2 unifiedContactsMatchingPredicate:v18 keysToFetch:fetchCopy error:&v31];
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

- (id)nameForContact:(id)contact
{
  contactCopy = contact;
  if ([(TUContactsDataProvider *)self shouldUseGivenName])
  {
    [contactCopy givenName];
  }

  else
  {
    [MEMORY[0x1E695CD80] stringFromContact:contactCopy style:0];
  }
  v5 = ;

  return v5;
}

- (id)localizedCompositeNameForContact:(id)contact secondContact:(id)secondContact
{
  contactCopy = contact;
  secondContactCopy = secondContact;
  givenName = [contactCopy givenName];
  if (!givenName)
  {
    goto LABEL_12;
  }

  v9 = givenName;
  familyName = [contactCopy familyName];
  if (!familyName)
  {
    goto LABEL_11;
  }

  v11 = familyName;
  givenName2 = [secondContactCopy givenName];
  if (!givenName2)
  {
LABEL_10:

LABEL_11:
LABEL_12:
    v23 = [(TUContactsDataProvider *)self nameForContact:contactCopy];
    v28 = [(TUContactsDataProvider *)self nameForContact:secondContactCopy];
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
    familyName5 = TUBundle();
    givenName5 = [familyName5 localizedStringForKey:@"%@_OR_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v27 = [v29 stringWithFormat:givenName5, v23, v24];
    goto LABEL_15;
  }

  v13 = givenName2;
  familyName2 = [secondContactCopy familyName];
  if (!familyName2)
  {

    goto LABEL_10;
  }

  v15 = familyName2;
  familyName3 = [secondContactCopy familyName];
  familyName4 = [contactCopy familyName];
  v18 = [familyName3 localizedCaseInsensitiveCompare:familyName4];

  if (v18)
  {
    goto LABEL_12;
  }

  givenName3 = [secondContactCopy givenName];
  givenName4 = [contactCopy givenName];
  v21 = [givenName3 localizedCaseInsensitiveCompare:givenName4];

  if (v21)
  {
    if (![(TUContactsDataProvider *)self shouldUseGivenName])
    {
      shouldUseFamilyNameFirst = [(TUContactsDataProvider *)self shouldUseFamilyNameFirst];
      v34 = MEMORY[0x1E696AEC0];
      if (shouldUseFamilyNameFirst)
      {
        v35 = objc_alloc(MEMORY[0x1E696AEC0]);
        v23 = TUBundle();
        v24 = [v23 localizedStringForKey:@"%@_%@_OR_%@_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
        familyName5 = [secondContactCopy familyName];
        givenName5 = [contactCopy givenName];
        familyName6 = [secondContactCopy familyName];
        givenName6 = [secondContactCopy givenName];
        v30 = [v35 initWithFormat:v24, familyName5, givenName5, familyName6, givenName6];
      }

      else
      {
        v23 = TUBundle();
        v24 = [v23 localizedStringForKey:@"%@_OR_%@_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
        familyName5 = [contactCopy givenName];
        givenName5 = [secondContactCopy givenName];
        familyName6 = [secondContactCopy familyName];
        v30 = [v34 stringWithFormat:v24, familyName5, givenName5, familyName6];
      }

      goto LABEL_16;
    }

    v22 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = TUBundle();
    v24 = [v23 localizedStringForKey:@"%@_OR_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    familyName5 = [contactCopy givenName];
    givenName5 = [secondContactCopy givenName];
    v27 = [v22 initWithFormat:v24, familyName5, givenName5];
LABEL_15:
    v30 = v27;
LABEL_16:

LABEL_21:
    goto LABEL_22;
  }

  v30 = [(TUContactsDataProvider *)self nameForContact:contactCopy];
LABEL_22:

  return v30;
}

- (id)compositeNameForContacts:(id)contacts
{
  v33 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  firstObject = [contactsCopy firstObject];
  if ([contactsCopy count] == 1)
  {
    v6 = [(TUContactsDataProvider *)self nameForContact:firstObject];
  }

  else if ([contactsCopy count] == 2)
  {
    v7 = [contactsCopy objectAtIndexedSubscript:1];
    v6 = [(TUContactsDataProvider *)self localizedCompositeNameForContact:firstObject secondContact:v7];
  }

  else
  {
    if ([contactsCopy count] >= 3)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v8 = contactsCopy;
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
              numberFormatter = [objc_opt_class() numberFormatter];
              v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count") - 1}];
              v20 = [numberFormatter stringFromNumber:v19];
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
    v31 = contactsCopy;
    _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "Determined compositeName: %@ for contacts: %@", buf, 0x16u);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)compositeNameForFetchRequest:(id)request
{
  requestCopy = request;
  handles = [requestCopy handles];
  if ([handles count] == 1)
  {
    firstObject = [handles firstObject];
    v7 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:firstObject fetchRequest:requestCopy];
    firstObject2 = [handles firstObject];
    v9 = [(TUContactsDataProvider *)self formattedNameForHandle:firstObject2 countryCode:v7];
LABEL_7:

    goto LABEL_8;
  }

  if ([handles count] == 2)
  {
    firstObject = [handles firstObject];
    v7 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:firstObject fetchRequest:requestCopy];
    handles2 = [requestCopy handles];
    firstObject2 = [handles2 lastObject];

    v20 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:firstObject2 fetchRequest:requestCopy];
    v22 = MEMORY[0x1E696AEC0];
    v11 = TUBundle();
    v12 = [v11 localizedStringForKey:@"%@_AND_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v13 = [(TUContactsDataProvider *)self formattedNameForHandle:firstObject countryCode:v7];
    v14 = [(TUContactsDataProvider *)self formattedNameForHandle:firstObject2 countryCode:v20];
    v9 = [v22 stringWithFormat:v12, v13, v14];

    goto LABEL_7;
  }

  if ([handles count] >= 3)
  {
    firstObject = [handles firstObject];
    v7 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:firstObject fetchRequest:requestCopy];
    v23 = MEMORY[0x1E696AEC0];
    firstObject2 = TUBundle();
    v21 = [firstObject2 localizedStringForKey:@"%@_AND_%@_OTHERS" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v19 = [(TUContactsDataProvider *)self formattedNameForHandle:firstObject countryCode:v7];
    numberFormatter = [objc_opt_class() numberFormatter];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(handles, "count") - 1}];
    v17 = [numberFormatter stringFromNumber:v16];
    v9 = [v23 stringWithFormat:v21, v19, v17];

    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)formattedNameForHandle:(id)handle countryCode:(id)code
{
  v20 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  codeCopy = code;
  value = [handleCopy value];
  if (![value length])
  {
    normalizedValue = [handleCopy normalizedValue];

    value = normalizedValue;
  }

  type = [handleCopy type];
  v10 = TUDefaultLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (type == 2)
  {
    if (v11)
    {
      v16 = 138412546;
      v17 = value;
      v18 = 2112;
      v19 = codeCopy;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "     - we'll format the destinationID '%@' with the country code '%@'", &v16, 0x16u);
    }

    v12 = TUFormattedPhoneNumber(value, codeCopy);
  }

  else
  {
    if (v11)
    {
      v16 = 138412290;
      v17 = value;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "     - handle can't/shouldn't be formatted as a phone number, so using the unmodified destination ID '%@'", &v16, 0xCu);
    }

    v12 = value;
  }

  v13 = v12;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)shouldIgnoreHandle:(id)handle withFetchRequest:(id)request
{
  handleCopy = handle;
  requestCopy = request;
  if ([requestCopy isIncoming] && (objc_msgSend(requestCopy, "isVerified") & 1) == 0)
  {
    appleCareHandles = [(TUContactsDataProvider *)self appleCareHandles];
    v8 = [appleCareHandles contains:handleCopy];
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
  deviceSetupDate = [(TUContactsDataProvider *)self deviceSetupDate];

  if (deviceSetupDate)
  {
    deviceSetupDate2 = [(TUContactsDataProvider *)self deviceSetupDate];
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
  current = [v5 current];
  date = [current date];

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = date;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "BYSetupUserDisposition: %@", &buf, 0xCu);
  }

  if (date)
  {
    deviceSetupDate2 = date;
LABEL_10:
    [(TUContactsDataProvider *)self setDeviceSetupDate:deviceSetupDate2];
    goto LABEL_11;
  }

  deviceSetupDate2 = CFPreferencesCopyValue(@"SetupLastExit", @"com.apple.purplebuddy", @"mobile", *MEMORY[0x1E695E898]);
  if (deviceSetupDate2)
  {
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];

  return deviceSetupDate2;
}

- (BOOL)isHandleEligibleForScreenSharingRequests:(id)requests
{
  v51 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
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
    v7 = [[TUContactsDataProviderFetchRequest alloc] initWithHandle:requestsCopy];
    [(TUContactsDataProviderFetchRequest *)v7 setAuxiliaryKeysToFetch:&unk_1F09C6358];
    v9 = [(TUContactsDataProvider *)self executeFetchRequest:v7];
    v10 = TUDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      contacts = [v9 contacts];
      *buf = 138412290;
      v47 = contacts;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Found contacts %@", buf, 0xCu);
    }

    contacts2 = [v9 contacts];
    v13 = [contacts2 count];

    if (v13)
    {
      date = [MEMORY[0x1E695DF00] date];
      v15 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v15 setDay:-1];
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v17 = [currentCalendar dateByAddingComponents:v15 toDate:date options:0];
      getDeviceSetupDate = [(TUContactsDataProvider *)self getDeviceSetupDate];
      v19 = TUDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = getDeviceSetupDate;
        _os_log_impl(&dword_1956FD000, v19, OS_LOG_TYPE_DEFAULT, "Got device setup date %@", buf, 0xCu);
      }

      if (getDeviceSetupDate && [getDeviceSetupDate compare:v17] == 1)
      {
        v8 = 1;
      }

      else
      {
        v37 = currentCalendar;
        v38 = v15;
        v39 = date;
        v41 = requestsCopy;
        v20 = MEMORY[0x1E695DF70];
        contacts3 = [v9 contacts];
        v22 = [v20 arrayWithCapacity:{objc_msgSend(contacts3, "count")}];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = v9;
        contacts4 = [v9 contacts];
        v24 = [contacts4 countByEnumeratingWithState:&v42 objects:v50 count:16];
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
                objc_enumerationMutation(contacts4);
              }

              v28 = *(*(&v42 + 1) + 8 * i);
              creationDate = [v28 creationDate];
              [v22 addObject:creationDate];

              creationDate2 = [v28 creationDate];
              v31 = [creationDate2 compare:v17];

              if (v31 == -1)
              {
                v32 = TUDefaultLog();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  creationDate3 = [v28 creationDate];
                  *buf = 138412546;
                  v47 = v28;
                  v48 = 2112;
                  v49 = creationDate3;
                  _os_log_impl(&dword_1956FD000, v32, OS_LOG_TYPE_DEFAULT, "Found contact %@ with creation date %@", buf, 0x16u);
                }

                v8 = 1;
                goto LABEL_29;
              }
            }

            v25 = [contacts4 countByEnumeratingWithState:&v42 objects:v50 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        contacts4 = TUDefaultLog();
        if (os_log_type_enabled(contacts4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v22;
          _os_log_impl(&dword_1956FD000, contacts4, OS_LOG_TYPE_DEFAULT, "No contact had a creation date > 24 hours ago. Creation dates: %@", buf, 0xCu);
        }

        v8 = 0;
LABEL_29:
        v9 = v40;
        requestsCopy = v41;
        v15 = v38;
        date = v39;
        getDeviceSetupDate = v36;

        currentCalendar = v37;
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

- (int)personIDForContact:(id)contact
{
  v13 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  contactsDataSource = [(TUContactsDataProvider *)self contactsDataSource];
  v6 = [contactsDataSource personFromContact:contactCopy];

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
      v12 = contactCopy;
      _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not look up legacy ABPerson for contact: %@", &v11, 0xCu);
    }

    RecordID = -1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return RecordID;
}

+ (id)keysByCombiningDefaultKeysWithKeysToFetch:(id)fetch
{
  fetchCopy = fetch;
  if ([fetchCopy count])
  {
    v4 = MEMORY[0x1E695DFD8];
    defaultContactKeyDescriptors = [objc_opt_class() defaultContactKeyDescriptors];
    v6 = [defaultContactKeyDescriptors arrayByAddingObjectsFromArray:fetchCopy];
    v7 = [v4 setWithArray:v6];
    allObjects = [v7 allObjects];
  }

  else
  {
    allObjects = [objc_opt_class() defaultContactKeyDescriptors];
  }

  return allObjects;
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

- (id)prefixHintForFetchRequest:(id)request
{
  requestCopy = request;
  localeSupportsPrefixHintForFetchRequest = [(TUContactsDataProvider *)self localeSupportsPrefixHintForFetchRequest];
  if ((localeSupportsPrefixHintForFetchRequest)[2](localeSupportsPrefixHintForFetchRequest, requestCopy))
  {
    phoneNumberPrefixHint = [requestCopy phoneNumberPrefixHint];
  }

  else
  {
    phoneNumberPrefixHint = 0;
  }

  return phoneNumberPrefixHint;
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

- (id)ISOCountryCodeForHandle:(id)handle fetchRequest:(id)request
{
  requestCopy = request;
  isoCountryCode = [handle isoCountryCode];
  if (![isoCountryCode length])
  {
    isoCountryCode2 = [requestCopy isoCountryCode];

    if ([isoCountryCode2 length])
    {
      isoCountryCode = isoCountryCode2;
    }

    else
    {
      if ([requestCopy useNetworkCountryCode])
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

        isoCountryCode = v10;
      }

      else
      {
        isoCountryCode = TUHomeCountryCode();
        v9 = isoCountryCode2;
      }
    }
  }

  return isoCountryCode;
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