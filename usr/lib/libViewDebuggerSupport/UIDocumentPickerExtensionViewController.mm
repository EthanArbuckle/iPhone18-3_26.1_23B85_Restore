@interface UIDocumentPickerExtensionViewController
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
@end

@implementation UIDocumentPickerExtensionViewController

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"providerIdentifier");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"public.plain-text");
  v8[0] = Mutable;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"documentPickerMode");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"UIDocumentPickerMode");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v3, @"propertyFormat", @"uinteger");
  v8[1] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"originalURL");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"NSURL");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeCustom");
  CFDictionaryAddValue(v4, @"propertyFormat", @"public.plain-text");
  v8[2] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"documentStorageURL");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"NSURL");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeCustom");
  CFDictionaryAddValue(v5, @"propertyFormat", @"public.plain-text");
  v8[3] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:4];

  return v6;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"originalURL"])
  {
    originalURL = [objectCopy originalURL];
LABEL_5:
    v11 = originalURL;
    error = [originalURL absoluteString];
    goto LABEL_27;
  }

  if ([nameCopy isEqualToString:@"originalURL"])
  {
    originalURL = [objectCopy documentStorageURL];
    goto LABEL_5;
  }

  v11 = objectCopy;
  v12 = nameCopy;
  if (![v12 length])
  {
    goto LABEL_17;
  }

  NSSelectorFromString(v12);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ([v12 length] < 2)
    {
      uppercaseString = [v12 uppercaseString];
    }

    else
    {
      v14 = [v12 substringToIndex:1];
      uppercaseString2 = [v14 uppercaseString];
      v16 = [v12 substringFromIndex:1];
      uppercaseString = [uppercaseString2 stringByAppendingString:v16];
    }

    v18 = [@"is" stringByAppendingString:uppercaseString];
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
      goto LABEL_9;
    }

LABEL_17:
    if (error)
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

      v27[0] = @"propertyName";
      v27[1] = @"objectDescription";
      v28[0] = v21;
      v28[1] = v20;
      v27[2] = @"errorDescription";
      v28[2] = &stru_3C768;
      v22 = v21;
      v23 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
      v24 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v23];

      v25 = v24;
      *error = v24;

      v13 = 0;
      error = 0;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_26;
  }

  v13 = v12;
  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_9:
  error = [v11 valueForKey:v13];
LABEL_26:

LABEL_27:

  return error;
}

@end