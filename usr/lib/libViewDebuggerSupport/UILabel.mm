@interface UILabel
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
@end

@implementation UILabel

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"adjustsFontSizeToFitWidth");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"b");
  v20[0] = Mutable;
  v18 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v18, @"propertyName", @"attributedText");
  CFDictionaryAddValue(v18, @"propertyRuntimeType", @"NSAttributedString");
  CFDictionaryAddValue(v18, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeAttributedString");
  CFDictionaryAddValue(v18, @"propertyFormat", @"attrStr");
  v20[1] = v18;
  v17 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v17, @"propertyName", @"enabled");
  CFDictionaryAddValue(v17, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v17, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v17, @"propertyFormat", @"b");
  v20[2] = v17;
  v16 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v16, @"propertyName", @"font");
  CFDictionaryAddValue(v16, @"propertyRuntimeType", @"UIFont");
  CFDictionaryAddValue(v16, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeFont");
  CFDictionaryAddValue(v16, @"propertyFormat", @"font");
  v20[3] = v16;
  v15 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v15, @"propertyName", @"highlighted");
  CFDictionaryAddValue(v15, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v15, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v15, @"propertyFormat", @"b");
  v20[4] = v15;
  v14 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v14, @"propertyName", @"highlightedTextColor");
  CFDictionaryAddValue(v14, @"propertyRuntimeType", @"UIColor");
  CFDictionaryAddValue(v14, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  v20[5] = v14;
  v13 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v13, @"propertyName", @"minimumScaleFactor");
  CFDictionaryAddValue(v13, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v13, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v13, @"propertyFormat", @"CGf");
  v20[6] = v13;
  v11 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v11, @"propertyName", @"numberOfLines");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"NSInteger");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v11, @"propertyFormat", @"integer");
  v20[7] = v11;
  v12 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v12, @"propertyName", @"shadowColor");
  CFDictionaryAddValue(v12, @"propertyRuntimeType", @"UIColor");
  CFDictionaryAddValue(v12, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  v20[8] = v12;
  v10 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v10, @"propertyName", @"shadowOffset");
  CFDictionaryAddValue(v10, @"propertyRuntimeType", @"CGSize");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeSize");
  CFDictionaryAddValue(v10, @"propertyFormat", @"CGf, CGf");
  v20[9] = v10;
  v2 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v2, @"propertyName", @"text");
  CFDictionaryAddValue(v2, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v2, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v2, @"propertyFormat", @"public.plain-text");
  v20[10] = v2;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"textColor");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"UIColor");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  v20[11] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"baselineAdjustment");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"UIBaselineAdjustment");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v4, @"propertyFormat", @"integer");
  v20[12] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"lineBreakMode");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"NSLineBreakMode");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v5, @"propertyFormat", @"integer");
  v20[13] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"textAlignment");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"NSTextAlignment");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v6, @"propertyFormat", @"integer");
  v20[14] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v7, @"propertyName", @"usesAttributedText");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v7, @"propertyFormat", @"b");
  v20[15] = v7;
  v8 = [NSArray arrayWithObjects:v20 count:16];

  return v8;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"usesAttributedText"])
  {
    attributedText = [objectCopy attributedText];
    error = [NSNumber numberWithInt:attributedText != 0];

    goto LABEL_24;
  }

  v11 = objectCopy;
  v12 = nameCopy;
  if (![v12 length])
  {
    goto LABEL_14;
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
      goto LABEL_6;
    }

LABEL_14:
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

    goto LABEL_23;
  }

  v13 = v12;
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_6:
  error = [v11 valueForKey:v13];
LABEL_23:

LABEL_24:

  return error;
}

@end