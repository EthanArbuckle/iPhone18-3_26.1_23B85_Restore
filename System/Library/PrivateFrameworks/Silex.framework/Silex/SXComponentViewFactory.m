@interface SXComponentViewFactory
- (NSString)type;
- (SXComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6;
- (id)componentViewForComponent:(id)a3;
- (int)role;
@end

@implementation SXComponentViewFactory

- (SXComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SXComponentViewFactory;
  v15 = [(SXComponentViewFactory *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_DOMObjectProvider, a3);
    objc_storeStrong(&v16->_viewport, a4);
    objc_storeStrong(&v16->_presentationDelegateProvider, a5);
    objc_storeStrong(&v16->_componentStyleRendererFactory, a6);
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

- (id)componentViewForComponent:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:@"Unavailable" reason:@"Must be implemented by subclass" userInfo:0];
  objc_exception_throw(v4);
}

@end