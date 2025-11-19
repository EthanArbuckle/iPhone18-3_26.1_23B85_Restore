@interface SCNView
+ (id)fallback_debugHierarchyAdditionalGroupingIDs;
+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)a3 onObject:(id)a4 outOptions:(id *)a5;
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
- (id)__dbg_pointOfViewIndexPath;
@end

@implementation SCNView

+ (id)fallback_debugHierarchyAdditionalGroupingIDs
{
  v4 = @"com.apple.SceneKit.SCNScene";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)a3 onObject:(id)a4 outOptions:(id *)a5
{
  v6 = a4;
  if ([a3 isEqualToString:@"com.apple.SceneKit.SCNScene"])
  {
    v7 = [v6 scene];

    if (v7)
    {
      v8 = [v6 scene];
      v10 = v8;
      v7 = [NSArray arrayWithObjects:&v10 count:1];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"allowsCameraControl");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"b");
  v12[0] = Mutable;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"autoenablesDefaultLighting");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v3, @"propertyFormat", @"b");
  v12[1] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"jitteringEnabled");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v4, @"propertyFormat", @"b");
  v12[2] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"loops");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v5, @"propertyFormat", @"b");
  v12[3] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"playing");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v6, @"propertyFormat", @"b");
  v12[4] = v6;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v9, @"propertyName", @"pointOfViewIndexPath");
  if (v8)
  {
    CFDictionaryAddValue(v9, @"propertyRuntimeType", v8);
  }

  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeCustom");
  CFDictionaryAddValue(v9, @"propertyFormat", @"public.plain-text");

  v12[5] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:6];

  return v10;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"pointOfViewIndexPath"])
  {
    a6 = [v9 __dbg_pointOfViewIndexPath];
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

- (id)__dbg_pointOfViewIndexPath
{
  v3 = [(SCNView *)self pointOfView];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [(SCNView *)self scene];

  if (!v4)
  {
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [SCNScene _indexPathForNode:v3];
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:

  return v4;
}

@end