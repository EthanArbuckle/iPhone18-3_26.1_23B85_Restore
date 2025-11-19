@interface WFImageIcon
- (BOOL)isEqual:(id)a3;
- (WFImageIcon)initWithCoder:(id)a3;
- (WFImageIcon)initWithImage:(id)a3;
@end

@implementation WFImageIcon

- (WFImageIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];

  v6 = [(WFImageIcon *)self initWithImage:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFImageIcon *)self image];
    v6 = [v4 image];
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

- (WFImageIcon)initWithImage:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFIcon.m" lineNumber:264 description:{@"Invalid parameter not satisfying: %@", @"image"}];
  }

  v12.receiver = self;
  v12.super_class = WFImageIcon;
  v7 = [(WFIcon *)&v12 _init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 1, a3);
    v9 = v8;
  }

  return v8;
}

@end