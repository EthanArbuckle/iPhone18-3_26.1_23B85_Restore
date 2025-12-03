@interface UIWebView
+ (id)_relativePathFromAbsolutePath:(id)path removingPathComponents:(unint64_t)components;
+ (void)_fixPathsForSandboxDirectoryChange;
+ (void)_updatePersistentStoragePaths;
+ (void)initialize;
- (BOOL)_webView:(id)view previewIsAllowedForPosition:(CGPoint)position;
- (BOOL)canGoBack;
- (BOOL)canGoForward;
- (BOOL)webView:(id)view resource:(id)resource canAuthenticateAgainstProtectionSpace:(id)space forDataSource:(id)source;
- (BOOL)webView:(id)view runJavaScriptConfirmPanelWithMessage:(id)message initiatedByFrame:(id)frame;
- (CGFloat)gapBetweenPages;
- (CGFloat)pageLength;
- (CGImage)newSnapshotWithRect:(CGRect)rect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)stringByEvaluatingJavaScriptFromString:(NSString *)script;
- (NSUInteger)pageCount;
- (NSURLRequest)request;
- (UIWebPaginationMode)paginationMode;
- (UIWebView)initWithCoder:(id)coder;
- (UIWebView)initWithFrame:(CGRect)frame;
- (id)_initWithFrame:(CGRect)frame enableReachability:(BOOL)reachability;
- (id)_initWithWebView:(id)view;
- (id)_webView:(id)view presentationRectsForPreview:(id)preview;
- (id)_webView:(id)view presentationSnapshotForPreview:(id)preview;
- (id)_webView:(id)view previewViewControllerForURL:(id)l;
- (id)viewForZoomingInScrollView:(id)view;
- (id)webThreadWebView:(id)view resource:(id)resource willSendRequest:(id)request redirectResponse:(id)response fromDataSource:(id)source;
- (id)webView:(id)view connectionPropertiesForResource:(id)resource dataSource:(id)source;
- (id)webView:(id)view identifierForInitialRequest:(id)request fromDataSource:(id)source;
- (id)webView:(id)view runJavaScriptTextInputPanelWithPrompt:(id)prompt defaultText:(id)text initiatedByFrame:(id)frame;
- (void)_beginRotation;
- (void)_didCompleteScrolling;
- (void)_didRotate:(id)rotate;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_finishRotation;
- (void)_frameOrBoundsChanged;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_reportError:(id)error;
- (void)_rescaleDocument;
- (void)_setDrawInWebThread:(BOOL)thread;
- (void)_setDrawsCheckeredPattern:(BOOL)pattern;
- (void)_setOverridesOrientationChangeEventHandling:(BOOL)handling;
- (void)_setRichTextReaderViewportSettings;
- (void)_setScalesPageToFitViewportSettings;
- (void)_setSelectionEnabled:(BOOL)enabled;
- (void)_updateBrowserViewExposedScrollViewRect;
- (void)_updateCheckeredPattern;
- (void)_updateOpaqueAndBackgroundColor;
- (void)_updateRequest;
- (void)_updateScrollViewInsetAdjustmentBehavior;
- (void)_updateScrollerViewForInputView:(id)view;
- (void)_updateViewSettings;
- (void)_webView:(id)view commitPreview:(id)preview;
- (void)_webView:(id)view didDismissPreview:(id)preview committing:(BOOL)committing;
- (void)_webView:(id)view willPresentPreview:(id)preview;
- (void)_webViewCommonInitWithWebView:(id)view scalesPageToFit:(BOOL)fit;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)goBack;
- (void)goForward;
- (void)reload;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidZoom:(id)zoom;
- (void)scrollViewWasRemoved:(id)removed;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)setBackgroundColor:(id)color;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setGapBetweenPages:(CGFloat)gapBetweenPages;
- (void)setOpaque:(BOOL)opaque;
- (void)setPageLength:(CGFloat)pageLength;
- (void)setPaginationBreakingMode:(UIWebPaginationBreakingMode)paginationBreakingMode;
- (void)setPaginationMode:(UIWebPaginationMode)paginationMode;
- (void)setScalesPageToFit:(BOOL)scalesPageToFit;
- (void)webView:(id)view decidePolicyForGeolocationRequestFromOrigin:(id)origin frame:(id)frame listener:(id)listener;
- (void)webView:(id)view decidePolicyForMIMEType:(id)type request:(id)request frame:(id)frame decisionListener:(id)listener;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action request:(id)request frame:(id)frame decisionListener:(id)listener;
- (void)webView:(id)view decidePolicyForNewWindowAction:(id)action request:(id)request newFrameName:(id)name decisionListener:(id)listener;
- (void)webView:(id)view didChangeLocationWithinPageForFrame:(id)frame;
- (void)webView:(id)view didClearWindowObject:(id)object forFrame:(id)frame;
- (void)webView:(id)view didCommitLoadForFrame:(id)frame;
- (void)webView:(id)view didFailLoadWithError:(id)error forFrame:(id)frame;
- (void)webView:(id)view didFailProvisionalLoadWithError:(id)error forFrame:(id)frame;
- (void)webView:(id)view didFinishLoadForFrame:(id)frame;
- (void)webView:(id)view didFirstLayoutInFrame:(id)frame;
- (void)webView:(id)view didReceiveTitle:(id)title forFrame:(id)frame;
- (void)webView:(id)view didStartProvisionalLoadForFrame:(id)frame;
- (void)webView:(id)view exceededApplicationCacheOriginQuotaForSecurityOrigin:(id)origin totalSpaceNeeded:(unint64_t)needed;
- (void)webView:(id)view frame:(id)frame exceededDatabaseQuotaForSecurityOrigin:(id)origin database:(id)database;
- (void)webView:(id)view printFrameView:(id)frameView;
- (void)webView:(id)view resource:(id)resource didCancelAuthenticationChallenge:(id)challenge fromDataSource:(id)source;
- (void)webView:(id)view resource:(id)resource didFailLoadingWithError:(id)error fromDataSource:(id)source;
- (void)webView:(id)view resource:(id)resource didFinishLoadingFromDataSource:(id)source;
- (void)webView:(id)view resource:(id)resource didReceiveAuthenticationChallenge:(id)challenge fromDataSource:(id)source;
- (void)webView:(id)view runJavaScriptAlertPanelWithMessage:(id)message initiatedByFrame:(id)frame;
- (void)webViewClose:(id)close;
- (void)webViewMainFrameDidFinishLoad:(id)load;
- (void)webViewSupportedOrientationsUpdated:(id)updated;
@end

@implementation UIWebView

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    _UIApplicationLoadWebKit();
  }
}

- (void)_didRotate:(id)rotate
{
  internal = self->_internal;
  if ((*(internal + 40) & 4) == 0 && [(UIView *)internal->browserView window])
  {
    v5 = [UIApp _sceneInterfaceOrientationFromWindow:{-[UIView window](self->_internal->browserView, "window")}];
    browserView = self->_internal->browserView;

    [(UIWebDocumentView *)browserView sendOrientationEventForOrientation:v5];
  }
}

