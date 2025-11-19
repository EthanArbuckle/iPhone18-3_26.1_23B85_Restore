@interface UIWebViewPrintFormatter
- (id)_webDocumentView;
@end

@implementation UIWebViewPrintFormatter

- (id)_webDocumentView
{
  v2 = [(UIViewPrintFormatter *)self view];
  v3 = [v2 _documentView];

  return v3;
}

@end