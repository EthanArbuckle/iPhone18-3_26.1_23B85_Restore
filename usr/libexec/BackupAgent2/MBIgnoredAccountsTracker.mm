@interface MBIgnoredAccountsTracker
+ (BOOL)_isEnterpriseAccount:(id)account;
- (BOOL)addAccountWithDSID:(id)d;
- (BOOL)isIgnoredAppleID:(id)d;
- (MBIgnoredAccountsTracker)init;
@end

@implementation MBIgnoredAccountsTracker

- (MBIgnoredAccountsTracker)init
{
  v12.receiver = self;
  v12.super_class = MBIgnoredAccountsTracker;
  v2 = [(MBIgnoredAccountsTracker *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    allowedDSIDs = v2->_allowedDSIDs;
    v2->_allowedDSIDs = v3;

    v5 = objc_opt_new();
    ignoredDSIDs = v2->_ignoredDSIDs;
    v2->_ignoredDSIDs = v5;

    v7 = objc_opt_new();
    ignoredAppleIDs = v2->_ignoredAppleIDs;
    v2->_ignoredAppleIDs = v7;

    v9 = objc_opt_new();
    allowedAppleIDs = v2->_allowedAppleIDs;
    v2->_allowedAppleIDs = v9;
  }

  return v2;
}

+ (BOOL)_isEnterpriseAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    sub_10009E218();
  }

  v4 = accountCopy;
  if (![accountCopy aa_isManagedAppleID])
  {
    personaIdentifier = [v4 personaIdentifier];
    if (personaIdentifier)
    {
      v7 = [UMUserPersonaAttributes personaAttributesForPersonaUniqueString:personaIdentifier];
      v6 = v7 != 0;
      v8 = MBGetDefaultLog();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (!v7)
      {
        if (v9)
        {
          *buf = 138543362;
          v13 = personaIdentifier;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to fetch the persona attributes for persona %{public}@", buf, 0xCu);
          goto LABEL_19;
        }

LABEL_20:

        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 138543618;
        v13 = personaIdentifier;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetched the attributes for persona %{public}@: %@", buf, 0x16u);
        _MBLog();
      }

      userPersonaUniqueString = [v7 userPersonaUniqueString];
      if (([personaIdentifier isEqualToString:userPersonaUniqueString]& 1) == 0)
      {
        sub_10009E1EC();
      }

      if ([v7 isEnterprisePersona])
      {
        v8 = MBGetDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v13 = personaIdentifier;
          v14 = 2112;
          v15 = v4;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found an enterprise persona (%@) for account %@", buf, 0x16u);
LABEL_19:
          _MBLog();
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Found nil personaIdentifier for %@", buf, 0xCu);
        _MBLog();
      }
    }

    v6 = 0;
LABEL_21:

    goto LABEL_22;
  }

  personaIdentifier = MBGetDefaultLog();
  if (os_log_type_enabled(personaIdentifier, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, personaIdentifier, OS_LOG_TYPE_DEFAULT, "Account is marked as managed %@", buf, 0xCu);
    _MBLog();
  }

  v6 = 1;
LABEL_22:

  return v6;
}

- (BOOL)addAccountWithDSID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy && ([dCopy isEqualToNumber:&off_1001093F8] & 1) == 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(NSMutableSet *)selfCopy->_ignoredDSIDs containsObject:v5])
    {
      objc_sync_exit(selfCopy);

      v6 = 0;
      goto LABEL_4;
    }

    v9 = [(NSMutableSet *)selfCopy->_allowedDSIDs containsObject:v5];
    objc_sync_exit(selfCopy);

    if ((v9 & 1) == 0)
    {
      v10 = +[ACAccountStore defaultStore];
      stringValue = [v5 stringValue];
      v12 = [v10 aa_appleAccountWithPersonID:stringValue];

      if (v12)
      {
        username = [v12 username];
        v14 = [objc_opt_class() _isEnterpriseAccount:v12];
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          if (v14)
          {
            v16 = "Ignoring";
          }

          else
          {
            v16 = "Found";
          }

          v23 = v16;
          v24 = 2112;
          v25 = username;
          v26 = 2112;
          v27 = v5;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s account: %@/%@", buf, 0x20u);
          v20 = username;
          v21 = v5;
          v19 = v16;
          _MBLog();
        }

        v17 = selfCopy;
        objc_sync_enter(v17);
        if (v14)
        {
          [(NSMutableSet *)selfCopy->_ignoredDSIDs addObject:v5];
          if (username)
          {
            [v17[4] addObject:username];
          }

          v6 = 0;
LABEL_24:
          objc_sync_exit(selfCopy);

          goto LABEL_4;
        }
      }

      else
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = v5;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "No account found for %@", buf, 0xCu);
          v19 = v5;
          _MBLog();
        }

        objc_sync_enter(selfCopy);
        username = 0;
      }

      [(NSMutableSet *)selfCopy->_allowedDSIDs addObject:v5, v19, v20, v21];
      if (username)
      {
        [(NSMutableSet *)selfCopy->_allowedAppleIDs addObject:username];
      }

      v6 = 1;
      goto LABEL_24;
    }
  }

  v6 = 1;
LABEL_4:

  return v6;
}

- (BOOL)isIgnoredAppleID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableSet *)selfCopy->_ignoredAppleIDs containsObject:dCopy];
    if ((v6 & 1) == 0)
    {
      [(NSMutableSet *)selfCopy->_allowedAppleIDs containsObject:dCopy];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end