@interface OKSettingsUtility
+ ($3FD701315FC6B61C39B4A3183395B84E)coordinateRegionFromObject:(SEL)object;
+ (CGPoint)pointFromObject:(id)object;
+ (CGRect)rectFromObject:(id)object;
+ (CGSize)sizeFromObject:(id)object;
+ (CLLocationCoordinate2D)coordinateLocationFromObject:(id)object;
+ (UIEdgeInsets)edgeInsetsFromObject:(id)object;
+ (UIOffset)offsetFromObject:(id)object;
+ (id)_settingObjectForKey:(id)key settings:(id)settings resolution:(id)resolution;
+ (id)arrayFromObject:(id)object type:(unint64_t)type;
+ (id)arrayOfDictionaryFromObject:(id)object;
+ (id)arrayOfDynamicSettingsObjectsFromObject:(id)object class:(Class)class resolution:(id)resolution;
+ (id)arrayOfSettingsObjectsFromObject:(id)object class:(Class)class resolution:(id)resolution;
+ (id)arrayOfStringFromObject:(id)object;
+ (id)arrayOfURLFromObject:(id)object;
+ (id)arrayOfWidgetFromObject:(id)object;
+ (id)attributedStringFromObject:(id)object;
+ (id)colorFromObject:(id)object;
+ (id)dictionaryFromObject:(id)object type:(unint64_t)type;
+ (id)dictionaryOfArrayFromObject:(id)object;
+ (id)dictionaryOfDictionaryFromObject:(id)object;
+ (id)dictionaryOfDynamicSettingsObjectsFromObject:(id)object class:(Class)class resolution:(id)resolution;
+ (id)dictionaryOfSettingsObjectsFromObject:(id)object class:(Class)class resolution:(id)resolution;
+ (id)dynamicSettingsObjectFromObject:(id)object class:(Class)class resolution:(id)resolution;
+ (id)enumFromObject:(id)object mapping:(id)mapping;
+ (id)indexPath2DFromObject:(id)object;
+ (id)normalizedObjectFromValue:(id)value;
+ (id)numberFromObject:(id)object;
+ (id)optionsFromObject:(id)object mapping:(id)mapping;
+ (id)settingsObjectFromObject:(id)object class:(Class)class resolution:(id)resolution;
+ (id)stringFromObject:(id)object;
+ (id)urlFromObject:(id)object;
+ (id)valueForKey:(id)key ofType:(unint64_t)type settings:(id)settings optionalSubType:(unint64_t)subType optionalClass:(Class)class optionalMapping:(id)mapping resolution:(id)resolution;
+ (id)valueForObject:(id)object ofType:(unint64_t)type optionalSubType:(unint64_t)subType optionalClass:(Class)class optionalMapping:(id)mapping resolution:(id)resolution;
+ (id)widgetFromObject:(id)object;
@end

@implementation OKSettingsUtility

+ (id)_settingObjectForKey:(id)key settings:(id)settings resolution:(id)resolution
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = [settings objectForKey:?];
  if (resolution)
  {
    v9 = [settings objectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"@%@", key)}];
    if (v9)
    {
      v10 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 objectForKey:resolution];
        if (!v11)
        {
          v13 = [resolution componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", @"@"}];
          firstObject = [v13 firstObject];
          if ([v13 count] == 2)
          {
            lastObject = [v13 lastObject];
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            allKeys = [v10 allKeys];
            v17 = [allKeys countByEnumeratingWithState:&v43 objects:v49 count:16];
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
                  objc_enumerationMutation(allKeys);
                }

                v21 = *(*(&v43 + 1) + 8 * v20);
                if ([v21 hasPrefix:firstObject])
                {
                  if ([v21 rangeOfString:lastObject] != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    break;
                  }
                }

                if (v18 == ++v20)
                {
                  v18 = [allKeys countByEnumeratingWithState:&v43 objects:v49 count:16];
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
          allKeys2 = [v10 allKeys];
          v23 = [allKeys2 countByEnumeratingWithState:&v39 objects:v48 count:16];
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
                objc_enumerationMutation(allKeys2);
              }

              v27 = *(*(&v39 + 1) + 8 * v26);
              if ([v27 hasPrefix:firstObject])
              {
                break;
              }

              if (v24 == ++v26)
              {
                v24 = [allKeys2 countByEnumeratingWithState:&v39 objects:v48 count:16];
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
          lastObject2 = [v13 lastObject];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          allKeys3 = [v10 allKeys];
          v30 = [allKeys3 countByEnumeratingWithState:&v35 objects:v47 count:16];
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
                objc_enumerationMutation(allKeys3);
              }

              v34 = *(*(&v35 + 1) + 8 * v33);
              if ([v34 rangeOfString:lastObject2] != 0x7FFFFFFFFFFFFFFFLL)
              {
                break;
              }

              if (v31 == ++v33)
              {
                v31 = [allKeys3 countByEnumeratingWithState:&v35 objects:v47 count:16];
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

+ (id)valueForKey:(id)key ofType:(unint64_t)type settings:(id)settings optionalSubType:(unint64_t)subType optionalClass:(Class)class optionalMapping:(id)mapping resolution:(id)resolution
{
  v15 = [self _settingObjectForKey:key settings:settings resolution:resolution];
  if (v15)
  {

    return [self valueForObject:v15 ofType:type optionalSubType:subType optionalClass:class optionalMapping:mapping resolution:resolution];
  }

  else
  {
    if (resolution)
    {
      if (*MEMORY[0x277D62808] >= 4)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:116 andFormat:@"Value for key %@ cannot be found for the resolution %@", key, resolution];
      }
    }

    else if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:112 andFormat:@"Value for key %@ cannot be found", key, v17];
    }

    return 0;
  }
}

