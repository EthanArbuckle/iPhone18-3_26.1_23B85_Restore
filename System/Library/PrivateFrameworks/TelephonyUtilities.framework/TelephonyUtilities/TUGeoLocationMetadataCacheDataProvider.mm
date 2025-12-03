@interface TUGeoLocationMetadataCacheDataProvider
- (TUGeoLocationMetadataCacheDataProvider)init;
- (id)locationForMetadataIdentifier:(id)identifier;
- (void)updateCacheWithDestinationIDs:(id)ds withGroup:(id)group;
@end

@implementation TUGeoLocationMetadataCacheDataProvider

- (TUGeoLocationMetadataCacheDataProvider)init
{
  v8.receiver = self;
  v8.super_class = TUGeoLocationMetadataCacheDataProvider;
  v2 = [(TUMetadataCacheDataProvider *)&v8 init];
  if (v2 && PhoneNumberResolverLibraryCore())
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getPNRPhoneNumberResolverClass_softClass;
    v13 = getPNRPhoneNumberResolverClass_softClass;
    if (!getPNRPhoneNumberResolverClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getPNRPhoneNumberResolverClass_block_invoke;
      v9[3] = &unk_1E7424CD8;
      v9[4] = &v10;
      __getPNRPhoneNumberResolverClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    phoneNumberResolver = v2->_phoneNumberResolver;
    v2->_phoneNumberResolver = v5;
  }

  return v2;
}

- (id)locationForMetadataIdentifier:(id)identifier
{
  handle = [identifier handle];
  normalizedValue = [handle normalizedValue];

  if ([normalizedValue pn_hasInternationalDirectDialingPrefix])
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    countryCode = [currentLocale countryCode];
    lowercaseString = [countryCode lowercaseString];

    phoneNumberResolver = [(TUGeoLocationMetadataCacheDataProvider *)self phoneNumberResolver];
    v14 = 0;
    v10 = [phoneNumberResolver resolvePhoneNumber:normalizedValue countryCode:lowercaseString error:&v14];
    v11 = v14;

    if (v11)
    {
      v12 = TUDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(TUGeoLocationMetadataCacheDataProvider *)normalizedValue locationForMetadataIdentifier:v11, v12];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateCacheWithDestinationIDs:(id)ds withGroup:(id)group
{
  v21 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  groupCopy = group;
  dispatch_group_enter(groupCopy);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [(TUGeoLocationMetadataCacheDataProvider *)self locationForMetadataIdentifier:v13, v16];
        if (v14)
        {
          [(TUMetadataCacheDataProvider *)self setObject:v14 forDestinationID:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  dispatch_group_leave(groupCopy);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)locationForMetadataIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1956FD000, log, OS_LOG_TYPE_ERROR, "Resolving %@ to a geographic location failed with error %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end