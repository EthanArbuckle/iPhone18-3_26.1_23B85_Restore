@interface WFIconColorBackground
+ (WFIconColorBackground)clearBackground;
- (BOOL)isEqual:(id)equal;
- (WFIconColorBackground)initWithCoder:(id)coder;
- (WFIconColorBackground)initWithColor:(id)color blendMode:(int64_t)mode;
@end

@implementation WFIconColorBackground

+ (WFIconColorBackground)clearBackground
{
  v2 = [WFIconColorBackground alloc];
  v3 = +[WFColor clearColor];
  v4 = [(WFIconColorBackground *)v2 initWithColor:v3];

  return v4;
}

- (WFIconColorBackground)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];

  v6 = [(WFIconColorBackground *)self initWithColor:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    color = [(WFIconColorBackground *)self color];
    color2 = [equalCopy color];
    v7 = color;
    v8 = color2;
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v7 && v8)
      {
        v10 = [v7 isEqual:v8];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (WFIconColorBackground)initWithColor:(id)color blendMode:(int64_t)mode
{
  colorCopy = color;
  if (!colorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFIconBackground.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"color"}];
  }

  v14.receiver = self;
  v14.super_class = WFIconColorBackground;
  _init = [(WFIconBackground *)&v14 _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, color);
    v10->_blendMode = mode;
    v11 = v10;
  }

  return v10;
}

@end