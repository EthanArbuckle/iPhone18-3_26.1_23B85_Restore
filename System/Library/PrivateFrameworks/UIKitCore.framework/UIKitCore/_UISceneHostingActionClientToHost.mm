@interface _UISceneHostingActionClientToHost
- (void)performActionForSceneController:(id)controller;
@end

@implementation _UISceneHostingActionClientToHost

- (void)performActionForSceneController:(id)controller
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneHostingActionClientToHost.m" lineNumber:16 description:{@"_UISceneHostingActionClientToHost subclass <%@: %p> did not override -performActionForSceneController:", v6, self}];
}

@end