@interface PUPhotoEditAppearancePreference
+ (id)_identifierForAppearance:(int64_t)appearance;
+ (int64_t)preferredAppearance;
+ (void)setPreferredAppearance:(int64_t)appearance;
@end

@implementation PUPhotoEditAppearancePreference

+ (id)_identifierForAppearance:(int64_t)appearance
{
  v3 = @"PUPhotoEditAppearanceSystem";
  if (appearance == 1)
  {
    v3 = @"PUPhotoEditAppearanceDark";
  }

  if (appearance == 2)
  {
    return @"PUPhotoEditAppearanceLight";
  }

  else
  {
    return v3;
  }
}

+ (void)setPreferredAppearance:(int64_t)appearance
{
  v4 = [self _identifierForAppearance:appearance];
  v3 = +[PUPhotoEditAppearancePreference _userDefaults];
  [v3 setObject:v4 forKey:@"PUPhotoEditAppearanceKey"];
}

+ (int64_t)preferredAppearance
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = +[PUPhotoEditAppearancePreference _userDefaults];
  v4 = [v3 stringForKey:@"PUPhotoEditAppearanceKey"];

  if (!v4)
  {
    v4 = [self _identifierForAppearance:0];
  }

  v5 = 0;
  while (1)
  {
    v6 = [self _identifierForAppearance:v5];
    v7 = [v6 isEqualToString:v4];

    if (v7)
    {
      break;
    }

    if (++v5 == 3)
    {
      v8 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Failed to restore edit appearance preference with identifier %@", &v10, 0xCu);
      }

      v5 = 1;
      break;
    }
  }

  return v5;
}

@end