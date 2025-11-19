@interface OKSettingsUtility
+ ($3FD701315FC6B61C39B4A3183395B84E)coordinateRegionFromObject:(SEL)a3;
+ (CGPoint)pointFromObject:(id)a3;
+ (CGRect)rectFromObject:(id)a3;
+ (CGSize)sizeFromObject:(id)a3;
+ (CLLocationCoordinate2D)coordinateLocationFromObject:(id)a3;
+ (UIEdgeInsets)edgeInsetsFromObject:(id)a3;
+ (UIOffset)offsetFromObject:(id)a3;
+ (id)_settingObjectForKey:(id)a3 settings:(id)a4 resolution:(id)a5;
+ (id)arrayFromObject:(id)a3 type:(unint64_t)a4;
+ (id)arrayOfDictionaryFromObject:(id)a3;
+ (id)arrayOfDynamicSettingsObjectsFromObject:(id)a3 class:(Class)a4 resolution:(id)a5;
+ (id)arrayOfSettingsObjectsFromObject:(id)a3 class:(Class)a4 resolution:(id)a5;
+ (id)arrayOfStringFromObject:(id)a3;
+ (id)arrayOfURLFromObject:(id)a3;
+ (id)arrayOfWidgetFromObject:(id)a3;
+ (id)attributedStringFromObject:(id)a3;
+ (id)colorFromObject:(id)a3;
+ (id)dictionaryFromObject:(id)a3 type:(unint64_t)a4;
+ (id)dictionaryOfArrayFromObject:(id)a3;
+ (id)dictionaryOfDictionaryFromObject:(id)a3;
+ (id)dictionaryOfDynamicSettingsObjectsFromObject:(id)a3 class:(Class)a4 resolution:(id)a5;
+ (id)dictionaryOfSettingsObjectsFromObject:(id)a3 class:(Class)a4 resolution:(id)a5;
+ (id)dynamicSettingsObjectFromObject:(id)a3 class:(Class)a4 resolution:(id)a5;
+ (id)enumFromObject:(id)a3 mapping:(id)a4;
+ (id)indexPath2DFromObject:(id)a3;
+ (id)normalizedObjectFromValue:(id)a3;
+ (id)numberFromObject:(id)a3;
+ (id)optionsFromObject:(id)a3 mapping:(id)a4;
+ (id)settingsObjectFromObject:(id)a3 class:(Class)a4 resolution:(id)a5;
+ (id)stringFromObject:(id)a3;
+ (id)urlFromObject:(id)a3;
+ (id)valueForKey:(id)a3 ofType:(unint64_t)a4 settings:(id)a5 optionalSubType:(unint64_t)a6 optionalClass:(Class)a7 optionalMapping:(id)a8 resolution:(id)a9;
+ (id)valueForObject:(id)a3 ofType:(unint64_t)a4 optionalSubType:(unint64_t)a5 optionalClass:(Class)a6 optionalMapping:(id)a7 resolution:(id)a8;
+ (id)widgetFromObject:(id)a3;
@end

@implementation OKSettingsUtility

