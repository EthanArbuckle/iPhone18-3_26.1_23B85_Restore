@interface UIWebPDFLinkAction
- (void)dealloc;
@end

@implementation UIWebPDFLinkAction

- (void)dealloc
{
  [(UIWebPDFLinkAction *)self setTitle:0];
  [(UIWebPDFLinkAction *)self setHandler:0];
  v3.receiver = self;
  v3.super_class = UIWebPDFLinkAction;
  [(UIWebPDFLinkAction *)&v3 dealloc];
}

@end