- (void)_setScalesPageToFitViewportSettings
{
  [(UIView *)self bounds];
  v4 = v3;
  [(UIWebDocumentView *)self->_internal->browserView _restoreViewportSettingsWithSize:v3, v5];
  LODWORD(v6) = -1.0;
  [(UIWebDocumentView *)self->_internal->browserView setInitialScale:16 forDocumentTypes:v6];
  LODWORD(v7) = 0.25;
  [(UIWebDocumentView *)self->_internal->browserView setMinimumScale:16 forDocumentTypes:v7];
  [(UIWebDocumentView *)self->_internal->browserView setViewportSize:16 forDocumentTypes:980.0, -1.0];
  LODWORD(v8) = -1.0;
  [(UIWebDocumentView *)self->_internal->browserView setInitialScale:8 forDocumentTypes:v8];
  browserView = self->_internal->browserView;

  [(UIWebDocumentView *)browserView setViewportSize:8 forDocumentTypes:v4, -1.0];
}

- (void)_setRichTextReaderViewportSettings
{
  LODWORD(v2) = 1.0;
  [(UIWebDocumentView *)self->_internal->browserView setInitialScale:0xFFFFFFLL forDocumentTypes:v2];
  LODWORD(v4) = 1.0;
  [(UIWebDocumentView *)self->_internal->browserView setMinimumScale:0xFFFFFFLL forDocumentTypes:v4];
  LODWORD(v5) = 1.0;
  [(UIWebDocumentView *)self->_internal->browserView setMaximumScale:0xFFFFFFLL forDocumentTypes:v5];
  [(UIWebDocumentView *)self->_internal->browserView setAllowsUserScaling:0 forDocumentTypes:0xFFFFFFLL];
  browserView = self->_internal->browserView;
  [(UIView *)self bounds];

  [(UIWebDocumentView *)browserView setViewportSize:0xFFFFFFLL forDocumentTypes:v7, -1.0];
}

- (void)_updateViewSettings
{
  if ([(UIWebPDFViewHandler *)self->_internal->pdfHandler pdfView])
  {
    scroller = self->_internal->scroller;
    [(UIView *)self bounds];
    [(UIScrollView *)scroller setFrame:?];
    pdfHandler = self->_internal->pdfHandler;

    [(UIWebPDFViewHandler *)pdfHandler updateViewSettings];
  }

  else
  {
    [(UIView *)self bounds];
    internal = self->_internal;
    if (v7 == 0.0 || (v10 = v8, v8 == 0.0))
    {
      browserView = internal->browserView;

      [(UIWebTiledView *)browserView removeAllTiles];
    }

    else
    {
      v11 = v5;
      v12 = v6;
      v13 = v7;
      if (*(internal + 40))
      {
        [(UIWebView *)self _setScalesPageToFitViewportSettings];
      }

      else
      {
        [(UIWebView *)self _setRichTextReaderViewportSettings];
      }

      [(UIScrollView *)self->_internal->scroller setFrame:v11, v12, v13, v10];
      [(UIWebView *)self _updateScrollViewInsetAdjustmentBehavior];
      v15 = self->_internal;
      v16 = v15->browserView;
      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      if ((*(v15 + 41) & 1) == 0)
      {
        [(UIView *)self safeAreaInsets:0.0];
      }

      [(UIWebBrowserView *)v16 _setUnobscuredSafeAreaInsets:v17, v18, v19, v20];
      [(UIScrollView *)self->_internal->scroller adjustedContentInset];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [(UIScrollView *)self->_internal->scroller keyboardBottomInsetAdjustmentDelta];
      v30 = v10 - (v22 + v26 - v29);
      v31 = fmax(v13 - (v24 + v28), 1.0);
      v32 = fmax(v30, 1.0);
      [(UIWebView *)self _updateBrowserViewExposedScrollViewRect];
      v33 = self->_internal;
      v34 = v33->browserView;
      v35 = (*(v33 + 40) & 1) == 0 && [(UIWebDocumentView *)v34 documentType]== 4;
      [(UIWebDocumentView *)v34 setMinimumSize:v35 updateCurrentViewportConfigurationSize:v31, v32];
      [(UIView *)self->_internal->browserView frame];
      x = v49.origin.x;
      y = v49.origin.y;
      width = v49.size.width;
      height = v49.size.height;
      MaxX = CGRectGetMaxX(v49);
      if (MaxX < v31)
      {
        MaxX = v31;
      }

      v41 = round(MaxX);
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      MaxY = CGRectGetMaxY(v50);
      if (MaxY < v32)
      {
        MaxY = v32;
      }

      [(UIScrollView *)self->_internal->scroller setContentSize:v41, round(MaxY)];
      [(UIView *)self->_internal->checkeredPatternView setFrame:x, y, width, height];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v44 = self->_internal;
      v45 = v44->scroller;
      v46 = *(v44 + 40) & 1;
      if (isKindOfClass)
      {
        [(UIScrollView *)v45 _weaklySetBouncesHorizontally:v46];
      }

      else
      {
        [(UIScrollView *)v45 setBouncesHorizontally:v46];
      }

      WebThreadLock();
      [objc_msgSend(-[UIWebDocumentView webView](self->_internal->browserView "webView")];
      v47 = self->_internal->browserView;

      [(UIWebTiledView *)v47 layoutTilesNow];
    }
  }
}

- (void)_updateScrollViewInsetAdjustmentBehavior
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _scrollView = [(UIWebView *)self _scrollView];
    if (([_scrollView _contentInsetAdjustmentBehaviorWasExternallyOverridden] & 1) == 0)
    {
      if (*(self->_internal + 41))
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      [_scrollView _setContentInsetAdjustmentBehaviorInternal:v4];
    }
  }
}

- (void)_updateBrowserViewExposedScrollViewRect
{
  _scrollView = [(UIWebView *)self _scrollView];
  [_scrollView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [_scrollView adjustedContentInset];
  v13 = v5 + v12;
  v15 = v7 + v14;
  v17 = v9 - (v12 + v16);
  v19 = v11 - (v14 + v18);
  _browserView = [(UIWebView *)self _browserView];

  [_browserView setExposedScrollViewRect:{v13, v15, v17, v19}];
}

+ (id)_relativePathFromAbsolutePath:(id)path removingPathComponents:(unint64_t)components
{
  v5 = [path componentsSeparatedByString:@"/"];
  v6 = [v5 count];
  if (v6 <= components)
  {
    return &stru_1EFB14550;
  }

  v7 = v6;
  v8 = &stru_1EFB14550;
  do
  {
    v8 = -[__CFString stringByAppendingPathComponent:](v8, "stringByAppendingPathComponent:", [v5 objectAtIndex:components++]);
  }

  while (v7 != components);
  return v8;
}

+ (void)_fixPathsForSandboxDirectoryChange
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = *MEMORY[0x1E69E3028];
  v4 = [standardUserDefaults objectForKey:*MEMORY[0x1E69E3028]];
  v5 = MEMORY[0x1E69E2FE0];
  v6 = [standardUserDefaults objectForKey:*MEMORY[0x1E69E2FE0]];
  if (v4 | v6)
  {
    v7 = v6;
    if ([v4 hasPrefix:@"/var/mobile/Applications/"])
    {
      [standardUserDefaults removeObjectForKey:v3];
      v4 = 0;
    }

    if ([v7 hasPrefix:@"/var/mobile/Applications/"])
    {
      [standardUserDefaults removeObjectForKey:*v5];
      v7 = 0;
    }

    v8 = NSHomeDirectory();
    if ([v4 isEqualToString:v8])
    {
      [standardUserDefaults removeObjectForKey:v3];
      v4 = 0;
    }

    if ([v7 isEqualToString:v8])
    {
      [standardUserDefaults removeObjectForKey:*v5];
      v7 = 0;
    }

    v9 = [(NSArray *)[(NSString *)v8 componentsSeparatedByString:@"/"] count];
    if (v4 && [v4 rangeOfString:v8 options:8] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [standardUserDefaults setObject:-[NSString stringByAppendingPathComponent:](v8 forKey:{"stringByAppendingPathComponent:", +[UIWebView _relativePathFromAbsolutePath:removingPathComponents:](UIWebView, "_relativePathFromAbsolutePath:removingPathComponents:", v4, v9)), v3}];
    }

    if (v7 && [v7 rangeOfString:v8 options:8] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(NSString *)v8 stringByAppendingPathComponent:[UIWebView _relativePathFromAbsolutePath:v7 removingPathComponents:v9]];
      v11 = *v5;

      [standardUserDefaults setObject:v10 forKey:v11];
    }
  }
}

