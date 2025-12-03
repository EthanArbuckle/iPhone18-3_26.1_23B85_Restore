@interface PRPreferences
+ (PRPreferences)sharedPreferences;
- (BOOL)isAlternateCalendarEnabled;
@end

@implementation PRPreferences

+ (PRPreferences)sharedPreferences
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PRPreferences_sharedPreferences__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedPreferences_once != -1)
  {
    dispatch_once(&sharedPreferences_once, block);
  }

  v2 = sharedPreferences_sharedPreferences;

  return v2;
}

uint64_t __34__PRPreferences_sharedPreferences__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedPreferences_sharedPreferences;
  sharedPreferences_sharedPreferences = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (BOOL)isAlternateCalendarEnabled
{
  mEMORY[0x1E6993468] = [MEMORY[0x1E6993468] sharedPreferences];
  overlayCalendarID = [mEMORY[0x1E6993468] overlayCalendarID];
  v4 = [overlayCalendarID length] != 0;

  return v4;
}

@end