@interface UIImageView
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
@end

@implementation UIImageView

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"highlighted");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"b");
  v16[0] = Mutable;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"highlightedImage");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"UIImage");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v3, @"propertyFormat", @"public.png");
  valuePtr = 1;
  v4 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v3, @"propertyOptions", v4);
  CFRelease(v4);
  v16[1] = v3;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"image");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"UIImage");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v5, @"propertyFormat", @"public.png");
  valuePtr = 1;
  v6 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v5, @"propertyOptions", v6);
  CFRelease(v6);
  v16[2] = v5;
  v7 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v7, @"propertyName", @"dbg_holdsSymbolImage");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v7, @"propertyFormat", @"b");
  v16[3] = v7;
  v13 = [NSArray arrayWithObjects:v16 count:4];

  v8 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v8, @"propertyName", @"preferredSymbolConfigurationSummary");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v8, @"propertyFormat", @"public.plain-text");
  v15[0] = v8;
  v9 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v9, @"propertyName", @"displaySymbolConfigurationSummary");
  CFDictionaryAddValue(v9, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v9, @"propertyFormat", @"public.plain-text");
  v15[1] = v9;
  v10 = [NSArray arrayWithObjects:v15 count:2];

  v11 = [v13 arrayByAddingObjectsFromArray:v10];

  return v11;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"preferredSymbolConfigurationSummary"])
  {
    a6 = [v9 preferredSymbolConfiguration];

    if (!a6)
    {
      goto LABEL_13;
    }

    v10 = [v9 preferredSymbolConfiguration];
    v11 = _UIImageSymbolConfigurationTextualSummary();
    goto LABEL_4;
  }

  if ([v8 isEqualToString:@"displaySymbolConfigurationSummary"])
  {
    v10 = _UIImageViewGetCurrentImage();
    a6 = [v10 symbolConfiguration];

    if (!a6)
    {
      goto LABEL_12;
    }

    v12 = [v10 symbolConfiguration];
    v13 = _UIImageSymbolConfigurationTextualSummary();
    goto LABEL_10;
  }

  if ([v8 isEqualToString:@"dbg_holdsSymbolImage"])
  {
    v10 = _UIImageViewGetCurrentImage();
    v12 = [v10 symbolConfiguration];
    v13 = [NSNumber numberWithInt:v12 != 0];
LABEL_10:
    a6 = v13;
LABEL_11:

    goto LABEL_12;
  }

  if (![v8 isEqualToString:@"image"])
  {
    v10 = v9;
    v12 = v8;
    if (![v12 length])
    {
      goto LABEL_32;
    }

    NSSelectorFromString(v12);
    if (objc_opt_respondsToSelector())
    {
      v16 = v12;
    }

    else
    {
      if ([v12 length] < 2)
      {
        v20 = [v12 uppercaseString];
      }

      else
      {
        v17 = [v12 substringToIndex:1];
        v18 = [v17 uppercaseString];
        v19 = [v12 substringFromIndex:1];
        v20 = [v18 stringByAppendingString:v19];
      }

      v21 = [@"is" stringByAppendingString:v20];
      NSSelectorFromString(v21);
      v16 = (objc_opt_respondsToSelector() & 1) != 0 ? v21 : 0;
    }

    if (v16)
    {
      a6 = [v10 valueForKey:v16];
    }

    else
    {
LABEL_32:
      if (a6)
      {
        v22 = v12;
        if (v10)
        {
          v23 = [NSString stringWithFormat:@"%@", v10];
        }

        else
        {
          v23 = &stru_3C768;
        }

        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = &stru_3C768;
        }

        v29[0] = @"propertyName";
        v29[1] = @"objectDescription";
        v30[0] = v24;
        v30[1] = v23;
        v29[2] = @"errorDescription";
        v30[2] = &stru_3C768;
        v25 = v24;
        v26 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
        v27 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v26];

        v28 = v27;
        *a6 = v27;

        v16 = 0;
        a6 = 0;
      }

      else
      {
        v16 = 0;
      }
    }

    goto LABEL_11;
  }

  v15 = _UIImageViewGetCurrentImage();
  v10 = v15;
  if (v15)
  {
    v11 = v15;
  }

  else
  {
    v11 = [v9 image];
  }

LABEL_4:
  a6 = v11;
LABEL_12:

LABEL_13:

  return a6;
}

@end