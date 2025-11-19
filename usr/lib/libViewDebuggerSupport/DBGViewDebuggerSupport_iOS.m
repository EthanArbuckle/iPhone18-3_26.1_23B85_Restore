@interface DBGViewDebuggerSupport_iOS
+ (BOOL)_isEffectView:(id)a3;
+ (BOOL)_viewHasAmbiguousLayout:(id)a3;
+ (BOOL)ibShouldIgnoreScrollableContentHeightAmbiguityForRepresentationOfItem:(id)a3;
+ (BOOL)ibShouldIgnoreScrollableContentWidthAmbiguityForRepresentationOfItem:(id)a3;
+ (BOOL)isViewSubclass:(id)a3;
+ (BOOL)isWindowSubclass:(id)a3;
+ (double)firstBaselineOffsetFromTopForView:(id)a3;
+ (double)lastBaselineOffsetFromBottomForView:(id)a3;
+ (double)screenBackingScaleForView:(id)a3;
+ (double)screenBackingScaleForWindow:(id)a3;
+ (id)_messagesUIExtensionViews;
+ (id)_renderEffectViewUsingDrawHierarchyInRect:(id)a3;
+ (id)appWindows;
+ (id)displayNameForView:(id)a3;
+ (id)primaryWindowFromWindows:(id)a3;
+ (id)snapshotMethodForView:(id)a3;
+ (id)snapshotView:(id)a3 errorString:(id *)a4;
+ (id)subviewsForView:(id)a3;
+ (id)viewForFirstBaselineLayoutPointerForView:(id)a3;
+ (id)viewForLastBaselineLayoutPointerForView:(id)a3;
+ (unint64_t)ambiguityStatusMaskForView:(id)a3;
+ (void)addFrameBasics:(id)a3 toDict:(id)a4;
+ (void)addLayoutInfoForView:(id)a3 toDict:(id)a4;
+ (void)addViewBasics:(id)a3 toDict:(id)a4;
@end

@implementation DBGViewDebuggerSupport_iOS

+ (id)displayNameForView:(id)a3
{
  v3 = a3;
  v4 = [v3 accessibilityLabel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [v3 accessibilityLabel];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }

    v8 = [v3 accessibilityLabel];
    v6 = [v8 string];
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v3 currentTitle];
    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v3 text];
LABEL_9:
    v10 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v3 date];
    v12 = [v10 description];
LABEL_15:
    v6 = v12;

    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v3 title];
    goto LABEL_9;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

+ (id)primaryWindowFromWindows:(id)a3
{
  v3 = a3;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 keyWindow];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if (![v12 isHidden])
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v13 = v12;

      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_11:
    }

    v6 = [v7 firstObject];
  }

  v13 = v6;
LABEL_15:

  return v13;
}

+ (id)snapshotMethodForView:(id)a3
{
  v3 = a3;
  NSClassFromString(&cfstr_Skview.isa);
  if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Scnview.isa), (objc_opt_isKindOfClass()) || (NSClassFromString(&cfstr_Glkview.isa), (objc_opt_isKindOfClass()) || (NSClassFromString(&cfstr_RealitykitArvi.isa), (objc_opt_isKindOfClass()))
  {
    v4 = @"snapshot";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)appWindows
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 windows];

  return v3;
}

+ (double)screenBackingScaleForWindow:(id)a3
{
  v3 = [a3 screen];
  [v3 scale];
  v5 = v4;

  return v5;
}

