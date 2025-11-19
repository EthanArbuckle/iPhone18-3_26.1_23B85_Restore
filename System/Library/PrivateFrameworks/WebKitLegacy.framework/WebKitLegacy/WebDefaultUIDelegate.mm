@interface WebDefaultUIDelegate
+ (id)sharedUIDelegate;
- (CGRect)webViewFrame:(id)a3;
- (id)webView:(id)a3 createWebViewWithRequest:(id)a4 windowFeatures:(id)a5;
- (id)webViewFirstResponder:(id)a3;
- (void)webView:(id)a3 makeFirstResponder:(id)a4;
@end

@implementation WebDefaultUIDelegate

+ (id)sharedUIDelegate
{
  if (_MergedGlobals_14 == 1)
  {
    return qword_1ED6A61C0;
  }

  result = objc_alloc_init(WebDefaultUIDelegate);
  qword_1ED6A61C0 = result;
  _MergedGlobals_14 = 1;
  return result;
}

- (id)webView:(id)a3 createWebViewWithRequest:(id)a4 windowFeatures:(id)a5
{
  [a3 UIDelegate];
  if (objc_opt_respondsToSelector())
  {
    return 0;
  }

  [a3 UIDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v7 = [a3 UIDelegate];

  return [v7 webView:a3 createWebViewWithRequest:a4];
}

- (id)webViewFirstResponder:(id)a3
{
  v3 = [a3 window];

  return [v3 firstResponder];
}

- (void)webView:(id)a3 makeFirstResponder:(id)a4
{
  v5 = [a3 window];

  [v5 makeFirstResponder:a4];
}

- (CGRect)webViewFrame:(id)a3
{
  v3 = [a3 window];
  if (v3)
  {
    [v3 frame];
  }

  else
  {
    v4 = *MEMORY[0x1E696AA80];
    v5 = *(MEMORY[0x1E696AA80] + 8);
    v6 = *(MEMORY[0x1E696AA80] + 16);
    v7 = *(MEMORY[0x1E696AA80] + 24);
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

@end