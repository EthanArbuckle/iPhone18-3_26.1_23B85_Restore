@interface SUScriptColor
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (CGColor)copyCGColor;
- (SUScriptColor)initWithStyleString:(id)a3;
- (SUScriptColor)initWithUIColor:(id)a3;
- (UIColor)nativeColor;
- (double)alpha;
- (double)blue;
- (double)green;
- (double)red;
- (id)scriptAttributeKeys;
- (id)stringRepresentation;
- (void)dealloc;
- (void)setHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6;
- (void)setRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
- (void)setWhite:(double)a3 alpha:(double)a4;
@end

@implementation SUScriptColor

- (SUScriptColor)initWithUIColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUScriptColor;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_color = a3;
  }

  return v4;
}

- (SUScriptColor)initWithStyleString:(id)a3
{
  v8.receiver = self;
  v8.super_class = SUScriptColor;
  v4 = [(SUScriptObject *)&v8 init];
  if (v4)
  {
    v5 = SUCreateColorFromStyleString(a3);
    if (v5)
    {
      v6 = v5;
      v4->_color = [objc_alloc(MEMORY[0x1E69DC888]) initWithCGColor:v5];
      CGColorRelease(v6);
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptColor;
  [(SUScriptObject *)&v3 dealloc];
}

- (CGColor)copyCGColor
{
  v2 = [(UIColor *)[(SUScriptColor *)self nativeColor] CGColor];
  v3 = v2;
  if (v2)
  {
    CGColorRetain(v2);
  }

  return v3;
}

- (UIColor)nativeColor
{
  [(SUScriptObject *)self lock];
  v3 = self->_color;
  [(SUScriptObject *)self unlock];
  return v3;
}

- (id)stringRepresentation
{
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  [(SUScriptObject *)self lock];
  SUColorGetRGBA([(UIColor *)self->_color CGColor], &v7, &v6, &v5, &v4);
  [(SUScriptObject *)self unlock];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"rgba(%.0f, %.0f, %.0f, %.0f)", v7 * 255.0, v6 * 255.0, v5 * 255.0, v4 * 255.0];
}

- (void)setHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6
{
  [(SUScriptObject *)self lock];

  self->_color = [objc_alloc(MEMORY[0x1E69DC888]) initWithHue:a3 saturation:a4 brightness:a5 alpha:a6];

  [(SUScriptObject *)self unlock];
}

- (void)setRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  [(SUScriptObject *)self lock];

  self->_color = [objc_alloc(MEMORY[0x1E69DC888]) initWithRed:a3 green:a4 blue:a5 alpha:a6];

  [(SUScriptObject *)self unlock];
}

- (void)setWhite:(double)a3 alpha:(double)a4
{
  [(SUScriptObject *)self lock];

  self->_color = [objc_alloc(MEMORY[0x1E69DC888]) initWithWhite:a3 alpha:a4];

  [(SUScriptObject *)self unlock];
}

- (double)alpha
{
  v4 = 0.0;
  [(SUScriptObject *)self lock];
  SUColorGetRGBA([(UIColor *)self->_color CGColor], 0, 0, 0, &v4);
  [(SUScriptObject *)self unlock];
  return v4;
}

- (double)blue
{
  v4 = 0.0;
  [(SUScriptObject *)self lock];
  SUColorGetRGBA([(UIColor *)self->_color CGColor], 0, 0, &v4, 0);
  [(SUScriptObject *)self unlock];
  return v4;
}

- (double)green
{
  v4 = 0.0;
  [(SUScriptObject *)self lock];
  SUColorGetRGBA([(UIColor *)self->_color CGColor], 0, &v4, 0, 0);
  [(SUScriptObject *)self unlock];
  return v4;
}

- (double)red
{
  v4 = 0.0;
  [(SUScriptObject *)self lock];
  SUColorGetRGBA([(UIColor *)self->_color CGColor], &v4, 0, 0, 0);
  [(SUScriptObject *)self unlock];
  return v4;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_31 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptColor;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_25, 3);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptColor;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptColor;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_31 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_25 = sel_setHue_saturation_brightness_alpha_;
    unk_1EBF3AED0 = @"setHSBA";
    qword_1EBF3AED8 = sel_setRed_green_blue_alpha_;
    unk_1EBF3AEE0 = @"setRGBA";
    qword_1EBF3AEE8 = sel_setWhite_alpha_;
    unk_1EBF3AEF0 = @"setWhite";
    __KeyMapping_31 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"alpha", @"blue", @"blue", @"green", @"green", @"red", @"red", 0}];
  }
}

@end