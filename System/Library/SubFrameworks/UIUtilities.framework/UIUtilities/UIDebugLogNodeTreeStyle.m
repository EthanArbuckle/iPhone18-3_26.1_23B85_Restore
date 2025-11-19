@interface UIDebugLogNodeTreeStyle
@end

@implementation UIDebugLogNodeTreeStyle

uint64_t __40___UIDebugLogNodeTreeStyle_defaultStyle__block_invoke()
{
  _MergedGlobals_1 = [_UIDebugLogNodeTreeStyle styleWithNode:@" ├ " lastNode:@" └ " intermediate:@" │ " trailing:@"   "];

  return MEMORY[0x2821F96F8]();
}

@end