+ (id)_settingObjectForKey:(id)a3 settings:(id)a4 resolution:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = [a4 objectForKey:?];
  if (a5)
  {
    v9 = [a4 objectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"@%@", a3)}];
    if (v9)
    {
      v10 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 objectForKey:a5];
        if (!v11)
        {
          v13 = [a5 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", @"@"}];
          v14 = [v13 firstObject];
          if ([v13 count] == 2)
          {
            v15 = [v13 lastObject];
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v16 = [v10 allKeys];
            v17 = [v16 countByEnumeratingWithState:&v43 objects:v49 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v44;
LABEL_10:
              v20 = 0;
              while (1)
              {
                if (*v44 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v43 + 1) + 8 * v20);
                if ([v21 hasPrefix:v14])
                {
                  if ([v21 rangeOfString:v15] != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    break;
                  }
                }

                if (v18 == ++v20)
                {
                  v18 = [v16 countByEnumeratingWithState:&v43 objects:v49 count:16];
                  if (v18)
                  {
                    goto LABEL_10;
                  }

                  goto LABEL_19;
                }
              }

              v11 = [v10 objectForKey:v21];
              if (v11)
              {
                return v11;
              }
            }
          }

LABEL_19:
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v22 = [v10 allKeys];
          v23 = [v22 countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v40;
LABEL_21:
            v26 = 0;
            while (1)
            {
              if (*v40 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v39 + 1) + 8 * v26);
              if ([v27 hasPrefix:v14])
              {
                break;
              }

              if (v24 == ++v26)
              {
                v24 = [v22 countByEnumeratingWithState:&v39 objects:v48 count:16];
                if (v24)
                {
                  goto LABEL_21;
                }

                goto LABEL_29;
              }
            }

            v11 = [v10 objectForKey:v27];
            if (v11)
            {
              return v11;
            }
          }

LABEL_29:
          v28 = [v13 lastObject];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v29 = [v10 allKeys];
          v30 = [v29 countByEnumeratingWithState:&v35 objects:v47 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v36;
LABEL_31:
            v33 = 0;
            while (1)
            {
              if (*v36 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v35 + 1) + 8 * v33);
              if ([v34 rangeOfString:v28] != 0x7FFFFFFFFFFFFFFFLL)
              {
                break;
              }

              if (v31 == ++v33)
              {
                v31 = [v29 countByEnumeratingWithState:&v35 objects:v47 count:16];
                if (v31)
                {
                  goto LABEL_31;
                }

                return [v10 objectForKey:@"*"];
              }
            }

            v11 = [v10 objectForKey:v34];
            if (v11)
            {
              return v11;
            }
          }

          return [v10 objectForKey:@"*"];
        }

        return v11;
      }
    }
  }

  return v8;
}

+ (id)valueForKey:(id)a3 ofType:(unint64_t)a4 settings:(id)a5 optionalSubType:(unint64_t)a6 optionalClass:(Class)a7 optionalMapping:(id)a8 resolution:(id)a9
{
  v15 = [a1 _settingObjectForKey:a3 settings:a5 resolution:a9];
  if (v15)
  {

    return [a1 valueForObject:v15 ofType:a4 optionalSubType:a6 optionalClass:a7 optionalMapping:a8 resolution:a9];
  }

  else
  {
    if (a9)
    {
      if (*MEMORY[0x277D62808] >= 4)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:116 andFormat:@"Value for key %@ cannot be found for the resolution %@", a3, a9];
      }
    }

    else if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:112 andFormat:@"Value for key %@ cannot be found", a3, v17];
    }

    return 0;
  }
}

