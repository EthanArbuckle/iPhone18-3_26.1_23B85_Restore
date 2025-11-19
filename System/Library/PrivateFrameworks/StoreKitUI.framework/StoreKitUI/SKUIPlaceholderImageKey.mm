@interface SKUIPlaceholderImageKey
- (BOOL)isEqual:(id)a3;
- (SKUIPlaceholderImageKey)initWithSize:(CGSize)a3 imageTreatment:(int64_t)a4 placeholderBackgroundColor:(id)a5;
- (id)description;
@end

@implementation SKUIPlaceholderImageKey

- (SKUIPlaceholderImageKey)initWithSize:(CGSize)a3 imageTreatment:(int64_t)a4 placeholderBackgroundColor:(id)a5
{
  height = a3.height;
  width = a3.width;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SKUIPlaceholderImageKey;
  v11 = [(SKUIPlaceholderImageKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_height = height;
    v11->_imageTreatment = a4;
    v11->_width = width;
    objc_storeStrong(&v11->_placeholderBackgroundColor, a5);
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && self->_height == v4[1] && self->_width == v4[3] && self->_imageTreatment == v4[2])
  {
    placeholderBackgroundColor = self->_placeholderBackgroundColor;
    if (placeholderBackgroundColor == v4[4])
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