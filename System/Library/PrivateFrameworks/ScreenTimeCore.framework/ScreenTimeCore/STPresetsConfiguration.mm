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
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v2 numberWithInteger:{objc_msgSend(standardUserDefaults, "integerForKey:", @"AllowedAppStoreRating"}];

  return v4;
}

- (BOOL)isBooksAllowed
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"BooksAllowed"];

  return v3;
}

- (NSNumber)allowedTVRating
{
  v2 = MEMORY[0x1E696AD98];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v2 numberWithInteger:{objc_msgSend(standardUserDefaults, "integerForKey:", @"AllowedTVRating"}];

  return v4;
}

- (NSNumber)allowedMovieRating
{
  v2 = MEMORY[0x1E696AD98];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v2 numberWithInteger:{objc_msgSend(standardUserDefaults, "integerForKey:", @"AllowedMovieRating"}];

  return v4;
}

- (BOOL)isExplicitMediaAllowed
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"ExplicitMediaAllowed"];

  return v3;
}

- (BOOL)areMusicVideosAllowed
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"MusicVideosAllowed"];

  return v3;
}

- (BOOL)areMusicProfilesAllowed
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"MusicProfilesAllowed"];

  return v3;
}

- (int64_t)allowedWebContent
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"AllowedWebContent"];

  return v3;
}

- (BOOL)isSiriWebSearchAllowed
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"SiriWebSearchAllowed"];

  return v3;
}

- (BOOL)isSiriExplicitAllowed
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"SiriExplicitAllowed"];

  return v3;
}

- (BOOL)isDeletingAppsAllowed
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"DeletingAppsAllowed"];

  return v3;
}

@end