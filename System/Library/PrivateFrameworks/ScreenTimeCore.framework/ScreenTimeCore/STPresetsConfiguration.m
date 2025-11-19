@interface STPresetsConfiguration
- (BOOL)areMusicProfilesAllowed;
- (BOOL)areMusicVideosAllowed;
- (BOOL)isBooksAllowed;
- (BOOL)isDeletingAppsAllowed;
- (BOOL)isExplicitMediaAllowed;
- (BOOL)isSiriExplicitAllowed;
- (BOOL)isSiriWebSearchAllowed;
- (NSNumber)allowedAppStoreRating;
- (NSNumber)allowedMovieRating;
- (NSNumber)allowedTVRating;
- (int64_t)allowedWebContent;
@end

@implementation STPresetsConfiguration

- (NSNumber)allowedAppStoreRating
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v2 numberWithInteger:{objc_msgSend(v3, "integerForKey:", @"AllowedAppStoreRating"}];

  return v4;
}

- (BOOL)isBooksAllowed
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BooksAllowed"];

  return v3;
}

- (NSNumber)allowedTVRating
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v2 numberWithInteger:{objc_msgSend(v3, "integerForKey:", @"AllowedTVRating"}];

  return v4;
}

- (NSNumber)allowedMovieRating
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v2 numberWithInteger:{objc_msgSend(v3, "integerForKey:", @"AllowedMovieRating"}];

  return v4;
}

- (BOOL)isExplicitMediaAllowed
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"ExplicitMediaAllowed"];

  return v3;
}

- (BOOL)areMusicVideosAllowed
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"MusicVideosAllowed"];

  return v3;
}

- (BOOL)areMusicProfilesAllowed
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"MusicProfilesAllowed"];

  return v3;
}

- (int64_t)allowedWebContent
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 integerForKey:@"AllowedWebContent"];

  return v3;
}

- (BOOL)isSiriWebSearchAllowed
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"SiriWebSearchAllowed"];

  return v3;
}

- (BOOL)isSiriExplicitAllowed
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"SiriExplicitAllowed"];

  return v3;
}

- (BOOL)isDeletingAppsAllowed
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DeletingAppsAllowed"];

  return v3;
}

@end