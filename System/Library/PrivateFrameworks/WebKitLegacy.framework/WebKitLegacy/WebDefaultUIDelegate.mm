@interface WebDefaultUIDelegate
+ (id)sharedUIDelegate;
- (CGRect)webViewFrame:(id)frame;
- (id)webView:(id)view createWebViewWithRequest:(id)request windowFeatures:(id)features;
- (id)webViewFirstResponder:(id)responder;
- (void)webView:(id)view makeFirstResponder:(id)responder;
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

- (id)webView:(id)view createWebViewWithRequest:(id)request windowFeatures:(id)features
{
  [view UIDelegate];
  if (objc_opt_respondsToSelector())
  {
    return 0;
  }

  [view UIDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  uIDelegate = [view UIDelegate];

  return [uIDelegate webView:view createWebViewWithRequest:request];
}

- (id)webViewFirstResponder:(id)responder
{
  window = [responder window];

  return [window firstResponder];
}

- (void)webView:(id)view makeFirstResponder:(id)responder
{
  window = [view window];

  [window makeFirstResponder:responder];
}

- (CGRect)webViewFrame:(id)frame
{
  window = [frame window];
  if (window)
  {
    [window frame];
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