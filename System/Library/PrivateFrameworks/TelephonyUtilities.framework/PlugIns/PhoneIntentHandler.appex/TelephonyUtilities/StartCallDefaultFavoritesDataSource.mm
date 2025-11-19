@interface StartCallDefaultFavoritesDataSource
- (BOOL)hasFavoritesEntryForContact:(id)a3;
- (BOOL)hasFavoritesEntryForTelephonyCallWithPhoneNumber:(id)a3 isoCountryCodes:(id)a4;
- (CNFavorites)favoritesController;
- (StartCallDefaultFavoritesDataSource)initWithCallCenter:(id)a3;
@end

@implementation StartCallDefaultFavoritesDataSource

- (StartCallDefaultFavoritesDataSource)initWithCallCenter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = StartCallDefaultFavoritesDataSource;
  v6 = [(StartCallDefaultFavoritesDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callCenter, a3);
  }

  return v7;
}

- (CNFavorites)favoritesController
{
  favoritesController = self->_favoritesController;
  if (!favoritesController)
  {
    v4 = [CNFavorites alloc];
    v5 = [(TUCallCenter *)self->_callCenter contactStore];
    v6 = [v4 initWithContactStore:v5];
    v7 = self->_favoritesController;
    self->_favoritesController = v6;

    favoritesController = self->_favoritesController;
  }

  return favoritesController;
}

- (BOOL)hasFavoritesEntryForContact:(id)a3
{
  v4 = a3;
  v5 = [(StartCallDefaultFavoritesDataSource *)self favoritesController];
  v6 = [v5 entriesForContact:v4];

  LOBYTE(v5) = [v6 count] != 0;
  return v5;
}

- (BOOL)hasFavoritesEntryForTelephonyCallWithPhoneNumber:(id)a3 isoCountryCodes:(id)a4
{
  v34 = a3;
  v6 = a4;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = [(StartCallDefaultFavoritesDataSource *)self favoritesController];
  v8 = [v7 entries];

  v9 = [v8 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = v9;
  v11 = *v40;
  v32 = CNActionBundleIdentifierPhone;
  v33 = CNActionTypeAudioCall;
  v28 = v8;
  v29 = v6;
  v30 = *v40;
  do
  {
    v12 = 0;
    v31 = v10;
    do
    {
      if (*v40 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v39 + 1) + 8 * v12);
      v14 = [v13 actionType];
      if ([v33 isEqualToString:v14])
      {
        v15 = [v13 bundleIdentifier];
        v16 = [v32 isEqualToString:v15];

        if (!v16)
        {
          goto LABEL_27;
        }

        v14 = [v13 contactProperty];
        v17 = [v14 value];
        if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v18 = [v17 stringValue];
          if ([v18 length])
          {
            v19 = [[TUHandle alloc] initWithType:2 value:v18];
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v20 = v6;
            v21 = [v20 countByEnumeratingWithState:&v35 objects:v45 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v36;
              while (2)
              {
                for (i = 0; i != v22; i = i + 1)
                {
                  if (*v36 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  if ([v19 isCanonicallyEqualToHandle:v34 isoCountryCode:*(*(&v35 + 1) + 8 * i)])
                  {
                    v26 = IntentHandlerDefaultLog();
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v44 = v13;
                      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Found a favorites entry matching handle: %@", buf, 0xCu);
                    }

                    v25 = 1;
                    v8 = v28;
                    v6 = v29;
                    goto LABEL_33;
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v35 objects:v45 count:16];
                if (v22)
                {
                  continue;
                }

                break;
              }
            }

            v8 = v28;
            v6 = v29;
          }

          else
          {
            v19 = IntentHandlerDefaultLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v44 = v13;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring favorite for telephony call with an empty phone number: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v18 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v44 = v13;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring favorite for telephony call without a phone number: %@", buf, 0xCu);
          }
        }

        v11 = v30;
        v10 = v31;
      }

LABEL_27:
      v12 = v12 + 1;
    }

    while (v12 != v10);
    v10 = [v8 countByEnumeratingWithState:&v39 objects:v46 count:16];
  }

  while (v10);
LABEL_29:
  v25 = 0;
LABEL_33:

  return v25;
}

@end