@interface SXComponentViewFactory
- (NSString)type;
- (SXComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory;
- (id)componentViewForComponent:(id)component;
- (int)role;
@end

@implementation SXComponentViewFactory

- (SXComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory
{
  providerCopy = provider;
  viewportCopy = viewport;
  delegateProviderCopy = delegateProvider;
  factoryCopy = factory;
  v18.receiver = self;
  v18.super_class = SXComponentViewFactory;
  v15 = [(SXComponentViewFactory *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_DOMObjectProvider, provider);
    objc_storeStrong(&v16->_viewport, viewport);
    objc_storeStrong(&v16->_presentationDelegateProvider, delegateProvider);
    objc_storeStrong(&v16->_componentStyleRendererFactory, factory);
  }

  return v16;
}

- (NSString)type
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"Unavailable" reason:@"Must be implemented by subclass" userInfo:0];
  objc_exception_throw(v2);
}

- (int)role
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"Unavailable" reason:@"Must be implemented by subclass" userInfo:0];
  objc_exception_throw(v2);
}

- (id)componentViewForComponent:(id)component
{
  componentCopy = component;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:@"Unavailable" reason:@"Must be implemented by subclass" userInfo:0];
  objc_exception_throw(v4);
}

@end