+ (double)screenBackingScaleForView:(id)a3
{
  v4 = a3;
  v5 = [v4 window];
  if (v5)
  {
    v6 = [v4 window];
    [a1 screenBackingScaleForWindow:v6];
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  return v8;
}

+ (id)_messagesUIExtensionViews
{
  v2 = NSClassFromString(&cfstr_Msextensionglo.isa);
  if (v2 && (v3 = v2, (objc_opt_respondsToSelector() & 1) != 0))
  {
    v4 = [(objc_class *)v3 sharedInstance];
    if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [v4 activeExtensionContext];
      if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v6 = [v5 viewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [v6 view];
          v10 = v7;
          v8 = [NSArray arrayWithObjects:&v10 count:1];
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

+ (id)subviewsForView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 contentView];

    if (v4)
    {
      v7 = v4;
      v5 = [NSArray arrayWithObjects:&v7 count:1];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [v3 subviews];
  }

  return v5;
}

+ (BOOL)isWindowSubclass:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)isViewSubclass:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)snapshotView:(id)a3 errorString:(id *)a4
{
  v6 = a3;
  [v6 bounds];
  v8 = v7;
  [v6 bounds];
  v10 = 0;
  if (v8 > 0.0 && v9 > 0.0 && v8 * v9 < 16000000.0)
  {
    NSClassFromString(&cfstr_Glkview.isa);
    if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Skview.isa), (objc_opt_isKindOfClass()) || (NSClassFromString(&cfstr_Scnview.isa), (objc_opt_isKindOfClass()) || (NSClassFromString(&cfstr_RealitykitArvi.isa), (objc_opt_isKindOfClass()))
    {
      v11 = [v6 snapshot];
    }

    else
    {
      if (![a1 _isEffectView:v6])
      {
        v14 = [v6 subviews];
        v15 = [v14 count];
        v16 = &v30 - ((4 * v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v15)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            v18 = [v14 objectAtIndex:i];
            v19 = [v18 layer];
            [v19 opacity];
            *&v16[4 * i] = v20;

            v21 = [v18 layer];
            [v21 setOpacity:0.0];
          }
        }

        [v6 bounds];
        v32.width = v22;
        v32.height = v23;
        UIGraphicsBeginImageContextWithOptions(v32, 0, 0.0);
        CurrentContext = UIGraphicsGetCurrentContext();
        if (CurrentContext)
        {
          v24 = [v6 layer];
          [v24 renderInContext:CurrentContext];

          CurrentContext = UIGraphicsGetImageFromCurrentImageContext();
        }

        UIGraphicsEndImageContext();
        if (v15)
        {
          for (j = 0; j != v15; j = j + 1)
          {
            v26 = [v14 objectAtIndex:j];
            v27 = *&v16[4 * j];
            v28 = [v26 layer];
            LODWORD(v29) = v27;
            [v28 setOpacity:v29];
          }
        }

        if (!CurrentContext)
        {
          goto LABEL_12;
        }

LABEL_10:
        v10 = UIImagePNGRepresentation(CurrentContext);
        if (v10)
        {
LABEL_13:

          goto LABEL_14;
        }

        if (!*a4)
        {
          [NSString stringWithFormat:@"Problem getting view snapshot for %@", v6];
          *a4 = v10 = 0;
          goto LABEL_13;
        }

LABEL_12:
        v10 = 0;
        goto LABEL_13;
      }

      v11 = [a1 _renderEffectViewUsingDrawHierarchyInRect:v6];
    }

    CurrentContext = v11;
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_14:

  return v10;
}

