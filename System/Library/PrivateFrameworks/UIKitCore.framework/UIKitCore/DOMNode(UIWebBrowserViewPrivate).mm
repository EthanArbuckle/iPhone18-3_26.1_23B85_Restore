@interface DOMNode(UIWebBrowserViewPrivate)
- (uint64_t)_startAssistingDocumentView:()UIWebBrowserViewPrivate;
- (uint64_t)_stopAssistingDocumentView:()UIWebBrowserViewPrivate;
- (void)_nextAssistedNode;
- (void)_previousAssistedNode;
- (void)_textFormElement;
@end

@implementation DOMNode(UIWebBrowserViewPrivate)

- (uint64_t)_startAssistingDocumentView:()UIWebBrowserViewPrivate
{
  result = [self isContentEditable];
  if (result)
  {

    return [a3 _startAssistingKeyboard];
  }

  return result;
}

- (uint64_t)_stopAssistingDocumentView:()UIWebBrowserViewPrivate
{
  result = [self isContentEditable];
  if (result)
  {

    return [a3 _stopAssistingKeyboard];
  }

  return result;
}

- (void)_nextAssistedNode
{
  while (1)
  {
    nextFocusNode = [self nextFocusNode];
    v2 = nextFocusNode;
    if (!nextFocusNode || ([nextFocusNode nodeCanBecomeFirstResponder] & 1) != 0)
    {
      break;
    }

    self = v2;
  }

  return v2;
}

- (void)_previousAssistedNode
{
  while (1)
  {
    previousFocusNode = [self previousFocusNode];
    v2 = previousFocusNode;
    if (!previousFocusNode || ([previousFocusNode nodeCanBecomeFirstResponder] & 1) != 0)
    {
      break;
    }

    self = v2;
  }

  return v2;
}

- (void)_textFormElement
{
  if ([self isContentEditable])
  {
    return self;
  }

  else
  {
    return 0;
  }
}

@end