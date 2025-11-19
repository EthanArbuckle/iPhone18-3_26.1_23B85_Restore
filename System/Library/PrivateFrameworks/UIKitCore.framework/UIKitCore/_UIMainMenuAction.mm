@interface _UIMainMenuAction
- (void)handleMainMenuAction;
@end

@implementation _UIMainMenuAction

- (void)handleMainMenuAction
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UISceneMainMenuActions.m" lineNumber:58 description:@"Subclasses must override"];
}

@end