@interface UINavigationItem
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
@end

@implementation UINavigationItem

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"prompt");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"public.plain-text");
  v7[0] = Mutable;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"title");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v3, @"propertyFormat", @"public.plain-text");
  v7[1] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"backButtonTitle");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v4, @"propertyFormat", @"public.plain-text");
  v7[2] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:3];

  return v5;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"backButtonTitle"])
  {
    backBarButtonItem = [objectCopy backBarButtonItem];
    error = [backBarButtonItem title];
    goto LABEL_24;
  }

  backBarButtonItem = objectCopy;
  v11 = nameCopy;
  if (![v11 length])
  {
    goto LABEL_14;
  }

  NSSelectorFromString(v11);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ([v11 length] < 2)
    {
      uppercaseString = [v11 uppercaseString];
    }

    else
    {
      v13 = [v11 substringToIndex:1];
      uppercaseString2 = [v13 uppercaseString];
      v15 = [v11 substringFromIndex:1];
      uppercaseString = [uppercaseString2 stringByAppendingString:v15];
    }

    v17 = [@"is" stringByAppendingString:uppercaseString];
    NSSelectorFromString(v17);
    if (objc_opt_respondsToSelector())
    {
      v12 = v17;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      goto LABEL_6;
    }

LABEL_14:
    if (error)
    {
      v18 = v11;
      if (backBarButtonItem)
      {
        v19 = [NSString stringWithFormat:@"%@", backBarButtonItem];
      }

      else
      {
        v19 = &stru_3C768;
      }

      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = &stru_3C768;
      }

      v26[0] = @"propertyName";
      v26[1] = @"objectDescription";
      v27[0] = v20;
      v27[1] = v19;
      v26[2] = @"errorDescription";
      v27[2] = &stru_3C768;
      v21 = v20;
      v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
      v23 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v22];

      v24 = v23;
      *error = v23;

      v12 = 0;
      error = 0;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_23;
  }

  v12 = v11;
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_6:
  error = [backBarButtonItem valueForKey:v12];
LABEL_23:

LABEL_24:

  return error;
}

@end