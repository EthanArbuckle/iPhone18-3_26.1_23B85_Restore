@interface UITextFieldLabel
+ (id)_defaultAttributes;
+ (id)defaultFont;
- (void)_defaultDrawTextInRect:(CGRect)a3;
- (void)drawTextInRect:(CGRect)a3;
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
  block[4] = a1;
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

- (void)_defaultDrawTextInRect:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = UITextFieldLabel;
  [(UILabel *)&v3 drawTextInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = v7;
  while (1)
  {
    v9 = v8;
    v8 = [v8 superview];

    if (!v8)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 _drawTextInRect:v7 forLabel:{x, y, width, height}];
      goto LABEL_7;
    }
  }

  if ([(UITextFieldLabel *)v7 shouldRenderWithoutTextField])
  {
    v10.receiver = v7;
    v10.super_class = UITextFieldLabel;
    [(UILabel *)&v10 drawTextInRect:x, y, width, height];
  }

LABEL_7:
}

@end