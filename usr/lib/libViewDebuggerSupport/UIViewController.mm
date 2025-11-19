@interface UIViewController
+ (id)fallback_debugHierarchyAdditionalGroupingIDs;
+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)a3 onObject:(id)a4 outOptions:(id *)a5;
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
@end

@implementation UIViewController

+ (id)fallback_debugHierarchyAdditionalGroupingIDs
{
  v4 = @"com.apple.UIKit.UIView";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)a3 onObject:(id)a4 outOptions:(id *)a5
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"com.apple.UIKit.UIViewController"])
  {
    v8 = [v7 childViewControllers];
  }

  else if ([v6 isEqualToString:@"com.apple.UIKit.UIView"])
  {
    v9 = [v7 viewIfLoaded];
    v10 = v9;
    if (v9)
    {
      v12 = v9;
      v8 = [NSArray arrayWithObjects:&v12 count:1];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"automaticallyAdjustsScrollViewInsets");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"b");
  v41[0] = Mutable;
  v38 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v38, @"propertyName", @"definesPresentationContext");
  CFDictionaryAddValue(v38, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v38, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v38, @"propertyFormat", @"b");
  v41[1] = v38;
  v37 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v37, @"propertyName", @"disablesAutomaticKeyboardDismissal");
  CFDictionaryAddValue(v37, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v37, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v37, @"propertyFormat", @"b");
  v41[2] = v37;
  v36 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v36, @"propertyName", @"editing");
  CFDictionaryAddValue(v36, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v36, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v36, @"propertyFormat", @"b");
  v41[3] = v36;
  v35 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v35, @"propertyName", @"extendedLayoutIncludesOpaqueBars");
  CFDictionaryAddValue(v35, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v35, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v35, @"propertyFormat", @"b");
  v41[4] = v35;
  v34 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v34, @"propertyName", @"hidesBottomBarWhenPushed");
  CFDictionaryAddValue(v34, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v34, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v34, @"propertyFormat", @"b");
  v41[5] = v34;
  v33 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v33, @"propertyName", @"isBeingDismissed");
  CFDictionaryAddValue(v33, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v33, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v33, @"propertyFormat", @"b");
  v41[6] = v33;
  v32 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v32, @"propertyName", @"isBeingPresented");
  CFDictionaryAddValue(v32, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v32, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v32, @"propertyFormat", @"b");
  v41[7] = v32;
  v31 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v31, @"propertyName", @"isMovingFromParentViewController");
  CFDictionaryAddValue(v31, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v31, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v31, @"propertyFormat", @"b");
  v41[8] = v31;
  v30 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v30, @"propertyName", @"isMovingToParentViewController");
  CFDictionaryAddValue(v30, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v30, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v30, @"propertyFormat", @"b");
  v41[9] = v30;
  v29 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v29, @"propertyName", @"modalPresentationCapturesStatusBarAppearance");
  CFDictionaryAddValue(v29, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v29, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v29, @"propertyFormat", @"b");
  v41[10] = v29;
  v28 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v28, @"propertyName", @"modalInPopover");
  CFDictionaryAddValue(v28, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v28, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v28, @"propertyFormat", @"b");
  v41[11] = v28;
  v27 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v27, @"propertyName", @"nibName");
  CFDictionaryAddValue(v27, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v27, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v27, @"propertyFormat", @"public.plain-text");
  v41[12] = v27;
  v26 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v26, @"propertyName", @"preferredContentSize");
  CFDictionaryAddValue(v26, @"propertyRuntimeType", @"CGSize");
  CFDictionaryAddValue(v26, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeSize");
  CFDictionaryAddValue(v26, @"propertyFormat", @"CGf, CGf");
  v41[13] = v26;
  v25 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v25, @"propertyName", @"prefersStatusBarHidden");
  CFDictionaryAddValue(v25, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v25, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v25, @"propertyFormat", @"b");
  v41[14] = v25;
  v24 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v24, @"propertyName", @"providesPresentationContextTransitionStyle");
  CFDictionaryAddValue(v24, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v24, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v24, @"propertyFormat", @"b");
  v41[15] = v24;
  v23 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v23, @"propertyName", @"restorationIdentifier");
  CFDictionaryAddValue(v23, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v23, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v23, @"propertyFormat", @"public.plain-text");
  v41[16] = v23;
  v22 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v22, @"propertyName", @"restoresFocusAfterTransition");
  CFDictionaryAddValue(v22, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v22, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v22, @"propertyFormat", @"b");
  v41[17] = v22;
  v21 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v21, @"propertyName", @"shouldAutorotate");
  CFDictionaryAddValue(v21, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v21, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v21, @"propertyFormat", @"b");
  v41[18] = v21;
  v20 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v20, @"propertyName", @"shouldAutomaticallyForwardAppearanceMethods");
  CFDictionaryAddValue(v20, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v20, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v20, @"propertyFormat", @"b");
  v41[19] = v20;
  v19 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v19, @"propertyName", @"title");
  CFDictionaryAddValue(v19, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v19, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v19, @"propertyFormat", @"public.plain-text");
  v41[20] = v19;
  v18 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v18, @"propertyName", @"view");
  CFDictionaryAddValue(v18, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v18, @"propertyFormat", @"objectInfo");
  v41[21] = v18;
  v17 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v17, @"propertyName", @"viewLoaded");
  CFDictionaryAddValue(v17, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v17, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v17, @"propertyFormat", @"b");
  v41[22] = v17;
  v16 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v16, @"propertyName", @"modalPresentationStyle");
  CFDictionaryAddValue(v16, @"propertyRuntimeType", @"UIModalPresentationStyle");
  CFDictionaryAddValue(v16, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v16, @"propertyFormat", @"integer");
  v41[23] = v16;
  v15 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v15, @"propertyName", @"modalTransitionStyle");
  CFDictionaryAddValue(v15, @"propertyRuntimeType", @"UIModalTransitionStyle");
  CFDictionaryAddValue(v15, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v15, @"propertyFormat", @"integer");
  v41[24] = v15;
  v14 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v14, @"propertyName", @"nibBundlePath");
  CFDictionaryAddValue(v14, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v14, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v14, @"propertyFormat", @"public.plain-text");
  v41[25] = v14;
  v13 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v13, @"propertyName", @"preferredStatusBarStyle");
  CFDictionaryAddValue(v13, @"propertyRuntimeType", @"UIStatusBarStyle");
  CFDictionaryAddValue(v13, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v13, @"propertyFormat", @"integer");
  v41[26] = v13;
  v2 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v2, @"propertyName", @"preferredStatusBarUpdateAnimation");
  CFDictionaryAddValue(v2, @"propertyRuntimeType", @"UIStatusBarAnimation");
  CFDictionaryAddValue(v2, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v2, @"propertyFormat", @"integer");
  v41[27] = v2;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"preferredInterfaceOrientationForPresentation");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"UIInterfaceOrientation");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v3, @"propertyFormat", @"integer");
  v41[28] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"supportedInterfaceOrientations");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"UIInterfaceOrientationMask");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v4, @"propertyFormat", @"integer");
  v41[29] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"traitCollectionVerticalSizeClass");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"UIUserInterfaceSizeClass");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v5, @"propertyFormat", @"integer");
  v41[30] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"traitCollectionHorizontalSizeClass");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"UIUserInterfaceSizeClass");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v6, @"propertyFormat", @"integer");
  v41[31] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v7, @"propertyName", @"traitCollectionLayoutDirection");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"UITraitEnvironmentLayoutDirection");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v7, @"propertyFormat", @"integer");
  v41[32] = v7;
  v8 = [NSArray arrayWithObjects:v41 count:33];

  v9 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v9, @"propertyName", @"traitCollectionUserInterfaceStyle");
  CFDictionaryAddValue(v9, @"propertyRuntimeType", @"UIUserInterfaceStyle");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v9, @"propertyFormat", @"integer");
  v40 = v9;
  v10 = [NSArray arrayWithObjects:&v40 count:1];

  v11 = [v8 arrayByAddingObjectsFromArray:v10];

  return v11;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"nibBundlePath"])
  {
    v10 = [v9 nibBundle];
    v11 = [v10 bundlePath];
  }

  else
  {
    if ([v8 isEqualToString:@"view"])
    {
      a6 = [v9 viewIfLoaded];
      goto LABEL_16;
    }

    if ([v8 isEqualToString:@"traitCollectionUserInterfaceStyle"])
    {
      v10 = [v9 traitCollection];
      v12 = [v10 userInterfaceStyle];
    }

    else if ([v8 isEqualToString:@"traitCollectionVerticalSizeClass"])
    {
      v10 = [v9 traitCollection];
      v12 = [v10 verticalSizeClass];
    }

    else if ([v8 isEqualToString:@"traitCollectionHorizontalSizeClass"])
    {
      v10 = [v9 traitCollection];
      v12 = [v10 horizontalSizeClass];
    }

    else
    {
      if (![v8 isEqualToString:@"traitCollectionLayoutDirection"])
      {
        v10 = v9;
        v14 = v8;
        if (![v14 length])
        {
          goto LABEL_31;
        }

        NSSelectorFromString(v14);
        if (objc_opt_respondsToSelector())
        {
          v15 = v14;
        }

        else
        {
          if ([v14 length] < 2)
          {
            v19 = [v14 uppercaseString];
          }

          else
          {
            v16 = [v14 substringToIndex:1];
            v17 = [v16 uppercaseString];
            v18 = [v14 substringFromIndex:1];
            v19 = [v17 stringByAppendingString:v18];
          }

          v20 = [@"is" stringByAppendingString:v19];
          NSSelectorFromString(v20);
          v15 = (objc_opt_respondsToSelector() & 1) != 0 ? v20 : 0;
        }

        if (v15)
        {
          a6 = [v10 valueForKey:v15];
        }

        else
        {
LABEL_31:
          if (a6)
          {
            v21 = v14;
            if (v10)
            {
              v22 = [NSString stringWithFormat:@"%@", v10];
            }

            else
            {
              v22 = &stru_3C768;
            }

            if (v21)
            {
              v23 = v21;
            }

            else
            {
              v23 = &stru_3C768;
            }

            v28[0] = @"propertyName";
            v28[1] = @"objectDescription";
            v29[0] = v23;
            v29[1] = v22;
            v28[2] = @"errorDescription";
            v29[2] = &stru_3C768;
            v24 = v23;
            v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
            v26 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v25];

            v27 = v26;
            *a6 = v26;

            v15 = 0;
            a6 = 0;
          }

          else
          {
            v15 = 0;
          }
        }

        goto LABEL_15;
      }

      v10 = [v9 traitCollection];
      v12 = [v10 layoutDirection];
    }

    v11 = [NSNumber numberWithInteger:v12];
  }

  a6 = v11;
LABEL_15:

LABEL_16:

  return a6;
}

@end