+ (void)_updatePersistentStoragePaths
{
  if (_updatePersistentStoragePaths_updatePaths != -1)
  {
    dispatch_once(&_updatePersistentStoragePaths_updatePaths, &__block_literal_global_735);
  }
}

void __42__UIWebView__updatePersistentStoragePaths__block_invoke()
{
  if (([_UIMainBundleIdentifier() isEqualToString:@"com.apple.webapp"] & 1) == 0)
  {
    if (_sandbox_in_a_container())
    {
      +[UIWebView _fixPathsForSandboxDirectoryChange];
    }

    v0 = [(NSArray *)NSSearchPathForDirectoriesInDomains(NSLibraryDirectory objectAtIndex:1), "objectAtIndex:", 0];
    v1 = [v0 stringByAppendingPathComponent:@"Caches"];
    v2 = [v0 stringByAppendingPathComponent:@"WebKit/LocalStorage"];
    v3 = [v0 stringByAppendingPathComponent:@"WebKit/Databases"];
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = *MEMORY[0x1E69E3028];
    v6 = [v4 objectForKey:*MEMORY[0x1E69E3028]];
    v7 = MEMORY[0x1E69E2FE0];
    v8 = [v4 objectForKey:*MEMORY[0x1E69E2FE0]];
    v9 = [v4 objectForKey:@"WebKitStoreWebDataForBackup"];
    if (v9)
    {
      v10 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![v10 BOOLValue])
        {
          v2 = v1;
        }

        if (([v6 isEqualToString:v2] & 1) == 0)
        {
          [v4 setObject:v2 forKey:v5];
        }

        if (([v8 isEqualToString:v2] & 1) == 0)
        {
          v11 = *v7;

          [v4 setObject:v2 forKey:v11];
        }
      }
    }

    else if (!v6 || !v8)
    {
      [v4 setObject:v1 forKey:v5];
      [v4 setObject:v1 forKey:*v7];
      [v4 synchronize];
      if ((_UIIsPrivateMainBundle() & 1) == 0)
      {
        global_queue = dispatch_get_global_queue(-2, 0);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __42__UIWebView__updatePersistentStoragePaths__block_invoke_2;
        v13[3] = &unk_1E7101E78;
        v13[4] = v2;
        v13[5] = v3;
        dispatch_async(global_queue, v13);
      }
    }
  }
}

uint64_t __42__UIWebView__updatePersistentStoragePaths__block_invoke_2(uint64_t a1)
{
  [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(a1 + 40);

  return [v2 removeItemAtPath:v3 error:0];
}

- (void)_webViewCommonInitWithWebView:(id)view scalesPageToFit:(BOOL)fit
{
  +[UIWebView _updatePersistentStoragePaths];
  self->_internal = objc_alloc_init(UIWebViewInternal);
  WebThreadLock();
  [(UIView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [UIWebBrowserView alloc];
  if (view)
  {
    v16 = [(UIWebBrowserView *)v15 initWithWebView:view frame:v8, v10, v12, v14];
  }

  else
  {
    v16 = [(UIWebBrowserView *)v15 initWithFrame:v8, v10, v12, v14];
  }

  self->_internal->browserView = v16;
  [(UIWebBrowserView *)self->_internal->browserView set_editingDelegateForEverythingExceptForms:self];
  v17 = [[_UIWebViewScrollView alloc] initWithFrame:v8, v10, v12, v14];
  self->_internal->scroller = &v17->super.super;
  [(_UIWebViewScrollView *)v17 _setWebView:self];
  [(UIScrollView *)self->_internal->scroller _forceDelegateScrollViewDidZoom:1];
  [(UIView *)self->_internal->scroller addSubview:self->_internal->browserView];
  [(UIView *)self->_internal->scroller setAutoresizingMask:16];
  *(self->_internal + 40) = *(self->_internal + 40) & 0xFE | fit;
  self->_internal->checkeredPatternView = [[UICheckeredPatternView alloc] initWithFrame:v8, v10, v12, v14];
  *(self->_internal + 40) &= ~8u;
  [(UIWebView *)self _updateCheckeredPattern];
  [(UIWebTiledView *)self->_internal->browserView setTilingEnabled:1];
  [(UIWebView *)self _setDrawInWebThread:1];
  *(self->_internal + 41) |= 1u;
  [(UIWebDocumentView *)self->_internal->browserView setAutoresizes:1];
  [(UIView *)self->_internal->browserView setContentsPosition:7];
  [(UIWebDocumentView *)self->_internal->browserView setDelegate:self];
  [(UIWebDocumentView *)self->_internal->browserView setSmoothsFonts:1];
  [(UIWebView *)self _updateOpaqueAndBackgroundColor];
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];
  self->_internal->webViewDelegate = [[UIWebViewWebViewDelegate alloc] initWithUIWebView:self];
  [webView setFrameLoadDelegate:self->_internal->webViewDelegate];
  [webView setPolicyDelegate:self->_internal->webViewDelegate];
  [webView setUIDelegate:self->_internal->webViewDelegate];
  [webView setResourceLoadDelegate:self->_internal->webViewDelegate];
  [webView _setFontFallbackPrefersPictographs:0];
  [webView _setUseDarkAppearance:-[UIWebView _effectiveAppearanceIsDark](self useElevatedUserInterfaceLevel:{"_effectiveAppearanceIsDark"), -[UIWebView _effectiveTraitsUseElevatedUserInterfaceLevel](self, "_effectiveTraitsUseElevatedUserInterfaceLevel")}];
  [objc_msgSend(webView "window")];
  preferences = [webView preferences];
  [preferences setOfflineWebApplicationCacheEnabled:1];
  [preferences _setLocalStorageDatabasePath:{objc_msgSend(MEMORY[0x1E69E2FA8], "_storageDirectoryPath")}];
  WebKitGetMinimumZoomFontSize();
  [preferences _setMinimumZoomFontSize:?];
  [preferences _setAllowMultiElementImplicitFormSubmission:0];
  [(UIView *)self addSubview:self->_internal->scroller];
  [(UIWebView *)self _updateViewSettings];
  [(UIWebDocumentView *)self->_internal->browserView _setDocumentType:4];
  [(UIWebDocumentView *)self->_internal->browserView setDetectsPhoneNumbers:1];
  *(self->_internal + 40) |= 0x10u;
  if (!_webViewCommonInitWithWebView_scalesPageToFit__backgroundColor)
  {
    _webViewCommonInitWithWebView_scalesPageToFit__backgroundColor = +[UIColor _webContentBackgroundColor];
  }

  if (![(UIView *)self backgroundColor])
  {
    [(UIWebView *)self setBackgroundColor:_webViewCommonInitWithWebView_scalesPageToFit__backgroundColor];
  }

  if (![MEMORY[0x1E69E2F58] optionalSharedHistory])
  {
    v20 = objc_alloc_init(MEMORY[0x1E69E2F58]);
    [MEMORY[0x1E69E2F58] setOptionalSharedHistory:v20];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  *(self->_internal + 40) &= ~4u;
  self->_internal->pdfHandler = objc_alloc_init(UIWebPDFViewHandler);
  [(UIWebPDFViewHandler *)self->_internal->pdfHandler setScalesPageToFit:*(self->_internal + 40) & 1];
  [(UIWebPDFViewHandler *)self->_internal->pdfHandler setShowPageLabels:1];
  if (objc_opt_respondsToSelector())
  {

    [webView _installVisualIdentificationOverlayForViewIfNeeded:self kind:@"UIWebView"];
  }
}

- (id)_initWithFrame:(CGRect)frame enableReachability:(BOOL)reachability
{
  v7.receiver = self;
  v7.super_class = UIWebView;
  v5 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    if (!reachability)
    {
      [MEMORY[0x1E69E2FB8] _doNotStartObservingNetworkReachability];
    }

    [(UIWebView *)v5 _webViewCommonInitWithWebView:0 scalesPageToFit:0];
  }

  return v5;
}

- (UIWebView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIWebView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIWebView *)v3 _webViewCommonInitWithWebView:0 scalesPageToFit:0];
  }

  return v4;
}

