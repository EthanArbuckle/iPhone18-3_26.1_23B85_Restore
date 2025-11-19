@interface UIWindow
+ (id)fallback_debugHierarchyAdditionalGroupingIDs;
+ (id)fallback_debugHierarchyGroupingIDs;
+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)a3 onObject:(id)a4 outOptions:(id *)a5;
+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)a3 outOptions:(id *)a4;
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
@end

@implementation UIWindow

+ (id)fallback_debugHierarchyGroupingIDs
{
  v4 = @"com.apple.UIKit.UIWindow";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)a3 outOptions:(id *)a4
{
  if ([a3 isEqualToString:{@"com.apple.UIKit.UIWindow", a4}])
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

+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)a3 onObject:(id)a4 outOptions:(id *)a5
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"com.apple.UIKit.UIViewController"])
  {
    v8 = [v7 rootViewController];

    if (v8)
    {
      v9 = [v7 rootViewController];
      v16 = v9;
      v10 = &v16;
LABEL_9:
      v12 = [NSArray arrayWithObjects:v10 count:1, v14, v15, v16];

      goto LABEL_11;
    }
  }

  else if ([v6 isEqualToString:@"com.apple.UIKit.UIScreen"])
  {
    v11 = [v7 screen];

    if (v11)
    {
      v9 = [v7 screen];
      v15 = v9;
      v10 = &v15;
      goto LABEL_9;
    }
  }

  else if ([v6 isEqualToString:@"com.apple.UIKit.UIScene"])
  {
    v9 = [v7 windowScene];
    v14 = v9;
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

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"internal"])
  {
    v10 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:0];
    v11 = [v10 containsObject:v9];

    v12 = (v11 ^ 1);
LABEL_5:
    a6 = [NSNumber numberWithBool:v12];
    goto LABEL_30;
  }

  if ([v8 isEqualToString:@"visible"])
  {
    v13 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
    v14 = [v13 containsObject:v9];

    v12 = v14;
    goto LABEL_5;
  }

  if (![v8 isEqualToString:@"screenScale"])
  {
    v15 = v9;
    v16 = v8;
    if ([(NSString *)v16 length])
    {
      NSSelectorFromString(v16);
      if (objc_opt_respondsToSelector())
      {
        v17 = v16;
        if (v17)
        {
LABEL_11:
          a6 = [v15 valueForKey:v17];
LABEL_28:

          goto LABEL_29;
        }
      }

      else
      {
        if ([(NSString *)v16 length]< 2)
        {
          v21 = [(NSString *)v16 uppercaseString];
        }

        else
        {
          v18 = [(NSString *)v16 substringToIndex:1];
          v19 = [v18 uppercaseString];
          v20 = [(NSString *)v16 substringFromIndex:1];
          v21 = [v19 stringByAppendingString:v20];
        }

        v22 = [@"is" stringByAppendingString:v21];
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

    if (a6)
    {
      v23 = v16;
      if (v15)
      {
        v24 = [NSString stringWithFormat:@"%@", v15];
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
      *a6 = v28;

      v17 = 0;
      a6 = 0;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_28;
  }

  v15 = [v9 screen];
  [v15 scale];
  a6 = [NSNumber numberWithDouble:?];
LABEL_29:

LABEL_30:

  return a6;
}

@end