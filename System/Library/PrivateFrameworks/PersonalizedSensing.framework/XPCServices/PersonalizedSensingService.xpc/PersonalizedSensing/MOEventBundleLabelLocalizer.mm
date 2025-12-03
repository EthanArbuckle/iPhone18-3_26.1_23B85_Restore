@interface MOEventBundleLabelLocalizer
+ (BOOL)internalInstall;
+ (BOOL)isPreferredLanguageMidSentenceCaseCapable;
+ (BOOL)isPreferredLanguageNounCap;
+ (BOOL)isPreferredLanguageTitlecaseCapable;
+ (id)_MomentsBundle;
+ (id)_MomentsDefaultLanguageBundle;
+ (id)_Moments_AllCapitalizedStringForKey:(id)key;
+ (id)_Moments_CapitalizedStringForKey:(id)key;
+ (id)_Moments_LocalizedNounForKey:(id)key;
+ (id)_Moments_LocalizedStringForKey:(id)key withTable:(id)table;
+ (id)_Moments_LocalizedStringWithFormat:(id)format arguments:(id)arguments;
+ (id)_Moments_LowercaseNounForKey:(id)key;
+ (id)_Moments_TitleCapitalizedStringForKey:(id)key;
+ (id)__Moments_TitleCapitalizedStringForKey:(id)key;
+ (id)preferredLocalization;
@end

@implementation MOEventBundleLabelLocalizer

+ (id)_MomentsBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

+ (id)_MomentsDefaultLanguageBundle
{
  v2 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  v3 = [v2 pathForResource:@"en" ofType:@"lproj"];
  v4 = [NSBundle bundleWithPath:v3];

  return v4;
}

+ (id)preferredLocalization
{
  v2 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  preferredLocalizations = [v2 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  if (!firstObject)
  {
    v5 = +[MOEventBundleLabelLocalizer _MomentsDefaultLanguageBundle];

    preferredLocalizations2 = [v5 preferredLocalizations];
    firstObject = [preferredLocalizations2 firstObject];

    v2 = v5;
  }

  return firstObject;
}

+ (BOOL)isPreferredLanguageNounCap
{
  v2 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  preferredLocalizations = [v2 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  LOBYTE(preferredLocalizations) = [firstObject isEqualToString:@"de"];
  return preferredLocalizations;
}

+ (BOOL)isPreferredLanguageTitlecaseCapable
{
  v2 = [NSSet setWithArray:&off_1000C9B68];
  v3 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  preferredLocalizations = [v3 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  LOBYTE(preferredLocalizations) = [v2 containsObject:firstObject];
  return preferredLocalizations;
}

+ (BOOL)isPreferredLanguageMidSentenceCaseCapable
{
  v2 = [NSSet setWithArray:&off_1000C9B80];
  v3 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  preferredLocalizations = [v3 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  LOBYTE(preferredLocalizations) = [v2 containsObject:firstObject];
  return preferredLocalizations ^ 1;
}

+ (id)_Moments_LocalizedNounForKey:(id)key
{
  v3 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:key];
  if (+[MOEventBundleLabelLocalizer isPreferredLanguageNounCap])
  {
    v4 = [MOEventBundleLabelLocalizer __Moments_TitleCapitalizedStringForKey:v3];

    v3 = v4;
  }

  return v3;
}

+ (id)_Moments_LocalizedStringForKey:(id)key withTable:(id)table
{
  keyCopy = key;
  tableCopy = table;
  if (keyCopy)
  {
    if ([keyCopy length])
    {
      v7 = +[MOEventBundleLabelLocalizer _MomentsBundle];
      v8 = [v7 localizedStringForKey:keyCopy value:@"_Key_Not_Found_" table:tableCopy];
      if ([@"_Key_Not_Found_" isEqualToString:v8])
      {
        v9 = +[MOEventBundleLabelLocalizer _MomentsDefaultLanguageBundle];
        v10 = [v9 localizedStringForKey:keyCopy value:@"_Key_Not_Found_" table:tableCopy];
        v11 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v17 = 138412802;
          v18 = keyCopy;
          v19 = 2112;
          v20 = v9;
          v21 = 2112;
          v22 = v10;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MOEventBundleLabelLocalizer key is not found, key, %@, default language bundle, %@, default localized string, %@", &v17, 0x20u);
        }

        v12 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(MOEventBundleLabelLocalizer *)keyCopy _Moments_LocalizedStringForKey:v7 withTable:v12];
        }

        if ([@"_Key_Not_Found_" isEqualToString:v8])
        {
          v13 = keyCopy;

          v10 = v13;
        }

        else if (!v10)
        {
          v10 = keyCopy;
        }
      }

      else
      {
        v15 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:keyCopy withTable:v8];
        }

        v10 = v8;
      }
    }

    else
    {
      v10 = keyCopy;
    }
  }

  else
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v14 withTable:?];
    }

    v10 = 0;
  }

  return v10;
}

