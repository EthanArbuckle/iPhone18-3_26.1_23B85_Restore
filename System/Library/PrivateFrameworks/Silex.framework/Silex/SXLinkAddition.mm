@interface SXLinkAddition
- (id)action;
@end

@implementation SXLinkAddition

- (id)action
{
  v3 = [SXLinkAction alloc];
  v4 = [(SXLinkAddition *)self URL];
  v5 = [(SXLinkAddition *)self analytics];
  v6 = [(SXLinkAction *)v3 initWithURL:v4 analytics:v5 openInBrowser:[(SXLinkAddition *)self openInBrowser]];

  return v6;
}

@end