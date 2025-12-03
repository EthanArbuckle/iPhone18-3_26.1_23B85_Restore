@interface WebDefaultPolicyDelegate
+ (id)sharedPolicyDelegate;
- (void)webView:(id)view decidePolicyForMIMEType:(id)type request:(id)request frame:(id)frame decisionListener:(id)listener;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action request:(id)request frame:(id)frame decisionListener:(id)listener;
@end

@implementation WebDefaultPolicyDelegate

+ (id)sharedPolicyDelegate
{
  result = sharedDelegate;
  if (!sharedDelegate)
  {
    result = objc_alloc_init(WebDefaultPolicyDelegate);
    sharedDelegate = result;
  }

  return result;
}

- (void)webView:(id)view decidePolicyForMIMEType:(id)type request:(id)request frame:(id)frame decisionListener:(id)listener
{
  if ([objc_msgSend(request "URL")])
  {
    v11 = 0;
    if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] && (v11 & 1) == 0 && objc_msgSend(view, "_canShowMIMEType:", type))
    {
      [listener use];
    }

    else
    {
      [listener ignore];
    }
  }

  else if ([view _canShowMIMEType:type])
  {

    [listener use];
  }

  else
  {

    [listener ignore];
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action request:(id)request frame:(id)frame decisionListener:(id)listener
{
  v11 = [objc_msgSend(action objectForKey:{WebActionNavigationTypeKey), "intValue"}];
  if (+[WebView _canHandleRequest:forMainFrame:](WebView, "_canHandleRequest:forMainFrame:", request, [view mainFrame] == frame) || v11 == 6)
  {

    [listener use];
  }

  else
  {
    [objc_msgSend(request "URL")];

    [listener ignore];
  }
}

@end