+ (id)_Moments_LocalizedStringWithFormat:(id)format arguments:(id)arguments
{
  formatCopy = format;
  argumentsCopy = arguments;
  if (!formatCopy)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormat initWithFormat:v7 capitalizationType:?];
    }

    goto LABEL_25;
  }

  v7 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:formatCopy];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleLabelLocalizer _Moments_LocalizedStringWithFormat:v7 arguments:argumentsCopy];
  }

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleLabelLocalizer _Moments_LocalizedStringWithFormat:v7 arguments:argumentsCopy];
  }

  if (!v7)
  {
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelLocalizer _Moments_LocalizedStringWithFormat:formatCopy arguments:v21];
    }

LABEL_25:
    v19 = 0;
    goto LABEL_30;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = argumentsCopy;
  v10 = argumentsCopy;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * v14);
        v16 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [(MOEventBundleLabelLocalizer *)v29 _Moments_LocalizedStringWithFormat:v15 arguments:&v30, v16];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v12);
  }

  if ([v10 count])
  {
    v17 = [v10 count];
    v18 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", 8 * [v10 count]);
    [v10 getObjects:objc_msgSend(v18 range:{"mutableBytes"), 0, v17}];
    v19 = [[NSString alloc] initWithFormat:v7 arguments:objc_msgSend(v18, "mutableBytes")];
    v20 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [MOEventBundleLabelLocalizer _Moments_LocalizedStringWithFormat:v19 arguments:?];
    }
  }

  else
  {
    v22 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [MOEventBundleLabelLocalizer _Moments_LocalizedStringWithFormat:v7 arguments:v22];
    }

    v7 = v7;
    v19 = v7;
  }

  argumentsCopy = v24;
LABEL_30:

  return v19;
}

+ (id)_Moments_CapitalizedStringForKey:(id)key
{
  keyCopy = key;
  v4 = keyCopy;
  if (keyCopy && [keyCopy length])
  {
    v5 = v4;
    if ([v5 length] > 1)
    {
      v7 = [v5 substringToIndex:1];
      uppercaseString = [v7 uppercaseString];
      v9 = [v5 substringFromIndex:1];
      localizedCapitalizedString = [uppercaseString stringByAppendingString:v9];

      v5 = v7;
    }

    else
    {
      localizedCapitalizedString = [v5 localizedCapitalizedString];
    }
  }

  else
  {
    localizedCapitalizedString = 0;
  }

  return localizedCapitalizedString;
}