+ (id)valueForObject:(id)object ofType:(unint64_t)type optionalSubType:(unint64_t)subType optionalClass:(Class)class optionalMapping:(id)mapping resolution:(id)resolution
{
  if (type > 303)
  {
    if (type > 403)
    {
      if (type <= 500)
      {
        if (type <= 405)
        {
          if (type == 404)
          {

            return [OKSettingsUtility arrayOfDictionaryFromObject:object];
          }

          else
          {

            return [OKSettingsUtility arrayOfWidgetFromObject:object];
          }
        }

        if (type == 406)
        {

          return [OKSettingsUtility arrayOfSettingsObjectsFromObject:object class:class resolution:resolution];
        }

        if (type == 407)
        {

          return [OKSettingsUtility arrayOfDynamicSettingsObjectsFromObject:object class:class resolution:resolution];
        }
      }

      else
      {
        if (type <= 502)
        {
          if (type == 501)
          {

            return [OKSettingsUtility dictionaryFromObject:object type:subType];
          }

          else
          {

            return [OKSettingsUtility dictionaryOfArrayFromObject:object];
          }
        }

        switch(type)
        {
          case 0x1F7uLL:

            return [OKSettingsUtility dictionaryOfDictionaryFromObject:object];
          case 0x1F8uLL:

            return [OKSettingsUtility dictionaryOfSettingsObjectsFromObject:object class:class resolution:resolution];
          case 0x1F9uLL:

            return [OKSettingsUtility dictionaryOfDynamicSettingsObjectsFromObject:object class:class resolution:resolution];
        }
      }
    }

    else
    {
      if (type <= 307)
      {
        if (type > 305)
        {
          if (type == 306)
          {

            return [OKSettingsUtility widgetFromObject:object];
          }

          else
          {

            return [OKSettingsUtility settingsObjectFromObject:object class:class resolution:resolution];
          }
        }

        else if (type == 304)
        {

          return [OKSettingsUtility colorFromObject:object];
        }

        else
        {

          return [OKSettingsUtility indexPath2DFromObject:object];
        }
      }

      if (type > 400)
      {
        if (type == 401)
        {

          return [OKSettingsUtility arrayFromObject:object type:subType];
        }

        else if (type == 402)
        {

          return [OKSettingsUtility arrayOfURLFromObject:object];
        }

        else
        {

          return [OKSettingsUtility arrayOfStringFromObject:object];
        }
      }

      if (type == 308)
      {

        return [OKSettingsUtility dynamicSettingsObjectFromObject:object class:class resolution:resolution];
      }

      if (type == 309)
      {

        return [OKSettingsUtility attributedStringFromObject:object];
      }
    }

    goto LABEL_132;
  }

  if (type > 201)
  {
    if (type <= 205)
    {
      if (type > 203)
      {
        if (type == 204)
        {
          v14 = MEMORY[0x277CCAE60];
          [OKSettingsUtility edgeInsetsFromObject:object, 204, subType, class, mapping, resolution];

          return [v14 valueWithUIEdgeInsets:?];
        }

        else
        {
          v11 = MEMORY[0x277CCAE60];
          [OKSettingsUtility coordinateLocationFromObject:object, 205, subType, class, mapping, resolution];

          return [v11 valueWithCLLocationCoordinate2D:?];
        }
      }

      else if (type == 202)
      {
        v13 = MEMORY[0x277CCAE60];
        [OKSettingsUtility pointFromObject:object, 202, subType, class, mapping, resolution];

        return [v13 valueWithCGPoint:?];
      }

      else
      {
        v10 = MEMORY[0x277CCAE60];
        [OKSettingsUtility sizeFromObject:object, 203, subType, class, mapping, resolution];

        return [v10 valueWithCGSize:?];
      }
    }

    if (type > 300)
    {
      if (type != 301)
      {
        if (type == 302)
        {

          return [OKSettingsUtility stringFromObject:object];
        }

        else
        {

          return [OKSettingsUtility urlFromObject:object];
        }
      }

LABEL_67:

      return [OKSettingsUtility numberFromObject:object];
    }

    if (type == 206)
    {
      v15 = MEMORY[0x277CCAE60];
      [OKSettingsUtility coordinateRegionFromObject:object, 206, subType, class, mapping, resolution];

      return [v15 valueWithMKCoordinateRegion:?];
    }

    if (type == 207)
    {
      v12 = MEMORY[0x277CCAE60];
      [OKSettingsUtility offsetFromObject:object, 207, subType, class, mapping, resolution];

      return [v12 valueWithUIOffset:?];
    }

LABEL_132:
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:341 andFormat:@"Unsupported value type %@", mapping, resolution, type];
    }

    return 0;
  }

  if (type <= 104)
  {
    if (type > 102 || type == 101 || type == 102)
    {
      goto LABEL_67;
    }

    goto LABEL_132;
  }

  if (type <= 106)
  {
    goto LABEL_67;
  }

  switch(type)
  {
    case 0x6BuLL:

      return [OKSettingsUtility enumFromObject:object mapping:mapping, subType, class];
    case 0x6CuLL:

      return [OKSettingsUtility optionsFromObject:object mapping:mapping, subType, class];
    case 0xC9uLL:
      v8 = MEMORY[0x277CCAE60];
      [OKSettingsUtility rectFromObject:object, 201, subType, class, mapping, resolution];

      return [v8 valueWithCGRect:?];
    default:
      goto LABEL_132;
  }
}

