@interface UINavigationBar
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
@end

@implementation UINavigationBar

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"backIndicatorImage");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"UIImage");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"public.png");
  valuePtr = 1;
  v3 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"propertyOptions", v3);
  CFRelease(v3);
  v30[0] = Mutable;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"backIndicatorTransitionMaskImage");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"UIImage");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  v23 = v4;
  CFDictionaryAddValue(v4, @"propertyFormat", @"public.png");
  valuePtr = 1;
  v5 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v4, @"propertyOptions", v5);
  CFRelease(v5);
  v30[1] = v4;
  v26 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v26, @"propertyName", @"barTintColor");
  CFDictionaryAddValue(v26, @"propertyRuntimeType", @"UIColor");
  CFDictionaryAddValue(v26, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  v30[2] = v26;
  v25 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v25, @"propertyName", @"delegate");
  CFDictionaryAddValue(v25, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v25, @"propertyFormat", @"objectInfo");
  v30[3] = v25;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"shadowImage");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"UIImage");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v6, @"propertyFormat", @"public.png");
  valuePtr = 1;
  v7 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v6, @"propertyOptions", v7);
  CFRelease(v7);
  v30[4] = v6;
  v22 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v22, @"propertyName", @"translucent");
  CFDictionaryAddValue(v22, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v22, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v22, @"propertyFormat", @"b");
  v30[5] = v22;
  v8 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v8, @"propertyName", @"barStyle");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"UIBarStyle");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v8, @"propertyFormat", @"integer");
  v30[6] = v8;
  v9 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v9, @"propertyName", @"titleFont");
  CFDictionaryAddValue(v9, @"propertyRuntimeType", @"UIFont");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeFont");
  CFDictionaryAddValue(v9, @"propertyFormat", @"font");
  v30[7] = v9;
  v10 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v10, @"propertyName", @"titleTextColor");
  CFDictionaryAddValue(v10, @"propertyRuntimeType", @"UIColor");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  v30[8] = v10;
  v11 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v11, @"propertyName", @"titleTextShadowColor");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"UIColor");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  v30[9] = v11;
  v12 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v12, @"propertyName", @"titleTextShadowOffset");
  CFDictionaryAddValue(v12, @"propertyRuntimeType", @"CGSize");
  CFDictionaryAddValue(v12, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeSize");
  CFDictionaryAddValue(v12, @"propertyFormat", @"CGf, CGf");
  v30[10] = v12;
  v24 = [NSArray arrayWithObjects:v30 count:11];

  v27 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v27, @"propertyName", @"prefersLargeTitles");
  CFDictionaryAddValue(v27, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v27, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v27, @"propertyFormat", @"b");
  v29[0] = v27;
  v13 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v13, @"propertyName", @"dbg_hasLargeTitleTextAttributes");
  CFDictionaryAddValue(v13, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v13, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v13, @"propertyFormat", @"b");
  valuePtr = 8;
  v14 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v13, @"visibility", v14);
  CFRelease(v14);
  v29[1] = v13;
  v15 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v15, @"propertyName", @"largeTitleFont");
  CFDictionaryAddValue(v15, @"propertyRuntimeType", @"UIFont");
  CFDictionaryAddValue(v15, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeFont");
  CFDictionaryAddValue(v15, @"propertyFormat", @"font");
  v29[2] = v15;
  v16 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v16, @"propertyName", @"largeTitleTextColor");
  CFDictionaryAddValue(v16, @"propertyRuntimeType", @"UIColor");
  CFDictionaryAddValue(v16, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  v29[3] = v16;
  v17 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v17, @"propertyName", @"largeTitleTextShadowColor");
  CFDictionaryAddValue(v17, @"propertyRuntimeType", @"UIColor");
  CFDictionaryAddValue(v17, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  v29[4] = v17;
  v18 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v18, @"propertyName", @"largeTitleTextShadowOffset");
  CFDictionaryAddValue(v18, @"propertyRuntimeType", @"CGSize");
  CFDictionaryAddValue(v18, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeSize");
  CFDictionaryAddValue(v18, @"propertyFormat", @"CGf, CGf");
  v29[5] = v18;
  v19 = [NSArray arrayWithObjects:v29 count:6];

  v20 = [v24 arrayByAddingObjectsFromArray:v19];

  return v20;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"largeTitleFont"])
  {
    largeTitleTextAttributes = [objectCopy largeTitleTextAttributes];
    v11 = largeTitleTextAttributes;
    v12 = &NSFontAttributeName;
LABEL_5:
    shadowColor = [largeTitleTextAttributes objectForKeyedSubscript:*v12];
LABEL_6:
    errorCopy = shadowColor;
LABEL_7:

    v15 = 1;
    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"largeTitleTextColor"])
  {
    largeTitleTextAttributes = [objectCopy largeTitleTextAttributes];
    v11 = largeTitleTextAttributes;
    v12 = &NSForegroundColorAttributeName;
    goto LABEL_5;
  }

  if ([nameCopy isEqualToString:@"largeTitleTextShadowColor"])
  {
    largeTitleTextAttributes2 = [objectCopy largeTitleTextAttributes];
    v11 = [largeTitleTextAttributes2 objectForKeyedSubscript:NSShadowAttributeName];

    shadowColor = [v11 shadowColor];
    goto LABEL_6;
  }

  if ([nameCopy isEqualToString:@"largeTitleTextShadowOffset"])
  {
    largeTitleTextAttributes3 = [objectCopy largeTitleTextAttributes];
    v11 = [largeTitleTextAttributes3 objectForKeyedSubscript:NSShadowAttributeName];

    [v11 shadowOffset];
    valuePtr = v24;
    v49[0] = v25;
    v26 = malloc_type_malloc(0x10uLL, 0x6004044C4A2DFuLL);
    *v26 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
    v26[1] = CFNumberCreate(0, kCFNumberCGFloatType, v49);
    errorCopy = CFArrayCreate(0, v26, 2, &kCFTypeArrayCallBacks);
    CFRelease(*v26);
    CFRelease(v26[1]);
    free(v26);
    goto LABEL_7;
  }

  v15 = 0;
  errorCopy = 0;
