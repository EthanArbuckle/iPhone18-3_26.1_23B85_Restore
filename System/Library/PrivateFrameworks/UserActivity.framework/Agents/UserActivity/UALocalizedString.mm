@interface UALocalizedString
+ (id)localizedStringForKey:(id)key comment:(id)comment;
@end

@implementation UALocalizedString

+ (id)localizedStringForKey:(id)key comment:(id)comment
{
  keyCopy = key;
  v5 = sub_100001A30(@"Localization");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = keyCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Looking for localized string for key: %@", &v16, 0xCu);
  }

  v6 = +[UALocalizedString _UABundle];
  localizations = [v6 localizations];
  v8 = +[NSLocale preferredLanguages];
  v9 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v8];

  if ([v9 count])
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v6 pathForResource:@"Localizable" ofType:@"strings" inDirectory:@"." forLocalization:v10];
    v12 = [[NSDictionary alloc] initWithContentsOfFile:v11];
    v13 = [v12 objectForKey:keyCopy];
    if (!v13)
    {
      v14 = sub_100001A30(@"Localization");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Falling back to NSLocalizedString", &v16, 2u);
      }

      v13 = [v6 localizedStringForKey:keyCopy value:&stru_1000C67D0 table:@"Localizable"];
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  return v13;
}

@end