- (UIWebView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UIWebView;
  v4 = [(UIView *)&v6 initWithCoder:?];
  if (v4)
  {
    -[UIWebView _webViewCommonInitWithWebView:scalesPageToFit:](v4, "_webViewCommonInitWithWebView:scalesPageToFit:", 0, [coder decodeBoolForKey:@"UIScalesPageToFit"]);
    v4->_internal->delegate = [coder decodeObjectForKey:@"UIDelegate"];
    -[UIWebDocumentView setDataDetectorTypes:](v4->_internal->browserView, "setDataDetectorTypes:", [coder decodeIntegerForKey:@"UIDataDetectorTypes"]);
  }

  return v4;
}

- (void)_populateArchivedSubviews:(id)subviews
{
  v6.receiver = self;
  v6.super_class = UIWebView;
  [(UIView *)&v6 _populateArchivedSubviews:?];
  internal = self->_internal;
  if (internal)
  {
    if (internal->scroller)
    {
      [subviews removeObject:?];
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = UIWebView;
  [(UIView *)&v7 encodeWithCoder:?];
  [coder encodeConditionalObject:self->_internal->delegate forKey:@"UIDelegate"];
  internal = self->_internal;
  if (*(internal + 40))
  {
    [coder encodeBool:1 forKey:@"UIScalesPageToFit"];
    internal = self->_internal;
  }

  dataDetectorTypes = [(UIWebDocumentView *)internal->browserView dataDetectorTypes];
  if (dataDetectorTypes)
  {
    [coder encodeInteger:dataDetectorTypes forKey:@"UIDataDetectorTypes"];
  }
}

- (void)dealloc
{
  WebThreadLock();
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];
  [webView _clearDelegates];
  [(UIWebViewWebViewDelegate *)self->_internal->webViewDelegate _clearUIWebView];

  [objc_msgSend(webView "window")];
  [(UIScrollView *)self->_internal->scroller setDelegate:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIScrollView *)self->_internal->scroller _setWebView:0];
  }

  [(UIWebBrowserView *)self->_internal->browserView set_editingDelegateForEverythingExceptForms:0];
  [(UIWebDocumentView *)self->_internal->browserView setDelegate:0];

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v4.receiver = self;
  v4.super_class = UIWebView;
  [(UIView *)&v4 dealloc];
}

- (NSString)stringByEvaluatingJavaScriptFromString:(NSString *)script
{
  WebThreadLock();
  v5 = [-[UIWebDocumentView webView](self->_internal->browserView "webView")];
  [(UIWebBrowserView *)self->_internal->browserView _startURLificationIfNeededCoalesce:1];
  return v5;
}

- (void)setScalesPageToFit:(BOOL)scalesPageToFit
{
  internal = self->_internal;
  v5 = *(internal + 40);
  if ((v5 & 1) != scalesPageToFit)
  {
    *(internal + 40) = v5 & 0xFE | scalesPageToFit;
    [(UIWebPDFViewHandler *)self->_internal->pdfHandler setScalesPageToFit:*(self->_internal + 40) & 1];

    [(UIWebView *)self _updateViewSettings];
  }
}

- (NSURLRequest)request
{
  v2 = self->_internal->request;

  return v2;
}

- (void)reload
{
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];
  if (webView)
  {
    v3 = webView;
    WebThreadLock();
    if ([v3 mainFrameURL])
    {

      [v3 reload:0];
    }

    else
    {
      v4 = [objc_msgSend(v3 "backForwardList")];
      if (v4)
      {

        [v3 goToBackForwardItem:v4];
      }
    }
  }
}

- (void)goBack
{
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];

  [webView goBack:0];
}

- (void)goForward
{
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];

  [webView goForward:0];
}

- (BOOL)canGoBack
{
  WebThreadLock();
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];

  return [webView canGoBack];
}

- (BOOL)canGoForward
{
  WebThreadLock();
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];

  return [webView canGoForward];
}

- (void)_updateCheckeredPattern
{
  internal = self->_internal;
  if ((*(internal + 40) & 8) != 0 && (v4 = [(UIWebPDFViewHandler *)internal->pdfHandler pdfView], internal = self->_internal, !v4))
  {
    scroller = internal->scroller;
    checkeredPatternView = internal->checkeredPatternView;

    [(UIView *)scroller insertSubview:checkeredPatternView atIndex:0];
  }

  else
  {
    v5 = internal->checkeredPatternView;

    [(UIView *)v5 removeFromSuperview];
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  WebThreadLock();
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];
  _effectiveAppearanceIsDark = [(UIWebView *)self _effectiveAppearanceIsDark];
  _effectiveTraitsUseElevatedUserInterfaceLevel = [(UIWebView *)self _effectiveTraitsUseElevatedUserInterfaceLevel];

  [webView _setUseDarkAppearance:_effectiveAppearanceIsDark useElevatedUserInterfaceLevel:_effectiveTraitsUseElevatedUserInterfaceLevel];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIScrollView *)self->_internal->scroller contentSize:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_beginRotation
{
  [(UIView *)self setAutoresizesSubviews:0];
  *(self->_internal + 40) |= 0x40u;
  *(self->_internal + 40) &= ~0x80u;
  browserView = self->_internal->browserView;

  [(UIWebDocumentView *)browserView willRotateInteractionSheet];
}

- (void)_finishRotation
{
  *(self->_internal + 40) &= ~0x40u;
  [(UIWebBrowserView *)self->_internal->browserView redrawScaledDocument];
  [(UIWebView *)self _updateViewSettings];
  [(UIView *)self setAutoresizesSubviews:1];
  browserView = self->_internal->browserView;

  [(UIWebDocumentView *)browserView didRotateInteractionSheet];
}

- (void)_rescaleDocument
{
  internal = self->_internal;
  v3 = *(internal + 40);
  if ((v3 & 0x80000000) == 0)
  {
    *(internal + 40) = v3 | 0x80;
    browserView = self->_internal->browserView;
    [(UIView *)self bounds];

    [(UIWebBrowserView *)browserView rotateEnclosingScrollViewToFrame:?];
  }
}

