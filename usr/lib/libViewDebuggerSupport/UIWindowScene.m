@interface UIWindowScene
+ (id)fallback_debugHierarchyAdditionalGroupingIDs;
+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)a3 onObject:(id)a4 outOptions:(id *)a5;
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
@end

@implementation UIWindowScene

+ (id)fallback_debugHierarchyAdditionalGroupingIDs
{
  v4[0] = @"com.apple.UIKit.UIWindow";
  v4[1] = @"com.apple.UIKit.UIScreen";
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)a3 onObject:(id)a4 outOptions:(id *)a5
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"com.apple.UIKit.UIWindow"])
  {
    v8 = [v7 windows];
  }

  else if ([v6 isEqualToString:@"com.apple.UIKit.UIScreen"])
  {
    v8 = [v7 screen];

    if (v8)
    {
      v9 = [v7 screen];
      v11 = v9;
      v8 = [NSArray arrayWithObjects:&v11 count:1];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"coordinateSpace");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"objectInfo");
  v11[0] = Mutable;
  v9 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v9, @"propertyName", @"screen");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v9, @"propertyFormat", @"objectInfo");
  v11[1] = v9;
  v2 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v2, @"propertyName", @"bounds");
  CFDictionaryAddValue(v2, @"propertyRuntimeType", @"CGRect");
  CFDictionaryAddValue(v2, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeRect");
  CFDictionaryAddValue(v2, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v11[2] = v2;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"interfaceOrientation");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"UIInterfaceOrientation");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v3, @"propertyFormat", @"integer");
  v11[3] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"traitCollectionVerticalSizeClass");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"UIUserInterfaceSizeClass");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v4, @"propertyFormat", @"integer");
  v11[4] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"traitCollectionHorizontalSizeClass");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"UIUserInterfaceSizeClass");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v5, @"propertyFormat", @"integer");
  v11[5] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"traitCollectionLayoutDirection");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"UITraitEnvironmentLayoutDirection");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v6, @"propertyFormat", @"integer");
  v11[6] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:7];

  return v7;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"bounds"])
  {
    v10 = [v9 coordinateSpace];
    [v10 bounds];
    v34 = v11;
    v35 = v12;
    v36 = v13;
    v37 = v14;
    v15 = malloc_type_malloc(0x20uLL, 0x6004044C4A2DFuLL);
    for (i = 0; i != 4; ++i)
    {
      v15[i] = CFNumberCreate(0, kCFNumberCGFloatType, &v34 + i * 8);
    }

    a6 = CFArrayCreate(0, v15, 4, &kCFTypeArrayCallBacks);
    for (j = 0; j != 4; ++j)
    {
      CFRelease(v15[j]);
    }

    free(v15);
    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"traitCollectionUserInterfaceStyle"])
  {
    v10 = [v9 traitCollection];
    v18 = [v10 userInterfaceStyle];
LABEL_15:
    a6 = [NSNumber numberWithInteger:v18];
    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"traitCollectionVerticalSizeClass"])
  {
    v10 = [v9 traitCollection];
    v18 = [v10 verticalSizeClass];
    goto LABEL_15;
  }

  if ([v8 isEqualToString:@"traitCollectionHorizontalSizeClass"])
  {
    v10 = [v9 traitCollection];
    v18 = [v10 horizontalSizeClass];
    goto LABEL_15;
  }

  if ([v8 isEqualToString:@"traitCollectionLayoutDirection"])
  {
    v10 = [v9 traitCollection];
    v18 = [v10 layoutDirection];
    goto LABEL_15;
  }

  v10 = v9;
  v20 = v8;
  if (![v20 length])
  {
    goto LABEL_31;
  }

  NSSelectorFromString(v20);
  if (objc_opt_respondsToSelector())
  {
    v21 = v20;
  }

  else
  {
    if ([v20 length] < 2)
    {
      v25 = [v20 uppercaseString];
    }

    else
    {
      v22 = [v20 substringToIndex:1];
      v23 = [v22 uppercaseString];
      v24 = [v20 substringFromIndex:1];
      v25 = [v23 stringByAppendingString:v24];
    }

    v26 = [@"is" stringByAppendingString:v25];
    NSSelectorFromString(v26);
    v21 = (objc_opt_respondsToSelector() & 1) != 0 ? v26 : 0;
  }

  if (v21)
  {
    a6 = [v10 valueForKey:v21];
  }

  else
  {
LABEL_31:
    if (a6)
    {
      v27 = v20;
      if (v10)
      {
        v28 = [NSString stringWithFormat:@"%@", v10];
      }

      else
      {
        v28 = &stru_3C768;
      }

      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = &stru_3C768;
      }

      v38[0] = @"propertyName";
      v38[1] = @"objectDescription";
      v34 = v29;
      v35 = v28;
      v38[2] = @"errorDescription";
      v36 = &stru_3C768;
      v30 = v29;
      v31 = [NSDictionary dictionaryWithObjects:&v34 forKeys:v38 count:3];
      v32 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v31];

      v33 = v32;
      *a6 = v32;

      v21 = 0;
      a6 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

LABEL_16:

  return a6;
}

@end