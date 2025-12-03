@interface SXAdvertisementComponentViewFactory
- (id)componentViewForComponent:(id)component;
@end

@implementation SXAdvertisementComponentViewFactory

- (id)componentViewForComponent:(id)component
{
  v4 = [SXAdvertisementComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  v10 = [(SXComponentView *)v4 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory];

  return v10;
}

@end