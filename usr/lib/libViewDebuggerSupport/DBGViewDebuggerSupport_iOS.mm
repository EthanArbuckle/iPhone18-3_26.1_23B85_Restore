@interface DBGViewDebuggerSupport_iOS
+ (BOOL)_isEffectView:(id)view;
+ (BOOL)_viewHasAmbiguousLayout:(id)layout;
+ (BOOL)ibShouldIgnoreScrollableContentHeightAmbiguityForRepresentationOfItem:(id)item;
+ (BOOL)ibShouldIgnoreScrollableContentWidthAmbiguityForRepresentationOfItem:(id)item;
+ (BOOL)isViewSubclass:(id)subclass;
+ (BOOL)isWindowSubclass:(id)subclass;
+ (double)firstBaselineOffsetFromTopForView:(id)view;
+ (double)lastBaselineOffsetFromBottomForView:(id)view;
+ (double)screenBackingScaleForView:(id)view;
+ (double)screenBackingScaleForWindow:(id)window;
+ (id)_messagesUIExtensionViews;
+ (id)_renderEffectViewUsingDrawHierarchyInRect:(id)rect;
+ (id)appWindows;
+ (id)displayNameForView:(id)view;
+ (id)primaryWindowFromWindows:(id)windows;
+ (id)snapshotMethodForView:(id)view;
+ (id)snapshotView:(id)view errorString:(id *)string;
+ (id)subviewsForView:(id)view;
+ (id)viewForFirstBaselineLayoutPointerForView:(id)view;
+ (id)viewForLastBaselineLayoutPointerForView:(id)view;
+ (unint64_t)ambiguityStatusMaskForView:(id)view;
+ (void)addFrameBasics:(id)basics toDict:(id)dict;
+ (void)addLayoutInfoForView:(id)view toDict:(id)dict;
+ (void)addViewBasics:(id)basics toDict:(id)dict;
@end

@implementation DBGViewDebuggerSupport_iOS

+ (id)displayNameForView:(id)view
{
  viewCopy = view;
  accessibilityLabel = [viewCopy accessibilityLabel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  accessibilityLabel2 = [viewCopy accessibilityLabel];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }

    accessibilityLabel3 = [viewCopy accessibilityLabel];
    accessibilityLabel2 = [accessibilityLabel3 string];
  }

  if (accessibilityLabel2)
  {
    goto LABEL_16;
  }

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accessibilityLabel2 = [viewCopy currentTitle];
    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector())
  {
    text = [viewCopy text];
LABEL_9:
    date = text;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = date;
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
    date = [viewCopy date];
    v12 = [date description];
LABEL_15:
    accessibilityLabel2 = v12;

    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector())
  {
    text = [viewCopy title];
    goto LABEL_9;
  }

  accessibilityLabel2 = 0;
LABEL_16:

  return accessibilityLabel2;
}

+ (id)primaryWindowFromWindows:(id)windows
{
  windowsCopy = windows;
  v4 = +[UIApplication sharedApplication];
  keyWindow = [v4 keyWindow];

  if (keyWindow)
  {
    firstObject = keyWindow;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = windowsCopy;
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

    firstObject = [v7 firstObject];
  }

  v13 = firstObject;
LABEL_15:

  return v13;
}

+ (id)snapshotMethodForView:(id)view
{
  viewCopy = view;
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
  windows = [v2 windows];

  return windows;
}

+ (double)screenBackingScaleForWindow:(id)window
{
  screen = [window screen];
  [screen scale];
  v5 = v4;

  return v5;
}

