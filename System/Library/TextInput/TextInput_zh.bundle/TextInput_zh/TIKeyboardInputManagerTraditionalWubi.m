@interface TIKeyboardInputManagerTraditionalWubi
- (void)initImplementation;
@end

@implementation TIKeyboardInputManagerTraditionalWubi

- (void)initImplementation
{
  v2 = *MEMORY[0x29EDC71C0];
  v3 = *MEMORY[0x29EDC71B8];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerTraditionalWubi;
  return [(TIKeyboardInputManagerChinese *)&v5 initImplementationWithMode:v2 andLanguage:v3];
}

@end