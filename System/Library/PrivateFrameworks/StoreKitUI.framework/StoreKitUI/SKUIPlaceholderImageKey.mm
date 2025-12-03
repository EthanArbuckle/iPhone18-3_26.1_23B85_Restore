@interface SKUIPlaceholderImageKey
- (BOOL)isEqual:(id)equal;
- (SKUIPlaceholderImageKey)initWithSize:(CGSize)size imageTreatment:(int64_t)treatment placeholderBackgroundColor:(id)color;
- (id)description;
@end

@implementation SKUIPlaceholderImageKey

- (SKUIPlaceholderImageKey)initWithSize:(CGSize)size imageTreatment:(int64_t)treatment placeholderBackgroundColor:(id)color
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = SKUIPlaceholderImageKey;
  v11 = [(SKUIPlaceholderImageKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_height = height;
    v11->_imageTreatment = treatment;
    v11->_width = width;
    objc_storeStrong(&v11->_placeholderBackgroundColor, color);
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && self->_height == equalCopy[1] && self->_width == equalCopy[3] && self->_imageTreatment == equalCopy[2])
  {
    placeholderBackgroundColor = self->_placeholderBackgroundColor;
    if (placeholderBackgroundColor == equalCopy[4])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(IKColor *)placeholderBackgroundColor isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SKUIPlaceholderImageKey;
  v4 = [(SKUIPlaceholderImageKey *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: {%ld, %ld}, %ld, %@", v4, self->_width, self->_height, self->_imageTreatment, self->_placeholderBackgroundColor];

  return v5;
}

@end