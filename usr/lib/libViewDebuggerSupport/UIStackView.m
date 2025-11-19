@interface UIStackView
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
@end

@implementation UIStackView

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"baselineRelativeArrangement");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"b");
  v10[0] = Mutable;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"layoutMarginsRelativeArrangement");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v3, @"propertyFormat", @"b");
  v10[1] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"spacing");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v4, @"propertyFormat", @"CGf");
  v10[2] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"alignment");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"UIStackViewAlignment");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v5, @"propertyFormat", @"integer");
  v10[3] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"axis");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"UILayoutConstraintAxis");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v6, @"propertyFormat", @"integer");
  v10[4] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v7, @"propertyName", @"distribution");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"UIStackViewDistribution");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v7, @"propertyFormat", @"integer");
  v10[5] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:6];

  return v8;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  if (![v10 length])
  {
    goto LABEL_12;
  }

  NSSelectorFromString(v10);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ([v10 length] < 2)
    {
      v15 = [v10 uppercaseString];
    }

    else
    {
      v12 = [v10 substringToIndex:1];
      v13 = [v12 uppercaseString];
      v14 = [v10 substringFromIndex:1];
      v15 = [v13 stringByAppendingString:v14];
    }

    v16 = [@"is" stringByAppendingString:v15];
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
    if (a6)
    {
      v17 = v10;
      if (v9)
      {
        v18 = [NSString stringWithFormat:@"%@", v9];
      }

      else
      {
        v18 = &stru_3C768;
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
      v26[1] = v18;
      v25[2] = @"errorDescription";
      v26[2] = &stru_3C768;
      v20 = v19;
      v21 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
      v22 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v21];

      v23 = v22;
      *a6 = v22;

      v11 = 0;
      a6 = 0;
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
  a6 = [v9 valueForKey:v11];
LABEL_21:

  return a6;
}

@end