+ (id)normalizedObjectFromValue:(id)value
{
  v42 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return value;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return value;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [value absoluteString];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return NSStringFromUIColor();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return MEMORY[0x2821C9390](value);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      array = [MEMORY[0x277CBEB18] array];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v10 = [value countByEnumeratingWithState:&v36 objects:v41 count:16];
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
              objc_enumerationMutation(value);
            }

            [array addObject:{objc_msgSend(self, "normalizedObjectFromValue:", *(*(&v36 + 1) + 8 * i))}];
          }

          v11 = [value countByEnumeratingWithState:&v36 objects:v41 count:16];
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
          return value;
        }

        return [value dictionary];
      }

      array = [MEMORY[0x277CBEB38] dictionary];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v14 = [value countByEnumeratingWithState:&v32 objects:v40 count:16];
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
              objc_enumerationMutation(value);
            }

            [array setObject:objc_msgSend(self forKey:{"normalizedObjectFromValue:", objc_msgSend(value, "objectForKey:", *(*(&v32 + 1) + 8 * j))), *(*(&v32 + 1) + 8 * j)}];
          }

          v15 = [value countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v15);
      }
    }

    return array;
  }

  objCType = [value objCType];
  if (!strcmp(objCType, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    [self rectFromObject:value];

    return NSStringFromCGRect(*&v18);
  }

  else if (!strcmp(objCType, "{CGPoint=dd}"))
  {
    [self pointFromObject:value];

    return NSStringFromCGPoint(*&v22);
  }

  else if (!strcmp(objCType, "{CGSize=dd}"))
  {
    [self sizeFromObject:value];

    return NSStringFromCGSize(*&v24);
  }

  else if (!strcmp(objCType, "{UIEdgeInsets=dddd}"))
  {
    [self edgeInsetsFromObject:value];

    return NSStringFromUIEdgeInsets(*&v26);
  }

  else if (!strcmp(objCType, "{CLLocationCoordinate2D=dd}"))
  {
    v30 = [self coordinateLocationFromObject:value];

    return MEMORY[0x2821C9380](v30);
  }

  else
  {
    if (strcmp(objCType, "{?={CLLocationCoordinate2D=dd}{?=dd}}"))
    {
      if (!strcmp(objCType, "{UIOffset=dd}"))
      {
        [self offsetFromObject:value];

        return NSStringFromUIOffset(*&v7);
      }

      return value;
    }

    v31 = [self coordinateRegionFromObject:value];

    return MEMORY[0x2821C9388](v31);
  }
}