- (void)_frameOrBoundsChanged
{
  internal = self->_internal;
  if (internal)
  {
    if ([(UIWebPDFViewHandler *)internal->pdfHandler pdfView])
    {
      [(UIView *)self bounds];
      v4 = self->_internal;
      if ((*(v4 + 40) & 0x40) != 0)
      {
        pdfHandler = v4->pdfHandler;

        [(UIWebPDFViewHandler *)pdfHandler rotateEnclosingScrollViewToFrame:?];
      }

      else
      {
        [(UIScrollView *)v4->scroller setFrame:?];
        v5 = self->_internal->pdfHandler;

        [(UIWebPDFViewHandler *)v5 updateViewSettings];
      }
    }

    else if ((*(self->_internal + 40) & 0x40) != 0)
    {

      [(UIWebView *)self _rescaleDocument];
    }

    else
    {
      [(UIView *)self bounds];
      v7 = v6;
      v9 = v8;
      [(UIView *)self->_internal->browserView frame];
      if (v11 < v7 || v10 < v9)
      {
        [(UIWebBrowserView *)self->_internal->browserView setFrame:?];
      }

      else
      {
        [(UIWebView *)self _updateViewSettings];
      }

      browserView = self->_internal->browserView;

      [(UIWebDocumentView *)browserView updateInteractionElements];
    }
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = UIWebView;
  [(UIView *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(UIWebView *)self _frameOrBoundsChanged];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = UIWebView;
  [(UIView *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(UIWebView *)self _frameOrBoundsChanged];
  }
}

- (void)_updateOpaqueAndBackgroundColor
{
  internal = self->_internal;
  if ((*(internal + 40) & 8) != 0 && (v4 = [(UIWebPDFViewHandler *)internal->pdfHandler pdfView], internal = self->_internal, !v4))
  {
    [(UIWebDocumentView *)internal->browserView setOpaque:0];
    browserView = self->_internal->browserView;
    backgroundColor = +[UIColor clearColor];
  }

  else
  {
    [(UIWebDocumentView *)internal->browserView setOpaque:[(UIView *)self isOpaque]];
    [(UIView *)self->_internal->browserView setBackgroundColor:[(UIView *)self backgroundColor]];
    browserView = [(UIWebPDFViewHandler *)self->_internal->pdfHandler pdfView];
    [(UIView *)browserView setOpaque:[(UIView *)self isOpaque]];
    backgroundColor = [(UIView *)self backgroundColor];
  }

  [(UIView *)browserView setBackgroundColor:backgroundColor];
  v7 = self->_internal->browserView;
  isOpaque = [(UIView *)self isOpaque];

  [(UIWebDocumentView *)v7 setDrawsBackground:isOpaque];
}

- (void)setOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  isOpaque = [(UIView *)self isOpaque];
  v6.receiver = self;
  v6.super_class = UIWebView;
  [(UIView *)&v6 setOpaque:opaqueCopy];
  if (self->_internal)
  {
    if (isOpaque != [(UIView *)self isOpaque])
    {
      [(UIWebView *)self _updateOpaqueAndBackgroundColor];
    }
  }
}

- (void)setBackgroundColor:(id)color
{
  backgroundColor = [(UIView *)self backgroundColor];
  v6.receiver = self;
  v6.super_class = UIWebView;
  [(UIView *)&v6 setBackgroundColor:color];
  if (self->_internal)
  {
    if (![(UIColor *)backgroundColor isEqual:[(UIView *)self backgroundColor]])
    {
      [(UIWebView *)self _updateOpaqueAndBackgroundColor];
    }
  }
}

- (BOOL)_webView:(id)view previewIsAllowedForPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    return [(UIWebViewDelegate *)delegate uiWebView:self previewIsAllowedForPosition:x, y];
  }

  else
  {

    return [view _previewAllowedForPosition:{x, y}];
  }
}

- (id)_webView:(id)view previewViewControllerForURL:(id)l
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_internal->delegate;

  return [(UIWebViewDelegate *)delegate uiWebView:self previewViewControllerForURL:l];
}

- (void)_webView:(id)view willPresentPreview:(id)preview
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self willPresentPreview:preview];
  }
}

- (void)_webView:(id)view didDismissPreview:(id)preview committing:(BOOL)committing
{
  committingCopy = committing;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self didDismissPreview:preview committing:committingCopy];
  }
}

- (void)_webView:(id)view commitPreview:(id)preview
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self commitPreview:preview];
  }
}

- (id)_webView:(id)view presentationSnapshotForPreview:(id)preview
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    return [(UIWebViewDelegate *)delegate uiWebView:self presentationSnapshotForPreview:preview];
  }

  else
  {
    _documentView = [(UIWebView *)self _documentView];

    return [_documentView _presentationSnapshotForPreview];
  }
}

- (id)_webView:(id)view presentationRectsForPreview:(id)preview
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    return [(UIWebViewDelegate *)delegate uiWebView:self presentationRectsForPreview:preview];
  }

  else
  {
    _documentView = [(UIWebView *)self _documentView];

    return [_documentView _presentationRectsForPreview];
  }
}

- (void)_updateScrollerViewForInputView:(id)view
{
  _browserView = [(UIWebView *)self _browserView];

  [_browserView _updateScrollerViewForInputView:view];
}

- (void)webViewMainFrameDidFinishLoad:(id)load
{
  [(UIWebPDFViewHandler *)self->_internal->pdfHandler updateViewHierarchyForDocumentViewLoadComplete:load];
  [(UIWebView *)self _updateCheckeredPattern];

  [(UIWebView *)self _updateOpaqueAndBackgroundColor];
}

- (id)viewForZoomingInScrollView:(id)view
{
  result = [(UIWebPDFViewHandler *)self->_internal->pdfHandler pdfView];
  if (!result)
  {
    return self->_internal->browserView;
  }

  return result;
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  if (![(UIWebPDFViewHandler *)self->_internal->pdfHandler pdfView:zooming])
  {
    browserView = self->_internal->browserView;

    [(UIWebDocumentView *)browserView willStartZoom];
  }
}

- (void)scrollViewDidZoom:(id)zoom
{
  if (![(UIWebPDFViewHandler *)self->_internal->pdfHandler pdfView])
  {
    browserView = self->_internal->browserView;

    [(UIWebDocumentView *)browserView didZoom];
  }
}

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  if (![(UIWebPDFViewHandler *)self->_internal->pdfHandler pdfView:zooming])
  {
    [(UIWebBrowserView *)self->_internal->browserView redrawScaledDocument];
    browserView = self->_internal->browserView;

    [(UIWebDocumentView *)browserView didEndZoom];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  if (![(UIWebPDFViewHandler *)self->_internal->pdfHandler pdfView])
  {
    browserView = self->_internal->browserView;

    [(UIWebDocumentView *)browserView willStartScroll];
  }
}

- (void)_didCompleteScrolling
{
  if (![(UIWebPDFViewHandler *)self->_internal->pdfHandler pdfView])
  {
    _browserView = [(UIWebView *)self _browserView];

    [_browserView didEndScroll];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(UIWebView *)self _didCompleteScrolling];
  }
}

- (void)scrollViewWasRemoved:(id)removed
{
  if (![(UIWebPDFViewHandler *)self->_internal->pdfHandler pdfView])
  {
    _browserView = [(UIWebView *)self _browserView];

    [_browserView scrollViewWasRemoved];
  }
}

- (void)_reportError:(id)error
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate webView:self didFailLoadWithError:error];
  }
}