+ (id)valueForObject:(id)a3 ofType:(unint64_t)a4 optionalSubType:(unint64_t)a5 optionalClass:(Class)a6 optionalMapping:(id)a7 resolution:(id)a8
{
  if (a4 > 303)
  {
    if (a4 > 403)
    {
      if (a4 <= 500)
      {
        if (a4 <= 405)
        {
          if (a4 == 404)
          {

            return [OKSettingsUtility arrayOfDictionaryFromObject:a3];
          }

          else
          {

            return [OKSettingsUtility arrayOfWidgetFromObject:a3];
          }
        }

        if (a4 == 406)
        {

          return [OKSettingsUtility arrayOfSettingsObjectsFromObject:a3 class:a6 resolution:a8];
        }

        if (a4 == 407)
        {

          return [OKSettingsUtility arrayOfDynamicSettingsObjectsFromObject:a3 class:a6 resolution:a8];
        }
      }

      else
      {
        if (a4 <= 502)
        {
          if (a4 == 501)
          {

            return [OKSettingsUtility dictionaryFromObject:a3 type:a5];
          }

          else
          {

            return [OKSettingsUtility dictionaryOfArrayFromObject:a3];
          }
        }

        switch(a4)
        {
          case 0x1F7uLL:

            return [OKSettingsUtility dictionaryOfDictionaryFromObject:a3];
          case 0x1F8uLL:

            return [OKSettingsUtility dictionaryOfSettingsObjectsFromObject:a3 class:a6 resolution:a8];
          case 0x1F9uLL:

            return [OKSettingsUtility dictionaryOfDynamicSettingsObjectsFromObject:a3 class:a6 resolution:a8];
        }
      }
    }

    else
    {
      if (a4 <= 307)
      {
        if (a4 > 305)
        {
          if (a4 == 306)
          {

            return [OKSettingsUtility widgetFromObject:a3];
          }

          else
          {

            return [OKSettingsUtility settingsObjectFromObject:a3 class:a6 resolution:a8];
          }
        }

        else if (a4 == 304)
        {

          return [OKSettingsUtility colorFromObject:a3];
        }

        else
        {

          return [OKSettingsUtility indexPath2DFromObject:a3];
        }
      }

      if (a4 > 400)
      {
        if (a4 == 401)
        {

          return [OKSettingsUtility arrayFromObject:a3 type:a5];
        }

        else if (a4 == 402)
        {

          return [OKSettingsUtility arrayOfURLFromObject:a3];
        }

        else
        {

          return [OKSettingsUtility arrayOfStringFromObject:a3];
        }
      }

      if (a4 == 308)
      {

        return [OKSettingsUtility dynamicSettingsObjectFromObject:a3 class:a6 resolution:a8];
      }

      if (a4 == 309)
      {

        return [OKSettingsUtility attributedStringFromObject:a3];
      }
    }

    goto LABEL_132;
  }

  if (a4 > 201)
  {
    if (a4 <= 205)
    {
      if (a4 > 203)
      {
        if (a4 == 204)
        {
          v14 = MEMORY[0x277CCAE60];
          [OKSettingsUtility edgeInsetsFromObject:a3, 204, a5, a6, a7, a8];

          return [v14 valueWithUIEdgeInsets:?];
        }

        else
        {
          v11 = MEMORY[0x277CCAE60];
          [OKSettingsUtility coordinateLocationFromObject:a3, 205, a5, a6, a7, a8];

          return [v11 valueWithCLLocationCoordinate2D:?];
        }
      }

      else if (a4 == 202)
      {
        v13 = MEMORY[0x277CCAE60];
        [OKSettingsUtility pointFromObject:a3, 202, a5, a6, a7, a8];

        return [v13 valueWithCGPoint:?];
      }

      else
      {
        v10 = MEMORY[0x277CCAE60];
        [OKSettingsUtility sizeFromObject:a3, 203, a5, a6, a7, a8];

        return [v10 valueWithCGSize:?];
      }
    }

    if (a4 > 300)
    {
      if (a4 != 301)
      {
        if (a4 == 302)
        {

          return [OKSettingsUtility stringFromObject:a3];
        }

        else
        {

          return [OKSettingsUtility urlFromObject:a3];
        }
      }

LABEL_67:

      return [OKSettingsUtility numberFromObject:a3];
    }

    if (a4 == 206)
    {
      v15 = MEMORY[0x277CCAE60];
      [OKSettingsUtility coordinateRegionFromObject:a3, 206, a5, a6, a7, a8];

      return [v15 valueWithMKCoordinateRegion:?];
    }

    if (a4 == 207)
    {
      v12 = MEMORY[0x277CCAE60];
      [OKSettingsUtility offsetFromObject:a3, 207, a5, a6, a7, a8];

      return [v12 valueWithUIOffset:?];
    }

LABEL_132:
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:341 andFormat:@"Unsupported value type %@", a7, a8, a4];
    }

    return 0;
  }

  if (a4 <= 104)
  {
    if (a4 > 102 || a4 == 101 || a4 == 102)
    {
      goto LABEL_67;
    }

    goto LABEL_132;
  }

  if (a4 <= 106)
  {
    goto LABEL_67;
  }

  switch(a4)
  {
    case 0x6BuLL:

      return [OKSettingsUtility enumFromObject:a3 mapping:a7, a5, a6];
    case 0x6CuLL:

      return [OKSettingsUtility optionsFromObject:a3 mapping:a7, a5, a6];
    case 0xC9uLL:
      v8 = MEMORY[0x277CCAE60];
      [OKSettingsUtility rectFromObject:a3, 201, a5, a6, a7, a8];

      return [v8 valueWithCGRect:?];
    default:
      goto LABEL_132;
  }
}

