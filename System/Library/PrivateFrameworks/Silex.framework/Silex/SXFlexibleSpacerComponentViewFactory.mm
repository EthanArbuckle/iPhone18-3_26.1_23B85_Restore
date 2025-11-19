@interface SXFlexibleSpacerComponentViewFactory
- (id)componentViewForComponent:(id)a3;
@end

@implementation SXFlexibleSpacerComponentViewFactory

- (id)componentViewForComponent:(id)a3
{
  v4 = [SXFlexibleSpacerComponentView alloc];
  v5 = [(SXComponentViewFactory *)self DOMObjectProvider];
  v6 = [(SXComponentViewFactory *)self viewport];
  v7 = [(SXComponentViewFactory *)self presentationDelegateProvider];
  v8 = [v7 presentationDelegate];
  v9 = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  v10 = [(SXComponentView *)v4 initWithDOMObjectProvider:v5 viewport:v6 presentationDelegate:v8 componentStyleRendererFactory:v9];

  return v10;
}

@end