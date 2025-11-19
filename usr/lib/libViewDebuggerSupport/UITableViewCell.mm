@interface UITableViewCell
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
@end

@implementation UITableViewCell

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"indentationLevel");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"NSInteger");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"integer");
  v16[0] = Mutable;
  v13 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v13, @"propertyName", @"indentationWidth");
  CFDictionaryAddValue(v13, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v13, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v13, @"propertyFormat", @"CGf");
  v16[1] = v13;
  v12 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v12, @"propertyName", @"reuseIdentifier");
  CFDictionaryAddValue(v12, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v12, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v12, @"propertyFormat", @"public.plain-text");
  v16[2] = v12;
  v11 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v11, @"propertyName", @"separatorInset");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"UIEdgeInsets");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeInsets");
  CFDictionaryAddValue(v11, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v16[3] = v11;
  v10 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v10, @"propertyName", @"shouldIndentWhileEditing");
  CFDictionaryAddValue(v10, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v10, @"propertyFormat", @"b");
  v16[4] = v10;
  v2 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v2, @"propertyName", @"showsReorderControl");
  CFDictionaryAddValue(v2, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v2, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v2, @"propertyFormat", @"b");
  v16[5] = v2;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"accessoryType");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"UITableViewCellAccessoryType");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v3, @"propertyFormat", @"integer");
  v16[6] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"editingAccessoryType");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"UITableViewCellAccessoryType");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v4, @"propertyFormat", @"integer");
  v16[7] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"selectionStyle");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"UITableViewCellSelectionStyle");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v5, @"propertyFormat", @"integer");
  v16[8] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"image");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"UIImage");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v6, @"propertyFormat", @"public.png");
  valuePtr = 1;
  v7 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v6, @"propertyOptions", v7);
  CFRelease(v7);
  v16[9] = v6;
  v8 = [NSArray arrayWithObjects:v16 count:10];

  return v8;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"image"])
  {
    v10 = [v9 imageView];
    a6 = [v10 image];
    goto LABEL_24;
  }

  v10 = v9;
  v11 = v8;
  if (![v11 length])
  {
    goto LABEL_14;
  }

  NSSelectorFromString(v11);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ([v11 length] < 2)
    {
      v16 = [v11 uppercaseString];
    }

    else
    {
      v13 = [v11 substringToIndex:1];
      v14 = [v13 uppercaseString];
      v15 = [v11 substringFromIndex:1];
      v16 = [v14 stringByAppendingString:v15];
    }

    v17 = [@"is" stringByAppendingString:v16];
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
    if (a6)
    {
      v18 = v11;
      if (v10)
      {
        v19 = [NSString stringWithFormat:@"%@", v10];
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
      *a6 = v23;

      v12 = 0;
      a6 = 0;
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
  a6 = [v10 valueForKey:v12];
LABEL_23:

LABEL_24:

  return a6;
}

@end