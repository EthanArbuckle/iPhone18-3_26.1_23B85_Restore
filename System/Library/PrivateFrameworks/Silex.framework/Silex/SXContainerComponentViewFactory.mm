@interface SXContainerComponentViewFactory
- (SXContainerComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 mediaSharingPolicyProvider:(id)a7;
- (id)componentViewForComponent:(id)a3;
@end

@implementation SXContainerComponentViewFactory

- (SXContainerComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 mediaSharingPolicyProvider:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = SXContainerComponentViewFactory;
  v14 = [(SXComponentViewFactory *)&v17 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegateProvider:a5 componentStyleRendererFactory:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_mediaSharingPolicyProvider, a7);
  }

  return v15;
}

- (id)componentViewForComponent:(id)a3
{
  v4 = [SXContainerComponentView alloc];
  v5 = [(SXComponentViewFactory *)self DOMObjectProvider];
  v6 = [(SXComponentViewFactory *)self viewport];
  v7 = [(SXComponentViewFactory *)self presentationDelegateProvider];
  v8 = [v7 presentationDelegate];
  v9 = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  v10 = [(SXContainerComponentViewFactory *)self mediaSharingPolicyProvider];
  v11 = [(SXContainerComponentView *)v4 initWithDOMObjectProvider:v5 viewport:v6 presentationDelegate:v8 componentStyleRendererFactory:v9 mediaSharingPolicyProvider:v10];

  return v11;
}

@end