LABEL_8:
  if ([nameCopy isEqualToString:@"dbg_hasLargeTitleTextAttributes"])
  {
    error = &__kCFBooleanTrue;
LABEL_20:

    errorCopy = error;
    goto LABEL_21;
  }

  if ([nameCopy isEqualToString:@"titleFont"])
  {
    titleTextAttributes = [objectCopy titleTextAttributes];
    v17 = titleTextAttributes;
    v18 = &NSFontAttributeName;
LABEL_16:
    shadowColor2 = [titleTextAttributes objectForKeyedSubscript:*v18];
LABEL_17:
    error = shadowColor2;
LABEL_18:
    v21 = errorCopy;
    errorCopy = v17;
LABEL_19:

    goto LABEL_20;
  }

  if ([nameCopy isEqualToString:@"titleTextColor"])
  {
    titleTextAttributes = [objectCopy titleTextAttributes];
    v17 = titleTextAttributes;
    v18 = &NSForegroundColorAttributeName;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"titleTextShadowColor"])
  {
    titleTextAttributes2 = [objectCopy titleTextAttributes];
    v17 = [titleTextAttributes2 objectForKeyedSubscript:NSShadowAttributeName];

    shadowColor2 = [v17 shadowColor];
    goto LABEL_17;
  }

  if ([nameCopy isEqualToString:@"titleTextShadowOffset"])
  {
    titleTextAttributes3 = [objectCopy titleTextAttributes];
    v17 = [titleTextAttributes3 objectForKeyedSubscript:NSShadowAttributeName];

    [v17 shadowOffset];
    valuePtr = v29;
    v49[0] = v30;
    v31 = malloc_type_malloc(0x10uLL, 0x6004044C4A2DFuLL);
    *v31 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
    v31[1] = CFNumberCreate(0, kCFNumberCGFloatType, v49);
    error = CFArrayCreate(0, v31, 2, &kCFTypeArrayCallBacks);
    CFRelease(*v31);
    CFRelease(v31[1]);
    free(v31);
    goto LABEL_18;
  }

  if ((v15 & 1) == 0)
  {
    v21 = objectCopy;
    v32 = nameCopy;
    if (![v32 length])
    {
      goto LABEL_44;
    }

    NSSelectorFromString(v32);
    if (objc_opt_respondsToSelector())
    {
      v33 = v32;
    }

    else
    {
      if ([v32 length] < 2)
      {
        uppercaseString = [v32 uppercaseString];
      }

      else
      {
        v34 = [v32 substringToIndex:1];
        uppercaseString2 = [v34 uppercaseString];
        v36 = [v32 substringFromIndex:1];
        uppercaseString = [uppercaseString2 stringByAppendingString:v36];
      }

      v38 = [@"is" stringByAppendingString:uppercaseString];
      NSSelectorFromString(v38);
      v33 = (objc_opt_respondsToSelector() & 1) != 0 ? v38 : 0;
    }

    if (v33)
    {
      error = [v21 valueForKey:v33];
    }

    else
    {
LABEL_44:
      if (error)
      {
        v39 = v32;
        if (v21)
        {
          v40 = [NSString stringWithFormat:@"%@", v21];
        }

        else
        {
          v40 = &stru_3C768;
        }

        if (v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = &stru_3C768;
        }

        v46 = v40;
        v47[0] = @"propertyName";
        valuePtr = v41;
        v49[0] = v40;
        v47[1] = @"objectDescription";
        v47[2] = @"errorDescription";
        v49[1] = &stru_3C768;
        v42 = v41;
        v43 = [NSDictionary dictionaryWithObjects:&valuePtr forKeys:v47 count:3];
        v44 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v43];

        v45 = v44;
        *error = v44;

        v33 = 0;
        error = 0;
      }

      else
      {
        v33 = 0;
      }
    }

    goto LABEL_19;
  }

LABEL_21:

  return errorCopy;
}

@end