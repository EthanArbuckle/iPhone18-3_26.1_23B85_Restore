@interface UIWindow
+ (id)fallback_debugHierarchyAdditionalGroupingIDs;
+ (id)fallback_debugHierarchyGroupingIDs;
+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)d onObject:(id)object outOptions:(id *)options;
+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)d outOptions:(id *)options;
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
@end

@implementation UIWindow

+ (id)fallback_debugHierarchyGroupingIDs
{
  v4 = @"com.apple.UIKit.UIWindow";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)d outOptions:(id *)options
{
  if ([d isEqualToString:{@"com.apple.UIKit.UIWindow", options}])
  {
    v4 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)fallback_debugHierarchyAdditionalGroupingIDs
{
  v4[0] = @"com.apple.UIKit.UIViewController";
  v4[1] = @"com.apple.UIKit.UIScreen";
  v4[2] = @"com.apple.UIKit.UIScene";
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)d onObject:(id)object outOptions:(id *)options
{
  dCopy = d;
  objectCopy = object;
  if ([dCopy isEqualToString:@"com.apple.UIKit.UIViewController"])
  {
    rootViewController = [objectCopy rootViewController];

    if (rootViewController)
    {
      rootViewController2 = [objectCopy rootViewController];
      v16 = rootViewController2;
      v10 = &v16;
LABEL_9:
      v12 = [NSArray arrayWithObjects:v10 count:1, v14, v15, v16];

      goto LABEL_11;
    }
  }

  else if ([dCopy isEqualToString:@"com.apple.UIKit.UIScreen"])
  {
    screen = [objectCopy screen];

    if (screen)
    {
      rootViewController2 = [objectCopy screen];
      v15 = rootViewController2;
      v10 = &v15;
      goto LABEL_9;
    }
  }

  else if ([dCopy isEqualToString:@"com.apple.UIKit.UIScene"])
  {
    rootViewController2 = [objectCopy windowScene];
    v14 = rootViewController2;
    v10 = &v14;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"keyWindow");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"b");
  v12[0] = Mutable;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"rootViewController");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v3, @"propertyFormat", @"objectInfo");
  v12[1] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"screen");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v4, @"propertyFormat", @"objectInfo");
  v12[2] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"windowLevel");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v5, @"propertyFormat", @"CGf");
  v12[3] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"internal");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v6, @"propertyFormat", @"b");
  v11 = 4;
  v7 = CFNumberCreate(0, kCFNumberCFIndexType, &v11);
  CFDictionaryAddValue(v6, @"visibility", v7);
  CFRelease(v7);
  v12[4] = v6;
  v8 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v8, @"propertyName", @"visible");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v8, @"propertyFormat", @"b");
  v12[5] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:6];

  return v9;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"internal"])
  {
    v10 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:0];
    v11 = [v10 containsObject:objectCopy];

    v12 = (v11 ^ 1);
LABEL_5:
    error = [NSNumber numberWithBool:v12];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"visible"])
  {
    v13 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
    v14 = [v13 containsObject:objectCopy];

    v12 = v14;
    goto LABEL_5;
  }

  if (![nameCopy isEqualToString:@"screenScale"])
  {
    screen = objectCopy;
    v16 = nameCopy;
    if ([(NSString *)v16 length])
    {
      NSSelectorFromString(v16);
      if (objc_opt_respondsToSelector())
      {
        v17 = v16;
        if (v17)
        {
LABEL_11:
          error = [screen valueForKey:v17];
LABEL_28:

          goto LABEL_29;
        }
      }

      else
      {
        if ([(NSString *)v16 length]< 2)
        {
          uppercaseString = [(NSString *)v16 uppercaseString];
        }

        else
        {
          v18 = [(NSString *)v16 substringToIndex:1];
          uppercaseString2 = [v18 uppercaseString];
          v20 = [(NSString *)v16 substringFromIndex:1];
          uppercaseString = [uppercaseString2 stringByAppendingString:v20];
        }

        v22 = [@"is" stringByAppendingString:uppercaseString];
        NSSelectorFromString(v22);
        if (objc_opt_respondsToSelector())
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          goto LABEL_11;
        }
      }
    }

    if (error)
    {
      v23 = v16;
      if (screen)
      {
        v24 = [NSString stringWithFormat:@"%@", screen];
      }

      else
      {
        v24 = &stru_3C768;
      }

      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = &stru_3C768;
      }

      v31[0] = @"propertyName";
      v31[1] = @"objectDescription";
      v32[0] = v25;
      v32[1] = v24;
      v31[2] = @"errorDescription";
      v32[2] = &stru_3C768;
      v26 = v25;
      v27 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
      v28 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v27];

      v29 = v28;
      *error = v28;

      v17 = 0;
      error = 0;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_28;
  }

  screen = [objectCopy screen];
  [screen scale];
  error = [NSNumber numberWithDouble:?];
LABEL_29:

LABEL_30:

  return error;
}

@end