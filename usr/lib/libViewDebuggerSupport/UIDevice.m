@interface UIDevice
+ (id)fallback_debugHierarchyGroupingIDs;
+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)a3 outOptions:(id *)a4;
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
@end

@implementation UIDevice

+ (id)fallback_debugHierarchyGroupingIDs
{
  v4 = @"com.apple.UIKit.UIDevice";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)a3 outOptions:(id *)a4
{
  if ([a3 isEqualToString:{@"com.apple.UIKit.UIDevice", a4}])
  {
    v4 = +[UIDevice currentDevice];
    v5 = v4;
    if (v4)
    {
      v8 = v4;
      v6 = [NSArray arrayWithObjects:&v8 count:1];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"batteryLevel");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"float");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"f");
  v16[0] = Mutable;
  v13 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v13, @"propertyName", @"generatesDeviceOrientationNotifications");
  CFDictionaryAddValue(v13, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v13, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v13, @"propertyFormat", @"b");
  v16[1] = v13;
  v12 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v12, @"propertyName", @"localizedModel");
  CFDictionaryAddValue(v12, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v12, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v12, @"propertyFormat", @"public.plain-text");
  v16[2] = v12;
  v11 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v11, @"propertyName", @"model");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v11, @"propertyFormat", @"public.plain-text");
  v16[3] = v11;
  v10 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v10, @"propertyName", @"multitaskingSupported");
  CFDictionaryAddValue(v10, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v10, @"propertyFormat", @"b");
  v16[4] = v10;
  v2 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v2, @"propertyName", @"name");
  CFDictionaryAddValue(v2, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v2, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v2, @"propertyFormat", @"public.plain-text");
  v16[5] = v2;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"systemName");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v3, @"propertyFormat", @"public.plain-text");
  v16[6] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"systemVersion");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v4, @"propertyFormat", @"public.plain-text");
  v16[7] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"hardwareType");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v5, @"propertyFormat", @"public.plain-text");
  valuePtr = 4;
  v6 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v5, @"visibility", v6);
  CFRelease(v6);
  v16[8] = v5;
  v7 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v7, @"propertyName", @"orientation");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"UIDeviceOrientation");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v7, @"propertyFormat", @"integer");
  v16[9] = v7;
  v8 = [NSArray arrayWithObjects:v16 count:10];

  return v8;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if (![v8 isEqualToString:@"hardwareType"])
  {
    v11 = v9;
    v12 = v8;
    if ([(NSString *)v12 length])
    {
      NSSelectorFromString(v12);
      if (objc_opt_respondsToSelector())
      {
        v13 = v12;
        if (v13)
        {
LABEL_8:
          a6 = [v11 valueForKey:v13];
LABEL_25:

          goto LABEL_26;
        }
      }

      else
      {
        if ([(NSString *)v12 length]< 2)
        {
          v17 = [(NSString *)v12 uppercaseString];
        }

        else
        {
          v14 = [(NSString *)v12 substringToIndex:1];
          v15 = [v14 uppercaseString];
          v16 = [(NSString *)v12 substringFromIndex:1];
          v17 = [v15 stringByAppendingString:v16];
        }

        v18 = [@"is" stringByAppendingString:v17];
        NSSelectorFromString(v18);
        if (objc_opt_respondsToSelector())
        {
          v13 = v18;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          goto LABEL_8;
        }
      }
    }

    if (a6)
    {
      v19 = v12;
      if (v11)
      {
        v20 = [NSString stringWithFormat:@"%@", v11];
      }

      else
      {
        v20 = &stru_3C768;
      }

      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = &stru_3C768;
      }

      v28[0] = @"propertyName";
      v28[1] = @"objectDescription";
      *v27.sysname = v21;
      *&v27.sysname[8] = v20;
      v28[2] = @"errorDescription";
      *&v27.sysname[16] = &stru_3C768;
      v22 = v21;
      v23 = [NSDictionary dictionaryWithObjects:&v27 forKeys:v28 count:3];
      v24 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v23];

      v25 = v24;
      *a6 = v24;

      v13 = 0;
      a6 = 0;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_25;
  }

  memset(&v27, 0, 512);
  uname(&v27);
  v10 = [NSString stringWithCString:v27.machine encoding:4];
  if (v10)
  {
    a6 = v10;
  }

  else
  {
    a6 = @"(Unknown)";
  }

LABEL_26:

  return a6;
}

@end