+ (id)enumFromObject:(id)object mapping:(id)mapping
{
  v18 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object = [mapping objectForKey:object];
    if (object)
    {
      return object;
    }

    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v15 = 0u, v16 = 0u, v13 = 0u, v14 = 0u, v6 = [mapping allKeys], (v7 = objc_msgSend(v6, "countByEnumeratingWithState:objects:count:", &v13, v17, 16)) == 0))
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

    v11 = [objc_msgSend(mapping objectForKey:{*(*(&v13 + 1) + 8 * v10)), "unsignedIntegerValue"}];
    if (v11 == [object unsignedIntegerValue])
    {
      return object;
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

+ (id)optionsFromObject:(id)object mapping:(id)mapping
{
  v18 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [object countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(object);
          }

          v9 |= [objc_msgSend(self enumFromObject:*(*(&v13 + 1) + 8 * i) mapping:{mapping), "unsignedIntegerValue"}];
        }

        v8 = [object countByEnumeratingWithState:&v13 objects:v17 count:16];
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
      object = [mapping objectForKey:object];
      if (object)
      {
        return object;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return object;
      }
    }

    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:520 andFormat:@"Object cannot be converted to options"];
    }

    return 0;
  }
}

+ (CGRect)rectFromObject:(id)object
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return CGRectFromString(object);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!strcmp([object objCType], "{CGRect={CGPoint=dd}{CGSize=dd}}"))
    {
      [object CGRectValue];
      return result;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [object toRect];
      return result;
    }
  }

  return **&MEMORY[0x277CBF3A0];
}

+ (CGPoint)pointFromObject:(id)object
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!strcmp([object objCType], "{CGPoint=dd}"))
      {
        [object CGPointValue];
        goto LABEL_9;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [object toPoint];
        goto LABEL_9;
      }
    }

    x = *MEMORY[0x277CBF348];
    y = *(MEMORY[0x277CBF348] + 8);
    goto LABEL_9;
  }

  v6 = CGPointFromString(object);
  y = v6.y;
  x = v6.x;
LABEL_9:
  result.y = y;
  result.x = x;
  return result;
}

+ (CGSize)sizeFromObject:(id)object
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!strcmp([object objCType], "{CGSize=dd}"))
      {
        [object CGSizeValue];
        goto LABEL_9;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [object toSize];
        goto LABEL_9;
      }
    }

    width = *MEMORY[0x277CBF3A8];
    height = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_9;
  }

  v6 = CGSizeFromString(object);
  height = v6.height;
  width = v6.width;
LABEL_9:
  result.height = height;
  result.width = width;
  return result;
}

+ (UIEdgeInsets)edgeInsetsFromObject:(id)object
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return UIEdgeInsetsFromString(object);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!strcmp([object objCType], "{UIEdgeInsets=dddd}"))
    {
      [object UIEdgeInsetsValue];
      return result;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [object toEdgeInsets];
      return result;
    }
  }

  return **&MEMORY[0x277D768C8];
}

+ (CLLocationCoordinate2D)coordinateLocationFromObject:(id)object
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!strcmp([object objCType], "{CLLocationCoordinate2D=dd}"))
      {
        [object CLLocationCoordinate2DValue];
        goto LABEL_9;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [object toLocationCoordinate2D];
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

+ ($3FD701315FC6B61C39B4A3183395B84E)coordinateRegionFromObject:(SEL)object
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

+ (UIOffset)offsetFromObject:(id)object
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!strcmp([object objCType], "{UIOffset=dd}"))
      {
        [object UIOffsetValue];
        goto LABEL_9;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [object toOffset];
        goto LABEL_9;
      }
    }

    horizontal = *MEMORY[0x277D76DA8];
    vertical = *(MEMORY[0x277D76DA8] + 8);
    goto LABEL_9;
  }

  v6 = UIOffsetFromString(object);
  vertical = v6.vertical;
  horizontal = v6.horizontal;
