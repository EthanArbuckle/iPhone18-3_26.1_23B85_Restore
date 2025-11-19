@interface SBSUIAXUIServerSceneRequestBuilder
- (id)_specification;
- (void)_customizeWorkspaceRequestOptions:(id)a3 usingRequest:(id)a4;
@end

@implementation SBSUIAXUIServerSceneRequestBuilder

- (id)_specification
{
  v2 = objc_opt_new();

  return v2;
}

- (void)_customizeWorkspaceRequestOptions:(id)a3 usingRequest:(id)a4
{
  v4.receiver = self;
  v4.super_class = SBSUIAXUIServerSceneRequestBuilder;
  [(_UIApplicationSceneRequestBuilder *)&v4 _customizeWorkspaceRequestOptions:a3 usingRequest:a4];
}

@end