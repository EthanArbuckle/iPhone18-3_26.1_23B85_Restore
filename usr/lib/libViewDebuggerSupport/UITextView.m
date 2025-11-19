@interface UITextView
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
@end

@implementation UITextView

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"allowsEditingTextAttributes");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"b");
  v21[0] = Mutable;
  v19 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v19, @"propertyName", @"attributedText");
  CFDictionaryAddValue(v19, @"propertyRuntimeType", @"NSAttributedString");
  CFDictionaryAddValue(v19, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeAttributedString");
  CFDictionaryAddValue(v19, @"propertyFormat", @"attrStr");
  v21[1] = v19;
  v18 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v18, @"propertyName", @"delegate");
  CFDictionaryAddValue(v18, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v18, @"propertyFormat", @"objectInfo");
  v21[2] = v18;
  v17 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v17, @"propertyName", @"editable");
  CFDictionaryAddValue(v17, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v17, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v17, @"propertyFormat", @"b");
  v21[3] = v17;
  v16 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v16, @"propertyName", @"enablesReturnKeyAutomatically");
  CFDictionaryAddValue(v16, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v16, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v16, @"propertyFormat", @"b");
  v21[4] = v16;
  v15 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v15, @"propertyName", @"secureTextEntry");
  CFDictionaryAddValue(v15, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v15, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v15, @"propertyFormat", @"b");
  v21[5] = v15;
  v14 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v14, @"propertyName", @"selectable");
  CFDictionaryAddValue(v14, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v14, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v14, @"propertyFormat", @"b");
  v21[6] = v14;
  v12 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v12, @"propertyName", @"text");
  CFDictionaryAddValue(v12, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v12, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v12, @"propertyFormat", @"public.plain-text");
  v21[7] = v12;
  v13 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v13, @"propertyName", @"textColor");
  CFDictionaryAddValue(v13, @"propertyRuntimeType", @"UIColor");
  CFDictionaryAddValue(v13, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  v21[8] = v13;
  v11 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v11, @"propertyName", @"autocapitalizationType");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"UITextAutocapitalizationType");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v11, @"propertyFormat", @"integer");
  v21[9] = v11;
  v10 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v10, @"propertyName", @"autocorrectionType");
  CFDictionaryAddValue(v10, @"propertyRuntimeType", @"UITextAutocorrectionType");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v10, @"propertyFormat", @"integer");
  v21[10] = v10;
  v2 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v2, @"propertyName", @"dataDetectorTypes");
  CFDictionaryAddValue(v2, @"propertyRuntimeType", @"UIDataDetectorTypes");
  CFDictionaryAddValue(v2, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v2, @"propertyFormat", @"uinteger");
  v21[11] = v2;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"font");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"UIFont");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeFont");
  CFDictionaryAddValue(v3, @"propertyFormat", @"font");
  v21[12] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"keyboardAppearance");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"UIKeyboardAppearance");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v4, @"propertyFormat", @"uinteger");
  v21[13] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"keyboardType");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"UIKeyboardType");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v5, @"propertyFormat", @"integer");
  v21[14] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"returnKeyType");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"UIReturnKeyType");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v6, @"propertyFormat", @"integer");
  v21[15] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v7, @"propertyName", @"textAlignment");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"NSTextAlignment");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v7, @"propertyFormat", @"integer");
  v21[16] = v7;
  v8 = [NSArray arrayWithObjects:v21 count:17];

  return v8;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"autocapitalizationType"])
  {
    v10 = [v9 autocapitalizationType];
LABEL_11:
    v11 = [NSNumber numberWithInteger:v10];
LABEL_12:
    a6 = v11;
    goto LABEL_13;
  }

  if ([v8 isEqualToString:@"autocorrectionType"])
  {
    v10 = [v9 autocorrectionType];
    goto LABEL_11;
  }

  if ([v8 isEqualToString:@"keyboardAppearance"])
  {
    v10 = [v9 keyboardAppearance];
    goto LABEL_11;
  }

  if ([v8 isEqualToString:@"keyboardType"])
  {
    v10 = [v9 keyboardType];
    goto LABEL_11;
  }

  if ([v8 isEqualToString:@"returnKeyType"])
  {
    v10 = [v9 returnKeyType];
    goto LABEL_11;
  }

  if ([v8 isEqualToString:@"enablesReturnKeyAutomatically"])
  {
    v13 = [v9 enablesReturnKeyAutomatically];
LABEL_20:
    v11 = [NSNumber numberWithBool:v13];
    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"secureTextEntry"])
  {
    v13 = [v9 isSecureTextEntry];
    goto LABEL_20;
  }

  v14 = v9;
  v15 = v8;
  if (![v15 length])
  {
    goto LABEL_33;
  }

  NSSelectorFromString(v15);
  if (objc_opt_respondsToSelector())
  {
    v16 = v15;
  }

  else
  {
    if ([v15 length] < 2)
    {
      v20 = [v15 uppercaseString];
    }

    else
    {
      v17 = [v15 substringToIndex:1];
      v18 = [v17 uppercaseString];
      v19 = [v15 substringFromIndex:1];
      v20 = [v18 stringByAppendingString:v19];
    }

    v21 = [@"is" stringByAppendingString:v20];
    NSSelectorFromString(v21);
    v16 = (objc_opt_respondsToSelector() & 1) != 0 ? v21 : 0;
  }

  if (v16)
  {
    a6 = [v14 valueForKey:v16];
  }

  else
  {
LABEL_33:
    if (a6)
    {
      v22 = v15;
      if (v14)
      {
        v23 = [NSString stringWithFormat:@"%@", v14];
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

LABEL_13:

  return a6;
}

@end