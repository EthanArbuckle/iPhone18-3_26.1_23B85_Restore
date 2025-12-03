@interface _UISceneHostingActionHostToClient
- (void)performActionForHostedWindowScene:(id)scene;
@end

@implementation _UISceneHostingActionHostToClient

- (void)performActionForHostedWindowScene:(id)scene
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneHostingActionHostToClient.m" lineNumber:16 description:{@"_UISceneHostingActionHostToClient subclass <%@: %p> did not override -performActionForHostedWindowScene:", v6, self}];
}

@end