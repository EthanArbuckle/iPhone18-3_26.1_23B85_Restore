@interface UITextFieldLabel
+ (id)_defaultAttributes;
+ (id)defaultFont;
- (void)_defaultDrawTextInRect:(CGRect)rect;
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation UITextFieldLabel

+ (id)defaultFont
{
  [off_1E70ECC18 defaultFontSize];

  return [off_1E70ECC18 systemFontOfSize:?];
}

+ (id)_defaultAttributes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__UITextFieldLabel__defaultAttributes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_1317 != -1)
  {
    dispatch_once(&_MergedGlobals_1317, block);
  }

  v2 = qword_1ED4A2140;

  return v2;
}

void __38__UITextFieldLabel__defaultAttributes__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___UITextFieldLabel;
  v1 = objc_msgSendSuper2(&v3, sel__defaultAttributes);
  v2 = qword_1ED4A2140;
  qword_1ED4A2140 = v1;
}

- (void)_defaultDrawTextInRect:(CGRect)rect
{
  v3.receiver = self;
  v3.super_class = UITextFieldLabel;
  [(UILabel *)&v3 drawTextInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
}

- (void)drawTextInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  superview = selfCopy;
  while (1)
  {
    v9 = superview;
    superview = [superview superview];

    if (!superview)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [superview _drawTextInRect:selfCopy forLabel:{x, y, width, height}];
      goto LABEL_7;
    }
  }

  if ([(UITextFieldLabel *)selfCopy shouldRenderWithoutTextField])
  {
    v10.receiver = selfCopy;
    v10.super_class = UITextFieldLabel;
    [(UILabel *)&v10 drawTextInRect:x, y, width, height];
  }

LABEL_7:
}

@end