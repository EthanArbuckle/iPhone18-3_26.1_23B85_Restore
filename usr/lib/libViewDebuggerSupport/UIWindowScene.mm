@interface UIWindowScene
+ (id)fallback_debugHierarchyAdditionalGroupingIDs;
+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)d onObject:(id)object outOptions:(id *)options;
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
@end

@implementation UIWindowScene

+ (id)fallback_debugHierarchyAdditionalGroupingIDs
{
  v4[0] = @"com.apple.UIKit.UIWindow";
  v4[1] = @"com.apple.UIKit.UIScreen";
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)d onObject:(id)object outOptions:(id *)options
{
  dCopy = d;
  objectCopy = object;
  if ([dCopy isEqualToString:@"com.apple.UIKit.UIWindow"])
  {
    windows = [objectCopy windows];
  }

  else if ([dCopy isEqualToString:@"com.apple.UIKit.UIScreen"])
  {
    windows = [objectCopy screen];

    if (windows)
    {
      screen = [objectCopy screen];
      v11 = screen;
      windows = [NSArray arrayWithObjects:&v11 count:1];
    }
  }

  else
  {
    windows = 0;
  }

  return windows;
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

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"bounds"])
  {
    coordinateSpace = [objectCopy coordinateSpace];
    [coordinateSpace bounds];
    v34 = v11;
    v35 = v12;
    v36 = v13;
    v37 = v14;
    v15 = malloc_type_malloc(0x20uLL, 0x6004044C4A2DFuLL);
    for (i = 0; i != 4; ++i)
    {
      v15[i] = CFNumberCreate(0, kCFNumberCGFloatType, &v34 + i * 8);
    }

    error = CFArrayCreate(0, v15, 4, &kCFTypeArrayCallBacks);
    for (j = 0; j != 4; ++j)
    {
      CFRelease(v15[j]);
    }

    free(v15);
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"traitCollectionUserInterfaceStyle"])
  {
    coordinateSpace = [objectCopy traitCollection];
    userInterfaceStyle = [coordinateSpace userInterfaceStyle];
LABEL_15:
    error = [NSNumber numberWithInteger:userInterfaceStyle];
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"traitCollectionVerticalSizeClass"])
  {
    coordinateSpace = [objectCopy traitCollection];
    userInterfaceStyle = [coordinateSpace verticalSizeClass];
    goto LABEL_15;
  }

  if ([nameCopy isEqualToString:@"traitCollectionHorizontalSizeClass"])
  {
    coordinateSpace = [objectCopy traitCollection];
    userInterfaceStyle = [coordinateSpace horizontalSizeClass];
    goto LABEL_15;
  }

  if ([nameCopy isEqualToString:@"traitCollectionLayoutDirection"])
  {
    coordinateSpace = [objectCopy traitCollection];
    userInterfaceStyle = [coordinateSpace layoutDirection];
    goto LABEL_15;
  }

  coordinateSpace = objectCopy;
  v20 = nameCopy;
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
      uppercaseString = [v20 uppercaseString];
    }

    else
    {
      v22 = [v20 substringToIndex:1];
      uppercaseString2 = [v22 uppercaseString];
      v24 = [v20 substringFromIndex:1];
      uppercaseString = [uppercaseString2 stringByAppendingString:v24];
    }

    v26 = [@"is" stringByAppendingString:uppercaseString];
    NSSelectorFromString(v26);
    v21 = (objc_opt_respondsToSelector() & 1) != 0 ? v26 : 0;
  }

  if (v21)
  {
    error = [coordinateSpace valueForKey:v21];
  }

  else
  {
LABEL_31:
    if (error)
    {
      v27 = v20;
      if (coordinateSpace)
      {
        v28 = [NSString stringWithFormat:@"%@", coordinateSpace];
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
      *error = v32;

      v21 = 0;
      error = 0;
    }

    else
    {
      v21 = 0;
    }
  }

LABEL_16:

  return error;
}

@end