+ (id)normalizedObjectFromValue:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [a3 absoluteString];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return NSStringFromUIColor();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return MEMORY[0x2821C9390](a3);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x277CBEB18] array];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v10 = [a3 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v37;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v37 != v12)
            {
              objc_enumerationMutation(a3);
            }

            [v9 addObject:{objc_msgSend(a1, "normalizedObjectFromValue:", *(*(&v36 + 1) + 8 * i))}];
          }

          v11 = [a3 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v11);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return a3;
        }

        return [a3 dictionary];
      }

      v9 = [MEMORY[0x277CBEB38] dictionary];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v14 = [a3 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v33;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v33 != v16)
            {
              objc_enumerationMutation(a3);
            }

            [v9 setObject:objc_msgSend(a1 forKey:{"normalizedObjectFromValue:", objc_msgSend(a3, "objectForKey:", *(*(&v32 + 1) + 8 * j))), *(*(&v32 + 1) + 8 * j)}];
          }

          v15 = [a3 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v15);
      }
    }

    return v9;
  }

  v6 = [a3 objCType];
  if (!strcmp(v6, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    [a1 rectFromObject:a3];

    return NSStringFromCGRect(*&v18);
  }

  else if (!strcmp(v6, "{CGPoint=dd}"))
  {
    [a1 pointFromObject:a3];

    return NSStringFromCGPoint(*&v22);
  }

  else if (!strcmp(v6, "{CGSize=dd}"))
  {
    [a1 sizeFromObject:a3];

    return NSStringFromCGSize(*&v24);
  }

  else if (!strcmp(v6, "{UIEdgeInsets=dddd}"))
  {
    [a1 edgeInsetsFromObject:a3];

    return NSStringFromUIEdgeInsets(*&v26);
  }

  else if (!strcmp(v6, "{CLLocationCoordinate2D=dd}"))
  {
    v30 = [a1 coordinateLocationFromObject:a3];

    return MEMORY[0x2821C9380](v30);
  }

  else
  {
    if (strcmp(v6, "{?={CLLocationCoordinate2D=dd}{?=dd}}"))
    {
      if (!strcmp(v6, "{UIOffset=dd}"))
      {
        [a1 offsetFromObject:a3];

        return NSStringFromUIOffset(*&v7);
      }

      return a3;
    }

    v31 = [a1 coordinateRegionFromObject:a3];

    return MEMORY[0x2821C9388](v31);
  }
}

+ (id)enumFromObject:(id)a3 mapping:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a3 = [a4 objectForKey:a3];
    if (a3)
    {
      return a3;
    }

    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v15 = 0u, v16 = 0u, v13 = 0u, v14 = 0u, v6 = [a4 allKeys], (v7 = objc_msgSend(v6, "countByEnumeratingWithState:objects:count:", &v13, v17, 16)) == 0))
  {
LABEL_13:
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:488 andFormat:@"Object cannot be converted to enum"];
    }

    return 0;
  }

  v8 = v7;
  v9 = *v14;
