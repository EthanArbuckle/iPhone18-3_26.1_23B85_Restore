@interface CNFavoritesEntry(TelephonyUI)
- (id)localizedBundleName;
- (id)localizedContactPropertyLabel;
- (void)localizedBundleName;
@end

@implementation CNFavoritesEntry(TelephonyUI)

- (id)localizedBundleName
{
  v2 = [a1 bundleIdentifier];
  if ([v2 isEqualToString:*MEMORY[0x1E695C140]])
  {
    v3 = [a1 localizedContactPropertyLabel];
  }

  else
  {
    v10 = 0;
    v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v2 allowPlaceholder:0 error:&v10];
    v5 = v10;
    v6 = v5;
    if (v4)
    {
      v3 = [v4 localizedName];
    }

    else
    {
      if (v5)
      {
        v7 = TPDefaultLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(CNFavoritesEntry(TelephonyUI) *)v2 localizedBundleName];
        }
      }

      v3 = 0;
    }
  }

  if (![v3 length])
  {
    v8 = [a1 localizedContactPropertyLabel];

    v3 = v8;
  }

  return v3;
}

- (id)localizedContactPropertyLabel
{
  v2 = [a1 contactProperty];
  v3 = [v2 key];

  if (v3)
  {
    v4 = MEMORY[0x1E695CEE0];
    v5 = [a1 contactProperty];
    v6 = [v5 label];
    v7 = [v4 localizedDisplayStringForLabel:v6 propertyName:v3];
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
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B4894000, log, OS_LOG_TYPE_ERROR, "Attempt to obtain application record for bundle identifier %@ failed with error %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end