- (void)webView:(id)view decidePolicyForNewWindowAction:(id)action request:(id)request newFrameName:(id)name decisionListener:(id)listener
{
  webView = [-[UIWebDocumentView webView](self->_internal->browserView webView];

  [(UIWebView *)self webView:view decidePolicyForNavigationAction:action request:request frame:webView decisionListener:listener];
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action request:(id)request frame:(id)frame decisionListener:(id)listener
{
  v27 = *MEMORY[0x1E69E9840];
  v11 = [request URL];
  iTunesStoreURL = [v11 iTunesStoreURL];
  if (iTunesStoreURL)
  {
    requestCopy = [request mutableCopy];
    [requestCopy setURL:iTunesStoreURL];
    v14 = requestCopy;
  }

  else
  {
    v14 = 0;
    requestCopy = request;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [objc_msgSend(action objectForKey:{*MEMORY[0x1E69E2FD0]), "intValue"}];
    v16 = v15 >= 5 ? 5 : v15;
    if (([(UIWebViewDelegate *)self->_internal->delegate webView:self shouldStartLoadWithRequest:request navigationType:v16]& 1) == 0 || iTunesStoreURL && ([(UIWebViewDelegate *)self->_internal->delegate webView:self shouldStartLoadWithRequest:v14 navigationType:v16]& 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (iTunesStoreURL)
  {
    v11 = iTunesStoreURL;
  }

  v17 = [action objectForKey:*MEMORY[0x1E69E2FC8]];
  v18 = [v17 objectForKey:*MEMORY[0x1E69E2FE8]];
  if (v18)
  {
    if ([UIWebURLAction performDefaultActionForURL:v11 andDOMNode:v18 withAllowedTypes:-3 forFrame:frame inView:self])
    {
LABEL_15:

      [listener ignore];
      return;
    }
  }

  if (([MEMORY[0x1E69E2FB8] _canHandleRequest:requestCopy] & 1) == 0 && objc_msgSend(v11, "isSpringboardHandledURL"))
  {
    v24[0] = 0;
    if (!TelephonyUtilitiesLibraryCore_frameworkLibrary_1)
    {
      v24[1] = MEMORY[0x1E69E9820];
      v24[2] = 3221225472;
      v24[3] = __TelephonyUtilitiesLibraryCore_block_invoke_1;
      v24[4] = &__block_descriptor_40_e5_v8__0l;
      v24[5] = v24;
      v25 = xmmword_1E712C8F0;
      v26 = 0;
      TelephonyUtilitiesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    }

    if (TelephonyUtilitiesLibraryCore_frameworkLibrary_1)
    {
      v19 = v24[0];
      if (!v24[0])
      {
        goto LABEL_24;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TelephonyUtilitiesLibrary(void)"];
      v19 = [currentHandler handleFailureInFunction:v22 file:@"UIWebView.m" lineNumber:78 description:{@"%s", v24[0]}];
      __break(1u);
    }

    free(v19);
LABEL_24:
    if ([v11 hasTelephonyScheme])
    {
      v20 = [MEMORY[0x1E695DFF8] telephonyURLWithDestinationID:objc_msgSend(v11 promptUser:{"phoneNumber"), 1}];
    }

    else
    {
      if (([v11 isFaceTimeURL] & 1) == 0 && !objc_msgSend(v11, "isFaceTimeAudioURL"))
      {
        goto LABEL_33;
      }

      v20 = [MEMORY[0x1E695DFF8] faceTimePromptURLWithURL:v11];
    }

    v11 = v20;
LABEL_33:
    [UIApp _openURL:v11 originatingView:self completionHandler:0];
    [listener ignore];
    return;
  }

  [listener use];
}

- (void)webView:(id)view decidePolicyForMIMEType:(id)type request:(id)request frame:(id)frame decisionListener:(id)listener
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self decidePolicyForMIMEType:type request:request frame:frame decisionListener:listener];
  }

  else
  {
    mEMORY[0x1E69E2F38] = [MEMORY[0x1E69E2F38] sharedPolicyDelegate];
    if (objc_opt_respondsToSelector())
    {

      [mEMORY[0x1E69E2F38] webView:view decidePolicyForMIMEType:type request:request frame:frame decisionListener:listener];
    }
  }
}

- (void)webView:(id)view frame:(id)frame exceededDatabaseQuotaForSecurityOrigin:(id)origin database:(id)database
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self frame:frame exceededDatabaseQuotaForSecurityOrigin:origin database:database];
  }

  else
  {
    databaseQuotaManager = [origin databaseQuotaManager];

    [databaseQuotaManager setQuota:52428800];
  }
}

- (void)webView:(id)view exceededApplicationCacheOriginQuotaForSecurityOrigin:(id)origin totalSpaceNeeded:(unint64_t)needed
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self exceededApplicationCacheOriginQuotaForSecurityOrigin:origin totalSpaceNeeded:needed];
  }

  else
  {
    applicationCacheQuotaManager = [origin applicationCacheQuotaManager];

    [applicationCacheQuotaManager setQuota:52428800];
  }
}

- (void)webView:(id)view printFrameView:(id)frameView
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self printFrameView:frameView];
  }
}

- (void)webViewSupportedOrientationsUpdated:(id)updated
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebViewSupportedOrientationsUpdated:self];
  }
}

- (void)_updateRequest
{
  WebThreadLock();
  v3 = [objc_msgSend(objc_msgSend(-[UIWebDocumentView webView](self->_internal->browserView "webView")];

  self->_internal->request = v3;
}

- (void)webView:(id)view didStartProvisionalLoadForFrame:(id)frame
{
  [(UIWebView *)self _updateRequest:view];
  [(UIWebBrowserView *)self->_internal->browserView resignFirstResponder];
  *(self->_internal + 40) |= 2u;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate webViewDidStartLoad:self];
  }
}

- (void)webView:(id)view didCommitLoadForFrame:(id)frame
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self didCommitLoadForFrame:frame];
  }
}

- (void)webView:(id)view didReceiveTitle:(id)title forFrame:(id)frame
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self didReceiveTitle:title forFrame:frame];
  }
}

- (id)webView:(id)view connectionPropertiesForResource:(id)resource dataSource:(id)source
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_internal->delegate;

  return [(UIWebViewDelegate *)delegate uiWebView:self connectionPropertiesForResource:resource dataSource:source];
}

- (id)webThreadWebView:(id)view resource:(id)resource willSendRequest:(id)request redirectResponse:(id)response fromDataSource:(id)source
{
  requestCopy = request;
  resourceCopy = resource;
  selfCopy = self;
  responseCopy = response;
  requestCopy2 = request;
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    NSInvocation = WebThreadMakeNSInvocation();
    [NSInvocation setArgument:&selfCopy atIndex:2];
    [NSInvocation setArgument:&resourceCopy atIndex:3];
    [NSInvocation setArgument:&requestCopy2 atIndex:4];
    [NSInvocation setArgument:&responseCopy atIndex:5];
    [NSInvocation setArgument:&sourceCopy atIndex:6];
    WebThreadCallDelegate();
    v10 = 0;
    [NSInvocation getReturnValue:&v10];
    return v10;
  }

  return requestCopy;
}

- (void)webView:(id)view didClearWindowObject:(id)object forFrame:(id)frame
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self didClearWindowObject:object forFrame:frame];
  }
}

- (void)webView:(id)view didFailProvisionalLoadWithError:(id)error forFrame:(id)frame
{
  [(UIWebView *)self _updateRequest:view];
  *(self->_internal + 40) &= ~2u;

  [(UIWebView *)self _reportError:error];
}

