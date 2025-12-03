@interface SBSUILiquidDetectionSceneRequestBuilder
- (id)_specification;
- (void)_customizeWorkspaceRequestOptions:(id)options usingRequest:(id)request;
@end

@implementation SBSUILiquidDetectionSceneRequestBuilder

- (id)_specification
{
  v2 = objc_opt_new();

  return v2;
}

- (void)_customizeWorkspaceRequestOptions:(id)options usingRequest:(id)request
{
  v7.receiver = self;
  v7.super_class = SBSUILiquidDetectionSceneRequestBuilder;
  optionsCopy = options;
  [(_UIApplicationSceneRequestBuilder *)&v7 _customizeWorkspaceRequestOptions:optionsCopy usingRequest:request];
  v6 = objc_alloc_init(MEMORY[0x1E69DCCB0]);
  [v6 setBackgroundStyle:{3, v7.receiver, v7.super_class}];
  [optionsCopy setInitialClientSettings:v6];
}

@end