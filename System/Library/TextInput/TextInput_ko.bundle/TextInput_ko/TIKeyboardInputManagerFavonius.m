@interface TIKeyboardInputManagerFavonius
@end

@implementation TIKeyboardInputManagerFavonius

uint64_t __54__TIKeyboardInputManagerFavonius_ko_acceptsCharacter___block_invoke()
{
  result = [MEMORY[0x29EDBA0F8] _characterSetWithPattern:@"[:Script=Hangul:]"];
  [TIKeyboardInputManagerFavonius_ko acceptsCharacter:]::hangul_set = result;
  return result;
}

@end