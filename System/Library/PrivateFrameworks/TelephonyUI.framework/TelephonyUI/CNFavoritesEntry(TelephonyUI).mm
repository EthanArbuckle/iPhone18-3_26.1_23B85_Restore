@interface CNFavoritesEntry(TelephonyUI)
- (id)localizedBundleName;
- (id)localizedContactPropertyLabel;
- (void)localizedBundleName;
@end

@implementation CNFavoritesEntry(TelephonyUI)

- (id)localizedBundleName
{
  bundleIdentifier = [self bundleIdentifier];
  if ([bundleIdentifier isEqualToString:*MEMORY[0x1E695C140]])
  {
    localizedContactPropertyLabel = [self localizedContactPropertyLabel];
  }

  else
  {
    v10 = 0;
    v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v10];
    v5 = v10;
    v6 = v5;
    if (v4)
    {
      localizedContactPropertyLabel = [v4 localizedName];
    }

    else
    {
      if (v5)
      {
        v7 = TPDefaultLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(CNFavoritesEntry(TelephonyUI) *)bundleIdentifier localizedBundleName];
        }
      }

      localizedContactPropertyLabel = 0;
    }
  }

  if (![localizedContactPropertyLabel length])
  {
    localizedContactPropertyLabel2 = [self localizedContactPropertyLabel];

    localizedContactPropertyLabel = localizedContactPropertyLabel2;
  }

  return localizedContactPropertyLabel;
}

- (id)localizedContactPropertyLabel
{
  contactProperty = [self contactProperty];
  v3 = [contactProperty key];

  if (v3)
  {
    v4 = MEMORY[0x1E695CEE0];
    contactProperty2 = [self contactProperty];
    label = [contactProperty2 label];
    v7 = [v4 localizedDisplayStringForLabel:label propertyName:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)localizedBundleName
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B4894000, log, OS_LOG_TYPE_ERROR, "Attempt to obtain application record for bundle identifier %@ failed with error %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end