LABEL_9:
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

+ (id)colorFromObject:(id)object
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return object;
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

    return [object toObject];
  }
}

+ (id)numberFromObject:(id)object
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return object;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uppercaseString = [object uppercaseString];
    if ([uppercaseString isEqualToString:@"TRUE"] & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"YES"))
    {
      return MEMORY[0x277CBEC38];
    }

    if ([uppercaseString isEqualToString:@"FALSE"] & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"NO"))
    {
      return MEMORY[0x277CBEC28];
    }

    v6 = MEMORY[0x277CCA980];

    return [v6 decimalNumberWithString:object];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    return [object toNumber];
  }
}

+ (id)stringFromObject:(id)object
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return object;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [object toString];
}

+ (id)attributedStringFromObject:(id)object
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return object;
  }

  else
  {
    return 0;
  }
}

+ (id)urlFromObject:(id)object
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return object;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x277CBEBC0];

  return [v4 URLWithString:object];
}

+ (id)indexPath2DFromObject:(id)object
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([object length] == 2)
    {
      return object;
    }

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x2821C9378](object);
}

+ (id)widgetFromObject:(id)object
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return object;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [[OKPresentationWidget alloc] initWithDictionary:object forPresentation:0 andParent:0];

  return v4;
}

+ (id)settingsObjectFromObject:(id)object class:(Class)class resolution:(id)resolution
{
  if (!class)
  {
    return 0;
  }

  if (objc_opt_isKindOfClass())
  {
    if ([object conformsToProtocol:&unk_287AFD5D0])
    {
      return object;
    }

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [OKSettings objectFromClass:class withSettings:object andResolution:resolution];
}

+ (id)dynamicSettingsObjectFromObject:(id)object class:(Class)class resolution:(id)resolution
{
  if (class && (objc_opt_isKindOfClass() & 1) != 0 && ([object conformsToProtocol:&unk_287AFD5D0] & 1) != 0)
  {
    return object;
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
          if (!class || [(objc_class *)v15 isSubclassOfClass:class])
          {
            classCopy = v15;
            v13 = 0;
            goto LABEL_27;
          }
        }
      }
    }

    else if ([object conformsToProtocol:&unk_287AFD5D0])
    {
      return object;
    }

    return 0;
  }

  v8 = [object objectForKey:@"class"];
  if (!v8)
  {
    if (class)
    {
      v16 = [object objectForKey:@"settings"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || !v16)
      {
        classCopy = class;
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
  if (![v9 conformsToProtocol:&unk_287AFD5D0] || class && !objc_msgSend(v10, "isSubclassOfClass:", class))
  {
    return 0;
  }

  v11 = [object objectForKey:@"settings"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v11)
    {
      return 0;
    }
  }

  classCopy = v10;
  v13 = v11;
LABEL_27:

  return [OKSettings objectFromClass:classCopy withSettings:v13 andResolution:resolution];
}

+ (id)arrayFromObject:(id)object type:(unint64_t)type
{
  v20 = *MEMORY[0x277D85DE8];
  if (type)
  {
    array = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [object countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(object);
          }

          v13 = [self valueForObject:*(*(&v15 + 1) + 8 * i) ofType:type optionalSubType:0 optionalClass:0 optionalMapping:0 resolution:0];
          if (v13)
          {
            [array addObject:v13];
          }

          else if (*v10 >= 4)
          {
            [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:977 andFormat:@"Object cannot be converted to type %ld", type];
          }
        }

        v9 = [object countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    return array;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return object;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [object toArray];
}

+ (id)arrayOfURLFromObject:(id)object
{
  v18 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [object countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(object);
        }

        v11 = [self urlFromObject:*(*(&v13 + 1) + 8 * i)];
        if (v11)
        {
          [array addObject:v11];
        }

        else if (*v8 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1003 andFormat:@"Object cannot be converted to URL"];
        }
      }

      v7 = [object countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return array;
}

+ (id)arrayOfStringFromObject:(id)object
{
  v18 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [object countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(object);
        }

        v11 = [self stringFromObject:*(*(&v13 + 1) + 8 * i)];
        if (v11)
        {
          [array addObject:v11];
        }

        else if (*v8 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1029 andFormat:@"Object cannot be converted to string"];
        }
      }

      v7 = [object countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return array;
}

