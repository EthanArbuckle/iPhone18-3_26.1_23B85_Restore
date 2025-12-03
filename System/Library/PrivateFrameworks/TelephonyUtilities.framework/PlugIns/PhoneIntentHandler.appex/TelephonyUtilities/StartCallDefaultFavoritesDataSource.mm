@interface StartCallDefaultFavoritesDataSource
- (BOOL)hasFavoritesEntryForContact:(id)contact;
- (BOOL)hasFavoritesEntryForTelephonyCallWithPhoneNumber:(id)number isoCountryCodes:(id)codes;
- (CNFavorites)favoritesController;
- (StartCallDefaultFavoritesDataSource)initWithCallCenter:(id)center;
@end

@implementation StartCallDefaultFavoritesDataSource

- (StartCallDefaultFavoritesDataSource)initWithCallCenter:(id)center
{
  centerCopy = center;
  v9.receiver = self;
  v9.super_class = StartCallDefaultFavoritesDataSource;
  v6 = [(StartCallDefaultFavoritesDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callCenter, center);
  }

  return v7;
}

- (CNFavorites)favoritesController
{
  favoritesController = self->_favoritesController;
  if (!favoritesController)
  {
    v4 = [CNFavorites alloc];
    contactStore = [(TUCallCenter *)self->_callCenter contactStore];
    v6 = [v4 initWithContactStore:contactStore];
    v7 = self->_favoritesController;
    self->_favoritesController = v6;

    favoritesController = self->_favoritesController;
  }

  return favoritesController;
}

- (BOOL)hasFavoritesEntryForContact:(id)contact
{
  contactCopy = contact;
  favoritesController = [(StartCallDefaultFavoritesDataSource *)self favoritesController];
  v6 = [favoritesController entriesForContact:contactCopy];

  LOBYTE(favoritesController) = [v6 count] != 0;
  return favoritesController;
}

- (BOOL)hasFavoritesEntryForTelephonyCallWithPhoneNumber:(id)number isoCountryCodes:(id)codes
{
  numberCopy = number;
  codesCopy = codes;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  favoritesController = [(StartCallDefaultFavoritesDataSource *)self favoritesController];
  entries = [favoritesController entries];

  v9 = [entries countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = v9;
  v11 = *v40;
  v32 = CNActionBundleIdentifierPhone;
  v33 = CNActionTypeAudioCall;
  v28 = entries;
  v29 = codesCopy;
  v30 = *v40;
  do
  {
    v12 = 0;
    v31 = v10;
    do
    {
      if (*v40 != v11)
      {
        objc_enumerationMutation(entries);
      }

      v13 = *(*(&v39 + 1) + 8 * v12);
      actionType = [v13 actionType];
      if ([v33 isEqualToString:actionType])
      {
        bundleIdentifier = [v13 bundleIdentifier];
        v16 = [v32 isEqualToString:bundleIdentifier];

        if (!v16)
        {
          goto LABEL_27;
        }

        actionType = [v13 contactProperty];
        value = [actionType value];
        if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          stringValue = [value stringValue];
          if ([stringValue length])
          {
            v19 = [[TUHandle alloc] initWithType:2 value:stringValue];
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v20 = codesCopy;
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

                  if ([v19 isCanonicallyEqualToHandle:numberCopy isoCountryCode:*(*(&v35 + 1) + 8 * i)])
                  {
                    v26 = IntentHandlerDefaultLog();
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v44 = v13;
                      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Found a favorites entry matching handle: %@", buf, 0xCu);
                    }

                    v25 = 1;
                    entries = v28;
                    codesCopy = v29;
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

            entries = v28;
            codesCopy = v29;
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
          stringValue = IntentHandlerDefaultLog();
          if (os_log_type_enabled(stringValue, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v44 = v13;
            _os_log_impl(&_mh_execute_header, stringValue, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring favorite for telephony call without a phone number: %@", buf, 0xCu);
          }
        }

        v11 = v30;
        v10 = v31;
      }

LABEL_27:
      v12 = v12 + 1;
    }

    while (v12 != v10);
    v10 = [entries countByEnumeratingWithState:&v39 objects:v46 count:16];
  }

  while (v10);
LABEL_29:
  v25 = 0;
LABEL_33:

  return v25;
}

@end