+ (id)_Moments_TitleCapitalizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (keyCopy && [keyCopy length])
  {
    if ([self isPreferredLanguageTitlecaseCapable])
    {
      v6 = [MOEventBundleLabelLocalizer __Moments_TitleCapitalizedStringForKey:v5];
    }

    else
    {
      v6 = v5;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)__Moments_TitleCapitalizedStringForKey:(id)key
{
  keyCopy = key;
  v4 = keyCopy;
  if (keyCopy && [keyCopy length])
  {
    v5 = +[NSLocale currentLocale];
    v6 = [v4 mutableCopy];
    v7 = [v6 length];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = __70__MOEventBundleLabelLocalizer___Moments_TitleCapitalizedStringForKey___block_invoke;
    v15 = &unk_1000B67E8;
    v16 = v6;
    v17 = v5;
    v8 = v5;
    v9 = v6;
    [v9 enumerateSubstringsInRange:0 options:v7 usingBlock:{1027, &v12}];
    v10 = [v9 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __70__MOEventBundleLabelLocalizer___Moments_TitleCapitalizedStringForKey___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v14 = v7;
    if ([v7 length])
    {
      v8 = +[NSCharacterSet lowercaseLetterCharacterSet];
      v9 = [v8 characterIsMember:{objc_msgSend(v14, "characterAtIndex:", 0)}];

      v10 = +[NSCharacterSet whitespaceCharacterSet];
      if (a3)
      {
        if (([v10 characterIsMember:{objc_msgSend(*(a1 + 32), "characterAtIndex:", a3 - 1)}] & v9 & 1) == 0)
        {
LABEL_6:

          goto LABEL_7;
        }
      }

      else if (!v9)
      {
        goto LABEL_6;
      }

      v11 = *(a1 + 32);
      v12 = [v14 capitalizedStringWithLocale:*(a1 + 40)];
      [v11 replaceCharactersInRange:a3 withString:{a4, v12}];

      goto LABEL_6;
    }
  }

LABEL_7:

  return _objc_release_x1();
}

+ (id)_Moments_AllCapitalizedStringForKey:(id)key
{
  keyCopy = key;
  v4 = keyCopy;
  if (keyCopy && [keyCopy length])
  {
    localizedUppercaseString = [v4 localizedUppercaseString];
  }

  else
  {
    localizedUppercaseString = 0;
  }

  return localizedUppercaseString;
}

+ (id)_Moments_LowercaseNounForKey:(id)key
{
  keyCopy = key;
  if (+[MOEventBundleLabelLocalizer isPreferredLanguageNounCap])
  {
    lowercaseString = keyCopy;
  }

  else
  {
    lowercaseString = [keyCopy lowercaseString];
  }

  v5 = lowercaseString;

  return v5;
}

+ (BOOL)internalInstall
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) == 1;
  CFRelease(v3);
  return v5;
}

+ (void)_Moments_LocalizedStringForKey:(uint64_t)a1 withTable:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v7 = [a2 mask];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)_Moments_LocalizedStringForKey:(NSObject *)a3 withTable:.cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = +[NSLocale preferredLanguages];
  v7 = [v6 firstObject];
  v8 = +[NSLocale currentLocale];
  v9 = [v8 localeIdentifier];
  v10 = [a2 preferredLocalizations];
  v11 = [v10 firstObject];
  v12 = 138413058;
  v13 = a1;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v9;
  v18 = 2112;
  v19 = v11;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "MOEventBundleLabelLocalizer key is not found, key, %@, locale preferredLanguage, %@, locale, %@, framework preferredLocalization, %@", &v12, 0x2Au);
}

+ (void)_Moments_LocalizedStringWithFormat:(uint64_t)a1 arguments:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  [a2 count];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)_Moments_LocalizedStringWithFormat:(uint64_t)a1 arguments:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  [a2 count];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)_Moments_LocalizedStringWithFormat:(void *)a3 arguments:(NSObject *)a4 .cold.3(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 mask];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "MOEventBundleLabelLocalizer arg, %@", a1, 0xCu);
}

+ (void)_Moments_LocalizedStringWithFormat:(void *)a1 arguments:.cold.4(void *a1)
{
  v6 = [a1 mask];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)_Moments_LocalizedStringWithFormat:(uint64_t)a1 arguments:(NSObject *)a2 .cold.5(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "MOEventBundleLabelLocalizer output string, %@", &v2, 0xCu);
}

+ (void)_Moments_LocalizedStringWithFormat:(uint64_t)a1 arguments:(NSObject *)a2 .cold.6(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = 0;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "MOEventBundleLabelLocalizer return nil for format, %@, localizedFormat, %@", &v2, 0x16u);
}

@end