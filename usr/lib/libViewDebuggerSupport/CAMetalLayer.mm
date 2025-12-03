@interface CAMetalLayer
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
@end

@implementation CAMetalLayer

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"deviceName");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"public.plain-text");
  v13[0] = Mutable;
  v11 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v11, @"propertyName", @"preferredDeviceName");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v11, @"propertyFormat", @"public.plain-text");
  v13[1] = v11;
  v10 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v10, @"propertyName", @"pixelFormatName");
  CFDictionaryAddValue(v10, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v10, @"propertyFormat", @"public.plain-text");
  v13[2] = v10;
  v2 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v2, @"propertyName", @"colorSpaceName");
  CFDictionaryAddValue(v2, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v2, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v2, @"propertyFormat", @"public.plain-text");
  v13[3] = v2;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"drawableSize");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"CGSize");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeSize");
  CFDictionaryAddValue(v3, @"propertyFormat", @"CGf, CGf");
  v13[4] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"framebufferOnly");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v4, @"propertyFormat", @"b");
  v13[5] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"maximumDrawableCount");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"NSUInteger");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v5, @"propertyFormat", @"uinteger");
  v13[6] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"presentsWithTransaction");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v6, @"propertyFormat", @"b");
  v13[7] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v7, @"propertyName", @"allowsNextDrawableTimeout");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v7, @"propertyFormat", @"b");
  v13[8] = v7;
  v8 = [NSArray arrayWithObjects:v13 count:9];

  return v8;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"deviceName"])
  {
    device = [objectCopy device];
LABEL_5:
    v11 = device;
    error = [device name];
LABEL_6:

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"preferredDeviceName"])
  {
    device = [objectCopy preferredDevice];
    goto LABEL_5;
  }

  if ([nameCopy isEqualToString:@"pixelFormatName"])
  {
    [objectCopy pixelFormat];
    Name = MTLPixelFormatGetName();
    if (Name)
    {
      v14 = Name;
    }

    else
    {
      v14 = "Invalid";
    }

    error = [NSString stringWithUTF8String:v14];
    if ([error hasPrefix:@"MTLPixelFormat"])
    {
      v15 = [error substringFromIndex:{objc_msgSend(@"MTLPixelFormat", "length")}];

      error = v15;
    }
  }

  else
  {
    if (![nameCopy isEqualToString:@"colorSpaceName"])
    {
      v11 = objectCopy;
      v16 = nameCopy;
      if (![v16 length])
      {
        goto LABEL_30;
      }

      NSSelectorFromString(v16);
      if (objc_opt_respondsToSelector())
      {
        v17 = v16;
      }

      else
      {
        if ([v16 length] < 2)
        {
          uppercaseString = [v16 uppercaseString];
        }

        else
        {
          v18 = [v16 substringToIndex:1];
          uppercaseString2 = [v18 uppercaseString];
          v20 = [v16 substringFromIndex:1];
          uppercaseString = [uppercaseString2 stringByAppendingString:v20];
        }

        v22 = [@"is" stringByAppendingString:uppercaseString];
        NSSelectorFromString(v22);
        v17 = (objc_opt_respondsToSelector() & 1) != 0 ? v22 : 0;
      }

      if (v17)
      {
        error = [v11 valueForKey:v17];
      }

      else
      {
LABEL_30:
        if (error)
        {
          v23 = v16;
          if (v11)
          {
            v24 = [NSString stringWithFormat:@"%@", v11];
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

          v30[0] = @"propertyName";
          v30[1] = @"objectDescription";
          v31[0] = v25;
          v31[1] = v24;
          v30[2] = @"errorDescription";
          v31[2] = &stru_3C768;
          v26 = v25;
          v27 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];
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
      }

      goto LABEL_6;
    }

    error = CGColorSpaceCopyName([objectCopy colorspace]);
  }

LABEL_7:

  return error;
}

@end