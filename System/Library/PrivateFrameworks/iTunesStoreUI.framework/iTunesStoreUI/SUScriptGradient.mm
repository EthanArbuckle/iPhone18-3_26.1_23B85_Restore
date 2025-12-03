@interface SUScriptGradient
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSString)type;
- (SUScriptGradient)initWithGradient:(id)gradient;
- (id)copyNativeGradient;
- (id)initLinearGradientWithX0:(double)x0 y0:(double)y0 x1:(double)x1 y1:(double)y1;
- (id)initRadialGraidentWithX0:(double)x0 y0:(double)y0 r0:(double)r0 x1:(double)x1 y1:(double)y1 r1:(double)r1;
- (id)patternColorWithWidth:(double)width height:(double)height opaque:(BOOL)opaque;
- (id)scriptAttributeKeys;
- (void)addColorStopWithOffset:(double)offset color:(id)color;
- (void)dealloc;
@end

@implementation SUScriptGradient

- (id)initLinearGradientWithX0:(double)x0 y0:(double)y0 x1:(double)x1 y1:(double)y1
{
  v12.receiver = self;
  v12.super_class = SUScriptGradient;
  v10 = [(SUScriptObject *)&v12 init];
  if (v10)
  {
    v10->_nativeGradient = [[SUGradient alloc] initWithPoint0:0 point1:x0 type:y0, 0.0, x1, y1, 0.0];
  }

  return v10;
}

- (id)initRadialGraidentWithX0:(double)x0 y0:(double)y0 r0:(double)r0 x1:(double)x1 y1:(double)y1 r1:(double)r1
{
  v16.receiver = self;
  v16.super_class = SUScriptGradient;
  v14 = [(SUScriptObject *)&v16 init];
  if (v14)
  {
    v14->_nativeGradient = [[SUGradient alloc] initWithPoint0:1 point1:x0 type:y0, r0, x1, y1, r1];
  }

  return v14;
}

- (SUScriptGradient)initWithGradient:(id)gradient
{
  v6.receiver = self;
  v6.super_class = SUScriptGradient;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_nativeGradient = gradient;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptGradient;
  [(SUScriptObject *)&v3 dealloc];
}

- (id)copyNativeGradient
{
  [(SUScriptObject *)self lock];
  v3 = self->_nativeGradient;
  [(SUScriptObject *)self unlock];
  return v3;
}

- (void)addColorStopWithOffset:(double)offset color:(id)color
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    colorCopy = color;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      color = [[SUScriptColor alloc] initWithStyleString:color];
    }

    [(SUScriptObject *)self lock];
    -[SUGradient addColorStopWithOffset:color:](self->_nativeGradient, "addColorStopWithOffset:color:", [objc_msgSend(color "nativeColor")], offset);
    [(SUScriptObject *)self unlock];
  }

  else
  {
    v7 = MEMORY[0x1E69E2F88];

    [v7 throwException:@"Invalid argument"];
  }
}

- (id)patternColorWithWidth:(double)width height:(double)height opaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  [(SUScriptObject *)self lock];
  height = [(SUGradient *)self->_nativeGradient newPatternColorWithSize:opaqueCopy opaque:width, height];
  [(SUScriptObject *)self unlock];
  if (height)
  {
    v10 = [[SUScriptColor alloc] initWithUIColor:height];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)type
{
  [(SUScriptObject *)self lock];
  if ([(SUGradient *)self->_nativeGradient gradientType]== 1)
  {
    v3 = @"radial";
  }

  else
  {
    v3 = @"linear";
  }

  [(SUScriptObject *)self unlock];
  return &v3->isa;
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_32 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptGradient;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_26, 2);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptGradient;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptGradient;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_32 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_26 = sel_addColorStopWithOffset_color_;
    *algn_1EBF3AF08 = @"addColorStop";
    qword_1EBF3AF10 = sel_patternColorWithWidth_height_opaque_;
    unk_1EBF3AF18 = @"getPatternColor";
    __KeyMapping_32 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"type", 0}];
  }
}

@end