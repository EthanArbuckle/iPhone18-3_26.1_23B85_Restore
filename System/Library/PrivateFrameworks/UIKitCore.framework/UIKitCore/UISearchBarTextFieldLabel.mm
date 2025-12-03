@interface UISearchBarTextFieldLabel
+ (id)_defaultAttributes;
- (void)setFrame:(CGRect)frame;
@end

@implementation UISearchBarTextFieldLabel

+ (id)_defaultAttributes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__UISearchBarTextFieldLabel__defaultAttributes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_27 != -1)
  {
    dispatch_once(&_MergedGlobals_27, block);
  }

  v2 = qword_1ED49A440;

  return v2;
}

void __47__UISearchBarTextFieldLabel__defaultAttributes__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___UISearchBarTextFieldLabel;
  v1 = objc_msgSendSuper2(&v3, sel__defaultAttributes);
  v2 = qword_1ED49A440;
  qword_1ED49A440 = v1;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (![(UISearchBarTextFieldLabel *)self ignoresGeometryChanges])
  {
    v8.receiver = self;
    v8.super_class = UISearchBarTextFieldLabel;
    [(UILabel *)&v8 setFrame:x, y, width, height];
  }
}

@end