+ (double)screenBackingScaleForView:(id)view
{
  viewCopy = view;
  window = [viewCopy window];
  if (window)
  {
    window2 = [viewCopy window];
    [self screenBackingScaleForWindow:window2];
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
    sharedInstance = [(objc_class *)v3 sharedInstance];
    if (sharedInstance && (objc_opt_respondsToSelector() & 1) != 0)
    {
      activeExtensionContext = [sharedInstance activeExtensionContext];
      if (activeExtensionContext && (objc_opt_respondsToSelector() & 1) != 0)
      {
        viewController = [activeExtensionContext viewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          view = [viewController view];
          v10 = view;
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

+ (id)subviewsForView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentView = [viewCopy contentView];

    if (contentView)
    {
      v7 = contentView;
      subviews = [NSArray arrayWithObjects:&v7 count:1];
    }

    else
    {
      subviews = 0;
    }
  }

  else
  {
    subviews = [viewCopy subviews];
  }

  return subviews;
}

+ (BOOL)isWindowSubclass:(id)subclass
{
  subclassCopy = subclass;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)isViewSubclass:(id)subclass
{
  subclassCopy = subclass;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)snapshotView:(id)view errorString:(id *)string
{
  viewCopy = view;
  [viewCopy bounds];
  v8 = v7;
  [viewCopy bounds];
  v10 = 0;
  if (v8 > 0.0 && v9 > 0.0 && v8 * v9 < 16000000.0)
  {
    NSClassFromString(&cfstr_Glkview.isa);
    if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Skview.isa), (objc_opt_isKindOfClass()) || (NSClassFromString(&cfstr_Scnview.isa), (objc_opt_isKindOfClass()) || (NSClassFromString(&cfstr_RealitykitArvi.isa), (objc_opt_isKindOfClass()))
    {
      snapshot = [viewCopy snapshot];
    }

    else
    {
      if (![self _isEffectView:viewCopy])
      {
        subviews = [viewCopy subviews];
        v15 = [subviews count];
        v16 = &v30 - ((4 * v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v15)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            v18 = [subviews objectAtIndex:i];
            layer = [v18 layer];
            [layer opacity];
            *&v16[4 * i] = v20;

            layer2 = [v18 layer];
            [layer2 setOpacity:0.0];
          }
        }

        [viewCopy bounds];
        v32.width = v22;
        v32.height = v23;
        UIGraphicsBeginImageContextWithOptions(v32, 0, 0.0);
        CurrentContext = UIGraphicsGetCurrentContext();
        if (CurrentContext)
        {
          layer3 = [viewCopy layer];
          [layer3 renderInContext:CurrentContext];

          CurrentContext = UIGraphicsGetImageFromCurrentImageContext();
        }

        UIGraphicsEndImageContext();
        if (v15)
        {
          for (j = 0; j != v15; j = j + 1)
          {
            v26 = [subviews objectAtIndex:j];
            v27 = *&v16[4 * j];
            layer4 = [v26 layer];
            LODWORD(v29) = v27;
            [layer4 setOpacity:v29];
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

        if (!*string)
        {
          [NSString stringWithFormat:@"Problem getting view snapshot for %@", viewCopy];
          *string = v10 = 0;
          goto LABEL_13;
        }

LABEL_12:
        v10 = 0;
        goto LABEL_13;
      }

      snapshot = [self _renderEffectViewUsingDrawHierarchyInRect:viewCopy];
    }

    CurrentContext = snapshot;
    if (!snapshot)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_14:

  return v10;
}

+ (BOOL)_isEffectView:(id)view
{
  viewCopy = view;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  viewDebuggerEffectViewsToSnapshotAsImage = [self viewDebuggerEffectViewsToSnapshotAsImage];
  v6 = [viewDebuggerEffectViewsToSnapshotAsImage countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(viewDebuggerEffectViewsToSnapshotAsImage);
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

      v6 = [viewDebuggerEffectViewsToSnapshotAsImage countByEnumeratingWithState:&v13 objects:v17 count:16];
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

+ (id)_renderEffectViewUsingDrawHierarchyInRect:(id)rect
{
  rectCopy = rect;
  window = [rectCopy window];
  if (!window)
  {
    v5 = rectCopy;
    superview = [v5 superview];

    if (superview)
    {
      do
      {
        window = [v5 superview];

        superview2 = [window superview];

        v5 = window;
      }

      while (superview2);
    }

    else
    {
      window = v5;
    }
  }

  [rectCopy bounds];
  [window convertRect:rectCopy fromView:?];
  x = v8;
  y = v10;
  width = v12;
  height = v14;
  v16 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:0];
  v17 = rectCopy;
  v18 = v17;
  if (window == v17)
  {
    superview3 = v17;
  }

  else
  {
    v19 = v17;
    do
    {
      superview3 = [v19 superview];
      subviews = [superview3 subviews];
      v22 = [subviews indexOfObject:v19];

      subviews2 = [superview3 subviews];
      v24 = [subviews2 count];
      v25 = v22 + 1;

      if (v24 > v22 + 1)
      {
        while (1)
        {
          subviews3 = [superview3 subviews];
          v27 = [subviews3 count];

          if (v25 >= v27)
          {
            break;
          }

          subviews4 = [superview3 subviews];
          v29 = [subviews4 objectAtIndexedSubscript:v25];

          [v29 alpha];
          v30 = [NSNumber numberWithDouble:?];
          [v16 setObject:v30 forKey:v29];

          [v29 setAlpha:0.0];
          ++v25;
        }
      }

      if ([superview3 clipsToBounds])
      {
        [superview3 bounds];
        [window convertRect:superview3 fromView:?];
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

      v19 = superview3;
    }

    while (superview3 != window);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v70 = v18;
  subviews5 = [v18 subviews];
  v36 = [subviews5 countByEnumeratingWithState:&v75 objects:v80 count:16];
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
          objc_enumerationMutation(subviews5);
        }

        v40 = *(*(&v75 + 1) + 8 * i);
        [v40 alpha];
        v41 = [NSNumber numberWithDouble:?];
        [v16 setObject:v41 forKey:v40];

        [v40 setAlpha:0.0];
      }

      v37 = [subviews5 countByEnumeratingWithState:&v75 objects:v80 count:16];
    }

    while (v37);
  }

  [window bounds];
  v43 = v42;
  v45 = v44;
  v82.width = width;
  v82.height = height;
  UIGraphicsBeginImageContextWithOptions(v82, 0, 0.0);
  [window drawViewHierarchyInRect:1 afterScreenUpdates:{-x, -y, v43, v45}];
  v46 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [v70 bounds];
  if (v48 != width || v47 != height)
  {
    [v70 convertRect:window fromView:{x, y, width, height}];
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
  keyEnumerator = [v16 keyEnumerator];
  v61 = [keyEnumerator countByEnumeratingWithState:&v71 objects:v79 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v65 = *(*(&v71 + 1) + 8 * j);
        v66 = [v16 objectForKey:v65];
        [v66 doubleValue];
        v68 = v67;

        [v65 setAlpha:v68];
      }

      v62 = [keyEnumerator countByEnumeratingWithState:&v71 objects:v79 count:16];
    }

    while (v62);
  }

  return v46;
}

+ (void)addFrameBasics:(id)basics toDict:(id)dict
{
  dictCopy = dict;
  [basics frame];
  v10 = __52__DBGViewDebuggerSupport_iOS_addFrameBasics_toDict___block_invoke(v6, v7, v8, v9);
  [dictCopy setObject:v10 forKey:@"frame"];
}

+ (void)addViewBasics:(id)basics toDict:(id)dict
{
  basicsCopy = basics;
  dictCopy = dict;
  if ([self isViewSubclass:basicsCopy])
  {
    v7 = basicsCopy;
    [v7 frame];
    v12 = __52__DBGViewDebuggerSupport_iOS_addFrameBasics_toDict___block_invoke(v8, v9, v10, v11);
    [dictCopy setObject:v12 forKey:@"frame"];

    [v7 bounds];
    v17 = __52__DBGViewDebuggerSupport_iOS_addFrameBasics_toDict___block_invoke(v13, v14, v15, v16);
    [dictCopy setObject:v17 forKey:@"bounds"];

    superview = [v7 superview];
    v19 = [NSString stringWithFormat:@"%p", superview];

    [dictCopy setObject:v19 forKey:@"superview"];
    v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isHidden]);
    [dictCopy setObject:v20 forKey:@"hidden"];

    v21 = [self displayNameForView:v7];
    if (v21)
    {
      [dictCopy setObject:v21 forKey:@"displayName"];
    }

    [v7 contentScaleFactor];
    v22 = [NSNumber numberWithDouble:?];
    [dictCopy setObject:v22 forKey:@"contentsScale"];
  }
}

+ (void)addLayoutInfoForView:(id)view toDict:(id)dict
{
  viewCopy = view;
  dictCopy = dict;
  v7 = [viewCopy constraintsAffectingLayoutForAxis:0];
  v8 = arrayOfObjectPointers(v7);
  [dictCopy setObject:v8 forKey:@"horizontalAffectingConstraints"];

  v9 = [viewCopy constraintsAffectingLayoutForAxis:1];
  v10 = arrayOfObjectPointers(v9);
  [dictCopy setObject:v10 forKey:@"verticalAffectingConstraints"];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [self _viewHasAmbiguousLayout:viewCopy]);
  [dictCopy setObject:v11 forKey:@"hasAmbiguousLayout"];

  if ([self _viewHasAmbiguousLayout:viewCopy])
  {
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [self ambiguityStatusMaskForView:viewCopy]);
    [dictCopy setObject:v12 forKey:@"ambiguityStatusMask"];
  }

  [self firstBaselineOffsetFromTopForView:viewCopy];
  v13 = [NSNumber numberWithDouble:?];
  [dictCopy setObject:v13 forKey:@"firstBaselineOffsetFromTop"];

  [self lastBaselineOffsetFromBottomForView:viewCopy];
  v14 = [NSNumber numberWithDouble:?];
  [dictCopy setObject:v14 forKey:@"lastBaselineOffsetFromBottom"];

  v15 = [self viewForFirstBaselineLayoutPointerForView:viewCopy];
  if (v15)
  {
    [dictCopy setObject:v15 forKey:@"viewForFirstBaselineLayout"];
  }

  v16 = [self viewForLastBaselineLayoutPointerForView:viewCopy];
  if (v16)
  {
    [dictCopy setObject:v16 forKey:@"viewForLastBaselineLayout"];
  }

  [viewCopy layoutMargins];
  v21 = __52__DBGViewDebuggerSupport_iOS_addFrameBasics_toDict___block_invoke(v17, v18, v19, v20);
  [dictCopy setObject:v21 forKey:@"layoutMargins"];
}

