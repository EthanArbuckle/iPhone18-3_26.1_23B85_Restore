@interface UIScreen
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
- (double)__dbg_traitCollectionDisplayCornerRadius;
@end

@implementation UIScreen

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"bounds");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"CGRect");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeRect");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v19[0] = Mutable;
  v16 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v16, @"propertyName", @"maximumFramesPerSecond");
  CFDictionaryAddValue(v16, @"propertyRuntimeType", @"NSInteger");
  CFDictionaryAddValue(v16, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v16, @"propertyFormat", @"integer");
  v19[1] = v16;
  v15 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v15, @"propertyName", @"nativeBounds");
  CFDictionaryAddValue(v15, @"propertyRuntimeType", @"CGRect");
  CFDictionaryAddValue(v15, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeRect");
  CFDictionaryAddValue(v15, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v19[2] = v15;
  v14 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v14, @"propertyName", @"nativeScale");
  CFDictionaryAddValue(v14, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v14, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v14, @"propertyFormat", @"CGf");
  v19[3] = v14;
  v13 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v13, @"propertyName", @"scale");
  CFDictionaryAddValue(v13, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v13, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v13, @"propertyFormat", @"CGf");
  v19[4] = v13;
  v12 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v12, @"propertyName", @"wantsSoftwareDimming");
  CFDictionaryAddValue(v12, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v12, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v12, @"propertyFormat", @"b");
  v19[5] = v12;
  v11 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v11, @"propertyName", @"displayCornerRadius");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v11, @"propertyFormat", @"CGf");
  v19[6] = v11;
  v2 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v2, @"propertyName", @"isMainScreen");
  CFDictionaryAddValue(v2, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v2, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v2, @"propertyFormat", @"b");
  v19[7] = v2;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"nativeDisplayBounds");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"CGRect");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeRect");
  CFDictionaryAddValue(v3, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v19[8] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"pointsPerInch");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v4, @"propertyFormat", @"CGf");
  v19[9] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"dbgScreenShapeIsRectangular");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v5, @"propertyFormat", @"b");
  valuePtr = 4;
  v6 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v5, @"visibility", v6);
  CFRelease(v6);
  v19[10] = v5;
  v7 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v7, @"propertyName", @"dbgScreenShape");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"DBGScreenShape");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v7, @"propertyFormat", @"integer");
  valuePtr = 4;
  v8 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v7, @"visibility", v8);
  CFRelease(v8);
  v19[11] = v7;
  v9 = [NSArray arrayWithObjects:v19 count:12];

  return v9;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"displayCornerRadius"])
  {
    [v9 __dbg_traitCollectionDisplayCornerRadius];
LABEL_3:
    v10 = [NSNumber numberWithDouble:?];
LABEL_4:
    a6 = v10;
    goto LABEL_5;
  }

  if (![v8 isEqualToString:@"pointsPerInch"])
  {
    if ([v8 isEqualToString:@"nativeDisplayBounds"])
    {
      if (objc_opt_respondsToSelector())
      {
        [v9 _nativeDisplayBounds];
        v10 = [NSValue valueWithCGRect:?];
        goto LABEL_4;
      }

      goto LABEL_21;
    }

    if ([v8 isEqualToString:@"isMainScreen"])
    {
      v12 = +[UIScreen mainScreen];
      v13 = v12 == v9;

      IsRectangular = v13;
    }

    else
    {
      if (![v8 isEqualToString:@"dbgScreenShapeIsRectangular"])
      {
        if ([v8 isEqualToString:@"dbgScreenShape"])
        {
          v10 = [NSNumber numberWithInteger:__dbg_ScreenShape()];
          goto LABEL_4;
        }

        v15 = v9;
        v16 = v8;
        if (![v16 length])
        {
          goto LABEL_36;
        }

        NSSelectorFromString(v16);
        if (objc_opt_respondsToSelector())
        {
          v17 = v16;
        }

        else
        {
          if ([v16 length] < 2)
          {
            v21 = [v16 uppercaseString];
          }

          else
          {
            v18 = [v16 substringToIndex:1];
            v19 = [v18 uppercaseString];
            v20 = [v16 substringFromIndex:1];
            v21 = [v19 stringByAppendingString:v20];
          }

          v22 = [@"is" stringByAppendingString:v21];
          NSSelectorFromString(v22);
          v17 = (objc_opt_respondsToSelector() & 1) != 0 ? v22 : 0;
        }

        if (v17)
        {
          a6 = [v15 valueForKey:v17];
        }

        else
        {
LABEL_36:
          if (a6)
          {
            v23 = v16;
            if (v15)
            {
              v24 = [NSString stringWithFormat:@"%@", v15];
            }

            else
            {
              v24 = &stru_3C768;
            }

            if (v23)
            {
              v25 = v23;
            }

            else
            {
              v25 = &stru_3C768;
            }

            v30[0] = @"propertyName";
            v30[1] = @"objectDescription";
            v31[0] = v25;
            v31[1] = v24;
            v30[2] = @"errorDescription";
            v31[2] = &stru_3C768;
            v26 = v25;
            v27 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];
            v28 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v27];

            v29 = v28;
            *a6 = v28;

            v17 = 0;
            a6 = 0;
          }

          else
          {
            v17 = 0;
          }
        }

        goto LABEL_5;
      }

      if (_UIScreenTypePrivateForScreen() == -1)
      {
LABEL_21:
        a6 = 0;
        goto LABEL_5;
      }

      _UIScreenTypePrivateForScreen();
      IsRectangular = _UIScreenTypePrivateIsRectangular();
    }

    v10 = [NSNumber numberWithBool:IsRectangular];
    goto LABEL_4;
  }

  if (objc_opt_respondsToSelector())
  {
    [v9 _pointsPerInch];
    goto LABEL_3;
  }

  a6 = &off_57B10;
LABEL_5:

  return a6;
}

- (double)__dbg_traitCollectionDisplayCornerRadius
{
  v3 = [(UIScreen *)self traitCollection];
  NSSelectorFromString(&cfstr_Displaycornerr.isa);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0.0;
  }

  v5 = [(UIScreen *)self traitCollection];
  [v5 displayCornerRadius];
  v7 = v6;

  return v7;
}

@end