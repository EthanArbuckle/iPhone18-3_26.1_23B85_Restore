@interface UIImageView
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
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

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"preferredSymbolConfigurationSummary"])
  {
    error = [objectCopy preferredSymbolConfiguration];

    if (!error)
    {
      goto LABEL_13;
    }

    preferredSymbolConfiguration = [objectCopy preferredSymbolConfiguration];
    image = _UIImageSymbolConfigurationTextualSummary();
    goto LABEL_4;
  }

  if ([nameCopy isEqualToString:@"displaySymbolConfigurationSummary"])
  {
    preferredSymbolConfiguration = _UIImageViewGetCurrentImage();
    error = [preferredSymbolConfiguration symbolConfiguration];

    if (!error)
    {
      goto LABEL_12;
    }

    symbolConfiguration = [preferredSymbolConfiguration symbolConfiguration];
    v13 = _UIImageSymbolConfigurationTextualSummary();
    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"dbg_holdsSymbolImage"])
  {
    preferredSymbolConfiguration = _UIImageViewGetCurrentImage();
    symbolConfiguration = [preferredSymbolConfiguration symbolConfiguration];
    v13 = [NSNumber numberWithInt:symbolConfiguration != 0];
LABEL_10:
    error = v13;
LABEL_11:

    goto LABEL_12;
  }

  if (![nameCopy isEqualToString:@"image"])
  {
    preferredSymbolConfiguration = objectCopy;
    symbolConfiguration = nameCopy;
    if (![symbolConfiguration length])
    {
      goto LABEL_32;
    }

    NSSelectorFromString(symbolConfiguration);
    if (objc_opt_respondsToSelector())
    {
      v16 = symbolConfiguration;
    }

    else
    {
      if ([symbolConfiguration length] < 2)
      {
        uppercaseString = [symbolConfiguration uppercaseString];
      }

      else
      {
        v17 = [symbolConfiguration substringToIndex:1];
        uppercaseString2 = [v17 uppercaseString];
        v19 = [symbolConfiguration substringFromIndex:1];
        uppercaseString = [uppercaseString2 stringByAppendingString:v19];
      }

      v21 = [@"is" stringByAppendingString:uppercaseString];
      NSSelectorFromString(v21);
      v16 = (objc_opt_respondsToSelector() & 1) != 0 ? v21 : 0;
    }

    if (v16)
    {
      error = [preferredSymbolConfiguration valueForKey:v16];
    }

    else
    {
LABEL_32:
      if (error)
      {
        v22 = symbolConfiguration;
        if (preferredSymbolConfiguration)
        {
          v23 = [NSString stringWithFormat:@"%@", preferredSymbolConfiguration];
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
        *error = v27;

        v16 = 0;
        error = 0;
      }

      else
      {
        v16 = 0;
      }
    }

    goto LABEL_11;
  }

  v15 = _UIImageViewGetCurrentImage();
  preferredSymbolConfiguration = v15;
  if (v15)
  {
    image = v15;
  }

  else
  {
    image = [objectCopy image];
  }

LABEL_4:
  error = image;
LABEL_12:

LABEL_13:

  return error;
}

@end