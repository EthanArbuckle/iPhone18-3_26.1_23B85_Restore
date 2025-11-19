@interface UICollectionViewController
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
@end

@implementation UICollectionViewController

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"collectionView");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"objectInfo");
  v9[0] = Mutable;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"collectionViewLayout");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v3, @"propertyFormat", @"objectInfo");
  v9[1] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"clearsSelectionOnViewWillAppear");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v4, @"propertyFormat", @"b");
  v9[2] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"useLayoutToLayoutNavigationTransitions");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v5, @"propertyFormat", @"b");
  v9[3] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"installsStandardGestureForInteractiveMovement");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v6, @"propertyFormat", @"b");
  v9[4] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:5];

  return v7;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if (![v8 isEqualToString:@"collectionView"])
  {
    v11 = v9;
    v12 = v8;
    if ([(NSString *)v12 length])
    {
      NSSelectorFromString(v12);
      if (objc_opt_respondsToSelector())
      {
        v13 = v12;
        if (v13)
        {
LABEL_7:
          a6 = [v11 valueForKey:v13];
LABEL_25:

          goto LABEL_26;
        }
      }

      else
      {
        if ([(NSString *)v12 length]< 2)
        {
          v17 = [(NSString *)v12 uppercaseString];
        }

        else
        {
          v14 = [(NSString *)v12 substringToIndex:1];
          v15 = [v14 uppercaseString];
          v16 = [(NSString *)v12 substringFromIndex:1];
          v17 = [v15 stringByAppendingString:v16];
        }

        v18 = [@"is" stringByAppendingString:v17];
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
          goto LABEL_7;
        }
      }
    }

    if (a6)
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
      *a6 = v24;

      v13 = 0;
      a6 = 0;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_25;
  }

  v10 = [v9 viewIfLoaded];

  if (v10)
  {
    a6 = [v9 collectionView];
  }

  else
  {
    a6 = 0;
  }

LABEL_26:

  return a6;
}

@end