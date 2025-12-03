@interface WKUserContentController(ScribbleUtilities)
- (void)safari_updateScribbleStyleSheetForWebView:()ScribbleUtilities targets:forceScrollable:;
@end

@implementation WKUserContentController(ScribbleUtilities)

- (void)safari_updateScribbleStyleSheetForWebView:()ScribbleUtilities targets:forceScrollable:
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  v26 = v9;
  v25 = [v8 safari_styleSheetForTargets:v9 forceScrollable:a5];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  _userStyleSheets = [self _userStyleSheets];
  v12 = [_userStyleSheets countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(_userStyleSheets);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          webView = [v16 webView];
          v18 = webView;
          if (webView)
          {
            v19 = webView == v8;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            [v10 addObject:v16];
          }
        }
      }

      v13 = [_userStyleSheets countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v13);
  }

  if (v25)
  {
    [self _addUserStyleSheet:v25];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = v10;
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [self _removeUserStyleSheet:*(*(&v27 + 1) + 8 * j)];
      }

      v22 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v22);
  }
}

@end