+ (BOOL)_viewHasAmbiguousLayout:(id)layout
{
  layoutCopy = layout;
  if (viewWantsAutoLayout(layoutCopy))
  {
    _layoutVariablesWithAmbiguousValue = [layoutCopy _layoutVariablesWithAmbiguousValue];
    v5 = [_layoutVariablesWithAmbiguousValue count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)ambiguityStatusMaskForView:(id)view
{
  viewCopy = view;
  _layoutVariablesWithAmbiguousValue = [viewCopy _layoutVariablesWithAmbiguousValue];
  v6 = [NSSet setWithArray:_layoutVariablesWithAmbiguousValue];

  superview = [viewCopy superview];
  if (!superview)
  {
    goto LABEL_7;
  }

  while (([superview _uiib_hostsLayoutEngine] & 1) == 0)
  {
    v7Superview = [superview superview];

    superview = v7Superview;
    if (!v7Superview)
    {
      goto LABEL_7;
    }
  }

  if ([superview _uiib_hostsLayoutEngine])
  {
    _uiib_layoutEngineCreatingIfNecessary = [superview _uiib_layoutEngineCreatingIfNecessary];
  }

  else
  {
LABEL_7:
    _uiib_layoutEngineCreatingIfNecessary = 0;
  }

  _minXVariable = [viewCopy _minXVariable];
  if (_minXVariable)
  {
    if ([v6 containsObject:_minXVariable])
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    if (_uiib_layoutEngineCreatingIfNecessary && ![_uiib_layoutEngineCreatingIfNecessary hasValue:0 forVariable:_minXVariable])
    {
      v11 |= 0x400uLL;
    }
  }

  else
  {
    v11 = 0;
  }

  _minYVariable = [viewCopy _minYVariable];
  if (_minYVariable)
  {
    if ([v6 containsObject:_minYVariable])
    {
      v11 |= 4uLL;
    }

    if (_uiib_layoutEngineCreatingIfNecessary && ![_uiib_layoutEngineCreatingIfNecessary hasValue:0 forVariable:_minYVariable])
    {
      v11 |= 0x800uLL;
    }
  }

  _boundsWidthVariable = [viewCopy _boundsWidthVariable];
  if (_boundsWidthVariable)
  {
    if ([v6 containsObject:_boundsWidthVariable])
    {
      v11 |= 8uLL;
    }

    if (_uiib_layoutEngineCreatingIfNecessary && ![_uiib_layoutEngineCreatingIfNecessary hasValue:0 forVariable:_boundsWidthVariable])
    {
      v11 |= 0x1000uLL;
    }
  }

  _boundsHeightVariable = [viewCopy _boundsHeightVariable];
  v22 = _minXVariable;
  if (_boundsHeightVariable)
  {
    if ([v6 containsObject:_boundsHeightVariable])
    {
      v11 |= 0x10uLL;
    }

    if (_uiib_layoutEngineCreatingIfNecessary && ![_uiib_layoutEngineCreatingIfNecessary hasValue:0 forVariable:_boundsHeightVariable])
    {
      v11 |= 0x2000uLL;
    }
  }

  _contentWidthVariable = [viewCopy _contentWidthVariable];
  v20 = _minYVariable;
  if (!_contentWidthVariable)
  {
    goto LABEL_44;
  }

  if (([self ibShouldIgnoreScrollableContentWidthAmbiguityForRepresentationOfItem:{viewCopy, _minYVariable, v22}] & 1) == 0 && objc_msgSend(v6, "containsObject:", _contentWidthVariable))
  {
    v11 |= 0x20uLL;
  }

  if (!_uiib_layoutEngineCreatingIfNecessary)
  {
LABEL_44:
    v16 = v6;
    goto LABEL_45;
  }

  v16 = v6;
  if ([self ibShouldIgnoreScrollableContentWidthAmbiguityForRepresentationOfItem:viewCopy])
  {
LABEL_45:
    selfCopy2 = self;
    goto LABEL_46;
  }

  selfCopy2 = self;
  if (![_uiib_layoutEngineCreatingIfNecessary hasValue:0 forVariable:_contentWidthVariable])
  {
    v11 |= 0x4000uLL;
  }

LABEL_46:
  _contentHeightVariable = [viewCopy _contentHeightVariable];
  if (_contentHeightVariable)
  {
    if (([selfCopy2 ibShouldIgnoreScrollableContentHeightAmbiguityForRepresentationOfItem:viewCopy] & 1) == 0 && objc_msgSend(v16, "containsObject:", _contentHeightVariable))
    {
      v11 |= 0x40uLL;
    }

    if (_uiib_layoutEngineCreatingIfNecessary && ([selfCopy2 ibShouldIgnoreScrollableContentHeightAmbiguityForRepresentationOfItem:viewCopy] & 1) == 0 && !objc_msgSend(_uiib_layoutEngineCreatingIfNecessary, "hasValue:forVariable:", 0, _contentHeightVariable))
    {
      v11 |= 0x8000uLL;
    }
  }

  return v11;
}

+ (BOOL)ibShouldIgnoreScrollableContentWidthAmbiguityForRepresentationOfItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    subviews = [itemCopy subviews];
    v5 = [subviews count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)ibShouldIgnoreScrollableContentHeightAmbiguityForRepresentationOfItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    subviews = [itemCopy subviews];
    v5 = [subviews count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (double)firstBaselineOffsetFromTopForView:(id)view
{
  viewCopy = view;
  viewForFirstBaselineLayout = viewCopy;
  if (viewWantsAutoLayout(viewCopy))
  {
    viewForFirstBaselineLayout = viewCopy;
    if (objc_opt_respondsToSelector())
    {
      viewForFirstBaselineLayout = [viewCopy viewForFirstBaselineLayout];
    }
  }

  v5 = 0.0;
  if (viewWantsAutoLayout(viewForFirstBaselineLayout) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [viewForFirstBaselineLayout _firstBaselineOffsetFromTop];
    v5 = v6;
  }

  [viewForFirstBaselineLayout bounds];
  [viewForFirstBaselineLayout alignmentRectForFrame:?];
  [viewForFirstBaselineLayout convertRect:viewCopy toView:?];
  v8 = v7;
  [viewCopy bounds];
  [viewCopy alignmentRectForFrame:?];
  v10 = v5 + v8 + v9;

  return v10;
}

+ (double)lastBaselineOffsetFromBottomForView:(id)view
{
  viewCopy = view;
  viewForLastBaselineLayout = viewCopy;
  if (viewWantsAutoLayout(viewCopy))
  {
    viewForLastBaselineLayout = viewCopy;
    if (objc_opt_respondsToSelector())
    {
      viewForLastBaselineLayout = [viewCopy viewForLastBaselineLayout];
    }
  }

  v5 = 0.0;
  if (viewWantsAutoLayout(viewForLastBaselineLayout) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [viewForLastBaselineLayout _baselineOffsetFromBottom];
    v5 = v6;
  }

  [viewForLastBaselineLayout bounds];
  [viewForLastBaselineLayout alignmentRectForFrame:?];
  [viewForLastBaselineLayout convertRect:viewCopy toView:?];
  v8 = v7;
  v10 = v9;
  [viewCopy bounds];
  [viewCopy alignmentRectForFrame:?];
  v13 = v5 + v11 + v12 - (v8 + v10);

  return v13;
}

+ (id)viewForFirstBaselineLayoutPointerForView:(id)view
{
  viewCopy = view;
  if (viewWantsAutoLayout(viewCopy) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    viewForFirstBaselineLayout = [viewCopy viewForFirstBaselineLayout];
    if (viewForFirstBaselineLayout)
    {
      v5 = [NSString stringWithFormat:@"%p", viewForFirstBaselineLayout];
      goto LABEL_7;
    }
  }

  else
  {
    viewForFirstBaselineLayout = 0;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)viewForLastBaselineLayoutPointerForView:(id)view
{
  viewCopy = view;
  if (viewWantsAutoLayout(viewCopy) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    viewForLastBaselineLayout = [viewCopy viewForLastBaselineLayout];
    if (viewForLastBaselineLayout)
    {
      v5 = [NSString stringWithFormat:@"%p", viewForLastBaselineLayout];
      goto LABEL_7;
    }
  }

  else
  {
    viewForLastBaselineLayout = 0;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end