@interface GQUWebView
+ (id)_createWebPreferencesForRendering;
+ (void)disableFrameScrollingRecursively:(id)recursively;
- (BOOL)_validateURL:(id)l;
- (GQUWebView)initWithFrame:(CGRect)frame;
- (id)_urlToDownloadFromURL:(id)l;
- (id)webView:(id)view resource:(id)resource willSendRequest:(id)request redirectResponse:(id)response fromDataSource:(id)source;
- (void)dealloc;
- (void)loadDataSynchronously:(id)synchronously textEncodingName:(id)name resources:(id)resources;
- (void)webView:(id)view decidePolicyForMIMEType:(id)type request:(id)request frame:(id)frame decisionListener:(id)listener;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action request:(id)request frame:(id)frame decisionListener:(id)listener;
- (void)webView:(id)view didFailLoadWithError:(id)error forFrame:(id)frame;
- (void)webView:(id)view didFailProvisionalLoadWithError:(id)error forFrame:(id)frame;
@end

@implementation GQUWebView

+ (id)_createWebPreferencesForRendering
{
  v2 = [[WebPreferences alloc] initWithIdentifier:@"com.apple.quicklook.utility"];
  [v2 setPlugInsEnabled:0];
  [v2 setJavaEnabled:0];
  [v2 setJavaScriptEnabled:0];
  [v2 setJavaScriptCanOpenWindowsAutomatically:0];
  [v2 setAllowsAnimatedImages:0];
  [v2 setAllowsAnimatedImageLooping:0];
  [v2 setLoadsImagesAutomatically:1];
  return v2;
}

- (GQUWebView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = GQUWebView;
  v3 = [(GQUWebView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    _createWebPreferencesForRendering = [objc_opt_class() _createWebPreferencesForRendering];
    [(GQUWebView *)v3 setPreferences:_createWebPreferencesForRendering];

    [(GQUWebView *)v3 setFrameLoadDelegate:v3];
    [(GQUWebView *)v3 setResourceLoadDelegate:v3];
    [(GQUWebView *)v3 setPolicyDelegate:v3];
  }

  return v3;
}

- (void)dealloc
{
  [(GQUWebView *)self setFrameLoadDelegate:0];
  [(GQUWebView *)self setResourceLoadDelegate:0];
  [(GQUWebView *)self setPolicyDelegate:0];
  v3.receiver = self;
  v3.super_class = GQUWebView;
  [(GQUWebView *)&v3 dealloc];
}

- (void)loadDataSynchronously:(id)synchronously textEncodingName:(id)name resources:(id)resources
{
  if ((byte_A42A8 & 1) == 0)
  {
    [NSURLProtocol registerClass:objc_opt_class()];
    byte_A42A8 = 1;
  }

  [GQUSimpleURLProtocol setResourcesDictionary:resources];
  [(GQUWebView *)self setHasAttachments:1];
  [(GQUWebView *)self stopLoading:0];
  [-[GQUWebView mainFrame](self "mainFrame")];
  [+[GQUWebViewWaiter waiter](GQUWebViewWaiter "waiter")];
  [(GQUWebView *)self stopLoading:0];
  [(GQUWebView *)self setHasAttachments:0];
  [GQUSimpleURLProtocol setResourcesDictionary:0];
}

- (void)webView:(id)view didFailProvisionalLoadWithError:(id)error forFrame:(id)frame
{
  if ([(GQUWebView *)self mainFrame:view]== frame)
  {

    [(GQUWebView *)self stopLoading:0];
  }
}

- (void)webView:(id)view didFailLoadWithError:(id)error forFrame:(id)frame
{
  if ([(GQUWebView *)self mainFrame:view]== frame)
  {

    [(GQUWebView *)self stopLoading:0];
  }
}

- (void)webView:(id)view decidePolicyForMIMEType:(id)type request:(id)request frame:(id)frame decisionListener:(id)listener
{
  if ([objc_opt_class() canShowMIMEType:type] || (v9 = objc_msgSend(objc_msgSend(objc_msgSend(request, "URL"), "path"), "pathExtension")) != 0 && !objc_msgSend(v9, "caseInsensitiveCompare:", @"html"))
  {

    [listener use];
  }

  else
  {

    [listener ignore];
  }
}

- (BOOL)_validateURL:(id)l
{
  scheme = [l scheme];
  v6 = scheme;
  if (self->mHasAttachments && ([scheme isEqual:off_9CBA0] & 1) != 0 || (objc_msgSend(l, "isFileURL") & 1) != 0 || (objc_msgSend(v6, "isEqual:", @"about") & 1) != 0 || (objc_msgSend(v6, "isEqual:", @"applewebdata") & 1) != 0)
  {
    return 1;
  }

  return [v6 isEqual:@"data"];
}

- (id)_urlToDownloadFromURL:(id)l
{
  scheme = [l scheme];
  if ([l isFileURL] & 1) != 0 || (objc_msgSend(scheme, "isEqual:", @"about") & 1) != 0 || (objc_msgSend(scheme, "isEqual:", @"applewebdata") & 1) != 0 || (objc_msgSend(scheme, "isEqual:", @"data") & 1) != 0 || (objc_msgSend(scheme, "isEqual:", off_9CBA0))
  {
    return l;
  }

  return [NSURL URLWithString:@"about:"];
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action request:(id)request frame:(id)frame decisionListener:(id)listener
{
  if (-[GQUWebView _validateURL:](self, "_validateURL:", [request URL]))
  {

    [listener use];
  }

  else
  {

    [listener ignore];
  }
}

- (id)webView:(id)view resource:(id)resource willSendRequest:(id)request redirectResponse:(id)response fromDataSource:(id)source
{
  v9 = [request URL];
  v10 = [(GQUWebView *)self _urlToDownloadFromURL:v9];
  if (v10 == v9)
  {
    return request;
  }

  return [NSURLRequest requestWithURL:v10];
}

+ (void)disableFrameScrollingRecursively:(id)recursively
{
  [objc_msgSend(recursively "frameView")];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  childFrames = [recursively childFrames];
  v6 = [childFrames countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(childFrames);
        }

        [self disableFrameScrollingRecursively:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [childFrames countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end