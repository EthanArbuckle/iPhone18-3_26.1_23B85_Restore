@interface CSDFocusStateManager
+ (CSDFocusStateManager)sharedManager;
- (BOOL)contactInDeniedContactsList:(id)list;
- (CSDFocusStateManager)init;
- (DNDConfiguration)dndConfiguration;
- (DNDStateService)dndStateService;
- (id)dndContactHandleForAddress:(id)address;
- (void)dealloc;
@end

@implementation CSDFocusStateManager

+ (CSDFocusStateManager)sharedManager
{
  if (qword_1006ACAD8 != -1)
  {
    sub_10047167C();
  }

  v3 = qword_1006ACAD0;

  return v3;
}

- (CSDFocusStateManager)init
{
  v5.receiver = self;
  v5.super_class = CSDFocusStateManager;
  v2 = [(CSDFocusStateManager *)&v5 init];
  if (v2)
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CSDFocusStateManager init: %p", buf, 0xCu);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CSDFocusStateManager dealloc: %p", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CSDFocusStateManager;
  [(CSDFocusStateManager *)&v4 dealloc];
}

- (DNDStateService)dndStateService
{
  dndStateService = self->_dndStateService;
  if (!dndStateService)
  {
    v4 = [CUTWeakLinkClass() serviceForClientIdentifier:@"com.apple.TelephonyUtilities"];
    v5 = self->_dndStateService;
    self->_dndStateService = v4;

    dndStateService = self->_dndStateService;
  }

  return dndStateService;
}

- (DNDConfiguration)dndConfiguration
{
  dndStateService = [(CSDFocusStateManager *)self dndStateService];
  v12 = 0;
  v4 = [dndStateService queryCurrentStateWithError:&v12];
  v5 = v12;

  dndState = sub_100004778();
  v7 = os_log_type_enabled(dndState, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v4 == 0;
  }

  if (v8)
  {
    if (v7)
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, dndState, OS_LOG_TYPE_DEFAULT, "simFocus: Error querying DND state: %@", buf, 0xCu);
    }

    configuration = 0;
  }

  else
  {
    if (v7)
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, dndState, OS_LOG_TYPE_DEFAULT, "simFocus: DND state is: %@", buf, 0xCu);
    }

    [(CSDFocusStateManager *)self setDndState:v4];
    dndState = [(CSDFocusStateManager *)self dndState];
    activeModeConfiguration = [dndState activeModeConfiguration];
    configuration = [activeModeConfiguration configuration];
  }

  return configuration;
}

- (BOOL)contactInDeniedContactsList:(id)list
{
  listCopy = list;
  dndConfiguration = [(CSDFocusStateManager *)self dndConfiguration];
  v6 = dndConfiguration;
  if (dndConfiguration && ([dndConfiguration senderConfiguration], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    senderConfiguration = [v6 senderConfiguration];
    deniedContacts = [senderConfiguration deniedContacts];

    v10 = [deniedContacts count];
    v11 = sub_100004778();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 138412290;
        v25 = listCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "simFocus: check if contact (%@) is in denied list", buf, 0xCu);
      }

      v11 = [(CSDFocusStateManager *)self dndContactHandleForAddress:listCopy];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v13 = deniedContacts;
      v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v14)
      {
        v15 = *v20;
        while (2)
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v13);
            }

            if ([*(*(&v19 + 1) + 8 * i) matchesContactHandle:{v11, v19}])
            {
              LODWORD(v14) = 1;
              goto LABEL_19;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:

      v17 = sub_100004778();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v25) = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "simFocus: contactInDeniedList : %d", buf, 8u);
      }
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "simFocus: no contacts in denied list", buf, 2u);
      }

      LOBYTE(v14) = 0;
    }
  }

  else
  {
    deniedContacts = sub_100004778();
    if (os_log_type_enabled(deniedContacts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, deniedContacts, OS_LOG_TYPE_DEFAULT, "simFocus: dndConfiguration is nil", buf, 2u);
    }

    LOBYTE(v14) = 0;
  }

  return v14;
}

- (id)dndContactHandleForAddress:(id)address
{
  addressCopy = address;
  v4 = objc_alloc_init(DNDMutableContactHandle);
  [v4 setValue:addressCopy];

  [v4 setType:2];
  v5 = [v4 copy];

  return v5;
}

@end