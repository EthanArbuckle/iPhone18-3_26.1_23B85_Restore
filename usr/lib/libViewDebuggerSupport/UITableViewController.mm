@interface UITableViewController
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
@end

@implementation UITableViewController

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"tableView");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"objectInfo");
  v7[0] = Mutable;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"clearsSelectionOnViewWillAppear");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v3, @"propertyFormat", @"b");
  v7[1] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"refreshControl");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v4, @"propertyFormat", @"objectInfo");
  v7[2] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:3];

  return v5;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"tableView"])
  {
    error = [objectCopy viewIfLoaded];

    if (!error)
    {
      goto LABEL_29;
    }

    tableView = [objectCopy tableView];
LABEL_7:
    error = tableView;
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"refreshControl"])
  {
    error = [objectCopy viewIfLoaded];

    if (!error)
    {
      goto LABEL_29;
    }

    tableView = [objectCopy refreshControl];
    goto LABEL_7;
  }

  v11 = objectCopy;
  v12 = nameCopy;
  if (![v12 length])
  {
    goto LABEL_19;
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
      goto LABEL_11;
    }

LABEL_19:
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

    goto LABEL_28;
  }

  v13 = v12;
  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_11:
  error = [v11 valueForKey:v13];
LABEL_28:

LABEL_29:

  return error;
}

@end