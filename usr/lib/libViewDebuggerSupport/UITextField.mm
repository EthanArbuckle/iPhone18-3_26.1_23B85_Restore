@interface UITextField
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
@end

@implementation UITextField

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"adjustsFontSizeToFitWidth");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"b");
  v31[0] = Mutable;
  v28 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v28, @"propertyName", @"allowsEditingTextAttributes");
  CFDictionaryAddValue(v28, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v28, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v28, @"propertyFormat", @"b");
  v31[1] = v28;
  v27 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v27, @"propertyName", @"attributedText");
  CFDictionaryAddValue(v27, @"propertyRuntimeType", @"NSAttributedString");
  CFDictionaryAddValue(v27, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeAttributedString");
  CFDictionaryAddValue(v27, @"propertyFormat", @"attrStr");
  v31[2] = v27;
  v2 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v2, @"propertyName", @"background");
  CFDictionaryAddValue(v2, @"propertyRuntimeType", @"UIImage");
  CFDictionaryAddValue(v2, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  v26 = v2;
  CFDictionaryAddValue(v2, @"propertyFormat", @"public.png");
  valuePtr = 1;
  v3 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v2, @"propertyOptions", v3);
  CFRelease(v3);
  v31[3] = v2;
  v25 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v25, @"propertyName", @"clearsOnBeginEditing");
  CFDictionaryAddValue(v25, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v25, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v25, @"propertyFormat", @"b");
  v31[4] = v25;
  v24 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v24, @"propertyName", @"delegate");
  CFDictionaryAddValue(v24, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v24, @"propertyFormat", @"objectInfo");
  v31[5] = v24;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"disabledBackground");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"UIImage");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  v23 = v4;
  CFDictionaryAddValue(v4, @"propertyFormat", @"public.png");
  valuePtr = 1;
  v5 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v4, @"propertyOptions", v5);
  CFRelease(v5);
  v31[6] = v4;
  v22 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v22, @"propertyName", @"enablesReturnKeyAutomatically");
  CFDictionaryAddValue(v22, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v22, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v22, @"propertyFormat", @"b");
  v31[7] = v22;
  v21 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v21, @"propertyName", @"minimumFontSize");
  CFDictionaryAddValue(v21, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v21, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v21, @"propertyFormat", @"CGf");
  v31[8] = v21;
  v20 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v20, @"propertyName", @"placeholder");
  CFDictionaryAddValue(v20, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v20, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v20, @"propertyFormat", @"public.plain-text");
  v31[9] = v20;
  v19 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v19, @"propertyName", @"secureTextEntry");
  CFDictionaryAddValue(v19, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v19, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v19, @"propertyFormat", @"b");
  v31[10] = v19;
  v18 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v18, @"propertyName", @"text");
  CFDictionaryAddValue(v18, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v18, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v18, @"propertyFormat", @"public.plain-text");
  v31[11] = v18;
  v17 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v17, @"propertyName", @"textColor");
  CFDictionaryAddValue(v17, @"propertyRuntimeType", @"UIColor");
  CFDictionaryAddValue(v17, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  v31[12] = v17;
  v16 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v16, @"propertyName", @"autocapitalizationType");
  CFDictionaryAddValue(v16, @"propertyRuntimeType", @"UITextAutocapitalizationType");
  CFDictionaryAddValue(v16, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v16, @"propertyFormat", @"integer");
  v31[13] = v16;
  v15 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v15, @"propertyName", @"autocorrectionType");
  CFDictionaryAddValue(v15, @"propertyRuntimeType", @"UITextAutocorrectionType");
  CFDictionaryAddValue(v15, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v15, @"propertyFormat", @"integer");
  v31[14] = v15;
  v14 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v14, @"propertyName", @"borderStyle");
  CFDictionaryAddValue(v14, @"propertyRuntimeType", @"UITextBorderStyle");
  CFDictionaryAddValue(v14, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v14, @"propertyFormat", @"integer");
  v31[15] = v14;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"clearButtonMode");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"UITextFieldViewMode");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v6, @"propertyFormat", @"integer");
  v31[16] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v7, @"propertyName", @"font");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"UIFont");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeFont");
  CFDictionaryAddValue(v7, @"propertyFormat", @"font");
  v31[17] = v7;
  v8 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v8, @"propertyName", @"keyboardAppearance");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"UIKeyboardAppearance");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v8, @"propertyFormat", @"integer");
  v31[18] = v8;
  v9 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v9, @"propertyName", @"keyboardType");
  CFDictionaryAddValue(v9, @"propertyRuntimeType", @"UIKeyboardType");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v9, @"propertyFormat", @"integer");
  v31[19] = v9;
  v10 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v10, @"propertyName", @"returnKeyType");
  CFDictionaryAddValue(v10, @"propertyRuntimeType", @"UIReturnKeyType");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v10, @"propertyFormat", @"integer");
  v31[20] = v10;
  v11 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v11, @"propertyName", @"textAlignment");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"NSHashTableCallBacks");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v11, @"propertyFormat", @"uinteger");
  v31[21] = v11;
  v12 = [NSArray arrayWithObjects:v31 count:22];

  return v12;
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