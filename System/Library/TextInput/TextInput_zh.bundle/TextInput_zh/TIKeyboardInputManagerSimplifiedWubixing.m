@interface TIKeyboardInputManagerSimplifiedWubixing
- (void)initImplementation;
@end

@implementation TIKeyboardInputManagerSimplifiedWubixing

- (void)initImplementation
{
  v2 = *MEMORY[0x29EDC7188];
  v3 = *MEMORY[0x29EDC71A8];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerSimplifiedWubixing;
  return [(TIKeyboardInputManagerChinese *)&v5 initImplementationWithMode:v2 andLanguage:v3];
}

@end