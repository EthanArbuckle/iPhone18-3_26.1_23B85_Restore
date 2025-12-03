@interface UIStatusBarManager(SpringBoardFoundation)
- (void)sbf_addObserver:()SpringBoardFoundation;
- (void)sbf_removeObserver:()SpringBoardFoundation;
@end

@implementation UIStatusBarManager(SpringBoardFoundation)

- (void)sbf_addObserver:()SpringBoardFoundation
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIStatusBarManager+SpringBoardFoundation.m" lineNumber:14 description:@"Use a concrete subclass like SBWindowSceneStatusBarManager"];
}

- (void)sbf_removeObserver:()SpringBoardFoundation
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIStatusBarManager+SpringBoardFoundation.m" lineNumber:18 description:@"Use a concrete subclass like SBWindowSceneStatusBarManager"];
}

@end