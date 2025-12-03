@interface WAKView(WebExtras)
- (uint64_t)_web_firstResponderIsSelfOrDescendantView;
- (uint64_t)_web_parentWebFrameView;
- (void)_web_superviewOfClass:()WebExtras;
@end

@implementation WAKView(WebExtras)

- (void)_web_superviewOfClass:()WebExtras
{
  for (i = [self superview]; i; i = objc_msgSend(i, "superview"))
  {
    if (objc_opt_isKindOfClass())
    {
      break;
    }
  }

  return i;
}

- (uint64_t)_web_parentWebFrameView
{
  v2 = objc_opt_class();

  return [self _web_superviewOfClass:v2];
}

- (uint64_t)_web_firstResponderIsSelfOrDescendantView
{
  result = [objc_msgSend(self "window")];
  if (result)
  {
    v3 = result;
    if (result == self)
    {
      return 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        return [v3 isDescendantOf:self];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

@end