+ (BOOL)_isEffectView:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 viewDebuggerEffectViewsToSnapshotAsImage];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        LOBYTE(v9) = [v9 isEqualToString:v11];

        if (v9)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (id)_renderEffectViewUsingDrawHierarchyInRect:(id)a3
{
  v3 = a3;
  v4 = [v3 window];
  if (!v4)
  {
    v5 = v3;
    v6 = [v5 superview];

    if (v6)
    {
      do
      {
        v4 = [v5 superview];

        v7 = [v4 superview];

        v5 = v4;
      }

      while (v7);
    }

    else
    {
      v4 = v5;
    }
  }

  [v3 bounds];
  [v4 convertRect:v3 fromView:?];
  x = v8;
  y = v10;
  width = v12;
  height = v14;
  v16 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:0];
  v17 = v3;
  v18 = v17;
  if (v4 == v17)
  {
    v20 = v17;
  }

  else
  {
    v19 = v17;
    do
    {
      v20 = [v19 superview];
      v21 = [v20 subviews];
      v22 = [v21 indexOfObject:v19];

      v23 = [v20 subviews];
      v24 = [v23 count];
      v25 = v22 + 1;

      if (v24 > v22 + 1)
      {
        while (1)
        {
          v26 = [v20 subviews];
          v27 = [v26 count];

          if (v25 >= v27)
          {
            break;
          }

          v28 = [v20 subviews];
          v29 = [v28 objectAtIndexedSubscript:v25];

          [v29 alpha];
          v30 = [NSNumber numberWithDouble:?];
          [v16 setObject:v30 forKey:v29];

          [v29 setAlpha:0.0];
          ++v25;
        }
      }

      if ([v20 clipsToBounds])
      {
        [v20 bounds];
        [v4 convertRect:v20 fromView:?];
        v86.origin.x = v31;
        v86.origin.y = v32;
        v86.size.width = v33;
        v86.size.height = v34;
        v84.origin.x = x;
        v84.origin.y = y;
        v84.size.width = width;
        v84.size.height = height;
        v85 = CGRectIntersection(v84, v86);
        x = v85.origin.x;
        y = v85.origin.y;
        width = v85.size.width;
        height = v85.size.height;
      }

      v19 = v20;
    }

    while (v20 != v4);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v70 = v18;
  v35 = [v18 subviews];
  v36 = [v35 countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v76;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v76 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v75 + 1) + 8 * i);
        [v40 alpha];
        v41 = [NSNumber numberWithDouble:?];
        [v16 setObject:v41 forKey:v40];

        [v40 setAlpha:0.0];
      }

      v37 = [v35 countByEnumeratingWithState:&v75 objects:v80 count:16];
    }

    while (v37);
  }

  [v4 bounds];
  v43 = v42;
  v45 = v44;
  v82.width = width;
  v82.height = height;
  UIGraphicsBeginImageContextWithOptions(v82, 0, 0.0);
  [v4 drawViewHierarchyInRect:1 afterScreenUpdates:{-x, -y, v43, v45}];
  v46 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [v70 bounds];
  if (v48 != width || v47 != height)
  {
    [v70 convertRect:v4 fromView:{x, y, width, height}];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    [v70 bounds];
    v83.width = v57;
    v83.height = v58;
    UIGraphicsBeginImageContextWithOptions(v83, 0, 0.0);
    [v46 drawInRect:0 blendMode:v50 alpha:{v52, v54, v56, 1.0}];
    v59 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    v46 = v59;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v60 = [v16 keyEnumerator];
  v61 = [v60 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v72;
    do
    {
      for (j = 0; j != v62; j = j + 1)
      {
        if (*v72 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = *(*(&v71 + 1) + 8 * j);
        v66 = [v16 objectForKey:v65];
        [v66 doubleValue];
        v68 = v67;

        [v65 setAlpha:v68];
      }

      v62 = [v60 countByEnumeratingWithState:&v71 objects:v79 count:16];
    }

    while (v62);
  }

  return v46;
}

+ (void)addFrameBasics:(id)a3 toDict:(id)a4
{
  v5 = a4;
  [a3 frame];
  v10 = __52__DBGViewDebuggerSupport_iOS_addFrameBasics_toDict___block_invoke(v6, v7, v8, v9);
  [v5 setObject:v10 forKey:@"frame"];
}

+ (void)addViewBasics:(id)a3 toDict:(id)a4
{
  v23 = a3;
  v6 = a4;
  if ([a1 isViewSubclass:v23])
  {
    v7 = v23;
    [v7 frame];
    v12 = __52__DBGViewDebuggerSupport_iOS_addFrameBasics_toDict___block_invoke(v8, v9, v10, v11);
    [v6 setObject:v12 forKey:@"frame"];

    [v7 bounds];
    v17 = __52__DBGViewDebuggerSupport_iOS_addFrameBasics_toDict___block_invoke(v13, v14, v15, v16);
    [v6 setObject:v17 forKey:@"bounds"];

    v18 = [v7 superview];
    v19 = [NSString stringWithFormat:@"%p", v18];

    [v6 setObject:v19 forKey:@"superview"];
    v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isHidden]);
    [v6 setObject:v20 forKey:@"hidden"];

    v21 = [a1 displayNameForView:v7];
    if (v21)
    {
      [v6 setObject:v21 forKey:@"displayName"];
    }

    [v7 contentScaleFactor];
    v22 = [NSNumber numberWithDouble:?];
    [v6 setObject:v22 forKey:@"contentsScale"];
  }
}

