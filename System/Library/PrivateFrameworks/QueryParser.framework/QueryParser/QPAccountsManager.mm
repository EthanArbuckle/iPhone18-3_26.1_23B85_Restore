@interface QPAccountsManager
+ (id)sharedAccountsManager;
- (id)getMeCard;
- (id)nameToEmailAddresses;
- (void)update:(id)update;
@end

@implementation QPAccountsManager

+ (id)sharedAccountsManager
{
  if (sharedAccountsManager_onceToken != -1)
  {
    +[QPAccountsManager sharedAccountsManager];
  }

  v3 = sharedAccountsManager__instance;

  return v3;
}

uint64_t __42__QPAccountsManager_sharedAccountsManager__block_invoke()
{
  v15[14] = *MEMORY[0x1E69E9840];
  if (initEntitlements_onceToken != -1)
  {
    __42__QPAccountsManager_sharedAccountsManager__block_invoke_cold_1();
  }

  v0 = objc_alloc_init(QPAccountsManager);
  v1 = sharedAccountsManager__instance;
  sharedAccountsManager__instance = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695CE28]);
  [sharedAccountsManager__instance setContactsConfiguration:v2];

  v3 = *MEMORY[0x1E6959898];
  v15[0] = *MEMORY[0x1E6959890];
  v15[1] = v3;
  v4 = *MEMORY[0x1E69598D8];
  v15[2] = *MEMORY[0x1E6959840];
  v15[3] = v4;
  v5 = *MEMORY[0x1E69598D0];
  v15[4] = *MEMORY[0x1E69598F0];
  v15[5] = v5;
  v6 = *MEMORY[0x1E69597F8];
  v15[6] = *MEMORY[0x1E69597F0];
  v15[7] = v6;
  v7 = *MEMORY[0x1E6959868];
  v15[8] = *MEMORY[0x1E6959918];
  v15[9] = v7;
  v8 = *MEMORY[0x1E69597E0];
  v15[10] = *MEMORY[0x1E6959878];
  v15[11] = v8;
  v9 = *MEMORY[0x1E69598E0];
  v15[12] = *MEMORY[0x1E69597E8];
  v15[13] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:14];
  [sharedAccountsManager__instance setAccountTypes:v10];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:sharedAccountsManager__instance selector:sel_update_ name:*MEMORY[0x1E695C3D8] object:0];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 addObserver:sharedAccountsManager__instance selector:sel_update_ name:*MEMORY[0x1E6959968] object:0];

  result = [sharedAccountsManager__instance update:0];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)nameToEmailAddresses
{
  v137 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  v116 = dictionary;
  if (sPrivateAccountsEntitlement == 1)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    selfCopy = self;
    accountTypes = self->_accountTypes;
    v130 = 0;
    v6 = [defaultStore accountsWithAccountTypeIdentifiers:accountTypes error:&v130];
    v7 = v130;

    v97 = v7;
    if (!v7)
    {
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      obj = v6;
      v8 = [obj countByEnumeratingWithState:&v126 objects:v136 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v127;
        v99 = *MEMORY[0x1E6959918];
        v98 = *MEMORY[0x1E6959878];
        v96 = *MEMORY[0x1E6959868];
        v95 = *MEMORY[0x1E6959890];
        v11 = *MEMORY[0x1E69597F8];
        v92 = *MEMORY[0x1E69597F8];
        v93 = *MEMORY[0x1E6959898];
        v100 = *v127;
        v101 = v6;
        do
        {
          v12 = 0;
          v102 = v9;
          do
          {
            if (*v127 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v126 + 1) + 8 * v12);
            if ([v13 isActive])
            {
              accountProperties = [v13 accountProperties];
              array = [MEMORY[0x1E695DF70] array];
              v16 = [accountProperties objectForKey:@"EmailAddresses"];
              if ([v16 count])
              {
                [array addObjectsFromArray:v16];
              }

              v109 = v16;
              if (![array count])
              {
                v17 = accountProperties;
                v18 = [accountProperties objectForKey:@"IdentityEmailAddress"];
                if ([v18 length])
                {
                  lowercaseString = [v18 lowercaseString];
                  [array addObject:lowercaseString];
                }

                accountType = [v13 accountType];
                v21 = accountType;
                if (accountType)
                {
                  v106 = v12;
                  identifier = [accountType identifier];
                  if ([identifier length] && ((objc_msgSend(identifier, "isEqualToString:", v99) & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", v98) & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", v96) & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", v95) & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", v93) & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", v92)))
                  {
                    username = [v13 username];
                    if ([username length])
                    {
                      [username lowercaseString];
                      v25 = v24 = v6;
                      [array addObject:v25];

                      v6 = v24;
                    }
                  }

                  v9 = v102;
                  v12 = v106;
                }

                accountProperties = v17;
                v16 = v109;
              }

              if ([array count])
              {
                v26 = [accountProperties objectForKey:@"FullUserName"];
                v105 = accountProperties;
                if (![v26 length])
                {
                  v27 = [accountProperties objectForKey:@"ACPropertyFullName"];

                  v26 = v27;
                }

                v107 = v12;
                v28 = [v26 length];
                if (!v28)
                {
                  firstObject = [array firstObject];

                  v26 = firstObject;
                }

                v124 = 0u;
                v125 = 0u;
                v122 = 0u;
                v123 = 0u;
                v104 = array;
                v112 = array;
                v30 = [v112 countByEnumeratingWithState:&v122 objects:v135 count:16];
                if (v30)
                {
                  v31 = v30;
                  v32 = *v123;
                  do
                  {
                    for (i = 0; i != v31; ++i)
                    {
                      if (*v123 != v32)
                      {
                        objc_enumerationMutation(v112);
                      }

                      v34 = *(*(&v122 + 1) + 8 * i);
                      if ([v34 length])
                      {
                        v35 = [dictionary3 objectForKey:v34];
                        v36 = [dictionary2 objectForKey:v34];
                        v37 = v36;
                        if (v36 && [v36 length])
                        {
                          if (v35)
                          {
                            dictionary = v116;
                            if ([v35 BOOLValue] & 1 | (v28 == 0))
                            {
                              goto LABEL_49;
                            }
                          }

                          else
                          {
                            dictionary = v116;
                            if (!v28)
                            {
LABEL_49:

                              continue;
                            }
                          }

                          v38 = [dictionary objectForKeyedSubscript:v37];
                          [v38 removeObject:v34];

                          v39 = [dictionary objectForKeyedSubscript:v37];
                          v40 = [v39 count];

                          if (!v40)
                          {
                            [v116 removeObjectForKey:v37];
                          }
                        }

                        v41 = [v116 objectForKey:v26];

                        if (!v41)
                        {
                          v42 = [MEMORY[0x1E695DFA8] set];
                          [v116 setObject:v42 forKey:v26];
                        }

                        v43 = [v116 objectForKeyedSubscript:v26];
                        [v43 addObject:v34];

                        dictionary = v116;
                        [dictionary2 setObject:v26 forKey:v34];
                        v44 = [MEMORY[0x1E696AD98] numberWithBool:v28 != 0];
                        [dictionary3 setObject:v44 forKey:v34];

                        goto LABEL_49;
                      }
                    }

                    v31 = [v112 countByEnumeratingWithState:&v122 objects:v135 count:16];
                  }

                  while (v31);
                }

                v10 = v100;
                v6 = v101;
                v9 = v102;
                accountProperties = v105;
                v12 = v107;
                array = v104;
                v16 = v109;
              }
            }

            ++v12;
          }

          while (v12 != v9);
          v9 = [obj countByEnumeratingWithState:&v126 objects:v136 count:16];
        }

        while (v9);
      }

      if (accountsLogger_token != -1)
      {
        [QPAccountsManager nameToEmailAddresses];
      }

      v45 = accountsLogger_log;
      if (os_log_type_enabled(accountsLogger_log, OS_LOG_TYPE_INFO))
      {
        v46 = v45;
        v47 = [dictionary count];
        *buf = 134217984;
        v134 = v47;
        _os_log_impl(&dword_1C6584000, v46, OS_LOG_TYPE_INFO, "QueryParserAccountsManager: found %lu distinct Accounts names", buf, 0xCu);
      }
    }

    self = selfCopy;
  }

  else
  {
    if (accountsLogger_token != -1)
    {
      [QPAccountsManager nameToEmailAddresses];
    }

    v48 = accountsLogger_log;
    if (os_log_type_enabled(accountsLogger_log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6584000, v48, OS_LOG_TYPE_INFO, "QueryParserAccountsManager: not entitled to access Accounts", buf, 2u);
    }

    v97 = 0;
  }

  if (sPrivateContactsEntitlement == 1)
  {
    v49 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:self->_contactsConfiguration];
    v50 = *MEMORY[0x1E695C2F0];
    v132[0] = *MEMORY[0x1E695C240];
    v132[1] = v50;
    v51 = *MEMORY[0x1E695C208];
    v132[2] = *MEMORY[0x1E695C230];
    v132[3] = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:4];
    v121 = v97;
    v53 = [v49 _crossPlatformUnifiedMeContactWithKeysToFetch:v52 error:&v121];
    v54 = v121;

    if (v54)
    {

      v97 = v54;
      goto LABEL_108;
    }

    array2 = [MEMORY[0x1E695DF70] array];
    givenName = [v53 givenName];
    v58 = [givenName length];

    if (v58)
    {
      givenName2 = [v53 givenName];
      [array2 addObject:givenName2];
    }

    middleName = [v53 middleName];
    v61 = [middleName length];

    if (v61)
    {
      middleName2 = [v53 middleName];
      [array2 addObject:middleName2];
    }

    familyName = [v53 familyName];
    v64 = [familyName length];

    if (v64)
    {
      familyName2 = [v53 familyName];
      [array2 addObject:familyName2];
    }

    v111 = v49;
    v108 = array2;
    if ([array2 count])
    {
      v66 = [array2 componentsJoinedByString:@" "];
    }

    else
    {
      v66 = 0;
    }

    dictionary = v116;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v110 = v53;
    emailAddresses = [v53 emailAddresses];
    v68 = [emailAddresses countByEnumeratingWithState:&v117 objects:v131 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v118;
      do
      {
        v71 = 0;
        v113 = v69;
        do
        {
          if (*v118 != v70)
          {
            objc_enumerationMutation(emailAddresses);
          }

          value = [*(*(&v117 + 1) + 8 * v71) value];
          if ([value length])
          {
            v73 = [dictionary2 objectForKey:value];
            v74 = v66;
            if ([v74 length])
            {
              if (v73 && [v73 length])
              {
                v75 = v66;
                v76 = v70;
                v77 = emailAddresses;
                v78 = [dictionary objectForKeyedSubscript:v73];
                [v78 removeObject:value];

                v79 = [dictionary objectForKeyedSubscript:v73];
                v80 = dictionary;
                v81 = [v79 count];

                if (!v81)
                {
                  [v80 removeObjectForKey:v73];
                }

                dictionary = v80;
                emailAddresses = v77;
                v70 = v76;
                v66 = v75;
                v69 = v113;
              }

LABEL_97:
              v83 = [dictionary objectForKey:v74];

              if (!v83)
              {
                v84 = [MEMORY[0x1E695DFA8] set];
                [dictionary setObject:v84 forKey:v74];
              }

              v85 = [dictionary objectForKeyedSubscript:v74];
              [v85 addObject:value];

              dictionary = v116;
              [dictionary2 setObject:v74 forKey:value];
              v86 = [MEMORY[0x1E696AD98] numberWithBool:v66 != 0];
              [dictionary3 setObject:v86 forKey:value];
            }

            else if (!v73 || ![v73 length])
            {
              v82 = value;

              v74 = v82;
              goto LABEL_97;
            }
          }

          ++v71;
        }

        while (v69 != v71);
        v69 = [emailAddresses countByEnumeratingWithState:&v117 objects:v131 count:16];
      }

      while (v69);
    }

    v97 = 0;
  }

  else
  {
    if (accountsLogger_token != -1)
    {
      [QPAccountsManager nameToEmailAddresses];
    }

    v55 = accountsLogger_log;
    if (os_log_type_enabled(accountsLogger_log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6584000, v55, OS_LOG_TYPE_INFO, "QueryParserAccountsManager: not entitled to access Contacts", buf, 2u);
    }
  }

  if (accountsLogger_token != -1)
  {
    [QPAccountsManager nameToEmailAddresses];
  }

  v87 = accountsLogger_log;
  if (os_log_type_enabled(accountsLogger_log, OS_LOG_TYPE_INFO))
  {
    v88 = v87;
    v89 = [dictionary count];
    *buf = 134217984;
    v134 = v89;
    _os_log_impl(&dword_1C6584000, v88, OS_LOG_TYPE_INFO, "QueryParserAccountsManager: found %lu distinct names in total", buf, 0xCu);
  }

