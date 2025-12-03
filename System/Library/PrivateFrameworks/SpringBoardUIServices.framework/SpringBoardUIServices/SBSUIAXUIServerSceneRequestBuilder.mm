@interface SBSUIAXUIServerSceneRequestBuilder
- (id)_specification;
- (void)_customizeWorkspaceRequestOptions:(id)options usingRequest:(id)request;
@end

@implementation SBSUIAXUIServerSceneRequestBuilder

- (id)_specification
{
  v2 = objc_opt_new();

  return v2;
}

- (void)_customizeWorkspaceRequestOptions:(id)options usingRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = SBSUIAXUIServerSceneRequestBuilder;
  [(_UIApplicationSceneRequestBuilder *)&v4 _customizeWorkspaceRequestOptions:options usingRequest:request];
}

@end