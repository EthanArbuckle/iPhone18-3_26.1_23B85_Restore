@interface UIStatusBarManager(SpringBoardFoundation)
- (void)sbf_addObserver:()SpringBoardFoundation;
- (void)sbf_removeObserver:()SpringBoardFoundation;
@end

@implementation UIStatusBarManager(SpringBoardFoundation)

- (void)sbf_addObserver:()SpringBoardFoundation
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"UIStatusBarManager+SpringBoardFoundation.m" lineNumber:14 description:@"Use a concrete subclass like SBWindowSceneStatusBarManager"];
}

- (void)sbf_removeObserver:()SpringBoardFoundation
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"UIStatusBarManager+SpringBoardFoundation.m" lineNumber:18 description:@"Use a concrete subclass like SBWindowSceneStatusBarManager"];
}

@end