@interface NSArray(PKIconCache)
+ (void)pk_updateSpecifiers:()PKIconCache withIconsFromCache:;
+ (void)pk_updateSpecifiers:()PKIconCache withIconsFromCache:isInterfaceRTL:;
@end

@implementation NSArray(PKIconCache)

+ (void)pk_updateSpecifiers:()PKIconCache withIconsFromCache:
{
  v9 = a3;
  v5 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    v8 = [traitCollection layoutDirection] == 1;
  }

  else
  {
    v8 = 0;
  }

  [MEMORY[0x1E695DEC8] pk_updateSpecifiers:v9 withIconsFromCache:v5 isInterfaceRTL:v8];
}

+ (void)pk_updateSpecifiers:()PKIconCache withIconsFromCache:isInterfaceRTL:
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  _calendarDirection = [currentLocale _calendarDirection];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v35;
    *&v11 = 138412290;
    v30 = v11;
    do
    {
      v14 = 0;
      v31 = v12;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * v14);
        v16 = [v15 propertyForKey:{@"iconCache", v30}];
        v17 = [v15 propertyForKey:@"iconImageShouldFlipForRightToLeft"];
        bOOLValue = [v17 BOOLValue];

        v19 = [v15 propertyForKey:@"iconImageShouldFlipForRightToLeftCalendarKey"];
        bOOLValue2 = [v19 BOOLValue];

        if (v16)
        {
          if (a5)
          {
            v21 = v13;
            v22 = v8;
            v23 = a5;
            v24 = [v15 propertyForKey:@"iconImageShouldLoadAlternateImageForRightToLeftKey"];
            bOOLValue3 = [v24 BOOLValue];

            if (bOOLValue3)
            {
              v26 = [@"RTL-" stringByAppendingString:v16];

              v16 = v26;
            }

            a5 = v23;
            v8 = v22;
            v13 = v21;
            v12 = v31;
          }

          v27 = [v8 imageForKey:v16];
          if (v27)
          {
            v28 = v27;
            if ((bOOLValue | bOOLValue2 & (_calendarDirection == 1)) == 1)
            {
              imageFlippedForRightToLeftLayoutDirection = [v27 imageFlippedForRightToLeftLayoutDirection];

              v28 = imageFlippedForRightToLeftLayoutDirection;
            }

            [v15 setProperty:v28 forKey:@"iconImage"];
          }

          else
          {
            v28 = _PSLoggingFacility();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v30;
              v39 = v16;
              _os_log_impl(&dword_18B008000, v28, OS_LOG_TYPE_DEFAULT, "############ Icon for key %@ is missing from the cache.", buf, 0xCu);
            }
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v12);
  }
}

@end