+ (id)arrayOfDictionaryFromObject:(id)object
{
  v18 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [object countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(object);
        }

        v11 = [self dictionaryFromObject:*(*(&v13 + 1) + 8 * i) type:0];
        if (v11)
        {
          [array addObject:v11];
        }

        else if (*v8 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1055 andFormat:@"Object cannot be converted to dictionary"];
        }
      }

      v7 = [object countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return array;
}

+ (id)arrayOfWidgetFromObject:(id)object
{
  v18 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [object countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(object);
        }

        v11 = [self widgetFromObject:*(*(&v13 + 1) + 8 * i)];
        if (v11)
        {
          [array addObject:v11];
        }

        else if (*v8 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1081 andFormat:@"Object cannot be converted to widget"];
        }
      }

      v7 = [object countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return array;
}

+ (id)arrayOfSettingsObjectsFromObject:(id)object class:(Class)class resolution:(id)resolution
{
  v22 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [object countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(object);
        }

        v15 = [self settingsObjectFromObject:*(*(&v17 + 1) + 8 * i) class:class resolution:resolution];
        if (v15)
        {
          [array addObject:v15];
        }

        else if (*v12 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1107 andFormat:@"Object cannot be converted to settings object"];
        }
      }

      v11 = [object countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return array;
}

+ (id)arrayOfDynamicSettingsObjectsFromObject:(id)object class:(Class)class resolution:(id)resolution
{
  v22 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [object countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(object);
        }

        v15 = [self dynamicSettingsObjectFromObject:*(*(&v17 + 1) + 8 * i) class:class resolution:resolution];
        if (v15)
        {
          [array addObject:v15];
        }

        else if (*v12 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1133 andFormat:@"Object cannot be converted to dynamic settings object"];
        }
      }

      v11 = [object countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return array;
}

+ (id)dictionaryFromObject:(id)object type:(unint64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  if (type)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    allKeys = [object allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = [self valueForObject:objc_msgSend(object ofType:"objectForKey:" optionalSubType:v14) optionalClass:type optionalMapping:0 resolution:{0, 0, 0}];
          if (v15)
          {
            [dictionary setObject:v15 forKey:v14];
          }

          else if (*v11 >= 4)
          {
            [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1178 andFormat:@"Object cannot be converted to type %d", type];
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    return dictionary;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return object;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [object dictionary];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    return [object toDictionary];
  }
}

+ (id)dictionaryOfDictionaryFromObject:(id)object
{
  v20 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [object allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [self dictionaryFromObject:objc_msgSend(object type:{"objectForKey:", v12), 0}];
        if (v13)
        {
          [dictionary setObject:v13 forKey:v12];
        }

        else if (*v9 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1204 andFormat:@"Object cannot be converted to dictionary of dictionary"];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return dictionary;
}

+ (id)dictionaryOfArrayFromObject:(id)object
{
  v20 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [object allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [self arrayFromObject:objc_msgSend(object type:{"objectForKey:", v12), 0}];
        if (v13)
        {
          [dictionary setObject:v13 forKey:v12];
        }

        else if (*v9 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1230 andFormat:@"Object cannot be converted to dictionary of array"];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return dictionary;
}

+ (id)dictionaryOfSettingsObjectsFromObject:(id)object class:(Class)class resolution:(id)resolution
{
  v23 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [object allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [self settingsObjectFromObject:objc_msgSend(object class:"objectForKey:" resolution:{v15), class, resolution}];
        if (v16)
        {
          [dictionary setObject:v16 forKey:v15];
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1256 andFormat:@"Object cannot be converted to dictionary of settings objects"];
        }
      }

      v12 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return dictionary;
}

+ (id)dictionaryOfDynamicSettingsObjectsFromObject:(id)object class:(Class)class resolution:(id)resolution
{
  v23 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [object allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [self dynamicSettingsObjectFromObject:objc_msgSend(object class:"objectForKey:" resolution:{v15), class, resolution}];
        if (v16)
        {
          [dictionary setObject:v16 forKey:v15];
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Settings/OKSettingsUtility.m" line:1282 andFormat:@"Object cannot be converted to dictionary of dynamic settings objects"];
        }
      }

      v12 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return dictionary;
}

@end