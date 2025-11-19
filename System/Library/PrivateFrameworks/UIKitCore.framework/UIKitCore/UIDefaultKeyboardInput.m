@interface UIDefaultKeyboardInput
- (CGRect)caretRect;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)firstRectForRange:(id)a3;
- (_NSRange)selectionRange;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)textInputTraits;
- (void)forwardInvocation:(id)a3;
- (void)takeTraitsFrom:(id)a3;
@end

@implementation UIDefaultKeyboardInput

- (id)textInputTraits
{
  m_traits = self->m_traits;
  if (!m_traits)
  {
    v4 = objc_alloc_init(UITextInputTraits);
    v5 = self->m_traits;
    self->m_traits = v4;

    m_traits = self->m_traits;
  }

  return m_traits;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = [(UIDefaultKeyboardInput *)self textInputTraits];
  [v4 selector];
  if (objc_opt_respondsToSelector())
  {
    [v4 invokeWithTarget:v5];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIDefaultKeyboardInput;
    [(UIDefaultKeyboardInput *)&v6 forwardInvocation:v4];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  }

  v7 = v6;

  return v7;
}

- (void)takeTraitsFrom:(id)a3
{
  v4 = a3;
  v5 = [(UIDefaultKeyboardInput *)self textInputTraits];
  [v5 takeTraitsFrom:v4];
}

- (_NSRange)selectionRange
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (CGRect)caretRect
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)firstRectForRange:(id)a3
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)caretRectForPosition:(id)a3
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end