LABEL_108:

  v90 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)update:(id)update
{
  v41 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (accountsLogger_token != -1)
  {
    [QPAccountsManager nameToEmailAddresses];
  }

  v5 = accountsLogger_log;
  if (os_log_type_enabled(accountsLogger_log, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    name = [updateCopy name];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = name;
    _os_log_impl(&dword_1C6584000, v6, OS_LOG_TYPE_INFO, "QueryParserAccountsManager: start update AccountsManager based on %@ notification", &buf, 0xCu);
  }

  getMeCard = [(QPAccountsManager *)self getMeCard];
  meCard = self->_meCard;
  self->_meCard = getMeCard;

  nameToEmailAddresses = [(QPAccountsManager *)self nameToEmailAddresses];
  contentsArray = self->_contentsArray;
  p_contentsArray = &self->_contentsArray;
  *p_contentsArray = 0;

  if ([nameToEmailAddresses count])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy_;
    v39 = __Block_byref_object_dispose_;
    v40 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(nameToEmailAddresses, "count") + 1}];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(nameToEmailAddresses, "count")}];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(nameToEmailAddresses, "count")}];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __28__QPAccountsManager_update___block_invoke;
    v20[3] = &unk_1E8266598;
    v20[4] = &v27;
    v20[5] = &v21;
    v20[6] = &buf;
    [nameToEmailAddresses enumerateKeysAndObjectsUsingBlock:v20];
    v13 = *(*(&buf + 1) + 40);
    v14 = [v28[5] componentsJoinedByString:{@", "}];
    v35[0] = v14;
    v15 = [v22[5] componentsJoinedByString:{@", "}];
    v35[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    [v13 addObject:v16];

    objc_storeStrong(p_contentsArray, *(*(&buf + 1) + 40));
    if (accountsLogger_token != -1)
    {
      [QPAccountsManager nameToEmailAddresses];
    }

    v17 = accountsLogger_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      name2 = [updateCopy name];
      *v33 = 138412290;
      v34 = name2;
      _os_log_impl(&dword_1C6584000, v17, OS_LOG_TYPE_INFO, "QueryParserAccountsManager: end update AccountsManager based on %@ notification", v33, 0xCu);
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(&buf, 8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __28__QPAccountsManager_update___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = a2;
  v14 = [v5 arrayWithCapacity:5];
  [v14 addObject:v7];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v7];
  [*(*(a1[4] + 8) + 40) addObject:v8];
  [v14 addObject:v8];
  v9 = createStringFromSet(v6, @"%@", @"%@", @",");
  [*(*(a1[5] + 8) + 40) addObject:v9];
  [v14 addObject:v9];
  v10 = createStringFromSet(v6, @"(%@)", @"** == %@cdw", @" || ");
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(** == %@cdw)", v7];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@ || %@)", v10, v11];
  [v14 addObject:v12];
  v13 = [v6 allObjects];

  [v14 addObject:v13];
  [*(*(a1[6] + 8) + 40) addObject:v14];
}

