@interface KeypadFlashColor
@end

@implementation KeypadFlashColor

uint64_t ___KeypadFlashColor_block_invoke()
{
  _KeypadFlashColor___color = [MEMORY[0x277D75348] colorWithWhite:0.75 alpha:1.0];

  return MEMORY[0x2821F96F8]();
}

@end