+ (void)addLayoutInfoForView:(id)a3 toDict:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = [v22 constraintsAffectingLayoutForAxis:0];
  v8 = arrayOfObjectPointers(v7);
  [v6 setObject:v8 forKey:@"horizontalAffectingConstraints"];

  v9 = [v22 constraintsAffectingLayoutForAxis:1];
  v10 = arrayOfObjectPointers(v9);
  [v6 setObject:v10 forKey:@"verticalAffectingConstraints"];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a1 _viewHasAmbiguousLayout:v22]);
  [v6 setObject:v11 forKey:@"hasAmbiguousLayout"];

  if ([a1 _viewHasAmbiguousLayout:v22])
  {
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1 ambiguityStatusMaskForView:v22]);
    [v6 setObject:v12 forKey:@"ambiguityStatusMask"];
  }

  [a1 firstBaselineOffsetFromTopForView:v22];
  v13 = [NSNumber numberWithDouble:?];
  [v6 setObject:v13 forKey:@"firstBaselineOffsetFromTop"];

  [a1 lastBaselineOffsetFromBottomForView:v22];
  v14 = [NSNumber numberWithDouble:?];
  [v6 setObject:v14 forKey:@"lastBaselineOffsetFromBottom"];

  v15 = [a1 viewForFirstBaselineLayoutPointerForView:v22];
  if (v15)
  {
    [v6 setObject:v15 forKey:@"viewForFirstBaselineLayout"];
  }

  v16 = [a1 viewForLastBaselineLayoutPointerForView:v22];
  if (v16)
  {
    [v6 setObject:v16 forKey:@"viewForLastBaselineLayout"];
  }

  [v22 layoutMargins];
  v21 = __52__DBGViewDebuggerSupport_iOS_addFrameBasics_toDict___block_invoke(v17, v18, v19, v20);
  [v6 setObject:v21 forKey:@"layoutMargins"];
}