LABEL_7:
  v10 = 0;
  while (1)
  {
    if (*v14 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = [objc_msgSend(a4 objectForKey:{*(*(&v13 + 1) + 8 * v10)), "unsignedIntegerValue"}];
    if (v11 == [a3 unsignedIntegerValue])
    {
      return a3;
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }
}

+ (id)optionsFromObject:(id)a3 mapping:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(a3);
          }

          v9 |= [objc_msgSend(a1 enumFromObject:*(*(&v13 + 1) + 8 * i) mapping:{a4), "unsignedIntegerValue"}];
        }

        v8 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    return [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3 = [a4 objectForKey:a3];
      if (a3)
      {
        return a3;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return a3;
      }
    }

    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:520 andFormat:@"Object cannot be converted to options"];
    }

    return 0;
  }
}

+ (CGRect)rectFromObject:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return CGRectFromString(a3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!strcmp([a3 objCType], "{CGRect={CGPoint=dd}{CGSize=dd}}"))
    {
      [a3 CGRectValue];
      return result;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 toRect];
      return result;
    }
  }

  return **&MEMORY[0x277CBF3A0];
}

+ (CGPoint)pointFromObject:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!strcmp([a3 objCType], "{CGPoint=dd}"))
      {
        [a3 CGPointValue];
        goto LABEL_9;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a3 toPoint];
        goto LABEL_9;
      }
    }

    x = *MEMORY[0x277CBF348];
    y = *(MEMORY[0x277CBF348] + 8);
    goto LABEL_9;
  }

  v6 = CGPointFromString(a3);
  y = v6.y;
  x = v6.x;
LABEL_9:
  result.y = y;
  result.x = x;
  return result;
}

+ (CGSize)sizeFromObject:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!strcmp([a3 objCType], "{CGSize=dd}"))
      {
        [a3 CGSizeValue];
        goto LABEL_9;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a3 toSize];
        goto LABEL_9;
      }
    }

    width = *MEMORY[0x277CBF3A8];
    height = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_9;
  }

  v6 = CGSizeFromString(a3);
  height = v6.height;
  width = v6.width;
LABEL_9:
  result.height = height;
  result.width = width;
  return result;
}

+ (UIEdgeInsets)edgeInsetsFromObject:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return UIEdgeInsetsFromString(a3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!strcmp([a3 objCType], "{UIEdgeInsets=dddd}"))
    {
      [a3 UIEdgeInsetsValue];
      return result;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 toEdgeInsets];
      return result;
    }
  }

  return **&MEMORY[0x277D768C8];
}

+ (CLLocationCoordinate2D)coordinateLocationFromObject:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!strcmp([a3 objCType], "{CLLocationCoordinate2D=dd}"))
      {
        [a3 CLLocationCoordinate2DValue];
        goto LABEL_9;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a3 toLocationCoordinate2D];
        goto LABEL_9;
      }
    }

    v4 = *MEMORY[0x277CE4278];
    v5 = *(MEMORY[0x277CE4278] + 8);
    goto LABEL_9;
  }

  CLLocationCoordinate2DFromString();
LABEL_9:
  result.longitude = v5;
  result.latitude = v4;
  return result;
}

+ ($3FD701315FC6B61C39B4A3183395B84E)coordinateRegionFromObject:(SEL)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return MKCoordinateRegionFromString();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    result = strcmp([a4 objCType], "{?={CLLocationCoordinate2D=dd}{?=dd}}");
    if (!result)
    {
      return [a4 MKCoordinateRegionValue];
    }
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      return [a4 toCoordinateRegion];
    }
  }

  return result;
}

+ (UIOffset)offsetFromObject:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!strcmp([a3 objCType], "{UIOffset=dd}"))
      {
        [a3 UIOffsetValue];
        goto LABEL_9;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a3 toOffset];
        goto LABEL_9;
      }
    }

    horizontal = *MEMORY[0x277D76DA8];
    vertical = *(MEMORY[0x277D76DA8] + 8);
    goto LABEL_9;
  }

  v6 = UIOffsetFromString(a3);
  vertical = v6.vertical;
  horizontal = v6.horizontal;
LABEL_9:
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

+ (id)colorFromObject:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return UIColorFromString();
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    return [a3 toObject];
  }
}

