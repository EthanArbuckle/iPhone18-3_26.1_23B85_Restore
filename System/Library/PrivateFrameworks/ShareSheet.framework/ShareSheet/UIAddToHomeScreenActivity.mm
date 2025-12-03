@interface UIAddToHomeScreenActivity
+ (unint64_t)_xpcAttributes;
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)activityTitle;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation UIAddToHomeScreenActivity

+ (unint64_t)_xpcAttributes
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (id)activityTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"AddToHomeScreen[Activity]" value:@"Add to Home Screen" table:@"Localizable"];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v35 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (_ShareSheetIsBrowser())
  {
    if (canPerformWithActivityItems__onceToken != -1)
    {
      [UIAddToHomeScreenActivity canPerformWithActivityItems:];
    }

    if (canPerformWithActivityItems__addToHomeScreenDisabled == 1)
    {
      v4 = share_sheet_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v5 = "UIAddToHomeScreenActivity: 'Add to Home Screen' is disabled";
LABEL_9:
        _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
      }
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v4 = itemsCopy;
      v8 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v29;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(v4);
            }

            v12 = *(*(&v28 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v19 = [v12 URL];
              isHTTPOrHTTPSURL = [v19 isHTTPOrHTTPSURL];

              if ((isHTTPOrHTTPSURL & 1) == 0)
              {
                v20 = share_sheet_log();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_18B359000, v20, OS_LOG_TYPE_DEFAULT, "UIAddToHomeScreenActivity: Activity item did not provide an eligible HTTP(S) URL", buf, 2u);
                }
              }

              goto LABEL_11;
            }
          }

          v9 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      if (NSClassFromString(&cfstr_Wkwebview.isa))
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = v4;
        v14 = [v13 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v25;
LABEL_23:
          v17 = 0;
          while (1)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v24 + 1) + 8 * v17);
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            if (v15 == ++v17)
            {
              v15 = [v13 countByEnumeratingWithState:&v24 objects:v33 count:16];
              if (v15)
              {
                goto LABEL_23;
              }

              goto LABEL_29;
            }
          }

          v4 = v18;

          if (!v4)
          {
            goto LABEL_37;
          }

          v21 = [v4 URL];
          isHTTPOrHTTPSURL2 = [v21 isHTTPOrHTTPSURL];

          if (isHTTPOrHTTPSURL2)
          {
            isHTTPOrHTTPSURL = 1;
            goto LABEL_11;
          }

          v23 = share_sheet_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B359000, v23, OS_LOG_TYPE_DEFAULT, "UIAddToHomeScreenActivity: WKWebView is not currently displaying an eligible HTTP(S) URL", buf, 2u);
          }
        }

        else
        {
LABEL_29:

LABEL_37:
          v23 = share_sheet_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B359000, v23, OS_LOG_TYPE_DEFAULT, "UIAddToHomeScreenActivity: activityItems array does not contain a WKWebView", buf, 2u);
          }

          v4 = 0;
        }

        goto LABEL_10;
      }

      v4 = share_sheet_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v5 = "UIAddToHomeScreenActivity: activityItems array cannot contain a WKWebView";
        goto LABEL_9;
      }
    }
  }

  else
  {
    v4 = share_sheet_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "UIAddToHomeScreenActivity: App does not have the default browser entitlement";
      goto LABEL_9;
    }
  }

LABEL_10:
  isHTTPOrHTTPSURL = 0;
LABEL_11:

  return isHTTPOrHTTPSURL;
}

void __57__UIAddToHomeScreenActivity_canPerformWithActivityItems___block_invoke()
{
  v0 = [(objc_class *)getMCProfileConnectionClass() sharedConnection];
  canPerformWithActivityItems__addToHomeScreenDisabled = [v0 isEphemeralMultiUser];
}

- (void)prepareWithActivityItems:(id)items
{
  v41 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  itemsCopy = items;
  v4 = [itemsCopy countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v4)
  {
    v5 = *v36;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v7 = *(*(&v35 + 1) + 8 * i);
        getWKWebViewClass();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 URL];
          isHTTPOrHTTPSURL = [v8 isHTTPOrHTTPSURL];

          if (isHTTPOrHTTPSURL)
          {
            objc_initWeak(&location, self);
            v18 = objc_alloc(getSFAddToHomeScreenViewControllerClass());
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __54__UIAddToHomeScreenActivity_prepareWithActivityItems___block_invoke;
            v32[3] = &unk_1E71F94C8;
            objc_copyWeak(&v33, &location);
            v19 = [v18 initWithWebView:v7 completion:v32];
            addToHomeScreenViewController = self->_addToHomeScreenViewController;
            self->_addToHomeScreenViewController = v19;

            objc_destroyWeak(&v33);
            objc_destroyWeak(&location);
            goto LABEL_26;
          }
        }
      }

      v4 = [itemsCopy countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v11)
  {
    v12 = *v29;
    while (2)
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v28 + 1) + 8 * j);
        if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
        {
          v15 = v14;
          v16 = [v15 URL];
          isHTTPOrHTTPSURL2 = [v16 isHTTPOrHTTPSURL];

          if (isHTTPOrHTTPSURL2)
          {
            v21 = objc_alloc(getSFAddToHomeScreenViewControllerClass());
            if (objc_opt_respondsToSelector())
            {
              objc_initWeak(&location, self);
              v22 = v21;
              v26[0] = MEMORY[0x1E69E9820];
              v26[1] = 3221225472;
              v26[2] = __54__UIAddToHomeScreenActivity_prepareWithActivityItems___block_invoke_2;
              v26[3] = &unk_1E71F94C8;
              objc_copyWeak(&v27, &location);
              v23 = [v22 initWithAddToHomeScreenActivityItem:v15 completion:v26];
              v24 = self->_addToHomeScreenViewController;
              self->_addToHomeScreenViewController = v23;

              objc_destroyWeak(&v27);
              objc_destroyWeak(&location);
            }

            goto LABEL_26;
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v28 objects:v39 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:
}

void __54__UIAddToHomeScreenActivity_prepareWithActivityItems___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained activityDidFinish:a2];
}

void __54__UIAddToHomeScreenActivity_prepareWithActivityItems___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained activityDidFinish:a2];
}

@end