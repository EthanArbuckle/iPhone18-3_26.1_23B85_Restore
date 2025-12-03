@interface UIDatePicker
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
@end

@implementation UIDatePicker

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"countDownDuration");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"CGf");
  v11[0] = Mutable;
  v2 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v2, @"propertyName", @"minuteInterval");
  CFDictionaryAddValue(v2, @"propertyRuntimeType", @"NSInteger");
  CFDictionaryAddValue(v2, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v2, @"propertyFormat", @"integer");
  v11[1] = v2;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"date");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v3, @"propertyFormat", @"public.plain-text");
  v11[2] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"datePickerMode");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"UIDatePickerMode");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v4, @"propertyFormat", @"integer");
  v11[3] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"localeIdentifier");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v5, @"propertyFormat", @"public.plain-text");
  v11[4] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"maximumDate");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v6, @"propertyFormat", @"public.plain-text");
  v11[5] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v7, @"propertyName", @"minimumDate");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v7, @"propertyFormat", @"public.plain-text");
  v11[6] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:7];

  return v8;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"date"])
  {
    date = [objectCopy date];
LABEL_3:
    locale = date;
    localeIdentifier = [date description];
LABEL_6:
    error = localeIdentifier;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"localeIdentifier"])
  {
    locale = [objectCopy locale];
    localeIdentifier = [locale localeIdentifier];
    goto LABEL_6;
  }

  if ([nameCopy isEqualToString:@"maximumDate"])
  {
    date = [objectCopy maximumDate];
    goto LABEL_3;
  }

  if ([nameCopy isEqualToString:@"minimumDate"])
  {
    date = [objectCopy minimumDate];
    goto LABEL_3;
  }

  locale = objectCopy;
  v14 = nameCopy;
  if (![v14 length])
  {
    goto LABEL_26;
  }

  NSSelectorFromString(v14);
  if (objc_opt_respondsToSelector())
  {
    v15 = v14;
  }

  else
  {
    if ([v14 length] < 2)
    {
      uppercaseString = [v14 uppercaseString];
    }

    else
    {
      v16 = [v14 substringToIndex:1];
      uppercaseString2 = [v16 uppercaseString];
      v18 = [v14 substringFromIndex:1];
      uppercaseString = [uppercaseString2 stringByAppendingString:v18];
    }

    v20 = [@"is" stringByAppendingString:uppercaseString];
    NSSelectorFromString(v20);
    v15 = (objc_opt_respondsToSelector() & 1) != 0 ? v20 : 0;
  }

  if (v15)
  {
    error = [locale valueForKey:v15];
  }

  else
  {
LABEL_26:
    if (error)
    {
      v21 = v14;
      if (locale)
      {
        v22 = [NSString stringWithFormat:@"%@", locale];
      }

      else
      {
        v22 = &stru_3C768;
      }

      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = &stru_3C768;
      }

      v28[0] = @"propertyName";
      v28[1] = @"objectDescription";
      v29[0] = v23;
      v29[1] = v22;
      v28[2] = @"errorDescription";
      v29[2] = &stru_3C768;
      v24 = v23;
      v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
      v26 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v25];

      v27 = v26;
      *error = v26;

      v15 = 0;
      error = 0;
    }

    else
    {
      v15 = 0;
    }
  }

LABEL_7:

  return error;
}

@end