+ (id)numberFromObject:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a3 uppercaseString];
    if ([v4 isEqualToString:@"TRUE"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"YES"))
    {
      return MEMORY[0x277CBEC38];
    }

    if ([v4 isEqualToString:@"FALSE"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"NO"))
    {
      return MEMORY[0x277CBEC28];
    }

    v6 = MEMORY[0x277CCA980];

    return [v6 decimalNumberWithString:a3];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    return [a3 toNumber];
  }
}

+ (id)stringFromObject:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [a3 toString];
}

+ (id)attributedStringFromObject:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

+ (id)urlFromObject:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x277CBEBC0];

  return [v4 URLWithString:a3];
}

+ (id)indexPath2DFromObject:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a3 length] == 2)
    {
      return a3;
    }

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x2821C9378](a3);
}

+ (id)widgetFromObject:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [[OKPresentationWidget alloc] initWithDictionary:a3 forPresentation:0 andParent:0];

  return v4;
}

+ (id)settingsObjectFromObject:(id)a3 class:(Class)a4 resolution:(id)a5
{
  if (!a4)
  {
    return 0;
  }

  if (objc_opt_isKindOfClass())
  {
    if ([a3 conformsToProtocol:&unk_287AFD5D0])
    {
      return a3;
    }

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [OKSettings objectFromClass:a4 withSettings:a3 andResolution:a5];
}

+ (id)dynamicSettingsObjectFromObject:(id)a3 class:(Class)a4 resolution:(id)a5
{
  if (a4 && (objc_opt_isKindOfClass() & 1) != 0 && ([a3 conformsToProtocol:&unk_287AFD5D0] & 1) != 0)
  {
    return a3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
      if (v14)
      {
        v15 = v14;
        if ([(objc_class *)v14 conformsToProtocol:&unk_287AFD5D0])
        {
          if (!a4 || [(objc_class *)v15 isSubclassOfClass:a4])
          {
            v12 = v15;
            v13 = 0;
            goto LABEL_27;
          }
        }
      }
    }

    else if ([a3 conformsToProtocol:&unk_287AFD5D0])
    {
      return a3;
    }

    return 0;
  }

  v8 = [a3 objectForKey:@"class"];
  if (!v8)
  {
    if (a4)
    {
      v16 = [a3 objectForKey:@"settings"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || !v16)
      {
        v12 = a4;
        v13 = v16;
        goto LABEL_27;
      }
    }

    return 0;
  }

  v9 = [+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (![v9 conformsToProtocol:&unk_287AFD5D0] || a4 && !objc_msgSend(v10, "isSubclassOfClass:", a4))
  {
    return 0;
  }

  v11 = [a3 objectForKey:@"settings"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v11)
    {
      return 0;
    }
  }

  v12 = v10;
  v13 = v11;
LABEL_27:

  return [OKSettings objectFromClass:v12 withSettings:v13 andResolution:a5];
}

+ (id)arrayFromObject:(id)a3 type:(unint64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0x277D62808];
      v11 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(a3);
          }

          v13 = [a1 valueForObject:*(*(&v15 + 1) + 8 * i) ofType:a4 optionalSubType:0 optionalClass:0 optionalMapping:0 resolution:0];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else if (*v10 >= 4)
          {
            [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:977 andFormat:@"Object cannot be converted to type %ld", a4];
          }
        }

        v9 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    return v7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [a3 toArray];
}

