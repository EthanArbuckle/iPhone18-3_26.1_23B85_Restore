@interface DOMHTMLInputElement(UIWebBrowserViewPrivate)
- (uint64_t)_startAssistingDocumentView:()UIWebBrowserViewPrivate;
- (uint64_t)_stopAssistingDocumentView:()UIWebBrowserViewPrivate;
- (uint64_t)_supportsAccessoryClear;
@end

@implementation DOMHTMLInputElement(UIWebBrowserViewPrivate)

- (uint64_t)_startAssistingDocumentView:()UIWebBrowserViewPrivate
{
  if ([self isAssistedDateType])
  {

    return [a3 _startAssistingNode:self];
  }

  else
  {

    return [a3 _startAssistingKeyboard];
  }
}

- (uint64_t)_stopAssistingDocumentView:()UIWebBrowserViewPrivate
{
  if ([self isAssistedDateType])
  {

    return [a3 _stopAssistingNode:self];
  }

  else
  {

    return [a3 _stopAssistingKeyboard];
  }
}

- (uint64_t)_supportsAccessoryClear
{
  if (([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1)
  {
    return 0;
  }

  return [self isAssistedDateType];
}

@end