+ (BOOL)_viewHasAmbiguousLayout:(id)a3
{
  v3 = a3;
  if (viewWantsAutoLayout(v3))
  {
    v4 = [v3 _layoutVariablesWithAmbiguousValue];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)ambiguityStatusMaskForView:(id)a3
{
  v4 = a3;
  v5 = [v4 _layoutVariablesWithAmbiguousValue];
  v6 = [NSSet setWithArray:v5];

  v7 = [v4 superview];
  if (!v7)
  {
    goto LABEL_7;
  }

  while (([v7 _uiib_hostsLayoutEngine] & 1) == 0)
  {
    v8 = [v7 superview];

    v7 = v8;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  if ([v7 _uiib_hostsLayoutEngine])
  {
    v9 = [v7 _uiib_layoutEngineCreatingIfNecessary];
  }

  else
  {
LABEL_7:
    v9 = 0;
  }

  v10 = [v4 _minXVariable];
  if (v10)
  {
    if ([v6 containsObject:v10])
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    if (v9 && ![v9 hasValue:0 forVariable:v10])
    {
      v11 |= 0x400uLL;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [v4 _minYVariable];
  if (v12)
  {
    if ([v6 containsObject:v12])
    {
      v11 |= 4uLL;
    }

    if (v9 && ![v9 hasValue:0 forVariable:v12])
    {
      v11 |= 0x800uLL;
    }
  }

  v13 = [v4 _boundsWidthVariable];
  if (v13)
  {
    if ([v6 containsObject:v13])
    {
      v11 |= 8uLL;
    }

    if (v9 && ![v9 hasValue:0 forVariable:v13])
    {
      v11 |= 0x1000uLL;
    }
  }

  v14 = [v4 _boundsHeightVariable];
  v22 = v10;
  if (v14)
  {
    if ([v6 containsObject:v14])
    {
      v11 |= 0x10uLL;
    }

    if (v9 && ![v9 hasValue:0 forVariable:v14])
    {
      v11 |= 0x2000uLL;
    }
  }

  v15 = [v4 _contentWidthVariable];
  v20 = v12;
  if (!v15)
  {
    goto LABEL_44;
  }

  if (([a1 ibShouldIgnoreScrollableContentWidthAmbiguityForRepresentationOfItem:{v4, v12, v22}] & 1) == 0 && objc_msgSend(v6, "containsObject:", v15))
  {
    v11 |= 0x20uLL;
  }

  if (!v9)
  {
LABEL_44:
    v16 = v6;
    goto LABEL_45;
  }

  v16 = v6;
  if ([a1 ibShouldIgnoreScrollableContentWidthAmbiguityForRepresentationOfItem:v4])
  {
LABEL_45:
    v17 = a1;
    goto LABEL_46;
  }

  v17 = a1;
  if (![v9 hasValue:0 forVariable:v15])
  {
    v11 |= 0x4000uLL;
  }

LABEL_46:
  v18 = [v4 _contentHeightVariable];
  if (v18)
  {
    if (([v17 ibShouldIgnoreScrollableContentHeightAmbiguityForRepresentationOfItem:v4] & 1) == 0 && objc_msgSend(v16, "containsObject:", v18))
    {
      v11 |= 0x40uLL;
    }

    if (v9 && ([v17 ibShouldIgnoreScrollableContentHeightAmbiguityForRepresentationOfItem:v4] & 1) == 0 && !objc_msgSend(v9, "hasValue:forVariable:", 0, v18))
    {
      v11 |= 0x8000uLL;
    }
  }

  return v11;
}

+ (BOOL)ibShouldIgnoreScrollableContentWidthAmbiguityForRepresentationOfItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 subviews];
    v5 = [v4 count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)ibShouldIgnoreScrollableContentHeightAmbiguityForRepresentationOfItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 subviews];
    v5 = [v4 count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (double)firstBaselineOffsetFromTopForView:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (viewWantsAutoLayout(v3))
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 viewForFirstBaselineLayout];
    }
  }

  v5 = 0.0;
  if (viewWantsAutoLayout(v4) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 _firstBaselineOffsetFromTop];
    v5 = v6;
  }

  [v4 bounds];
  [v4 alignmentRectForFrame:?];
  [v4 convertRect:v3 toView:?];
  v8 = v7;
  [v3 bounds];
  [v3 alignmentRectForFrame:?];
  v10 = v5 + v8 + v9;

  return v10;
}

+ (double)lastBaselineOffsetFromBottomForView:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (viewWantsAutoLayout(v3))
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 viewForLastBaselineLayout];
    }
  }

  v5 = 0.0;
  if (viewWantsAutoLayout(v4) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 _baselineOffsetFromBottom];
    v5 = v6;
  }

  [v4 bounds];
  [v4 alignmentRectForFrame:?];
  [v4 convertRect:v3 toView:?];
  v8 = v7;
  v10 = v9;
  [v3 bounds];
  [v3 alignmentRectForFrame:?];
  v13 = v5 + v11 + v12 - (v8 + v10);

  return v13;
}

+ (id)viewForFirstBaselineLayoutPointerForView:(id)a3
{
  v3 = a3;
  if (viewWantsAutoLayout(v3) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 viewForFirstBaselineLayout];
    if (v4)
    {
      v5 = [NSString stringWithFormat:@"%p", v4];
      goto LABEL_7;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)viewForLastBaselineLayoutPointerForView:(id)a3
{
  v3 = a3;
  if (viewWantsAutoLayout(v3) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 viewForLastBaselineLayout];
    if (v4)
    {
      v5 = [NSString stringWithFormat:@"%p", v4];
      goto LABEL_7;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end