- (void)webView:(id)view didFinishLoadForFrame:(id)frame
{
  [(UIWebView *)self _updateRequest];
  if ([view mainFrame] == frame)
  {
    *(self->_internal + 40) &= ~2u;
    internal = self->_internal;
    if ((*(internal + 40) & 0x10) != 0 && ([(UIWebDocumentView *)internal->browserView hasBodyElement]|| ![(UIWebBrowserView *)self->_internal->browserView inputViewObeysDOMFocus]|| ![(UIWebBrowserView *)self->_internal->browserView _currentAssistedNode]))
    {
      [(UIWebDocumentView *)self->_internal->browserView resetSelectionAssistant];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate webViewDidFinishLoad:self];
  }
}

- (void)webView:(id)view didFailLoadWithError:(id)error forFrame:(id)frame
{
  [(UIWebView *)self _updateRequest:view];
  *(self->_internal + 40) &= ~2u;

  [(UIWebView *)self _reportError:error];
}

- (void)webView:(id)view didFirstLayoutInFrame:(id)frame
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self didFirstLayoutInFrame:frame];
  }
}

- (void)webViewClose:(id)close
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebViewClose:self];
  }
}

- (void)webView:(id)view runJavaScriptAlertPanelWithMessage:(id)message initiatedByFrame:(id)frame
{
  v6 = [UIAlertController alertControllerWithTitle:javaScriptDialogTitle(frame) message:message preferredStyle:1];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [_UIKitBundle() localizedStringForKey:@"OK java script dialog" value:@"OK" table:@"Localizable"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__UIWebView_webView_runJavaScriptAlertPanelWithMessage_initiatedByFrame___block_invoke;
  v10[3] = &unk_1E712C888;
  v10[4] = &v11;
  [(UIAlertController *)v6 addAction:[UIAlertAction actionWithTitle:v7 style:0 handler:v10]];
  [+[UIViewController _viewControllerForFullScreenPresentationFromView:](UIViewController _viewControllerForFullScreenPresentationFromView:{self), "presentViewController:animated:completion:", v6, 1, 0}];
  v8 = *MEMORY[0x1E695D918];
  while ((v12[3] & 1) == 0)
  {
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [currentRunLoop runMode:v8 beforeDate:{objc_msgSend(MEMORY[0x1E695DF00], "distantPast")}];
  }

  _Block_object_dispose(&v11, 8);
}

- (BOOL)webView:(id)view runJavaScriptConfirmPanelWithMessage:(id)message initiatedByFrame:(id)frame
{
  v6 = [UIAlertController alertControllerWithTitle:javaScriptDialogTitle(frame) message:message preferredStyle:1];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [_UIKitBundle() localizedStringForKey:@"Cancel java script dialog" value:@"Cancel" table:@"Localizable"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__UIWebView_webView_runJavaScriptConfirmPanelWithMessage_initiatedByFrame___block_invoke;
  v14[3] = &unk_1E712C888;
  v14[4] = &v19;
  [(UIAlertController *)v6 addAction:[UIAlertAction actionWithTitle:v7 style:1 handler:v14]];
  v8 = [_UIKitBundle() localizedStringForKey:@"OK java script dialog" value:@"OK" table:@"Localizable"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__UIWebView_webView_runJavaScriptConfirmPanelWithMessage_initiatedByFrame___block_invoke_2;
  v13[3] = &unk_1E712C8B0;
  v13[4] = &v19;
  v13[5] = &v15;
  [(UIAlertController *)v6 addAction:[UIAlertAction actionWithTitle:v8 style:0 handler:v13]];
  [+[UIViewController _viewControllerForFullScreenPresentationFromView:](UIViewController _viewControllerForFullScreenPresentationFromView:{self), "presentViewController:animated:completion:", v6, 1, 0}];
  v9 = *MEMORY[0x1E695D918];
  while ((v20[3] & 1) == 0)
  {
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [currentRunLoop runMode:v9 beforeDate:{objc_msgSend(MEMORY[0x1E695DF00], "distantPast")}];
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v11;
}

uint64_t __75__UIWebView_webView_runJavaScriptConfirmPanelWithMessage_initiatedByFrame___block_invoke_2(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

- (id)webView:(id)view runJavaScriptTextInputPanelWithPrompt:(id)prompt defaultText:(id)text initiatedByFrame:(id)frame
{
  v7 = [UIAlertController alertControllerWithTitle:javaScriptDialogTitle(frame) message:prompt preferredStyle:1];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = [_UIKitBundle() localizedStringForKey:@"Cancel java script dialog" value:@"Cancel" table:@"Localizable"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__UIWebView_webView_runJavaScriptTextInputPanelWithPrompt_defaultText_initiatedByFrame___block_invoke;
  v15[3] = &unk_1E712C888;
  v15[4] = &v20;
  [(UIAlertController *)v7 addAction:[UIAlertAction actionWithTitle:v8 style:1 handler:v15]];
  v9 = [_UIKitBundle() localizedStringForKey:@"OK java script dialog" value:@"OK" table:@"Localizable"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__UIWebView_webView_runJavaScriptTextInputPanelWithPrompt_defaultText_initiatedByFrame___block_invoke_2;
  v14[3] = &unk_1E712C8B0;
  v14[4] = &v20;
  v14[5] = &v16;
  [(UIAlertController *)v7 addAction:[UIAlertAction actionWithTitle:v9 style:0 handler:v14]];
  [(UIAlertController *)v7 addTextFieldWithConfigurationHandler:&__block_literal_global_286_0];
  [+[UIViewController _viewControllerForFullScreenPresentationFromView:](UIViewController _viewControllerForFullScreenPresentationFromView:{self), "presentViewController:animated:completion:", v7, 1, 0}];
  v10 = *MEMORY[0x1E695D918];
  while ((v21[3] & 1) == 0)
  {
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [currentRunLoop runMode:v10 beforeDate:{objc_msgSend(MEMORY[0x1E695DF00], "distantPast")}];
  }

  if (*(v17 + 24) == 1)
  {
    v12 = [-[NSArray firstObject](-[UIAlertController textFields](v7 "textFields")];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v12;
}

uint64_t __88__UIWebView_webView_runJavaScriptTextInputPanelWithPrompt_defaultText_initiatedByFrame___block_invoke_2(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

- (void)webView:(id)view decidePolicyForGeolocationRequestFromOrigin:(id)origin frame:(id)frame listener:(id)listener
{
  if (self->_internal->delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self decidePolicyForGeolocationRequestFromOrigin:origin frame:frame listener:listener];
  }

  else
  {
    v12 = +[UIWebGeolocationPolicyDecider sharedPolicyDecider];

    [v12 webView:view decidePolicyForGeolocationRequestFromOrigin:origin frame:frame listener:listener];
  }
}

- (id)webView:(id)view identifierForInitialRequest:(id)request fromDataSource:(id)source
{
  if (self->_internal->delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_internal->delegate;

    return [(UIWebViewDelegate *)delegate uiWebView:self identifierForInitialRequest:request fromDataSource:source];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E69E58C0]);

    return v10;
  }
}

- (void)webView:(id)view resource:(id)resource didFinishLoadingFromDataSource:(id)source
{
  if (self->_internal->delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self resource:resource didFinishLoadingFromDataSource:source];
  }
}

- (void)webView:(id)view resource:(id)resource didFailLoadingWithError:(id)error fromDataSource:(id)source
{
  if (self->_internal->delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self resource:resource didFailLoadingWithError:error fromDataSource:source];
  }
}

- (void)webView:(id)view resource:(id)resource didReceiveAuthenticationChallenge:(id)challenge fromDataSource:(id)source
{
  if (self->_internal->delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self resource:resource didReceiveAuthenticationChallenge:challenge fromDataSource:source];
  }

  else if (![challenge previousFailureCount])
  {
    protectionSpace = [challenge protectionSpace];
    v12 = [objc_msgSend(MEMORY[0x1E695AC50] "sharedCredentialStorage")];
    if (v12)
    {
      v13 = v12;
      sender = [challenge sender];

      [sender useCredential:v13 forAuthenticationChallenge:challenge];
    }
  }
}

- (void)webView:(id)view resource:(id)resource didCancelAuthenticationChallenge:(id)challenge fromDataSource:(id)source
{
  if (self->_internal->delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_internal->delegate;

    [(UIWebViewDelegate *)delegate uiWebView:self resource:resource didCancelAuthenticationChallenge:challenge fromDataSource:source];
  }
}

- (BOOL)webView:(id)view resource:(id)resource canAuthenticateAgainstProtectionSpace:(id)space forDataSource:(id)source
{
  if (self->_internal->delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_internal->delegate;

    return [(UIWebViewDelegate *)delegate uiWebView:self resource:resource canAuthenticateAgainstProtectionSpace:space forDataSource:source];
  }

  else
  {
    authenticationMethod = [space authenticationMethod];
    if ([authenticationMethod isEqualToString:*MEMORY[0x1E695AB48]] & 1) != 0 || (objc_msgSend(authenticationMethod, "isEqualToString:", *MEMORY[0x1E695AB58]) & 1) != 0 || (objc_msgSend(authenticationMethod, "isEqualToString:", *MEMORY[0x1E695AB60]) & 1) != 0 || (objc_msgSend(authenticationMethod, "isEqualToString:", *MEMORY[0x1E695AB50]))
    {
      return 1;
    }

    else
    {
      v13 = *MEMORY[0x1E695AB68];

      return [authenticationMethod isEqualToString:v13];
    }
  }
}

- (void)webView:(id)view didChangeLocationWithinPageForFrame:(id)frame
{
  if ([view mainFrame] == frame)
  {
    v6 = [objc_msgSend(objc_msgSend(objc_msgSend(frame "dataSource")];
    pdfHandler = self->_internal->pdfHandler;

    [(UIWebPDFViewHandler *)pdfHandler handleScrollToAnchor:v6];
  }
}

- (CGImage)newSnapshotWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  WebThreadLock();
  [(UIWebTiledView *)self->_internal->browserView layoutTilesNow];
  v9.receiver = self;
  v9.super_class = UIWebView;
  return [(UIView *)&v9 newSnapshotWithRect:x, y, width, height];
}

- (id)_initWithWebView:(id)view
{
  [view frame];
  v8.receiver = self;
  v8.super_class = UIWebView;
  v5 = [(UIView *)&v8 initWithFrame:?];
  v6 = v5;
  if (v5)
  {
    [(UIWebView *)v5 _webViewCommonInitWithWebView:view scalesPageToFit:0];
  }

  return v6;
}

- (void)_setOverridesOrientationChangeEventHandling:(BOOL)handling
{
  if (handling)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self->_internal + 40) = *(self->_internal + 40) & 0xFB | v3;
}

- (void)_setDrawsCheckeredPattern:(BOOL)pattern
{
  internal = self->_internal;
  v8 = *(internal + 40);
  if (((((v8 & 8) == 0) ^ pattern) & 1) == 0)
  {
    v11 = v3;
    if (pattern)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    *(internal + 40) = v8 & 0xF7 | v10;
    [(UIWebView *)self _updateCheckeredPattern:v4];

    [(UIWebView *)self _updateOpaqueAndBackgroundColor];
  }
}

- (void)_setSelectionEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self->_internal + 40) = *(self->_internal + 40) & 0xEF | v3;
}

- (void)_setDrawInWebThread:(BOOL)thread
{
  if (thread)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self->_internal + 40) = *(self->_internal + 40) & 0xDF | v3;
  [(UIWebTiledView *)self->_internal->browserView setLayoutTilesInMainThread:(*(self->_internal + 40) & 0x20) == 0];
}

- (UIWebPaginationMode)paginationMode
{
  WebThreadLock();
  v3 = [-[UIWebDocumentView webView](self->_internal->browserView "webView")] - 1;
  if (v3 > 3)
  {
    return 0;
  }

  else
  {
    return qword_18A683E20[v3];
  }
}

- (void)setPaginationMode:(UIWebPaginationMode)paginationMode
{
  if (paginationMode <= UIWebPaginationModeLeftToRight)
  {
    if (paginationMode)
    {
      if (paginationMode != UIWebPaginationModeLeftToRight)
      {
        return;
      }

      v5 = 1;
      v4 = 1;
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }
  }

  else
  {
    switch(paginationMode)
    {
      case UIWebPaginationModeTopToBottom:
        v4 = 1;
        v5 = 3;
        break;
      case UIWebPaginationModeBottomToTop:
        v4 = 1;
        v5 = 4;
        break;
      case UIWebPaginationModeRightToLeft:
        v4 = 1;
        v5 = 2;
        break;
      default:
        return;
    }
  }

  WebThreadLock();
  [(UIWebDocumentView *)self->_internal->browserView setShouldIgnoreCustomViewport:v4];
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];

  [webView _setPaginationMode:v5];
}

