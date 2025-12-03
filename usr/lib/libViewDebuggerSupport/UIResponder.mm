@interface UIResponder
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
@end

@implementation UIResponder

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"isFirstResponder");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"b");
  v5 = Mutable;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  v10 = nameCopy;
  if (![v10 length])
  {
    goto LABEL_12;
  }

  NSSelectorFromString(v10);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ([v10 length] < 2)
    {
      uppercaseString = [v10 uppercaseString];
    }

    else
    {
      v12 = [v10 substringToIndex:1];
      uppercaseString2 = [v12 uppercaseString];
      v14 = [v10 substringFromIndex:1];
      uppercaseString = [uppercaseString2 stringByAppendingString:v14];
    }

    v16 = [@"is" stringByAppendingString:uppercaseString];
    NSSelectorFromString(v16);
    if (objc_opt_respondsToSelector())
    {
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      goto LABEL_4;
    }

LABEL_12:
    if (error)
    {
      v17 = v10;
      if (objectCopy)
      {
        objectCopy = [NSString stringWithFormat:@"%@", objectCopy];
      }

      else
      {
        objectCopy = &stru_3C768;
      }

      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = &stru_3C768;
      }

      v25[0] = @"propertyName";
      v25[1] = @"objectDescription";
      v26[0] = v19;
      v26[1] = objectCopy;
      v25[2] = @"errorDescription";
      v26[2] = &stru_3C768;
      v20 = v19;
      v21 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
      v22 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v21];

      v23 = v22;
      *error = v22;

      v11 = 0;
      error = 0;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_21;
  }

  v11 = v10;
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_4:
  error = [objectCopy valueForKey:v11];
LABEL_21:

  return error;
}

@end