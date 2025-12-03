@interface SUMarkupCellContext
- (id)webViewForMarkup:(id)markup;
- (void)dealloc;
- (void)webViewDidFinishLoading:(id)loading;
@end

@implementation SUMarkupCellContext

- (void)dealloc
{
  self->_stylesheet = 0;
  webViewCache = self->_webViewCache;
  if (webViewCache)
  {
    CFRelease(webViewCache);
    self->_webViewCache = 0;
  }

  v4.receiver = self;
  v4.super_class = SUMarkupCellContext;
  [(SUItemCellContext *)&v4 dealloc];
}

- (id)webViewForMarkup:(id)markup
{
  webViewCache = self->_webViewCache;
  if (!webViewCache)
  {
    webViewCache = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    self->_webViewCache = webViewCache;
  }

  Value = CFDictionaryGetValue(webViewCache, markup);
  if (!Value)
  {
    [(SUMarkupCellContext *)self webViewWidth];
    v8 = v7;
    Value = [[SUWebDocumentView alloc] initWithFrame:0.0, 0.0, v7, 1.0];
    [(SUWebDocumentView *)Value setViewportSize:0xFFFFFFLL forDocumentTypes:v8, *MEMORY[0x1E69DE798]];
    [(SUWebDocumentView *)Value setDrawsBackground:0];
    [(SUWebDocumentView *)Value setIgnoresKeyEvents:1];
    [(SUWebDocumentView *)Value setIgnoresFocusingMouse:1];
    [(SUWebDocumentView *)Value setLoadDelegate:self];
    [(SUWebDocumentView *)Value setLoadsSynchronously:1];
    [(SUWebDocumentView *)Value setUserInteractionEnabled:0];
    CFDictionarySetValue(self->_webViewCache, markup, Value);
    self->_pendingWebViewLoads += 2;
    [(SUWebDocumentView *)Value setStylesheet:[(SUMarkupCellContext *)self stylesheet]];
    [(SUWebDocumentView *)Value setHTMLFragment:markup];
    [(SUWebDocumentView *)Value frame];
    v10 = v9;
    v12 = v11;
    [(SUWebDocumentView *)Value documentBounds];
    [(SUWebDocumentView *)Value setFrame:v10, v12];
  }

  return Value;
}

- (void)webViewDidFinishLoading:(id)loading
{
  pendingWebViewLoads = self->_pendingWebViewLoads;
  v6 = pendingWebViewLoads == 1;
  v7 = pendingWebViewLoads < 1;
  v8 = pendingWebViewLoads - 1;
  if (!v7)
  {
    self->_pendingWebViewLoads = v8;
    if (v6)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

      [defaultCenter postNotificationName:@"SUMarkupCellContextLoadedAllWebViewsNotifications" object:0];
    }
  }
}

@end