- (void)setPaginationBreakingMode:(UIWebPaginationBreakingMode)paginationBreakingMode
{
  WebThreadLock();
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];

  [webView _setPaginationBehavesLikeColumns:paginationBreakingMode == UIWebPaginationBreakingModeColumn];
}

- (CGFloat)pageLength
{
  WebThreadLock();
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];

  [webView _pageLength];
  return result;
}

- (void)setPageLength:(CGFloat)pageLength
{
  WebThreadLock();
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];

  [webView _setPageLength:pageLength];
}

- (CGFloat)gapBetweenPages
{
  WebThreadLock();
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];

  [webView _gapBetweenPages];
  return result;
}

- (void)setGapBetweenPages:(CGFloat)gapBetweenPages
{
  WebThreadLock();
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];

  [webView _setGapBetweenPages:gapBetweenPages];
}

- (NSUInteger)pageCount
{
  WebThreadLock();
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];

  return [webView _pageCount];
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  WebThreadLock();
  webView = [(UIWebDocumentView *)self->_internal->browserView webView];
  if (webView)
  {
    v6 = webView;
    [(UIWebDocumentView *)self->_internal->browserView saveStateToCurrentHistoryItem];
    [coder encodeObject:objc_msgSend(objc_msgSend(v6 forKey:{"backForwardList"), "dictionaryRepresentation"), @"kBackForwardDictionaryKey"}];
  }

  v7.receiver = self;
  v7.super_class = UIWebView;
  [(UIResponder *)&v7 encodeRestorableStateWithCoder:coder];
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, objc_opt_class(), 0), @"kBackForwardDictionaryKey"}];
  if (v9)
  {
    v10 = v9;
    WebThreadLock();
    webView = [(UIWebDocumentView *)self->_internal->browserView webView];
    if (webView)
    {
      v12 = webView;
      [objc_msgSend(webView "backForwardList")];
      v13 = [objc_msgSend(objc_msgSend(v12 "backForwardList")];
      if (v13)
      {
        v14 = v13;

        self->_internal->request = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:v14];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = UIWebView;
  [(UIResponder *)&v15 decodeRestorableStateWithCoder:coder];
}

@end