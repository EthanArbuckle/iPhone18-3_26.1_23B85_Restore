@interface UISegmentedControl
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
- (BOOL)__dbg_hasValidSelectedSegmentIndex;
- (BOOL)__dbg_isEnabledForSelectedSegment;
- (CGSize)__dbg_contentOffsetForSelectedSegment;
- (double)__dbg_widthForSelectedSegment;
- (id)__dbg_titleForSelectedSegment;
@end

@implementation UISegmentedControl

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"apportionsSegmentWidthsByContent");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"b");
  v15[0] = Mutable;
  v12 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v12, @"propertyName", @"momentary");
  CFDictionaryAddValue(v12, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v12, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v12, @"propertyFormat", @"b");
  v15[1] = v12;
  v11 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v11, @"propertyName", @"numberOfSegments");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"NSUInteger");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v11, @"propertyFormat", @"uinteger");
  v15[2] = v11;
  v2 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v2, @"propertyName", @"selectedSegmentIndex");
  CFDictionaryAddValue(v2, @"propertyRuntimeType", @"NSInteger");
  CFDictionaryAddValue(v2, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v2, @"propertyFormat", @"integer");
  v15[3] = v2;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"contentOffsetForInspectedSegment");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"CGSize");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeSize");
  CFDictionaryAddValue(v3, @"propertyFormat", @"CGf, CGf");
  v15[4] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"imageForInspectedSegment");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"UIImage");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v4, @"propertyFormat", @"public.png");
  valuePtr = 1;
  v5 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v4, @"propertyOptions", v5);
  CFRelease(v5);
  v15[5] = v4;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"isEnabledForInspectedSegment");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v6, @"propertyFormat", @"b");
  v15[6] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v7, @"propertyName", @"titleForInspectedSegment");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v7, @"propertyFormat", @"public.plain-text");
  v15[7] = v7;
  v8 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v8, @"propertyName", @"widthForInspectedSegment");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v8, @"propertyFormat", @"CGf");
  v15[8] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:9];

  return v9;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"contentOffsetForInspectedSegment"])
  {
    [objectCopy __dbg_contentOffsetForSelectedSegment];
    valuePtr = v10;
    v32[0] = v11;
    v12 = malloc_type_malloc(0x10uLL, 0x6004044C4A2DFuLL);
    *v12 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
    v12[1] = CFNumberCreate(0, kCFNumberCGFloatType, v32);
    error = CFArrayCreate(0, v12, 2, &kCFTypeArrayCallBacks);
    CFRelease(*v12);
    CFRelease(v12[1]);
    free(v12);
    goto LABEL_14;
  }

  if ([nameCopy isEqualToString:@"imageForInspectedSegment"])
  {
    if ([objectCopy selectedSegmentIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
      error = 0;
      goto LABEL_14;
    }

    __dbg_titleForSelectedSegment = [objectCopy imageForSegmentAtIndex:{objc_msgSend(objectCopy, "selectedSegmentIndex")}];
    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"isEnabledForInspectedSegment"])
  {
    __dbg_titleForSelectedSegment = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [objectCopy __dbg_isEnabledForSelectedSegment]);
LABEL_13:
    error = __dbg_titleForSelectedSegment;
    goto LABEL_14;
  }

  if ([nameCopy isEqualToString:@"titleForInspectedSegment"])
  {
    __dbg_titleForSelectedSegment = [objectCopy __dbg_titleForSelectedSegment];
    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"widthForInspectedSegment"])
  {
    [objectCopy __dbg_widthForSelectedSegment];
    __dbg_titleForSelectedSegment = [NSNumber numberWithDouble:?];
    goto LABEL_13;
  }

  v15 = objectCopy;
  v16 = nameCopy;
  if (![v16 length])
  {
    goto LABEL_29;
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
      uppercaseString = [v16 uppercaseString];
    }

    else
    {
      v18 = [v16 substringToIndex:1];
      uppercaseString2 = [v18 uppercaseString];
      v20 = [v16 substringFromIndex:1];
      uppercaseString = [uppercaseString2 stringByAppendingString:v20];
    }

    v22 = [@"is" stringByAppendingString:uppercaseString];
    NSSelectorFromString(v22);
    v17 = (objc_opt_respondsToSelector() & 1) != 0 ? v22 : 0;
  }

  if (v17)
  {
    error = [v15 valueForKey:v17];
  }

  else
  {
LABEL_29:
    if (error)
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
      valuePtr = v25;
      v32[0] = v24;
      v30[2] = @"errorDescription";
      v32[1] = &stru_3C768;
      v26 = v25;
      v27 = [NSDictionary dictionaryWithObjects:&valuePtr forKeys:v30 count:3];
      v28 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v27];

      v29 = v28;
      *error = v28;

      v17 = 0;
      error = 0;
    }

    else
    {
      v17 = 0;
    }
  }

LABEL_14:

  return error;
}

- (BOOL)__dbg_hasValidSelectedSegmentIndex
{
  if ([(UISegmentedControl *)self selectedSegmentIndex]< 0)
  {
    return 0;
  }

  selectedSegmentIndex = [(UISegmentedControl *)self selectedSegmentIndex];
  return selectedSegmentIndex < [(UISegmentedControl *)self numberOfSegments];
}

- (CGSize)__dbg_contentOffsetForSelectedSegment
{
  if ([(UISegmentedControl *)self __dbg_hasValidSelectedSegmentIndex])
  {
    [(UISegmentedControl *)self contentOffsetForSegmentAtIndex:[(UISegmentedControl *)self selectedSegmentIndex]];
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)__dbg_isEnabledForSelectedSegment
{
  __dbg_hasValidSelectedSegmentIndex = [(UISegmentedControl *)self __dbg_hasValidSelectedSegmentIndex];
  if (__dbg_hasValidSelectedSegmentIndex)
  {
    selectedSegmentIndex = [(UISegmentedControl *)self selectedSegmentIndex];

    LOBYTE(__dbg_hasValidSelectedSegmentIndex) = [(UISegmentedControl *)self isEnabledForSegmentAtIndex:selectedSegmentIndex];
  }

  return __dbg_hasValidSelectedSegmentIndex;
}

- (id)__dbg_titleForSelectedSegment
{
  if ([(UISegmentedControl *)self __dbg_hasValidSelectedSegmentIndex])
  {
    v3 = [(UISegmentedControl *)self titleForSegmentAtIndex:[(UISegmentedControl *)self selectedSegmentIndex]];
  }

  return 0;
}

- (double)__dbg_widthForSelectedSegment
{
  if (![(UISegmentedControl *)self __dbg_hasValidSelectedSegmentIndex])
  {
    return 0.0;
  }

  selectedSegmentIndex = [(UISegmentedControl *)self selectedSegmentIndex];

  [(UISegmentedControl *)self widthForSegmentAtIndex:selectedSegmentIndex];
  return result;
}

@end