@interface KeypadForegroundColor
@end

@implementation KeypadForegroundColor

uint64_t ___KeypadForegroundColor_block_invoke()
{
  _KeypadForegroundColor___color = [MEMORY[0x277D75348] colorWithWhite:0.5 alpha:1.0];

  return MEMORY[0x2821F96F8]();
}

@end