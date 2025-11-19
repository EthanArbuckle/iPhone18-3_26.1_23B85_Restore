@interface VUIDocumentUIConfiguration
+ (CGSize)_preferredSizeFromConfig:(id)a3;
+ (VUIDocumentUIConfiguration)uiConfigurationWithDict:(id)a3;
+ (id)_detentsFromDictionary:(id)a3 inConfig:(id)a4;
+ (int64_t)_presentationTypeFromString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (VUIDocumentUIConfiguration)init;
@end

@implementation VUIDocumentUIConfiguration

+ (VUIDocumentUIConfiguration)uiConfigurationWithDict:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 vui_stringForKey:@"transitionType"];
  v6 = [v4 _presentationTypeFromString:v5];

  v7 = [v3 vui_stringForKey:@"viewControllerId"];
  v8 = [v3 vui_stringForKey:@"viewControllerDocumentId"];
  v9 = [v3 vui_stringForKey:@"loadingViewText"];
  v10 = [v3 vui_stringForKey:@"navigationTitle"];
  v11 = [v3 vui_BOOLForKey:@"animated" defaultValue:1];
  v12 = [v3 vui_BOOLForKey:@"navBarHidden" defaultValue:0];
  v22 = [v3 vui_BOOLForKey:@"navBarAdjustedToSizeClass" defaultValue:0];
  v21 = [v3 vui_BOOLForKey:@"interactivePopGestureAllowed" defaultValue:1];
  HIDWORD(v20) = [v3 vui_BOOLForKey:@"modalOverModalAllowed" defaultValue:0];
  v23 = [v3 vui_BOOLForKey:@"prefersLargeTitle" defaultValue:1];
  v13 = [v3 vui_BOOLForKey:@"isComingFromExtras" defaultValue:0];
  v25 = [v3 vui_stringForKey:@"documentType"];
  v24 = v13;
  if (v6 <= 5)
  {
    if ((v6 - 2) < 2)
    {
LABEL_11:
      v14 = v8;
      v15 = v7;
      v16 = objc_alloc_init(VUIDocumentUIConfigurationModal);
      [(VUIDocumentUIConfigurationModal *)v16 setModalOverModalAllowed:HIDWORD(v20)];
      -[VUIDocumentUIConfigurationModal setPresentOnPresentingVC:](v16, "setPresentOnPresentingVC:", [v25 isEqualToString:@"modalOverPlayback"] ^ 1);
      goto LABEL_15;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        v14 = v8;
        v15 = v7;
        v16 = objc_alloc_init(VUIDocumentUIConfigurationPopover);
        LODWORD(v20) = [v3 vui_BOOLForKey:@"presentationAdjustedToSizeClass" defaultValue:0];
        [objc_opt_class() _preferredSizeFromConfig:v3];
        [(VUIDocumentUIConfigurationPopover *)v16 setPreferredSize:?];
        [(VUIDocumentUIConfigurationModal *)v16 setModalOverModalAllowed:HIDWORD(v20)];
        [(VUIDocumentUIConfigurationPopover *)v16 setPopOverArrowDirection:15];
        [(VUIDocumentUIConfigurationPopover *)v16 setPresentationAdjustedToSizeClass:v20];
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    v14 = v8;
    v15 = v7;
    v16 = objc_alloc_init(VUIDocumentUIConfigurationFormSheet);
    LODWORD(v20) = [v3 vui_BOOLForKey:@"tapDismissable" defaultValue:1];
    [objc_opt_class() _preferredSizeFromConfig:v3];
    [(VUIDocumentUIConfigurationPopover *)v16 setPreferredSize:?];
    [(VUIDocumentUIConfigurationPopover *)v16 setTapDismissable:v20];
    -[VUIDocumentUIConfigurationPopover setPrefersGrabberVisible:](v16, "setPrefersGrabberVisible:", [v3 vui_BOOLForKey:@"prefersGrabberVisible" defaultValue:0]);
    v18 = [objc_opt_class() _detentsFromDictionary:v3 inConfig:v16];
    [(VUIDocumentUIConfigurationPopover *)v16 setDetents:v18];

    v17 = v16;
  }

  else
  {
    if (v6 < 9)
    {
LABEL_10:
      v14 = v8;
      v15 = v7;
      v16 = objc_alloc_init(VUIDocumentUIConfiguration);
      goto LABEL_15;
    }

    if (v6 != 9)
    {
      if (v6 != 14)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v14 = v8;
    v15 = v7;
    v17 = objc_alloc_init(VUIDocumentUIConfigurationFormSheetFullscreen);
    v16 = v17;
  }

  [(VUIDocumentUIConfigurationModal *)v17 setModalOverModalAllowed:HIDWORD(v20), v20];
LABEL_15:
  [(VUIDocumentUIConfiguration *)v16 setViewControllerIdentifier:v15, v20];
  [(VUIDocumentUIConfiguration *)v16 setViewControllerDocumentIdentifier:v14];
  [(VUIDocumentUIConfiguration *)v16 setNavigationBarHidden:v12];
  [(VUIDocumentUIConfiguration *)v16 setNavigationBarAdjustedToSizeClass:v22];
  [(VUIDocumentUIConfiguration *)v16 setIsInteractivePopGestureAllowed:v21];
  [(VUIDocumentUIConfiguration *)v16 setType:v6];
  [(VUIDocumentUIConfiguration *)v16 setAnimated:v11];
  [(VUIDocumentUIConfiguration *)v16 setLoadingViewText:v9];
  [(VUIDocumentUIConfiguration *)v16 setShouldWrapModalInNavigationController:1];
  [(VUIDocumentUIConfiguration *)v16 setPrefersLargeTitle:v23];
  [(VUIDocumentUIConfiguration *)v16 setNavigationTitle:v10];
  [(VUIDocumentUIConfiguration *)v16 setIsComingFromExtras:v24];

  return v16;
}

- (VUIDocumentUIConfiguration)init
{
  v3.receiver = self;
  v3.super_class = VUIDocumentUIConfiguration;
  result = [(VUIDocumentUIConfiguration *)&v3 init];
  if (result)
  {
    *&result->_shouldWrapModalInNavigationController = 1;
    result->_prefersLargeTitle = 1;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VUIDocumentUIConfiguration *)self type];
      if (v6 == [(VUIDocumentUIConfiguration *)v5 type])
      {
        v7 = [(VUIDocumentUIConfiguration *)self viewControllerIdentifier];
        v8 = [(VUIDocumentUIConfiguration *)v5 viewControllerIdentifier];
        if (v7 == v8)
        {
          v10 = [(VUIDocumentUIConfiguration *)self viewControllerDocumentIdentifier];
          v11 = [(VUIDocumentUIConfiguration *)v5 viewControllerDocumentIdentifier];
          if (v10 == v11 && (v12 = [(VUIDocumentUIConfiguration *)self isAnimated], v12 == [(VUIDocumentUIConfiguration *)v5 isAnimated]) && (v13 = [(VUIDocumentUIConfiguration *)self isNavigationBarHidden], v13 == [(VUIDocumentUIConfiguration *)v5 isNavigationBarHidden]) && (v14 = [(VUIDocumentUIConfiguration *)self isNavigationBarAdjustedToSizeClass], v14 == [(VUIDocumentUIConfiguration *)v5 isNavigationBarAdjustedToSizeClass]) && (v15 = [(VUIDocumentUIConfiguration *)self isInteractivePopGestureAllowed], v15 == [(VUIDocumentUIConfiguration *)v5 isInteractivePopGestureAllowed]))
          {
            v17 = [(VUIDocumentUIConfiguration *)self shouldWrapModalInNavigationController];
            v9 = v17 ^ [(VUIDocumentUIConfiguration *)v5 shouldWrapModalInNavigationController]^ 1;
          }

          else
          {
            LOBYTE(v9) = 0;
          }
        }

        else
        {
          LOBYTE(v9) = 0;
        }
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

+ (CGSize)_preferredSizeFromConfig:(id)a3
{
  v3 = a3;
  v4 = [v3 vui_numberForKey:@"preferredWidth"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [v3 vui_numberForKey:@"preferredHeight"];

  [v7 doubleValue];
  v9 = v8;

  v10 = v6;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

+ (int64_t)_presentationTypeFromString:(id)a3
{
  v3 = a3;
  if ([v3 length] && (objc_msgSend(v3, "isEqualToString:", @"Push") & 1) == 0)
  {
    if ([v3 isEqualToString:@"Zoom"])
    {
      v4 = 15;
    }

    else if ([v3 isEqualToString:@"FullScreen"])
    {
      v4 = 2;
    }

    else if ([v3 isEqualToString:@"OverFullScreen"])
    {
      v4 = 14;
    }

    else if ([v3 isEqualToString:@"BlurOverFullScreen"])
    {
      v4 = 3;
    }

    else if ([v3 isEqualToString:@"Pop"])
    {
      v4 = 6;
    }

    else if ([v3 isEqualToString:@"Dismiss"])
    {
      v4 = 7;
    }

    else if ([v3 isEqualToString:@"PopOrDismiss"])
    {
      v4 = 8;
    }

    else if ([v3 isEqualToString:@"DismissAndPush"])
    {
      v4 = 12;
    }

    else if ([v3 isEqualToString:@"DismissAndZoom"])
    {
      v4 = 16;
    }

    else if ([v3 isEqualToString:@"Popover"])
    {
      v4 = 5;
    }

    else if ([v3 isEqualToString:@"FormSheet"])
    {
      v4 = 4;
    }

    else if ([v3 isEqualToString:@"FormSheetFullscreen"])
    {
      v4 = 9;
    }

    else if ([v3 isEqualToString:@"Replace"])
    {
      v4 = 17;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)_detentsFromDictionary:(id)a3 inConfig:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = a3;
  val = a4;
  v5 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v18 vui_arrayForKey:@"detents"];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if ([v10 isEqualToString:{@"medium", v18}])
        {
          v11 = [MEMORY[0x1E69DCF58] mediumDetent];
          [v5 addObject:v11];
        }

        else if ([v10 isEqualToString:@"large"])
        {
          v12 = [MEMORY[0x1E69DCF58] largeDetent];
          [v5 addObject:v12];
        }

        else if ([v10 isEqualToString:@"custom"])
        {
          objc_initWeak(&location, val);
          v13 = MEMORY[0x1E69DCF58];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __62__VUIDocumentUIConfiguration__detentsFromDictionary_inConfig___block_invoke;
          v20[3] = &unk_1E8735FB0;
          objc_copyWeak(&v21, &location);
          v14 = [v13 customDetentWithIdentifier:@"custom" resolver:v20];
          [v5 addObject:v14];

          objc_destroyWeak(&v21);
          objc_destroyWeak(&location);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v15 = v5;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

double __62__VUIDocumentUIConfiguration__detentsFromDictionary_inConfig___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained preferredSize];
  if (v2 == 0.0)
  {
    v3 = *MEMORY[0x1E69DE3C0];
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

@end