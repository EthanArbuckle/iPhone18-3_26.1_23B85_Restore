@interface TIKeyboardInputManagerCangjie_zh
- (void)initImplementation;
@end

@implementation TIKeyboardInputManagerCangjie_zh

- (void)initImplementation
{
  v2 = *MEMORY[0x29EDC7190];
  v3 = *MEMORY[0x29EDC71B8];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerCangjie_zh;
  return [(TIKeyboardInputManagerChinese *)&v5 initImplementationWithMode:v2 andLanguage:v3];
}

@end