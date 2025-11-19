@interface SUSectionButton
- (SUSectionButton)initWithSectionButtonDictionary:(id)a3;
- (UIEdgeInsets)imageInsets;
- (id)copyWithZone:(_NSZone *)a3;
- (void)applyToBarButtonItem:(id)a3;
- (void)dealloc;
@end

@implementation SUSectionButton

- (SUSectionButton)initWithSectionButtonDictionary:(id)a3
{
  v20.receiver = self;
  v20.super_class = SUSectionButton;
  v4 = [(SUSectionButton *)&v20 init];
  if (v4)
  {
    v5 = [a3 objectForKey:@"accessibility-title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_accessibilityTitle = v5;
    }

    v6 = [a3 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_displayTitle = v6;
    }

    v7 = [a3 objectForKey:@"tag"];
    if (objc_opt_respondsToSelector())
    {
      v4->_tag = [v7 integerValue];
    }

    v8 = [a3 objectForKey:@"inset-bottom"];
    if (objc_opt_respondsToSelector())
    {
      [v8 floatValue];
      v4->_imageInsets.bottom = v9;
    }

    v10 = [a3 objectForKey:@"inset-left"];
    if (objc_opt_respondsToSelector())
    {
      [v10 floatValue];
      v4->_imageInsets.left = v11;
    }

    v12 = [a3 objectForKey:@"inset-right"];
    if (objc_opt_respondsToSelector())
    {
      [v12 floatValue];
      v4->_imageInsets.right = v13;
    }

    v14 = [a3 objectForKey:@"inset-top"];
    if (objc_opt_respondsToSelector())
    {
      [v14 floatValue];
      v4->_imageInsets.top = v15;
    }

    [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    if (v16 == 2.0)
    {
      v17 = [a3 objectForKey:@"image-url@2x"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4->_imageURL = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v17];
        v4->_imageURLScale = 2.0;
      }
    }

    if (!v4->_imageURL)
    {
      v18 = [a3 objectForKey:@"image-url"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4->_imageURL = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v18];
      }

      v4->_imageURLScale = 1.0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUSectionButton;
  [(SUSectionButton *)&v3 dealloc];
}

- (void)applyToBarButtonItem:(id)a3
{
  [a3 setAccessibilityLabel:{-[SUSectionButton accessibilityTitle](self, "accessibilityTitle")}];
  [(SUSectionButton *)self imageInsets];
  [a3 setImageInsets:?];
  v5 = [(SUSectionButton *)self image];
  if (v5)
  {
    [a3 setImage:v5];
  }

  else
  {
    [a3 setTitle:{-[SUSectionButton displayTitle](self, "displayTitle")}];
  }

  v6 = [(SUSectionButton *)self tag];

  [a3 setTag:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = [(NSString *)self->_accessibilityTitle copyWithZone:a3];
  *(v5 + 16) = [(NSString *)self->_displayTitle copyWithZone:a3];
  *(v5 + 24) = self->_image;
  v6 = *&self->_imageInsets.bottom;
  *(v5 + 32) = *&self->_imageInsets.top;
  *(v5 + 48) = v6;
  *(v5 + 64) = [(NSURL *)self->_imageURL copyWithZone:a3];
  *(v5 + 72) = self->_imageURLScale;
  *(v5 + 80) = self->_tag;
  return v5;
}

- (UIEdgeInsets)imageInsets
{
  top = self->_imageInsets.top;
  left = self->_imageInsets.left;
  bottom = self->_imageInsets.bottom;
  right = self->_imageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end