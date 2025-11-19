@interface CAShapeLayer
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
@end

@implementation CAShapeLayer

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"fillColor");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"color");
  v15[0] = Mutable;
  v13 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v13, @"propertyName", @"fillRule");
  CFDictionaryAddValue(v13, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v13, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v13, @"propertyFormat", @"public.plain-text");
  v15[1] = v13;
  v12 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v12, @"propertyName", @"lineCap");
  CFDictionaryAddValue(v12, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v12, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v12, @"propertyFormat", @"public.plain-text");
  v15[2] = v12;
  v11 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v11, @"propertyName", @"lineDashPhase");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v11, @"propertyFormat", @"CGf");
  v15[3] = v11;
  v10 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v10, @"propertyName", @"lineJoin");
  CFDictionaryAddValue(v10, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v10, @"propertyFormat", @"public.plain-text");
  v15[4] = v10;
  v2 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v2, @"propertyName", @"lineWidth");
  CFDictionaryAddValue(v2, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v2, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v2, @"propertyFormat", @"CGf");
  v15[5] = v2;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"miterLimit");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v3, @"propertyFormat", @"CGf");
  v15[6] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"path");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v4, @"propertyFormat", @"objectInfo");
  v15[7] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"strokeColor");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(v5, @"propertyFormat", @"color");
  v15[8] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"strokeEnd");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v6, @"propertyFormat", @"CGf");
  v15[9] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v7, @"propertyName", @"strokeStart");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v7, @"propertyFormat", @"CGf");
  v15[10] = v7;
  v8 = [NSArray arrayWithObjects:v15 count:11];

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