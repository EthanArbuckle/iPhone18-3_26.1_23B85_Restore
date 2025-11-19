@interface DOMHTMLInputElement(UIWebBrowserViewPrivate)
- (uint64_t)_startAssistingDocumentView:()UIWebBrowserViewPrivate;
- (uint64_t)_stopAssistingDocumentView:()UIWebBrowserViewPrivate;
- (uint64_t)_supportsAccessoryClear;
@end

@implementation DOMHTMLInputElement(UIWebBrowserViewPrivate)

- (uint64_t)_startAssistingDocumentView:()UIWebBrowserViewPrivate
{
  if ([a1 isAssistedDateType])
  {

    return [a3 _startAssistingNode:a1];
  }

  else
  {

    return [a3 _startAssistingKeyboard];
  }
}

- (uint64_t)_stopAssistingDocumentView:()UIWebBrowserViewPrivate
{
  if ([a1 isAssistedDateType])
  {

    return [a3 _stopAssistingNode:a1];
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

  return [a1 isAssistedDateType];
}

@end