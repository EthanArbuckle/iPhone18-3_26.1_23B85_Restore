@interface _UIMainMenuHostAction
- (void)performActionFromConnection:(id)connection;
@end

@implementation _UIMainMenuHostAction

- (void)performActionFromConnection:(id)connection
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneMainMenuActions.m" lineNumber:71 description:@"Subclasses must override"];
}

@end