- (id)getMeCard
{
  v82[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:self->_contactsConfiguration];
  v5 = *MEMORY[0x1E695C2F0];
  v82[0] = *MEMORY[0x1E695C240];
  v82[1] = v5;
  v6 = *MEMORY[0x1E695C208];
  v82[2] = *MEMORY[0x1E695C230];
  v82[3] = v6;
  v7 = *MEMORY[0x1E695C3A8];
  v82[4] = *MEMORY[0x1E695C330];
  v82[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:6];
  v75 = 0;
  v9 = [v4 _crossPlatformUnifiedMeContactWithKeysToFetch:v8 error:&v75];
  v10 = v75;

  if (v10)
  {
    if (accountsLogger_token != -1)
    {
      [QPAccountsManager nameToEmailAddresses];
    }

    v11 = accountsLogger_log;
    if (os_log_type_enabled(accountsLogger_log, OS_LOG_TYPE_ERROR))
    {
      [(QPAccountsManager *)v11 getMeCard];
    }
  }

  else
  {
    v60 = v4;
    array = [MEMORY[0x1E695DF70] array];
    givenName = [v9 givenName];
    v14 = [givenName length];

    if (v14)
    {
      givenName2 = [v9 givenName];
      [array addObject:givenName2];
    }

    middleName = [v9 middleName];
    v17 = [middleName length];

    if (v17)
    {
      middleName2 = [v9 middleName];
      [array addObject:middleName2];
    }

    familyName = [v9 familyName];
    v20 = [familyName length];

    if (v20)
    {
      familyName2 = [v9 familyName];
      [array addObject:familyName2];
    }

    v61 = v3;
    v58 = array;
    if ([array count])
    {
      v57 = [array componentsJoinedByString:@" "];
    }

    else
    {
      v57 = 0;
    }

    array2 = [MEMORY[0x1E695DF70] array];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    emailAddresses = [v9 emailAddresses];
    v24 = [emailAddresses countByEnumeratingWithState:&v71 objects:v81 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v72;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v72 != v26)
          {
            objc_enumerationMutation(emailAddresses);
          }

          value = [*(*(&v71 + 1) + 8 * i) value];
          [array2 addObject:value];
        }

        v25 = [emailAddresses countByEnumeratingWithState:&v71 objects:v81 count:16];
      }

      while (v25);
    }

    array3 = [MEMORY[0x1E695DF70] array];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    phoneNumbers = [v9 phoneNumbers];
    v31 = [phoneNumbers countByEnumeratingWithState:&v67 objects:v80 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v68;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v68 != v33)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          value2 = [*(*(&v67 + 1) + 8 * j) value];
          v36 = value2;
          if (value2)
          {
            stringValue = [value2 stringValue];
            [array3 addObject:stringValue];
          }
        }

        v32 = [phoneNumbers countByEnumeratingWithState:&v67 objects:v80 count:16];
      }

      while (v32);
    }

    v56 = array3;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v59 = v9;
    contactRelations = [v9 contactRelations];
    v39 = [contactRelations countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v64;
      do
      {
        v42 = 0;
        do
        {
          if (*v64 != v41)
          {
            objc_enumerationMutation(contactRelations);
          }

          v43 = *(*(&v63 + 1) + 8 * v42);
          if (v43)
          {
            label = [*(*(&v63 + 1) + 8 * v42) label];
            value3 = [v43 value];
            v46 = value3;
            if (value3)
            {
              name = [value3 name];
              if (name)
              {
                v48 = label;
                if ([v48 length])
                {
                  if (normalizeRelationLabelString_onceToken != -1)
                  {
                    [QPAccountsManager getMeCard];
                  }

                  v49 = [normalizeRelationLabelString_sRelationLabelsRegex stringByReplacingMatchesInString:v48 options:0 range:0 withTemplate:{objc_msgSend(v48, "length"), &stru_1F45E9EA0}];
                }

                else
                {
                  v49 = v48;
                }

                v50 = v49;

                if (v50)
                {
                  v51 = v50;
                }

                else
                {
                  v51 = &stru_1F45E9EA0;
                }

                [dictionary setObject:v51 forKeyedSubscript:name];
              }
            }
          }

          ++v42;
        }

        while (v40 != v42);
        v40 = [contactRelations countByEnumeratingWithState:&v63 objects:v79 count:16];
      }

      while (v40);
    }

    if (v57)
    {
      v77 = v57;
      v78 = @"me";
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      v76 = v57;
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
      v3 = v61;
      [v61 setObject:v53 forKeyedSubscript:@"personNames"];
    }

    else
    {
      v3 = v61;
      [v61 setObject:MEMORY[0x1E695E0F0] forKeyedSubscript:@"personNames"];
      v52 = MEMORY[0x1E695E0F8];
    }

    v10 = 0;
    v4 = v60;
    v9 = v59;
    [v3 setObject:v58 forKeyedSubscript:@"personSubNames"];
    [v3 setObject:array2 forKeyedSubscript:@"personEmails"];
    [v3 setObject:v56 forKeyedSubscript:@"personPhoneNumbers"];
    [v3 setObject:dictionary forKeyedSubscript:@"meCardRelationMap"];
    [v3 setObject:v52 forKeyedSubscript:@"personRelationMap"];
  }

  v54 = *MEMORY[0x1E69E9840];

  return v3;
}

@end