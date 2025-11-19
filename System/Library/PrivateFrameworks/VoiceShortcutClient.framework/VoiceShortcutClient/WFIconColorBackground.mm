@interface WFIconColorBackground
+ (WFIconColorBackground)clearBackground;
- (BOOL)isEqual:(id)a3;
- (WFIconColorBackground)initWithCoder:(id)a3;
- (WFIconColorBackground)initWithColor:(id)a3 blendMode:(int64_t)a4;
@end

@implementation WFIconColorBackground

+ (WFIconColorBackground)clearBackground
{
  v2 = [WFIconColorBackground alloc];
  v3 = +[WFColor clearColor];
  v4 = [(WFIconColorBackground *)v2 initWithColor:v3];

  return v4;
}

- (WFIconColorBackground)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];

  v6 = [(WFIconColorBackground *)self initWithColor:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFIconColorBackground *)self color];
    v6 = [v4 color];
    v7 = v5;
    v8 = v6;
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

- (WFIconColorBackground)initWithColor:(id)a3 blendMode:(int64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFIconBackground.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"color"}];
  }

  v14.receiver = self;
  v14.super_class = WFIconColorBackground;
  v9 = [(WFIconBackground *)&v14 _init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 1, a3);
    v10->_blendMode = a4;
    v11 = v10;
  }

  return v10;
}

@end