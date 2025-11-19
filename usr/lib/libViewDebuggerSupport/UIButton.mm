@interface UIButton
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
@end

@implementation UIButton

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"adjustsImageWhenDisabled");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"b");
  v28[0] = Mutable;
  v25 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v25, @"propertyName", @"adjustsImageWhenHighlighted");
  CFDictionaryAddValue(v25, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v25, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v25, @"propertyFormat", @"b");
  v28[1] = v25;
  v24 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v24, @"propertyName", @"contentEdgeInsets");
  CFDictionaryAddValue(v24, @"propertyRuntimeType", @"UIEdgeInsets");
  CFDictionaryAddValue(v24, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeInsets");
  CFDictionaryAddValue(v24, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v28[2] = v24;
  v23 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v23, @"propertyName", @"currentAttributedTitle");
  CFDictionaryAddValue(v23, @"propertyRuntimeType", @"NSAttributedString");
  CFDictionaryAddValue(v23, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeAttributedString");
  CFDictionaryAddValue(v23, @"propertyFormat", @"attrStr");
  v28[3] = v23;
  v2 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v2, @"propertyName", @"currentBackgroundImage");
  CFDictionaryAddValue(v2, @"propertyRuntimeType", @"UIImage");
  CFDictionaryAddValue(v2, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  v22 = v2;
  CFDictionaryAddValue(v2, @"propertyFormat", @"public.png");
  valuePtr = 1;
  v3 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v2, @"propertyOptions", v3);
  CFRelease(v3);
  v28[4] = v2;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"currentImage");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"UIImage");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v4, @"propertyFormat", @"public.png");
  valuePtr = 1;
  v5 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v4, @"propertyOptions", v5);
  CFRelease(v5);
  v28[5] = v4;
  v21 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v21, @"propertyName", @"currentTitle");
  CFDictionaryAddValue(v21, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v21, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v21, @"propertyFormat", @"public.plain-text");
  v28[6] = v21;
  v20 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v20, @"propertyName", @"currentTitleColor");
  CFDictionaryAddValue(v20, @"propertyRuntimeType", @"UIColor");
  CFDictionaryAddValue(v20, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  v28[7] = v20;
  v19 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v19, @"propertyName", @"currentTitleShadowColor");
  CFDictionaryAddValue(v19, @"propertyRuntimeType", @"UIColor");
  CFDictionaryAddValue(v19, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  v28[8] = v19;
  v18 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v18, @"propertyName", @"imageEdgeInsets");
  CFDictionaryAddValue(v18, @"propertyRuntimeType", @"UIEdgeInsets");
  CFDictionaryAddValue(v18, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeInsets");
  CFDictionaryAddValue(v18, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v28[9] = v18;
  v17 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v17, @"propertyName", @"reversesTitleShadowWhenHighlighted");
  CFDictionaryAddValue(v17, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v17, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v17, @"propertyFormat", @"b");
  v28[10] = v17;
  v16 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v16, @"propertyName", @"showsTouchWhenHighlighted");
  CFDictionaryAddValue(v16, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v16, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v16, @"propertyFormat", @"b");
  v28[11] = v16;
  v15 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v15, @"propertyName", @"titleEdgeInsets");
  CFDictionaryAddValue(v15, @"propertyRuntimeType", @"UIEdgeInsets");
  CFDictionaryAddValue(v15, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeInsets");
  CFDictionaryAddValue(v15, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v28[12] = v15;
  v14 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v14, @"propertyName", @"_titleShadowOffset");
  CFDictionaryAddValue(v14, @"propertyRuntimeType", @"CGSize");
  CFDictionaryAddValue(v14, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeSize");
  CFDictionaryAddValue(v14, @"propertyFormat", @"CGf, CGf");
  v28[13] = v14;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"buttonType");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"UIButtonType");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v6, @"propertyFormat", @"integer");
  v28[14] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v7, @"propertyName", @"dbgInspectedHasSingleTarget");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v7, @"propertyFormat", @"b");
  v28[15] = v7;
  v8 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v8, @"propertyName", @"hasAttributedTitle");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v8, @"propertyFormat", @"b");
  v28[16] = v8;
  v9 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v9, @"propertyName", @"_lineBreakMode");
  CFDictionaryAddValue(v9, @"propertyRuntimeType", @"NSLineBreakMode");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v9, @"propertyFormat", @"integer");
  v28[17] = v9;
  v10 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v10, @"propertyName", @"target");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v10, @"propertyFormat", @"objectInfo");
  v28[18] = v10;
  v11 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v11, @"propertyName", @"touchUpAction");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v11, @"propertyFormat", @"public.plain-text");
  v28[19] = v11;
  v12 = [NSArray arrayWithObjects:v28 count:20];

  return v12;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"dbgInspectedHasSingleTarget"])
  {
    v10 = [v9 allTargets];
    v11 = [v10 count] == &dword_0 + 1;
LABEL_5:
    v12 = [NSNumber numberWithInt:v11];
LABEL_6:
    a6 = v12;
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"hasAttributedTitle"])
  {
    v10 = [v9 currentAttributedTitle];
    v11 = v10 != 0;
    goto LABEL_5;
  }

  if ([v8 isEqualToString:@"target"])
  {
    v10 = [v9 allTargets];
    v12 = [v10 anyObject];
    goto LABEL_6;
  }

  if ([v8 isEqualToString:@"touchUpAction"])
  {
    v10 = [v9 allTargets];
    v14 = [v10 anyObject];
    v15 = [v9 actionsForTarget:v14 forControlEvent:64];
    a6 = [v15 firstObject];
  }

  else
  {
    v10 = v9;
    v14 = v8;
    if (![v14 length])
    {
      goto LABEL_26;
    }

    NSSelectorFromString(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = v14;
    }

    else
    {
      if ([v14 length] < 2)
      {
        v20 = [v14 uppercaseString];
      }

      else
      {
        v17 = [v14 substringToIndex:1];
        v18 = [v17 uppercaseString];
        v19 = [v14 substringFromIndex:1];
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
LABEL_26:
      if (a6)
      {
        v22 = v14;
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
  }

LABEL_7:

  return a6;
}

@end