+ (id)arrayOfURLFromObject:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277D62808];
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = [a1 urlFromObject:*(*(&v13 + 1) + 8 * i)];
        if (v11)
        {
          [v5 addObject:v11];
        }

        else if (*v8 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1003 andFormat:@"Object cannot be converted to URL"];
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)arrayOfStringFromObject:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277D62808];
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = [a1 stringFromObject:*(*(&v13 + 1) + 8 * i)];
        if (v11)
        {
          [v5 addObject:v11];
        }

        else if (*v8 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1029 andFormat:@"Object cannot be converted to string"];
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)arrayOfDictionaryFromObject:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277D62808];
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = [a1 dictionaryFromObject:*(*(&v13 + 1) + 8 * i) type:0];
        if (v11)
        {
          [v5 addObject:v11];
        }

        else if (*v8 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1055 andFormat:@"Object cannot be converted to dictionary"];
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)arrayOfWidgetFromObject:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277D62808];
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = [a1 widgetFromObject:*(*(&v13 + 1) + 8 * i)];
        if (v11)
        {
          [v5 addObject:v11];
        }

        else if (*v8 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1081 andFormat:@"Object cannot be converted to widget"];
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)arrayOfSettingsObjectsFromObject:(id)a3 class:(Class)a4 resolution:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v9 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0x277D62808];
    v13 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(a3);
        }

        v15 = [a1 settingsObjectFromObject:*(*(&v17 + 1) + 8 * i) class:a4 resolution:a5];
        if (v15)
        {
          [v9 addObject:v15];
        }

        else if (*v12 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1107 andFormat:@"Object cannot be converted to settings object"];
        }
      }

      v11 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v9;
}

+ (id)arrayOfDynamicSettingsObjectsFromObject:(id)a3 class:(Class)a4 resolution:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v9 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0x277D62808];
    v13 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(a3);
        }

        v15 = [a1 dynamicSettingsObjectFromObject:*(*(&v17 + 1) + 8 * i) class:a4 resolution:a5];
        if (v15)
        {
          [v9 addObject:v15];
        }

        else if (*v12 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1133 andFormat:@"Object cannot be converted to dynamic settings object"];
        }
      }

      v11 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v9;
}

+ (id)dictionaryFromObject:(id)a3 type:(unint64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [a3 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0x277D62808];
      v12 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = [a1 valueForObject:objc_msgSend(a3 ofType:"objectForKey:" optionalSubType:v14) optionalClass:a4 optionalMapping:0 resolution:{0, 0, 0}];
          if (v15)
          {
            [v7 setObject:v15 forKey:v14];
          }

          else if (*v11 >= 4)
          {
            [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1178 andFormat:@"Object cannot be converted to type %d", a4];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    return v7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [a3 dictionary];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    return [a3 toDictionary];
  }
}

+ (id)dictionaryOfDictionaryFromObject:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x277D62808];
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [a1 dictionaryFromObject:objc_msgSend(a3 type:{"objectForKey:", v12), 0}];
        if (v13)
        {
          [v5 setObject:v13 forKey:v12];
        }

        else if (*v9 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1204 andFormat:@"Object cannot be converted to dictionary of dictionary"];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)dictionaryOfArrayFromObject:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x277D62808];
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [a1 arrayFromObject:objc_msgSend(a3 type:{"objectForKey:", v12), 0}];
        if (v13)
        {
          [v5 setObject:v13 forKey:v12];
        }

        else if (*v9 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1230 andFormat:@"Object cannot be converted to dictionary of array"];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)dictionaryOfSettingsObjectsFromObject:(id)a3 class:(Class)a4 resolution:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [a3 allKeys];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [a1 settingsObjectFromObject:objc_msgSend(a3 class:"objectForKey:" resolution:{v15), a4, a5}];
        if (v16)
        {
          [v9 setObject:v16 forKey:v15];
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1256 andFormat:@"Object cannot be converted to dictionary of settings objects"];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return v9;
}

+ (id)dictionaryOfDynamicSettingsObjectsFromObject:(id)a3 class:(Class)a4 resolution:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [a3 allKeys];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [a1 dynamicSettingsObjectFromObject:objc_msgSend(a3 class:"objectForKey:" resolution:{v15), a4, a5}];
        if (v16)
        {
          [v9 setObject:v16 forKey:v15];
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1282 andFormat:@"Object cannot be converted to dictionary of dynamic settings objects"];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return v9;
}

@end