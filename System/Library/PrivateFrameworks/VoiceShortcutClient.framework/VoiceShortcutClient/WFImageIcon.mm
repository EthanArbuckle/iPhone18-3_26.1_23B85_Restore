@interface WFImageIcon
- (BOOL)isEqual:(id)equal;
- (WFImageIcon)initWithCoder:(id)coder;
- (WFImageIcon)initWithImage:(id)image;
@end

@implementation WFImageIcon

- (WFImageIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];

  v6 = [(WFImageIcon *)self initWithImage:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    image = [(WFImageIcon *)self image];
    image2 = [equalCopy image];
    v7 = image;
    v8 = image2;
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

- (WFImageIcon)initWithImage:(id)image
{
  imageCopy = image;
  if (!imageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFIcon.m" lineNumber:264 description:{@"Invalid parameter not satisfying: %@", @"image"}];
  }

  v12.receiver = self;
  v12.super_class = WFImageIcon;
  _init = [(WFIcon *)&v12 _init];
  v8 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, image);
    v9 = v8;
  }

  return v8;
}

@end