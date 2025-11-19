@interface UIDICActivityItemProvider
@end

@implementation UIDICActivityItemProvider

void __69___UIDICActivityItemProvider__shouldExecuteItemOperationForActivity___block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  _shouldExecuteItemOperationForActivity__executeInShareUI = [v0 BOOLForKey:@"UIOpenInByCopyPerformedInShareUI"];
}

@end