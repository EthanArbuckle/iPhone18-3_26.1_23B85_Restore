@interface _UIMainMenuHostAction
- (void)performActionFromConnection:(id)a3;
@end

@implementation _UIMainMenuHostAction

- (void)performActionFromConnection:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UISceneMainMenuActions.m" lineNumber:71 description:@"Subclasses must override"];
}

@end