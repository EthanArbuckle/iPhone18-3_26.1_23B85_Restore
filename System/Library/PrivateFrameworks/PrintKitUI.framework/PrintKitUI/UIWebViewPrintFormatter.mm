@interface UIWebViewPrintFormatter
- (id)_webDocumentView;
@end

@implementation UIWebViewPrintFormatter

- (id)_webDocumentView
{
  view = [(UIViewPrintFormatter *)self view];
  _documentView = [view _documentView];

  return _documentView;
}

@end