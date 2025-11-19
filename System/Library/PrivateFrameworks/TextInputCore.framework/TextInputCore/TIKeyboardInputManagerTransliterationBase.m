@interface TIKeyboardInputManagerTransliterationBase
- (void)initImplementation;
@end

@implementation TIKeyboardInputManagerTransliterationBase

- (void)initImplementation
{
  if (!self->super.m_impl)
  {
    operator new();
  }

  return self->super.m_impl;
}

@end