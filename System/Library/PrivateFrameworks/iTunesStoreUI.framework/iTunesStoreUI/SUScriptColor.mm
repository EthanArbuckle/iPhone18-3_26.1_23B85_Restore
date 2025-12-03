@interface SUScriptColor
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (CGColor)copyCGColor;
- (SUScriptColor)initWithStyleString:(id)string;
- (SUScriptColor)initWithUIColor:(id)color;
- (UIColor)nativeColor;
- (double)alpha;
- (double)blue;
- (double)green;
- (double)red;
- (id)scriptAttributeKeys;
- (id)stringRepresentation;
- (void)dealloc;
- (void)setHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha;
- (void)setRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (void)setWhite:(double)white alpha:(double)alpha;
@end

@implementation SUScriptColor

- (SUScriptColor)initWithUIColor:(id)color
{
  v6.receiver = self;
  v6.super_class = SUScriptColor;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_color = color;
  }

  return v4;
}

- (SUScriptColor)initWithStyleString:(id)string
{
  v8.receiver = self;
  v8.super_class = SUScriptColor;
  v4 = [(SUScriptObject *)&v8 init];
  if (v4)
  {
    v5 = SUCreateColorFromStyleString(string);
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
  cGColor = [(UIColor *)[(SUScriptColor *)self nativeColor] CGColor];
  v3 = cGColor;
  if (cGColor)
  {
    CGColorRetain(cGColor);
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

- (void)setHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha
{
  [(SUScriptObject *)self lock];

  self->_color = [objc_alloc(MEMORY[0x1E69DC888]) initWithHue:hue saturation:saturation brightness:brightness alpha:alpha];

  [(SUScriptObject *)self unlock];
}

- (void)setRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  [(SUScriptObject *)self lock];

  self->_color = [objc_alloc(MEMORY[0x1E69DC888]) initWithRed:red green:green blue:blue alpha:alpha];

  [(SUScriptObject *)self unlock];
}

- (void)setWhite:(double)white alpha:(double)alpha
{
  [(SUScriptObject *)self lock];

  self->_color = [objc_alloc(MEMORY[0x1E69DC888]) initWithWhite:white alpha:alpha];

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

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_31 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptColor;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_25, 3);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptColor;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptColor;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_31 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
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