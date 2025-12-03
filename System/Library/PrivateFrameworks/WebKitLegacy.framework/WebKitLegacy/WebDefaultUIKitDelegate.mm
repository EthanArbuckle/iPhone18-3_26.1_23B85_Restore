@interface WebDefaultUIKitDelegate
+ (id)sharedUIKitDelegate;
- (CGPoint)contentsPointForWebView:(id)view;
- (CGPoint)interactionLocation;
- (CGRect)documentVisibleRectForWebView:(id)view;
@end

@implementation WebDefaultUIKitDelegate

+ (id)sharedUIKitDelegate
{
  result = sharedDelegate_0;
  if (!sharedDelegate_0)
  {
    result = objc_alloc_init(WebDefaultUIKitDelegate);
    sharedDelegate_0 = result;
  }

  return result;
}

- (CGPoint)contentsPointForWebView:(id)view
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGRect)documentVisibleRectForWebView:(id)view
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGPoint)interactionLocation
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

@end