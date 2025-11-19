@interface WebDefaultPolicyDelegate
+ (id)sharedPolicyDelegate;
- (void)webView:(id)a3 decidePolicyForMIMEType:(id)a4 request:(id)a5 frame:(id)a6 decisionListener:(id)a7;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 request:(id)a5 frame:(id)a6 decisionListener:(id)a7;
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

- (void)webView:(id)a3 decidePolicyForMIMEType:(id)a4 request:(id)a5 frame:(id)a6 decisionListener:(id)a7
{
  if ([objc_msgSend(a5 "URL")])
  {
    v11 = 0;
    if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] && (v11 & 1) == 0 && objc_msgSend(a3, "_canShowMIMEType:", a4))
    {
      [a7 use];
    }

    else
    {
      [a7 ignore];
    }
  }

  else if ([a3 _canShowMIMEType:a4])
  {

    [a7 use];
  }

  else
  {

    [a7 ignore];
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 request:(id)a5 frame:(id)a6 decisionListener:(id)a7
{
  v11 = [objc_msgSend(a4 objectForKey:{WebActionNavigationTypeKey), "intValue"}];
  if (+[WebView _canHandleRequest:forMainFrame:](WebView, "_canHandleRequest:forMainFrame:", a5, [a3 mainFrame] == a6) || v11 == 6)
  {

    [a7 use];
  }

  else
  {
    [objc_msgSend(a5 "URL")];

    [a7 ignore];
  }
}

@end