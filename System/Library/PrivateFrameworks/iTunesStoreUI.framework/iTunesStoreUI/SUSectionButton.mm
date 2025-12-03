@interface SUSectionButton
- (SUSectionButton)initWithSectionButtonDictionary:(id)dictionary;
- (UIEdgeInsets)imageInsets;
- (id)copyWithZone:(_NSZone *)zone;
- (void)applyToBarButtonItem:(id)item;
- (void)dealloc;
@end

@implementation SUSectionButton

- (SUSectionButton)initWithSectionButtonDictionary:(id)dictionary
{
  v20.receiver = self;
  v20.super_class = SUSectionButton;
  v4 = [(SUSectionButton *)&v20 init];
  if (v4)
  {
    v5 = [dictionary objectForKey:@"accessibility-title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_accessibilityTitle = v5;
    }

    v6 = [dictionary objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_displayTitle = v6;
    }

    v7 = [dictionary objectForKey:@"tag"];
    if (objc_opt_respondsToSelector())
    {
      v4->_tag = [v7 integerValue];
    }

    v8 = [dictionary objectForKey:@"inset-bottom"];
    if (objc_opt_respondsToSelector())
    {
      [v8 floatValue];
      v4->_imageInsets.bottom = v9;
    }

    v10 = [dictionary objectForKey:@"inset-left"];
    if (objc_opt_respondsToSelector())
    {
      [v10 floatValue];
      v4->_imageInsets.left = v11;
    }

    v12 = [dictionary objectForKey:@"inset-right"];
    if (objc_opt_respondsToSelector())
    {
      [v12 floatValue];
      v4->_imageInsets.right = v13;
    }

    v14 = [dictionary objectForKey:@"inset-top"];
    if (objc_opt_respondsToSelector())
    {
      [v14 floatValue];
      v4->_imageInsets.top = v15;
    }

    [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    if (v16 == 2.0)
    {
      v17 = [dictionary objectForKey:@"image-url@2x"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4->_imageURL = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v17];
        v4->_imageURLScale = 2.0;
      }
    }

    if (!v4->_imageURL)
    {
      v18 = [dictionary objectForKey:@"image-url"];
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

- (void)applyToBarButtonItem:(id)item
{
  [item setAccessibilityLabel:{-[SUSectionButton accessibilityTitle](self, "accessibilityTitle")}];
  [(SUSectionButton *)self imageInsets];
  [item setImageInsets:?];
  image = [(SUSectionButton *)self image];
  if (image)
  {
    [item setImage:image];
  }

  else
  {
    [item setTitle:{-[SUSectionButton displayTitle](self, "displayTitle")}];
  }

  v6 = [(SUSectionButton *)self tag];

  [item setTag:v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = [(NSString *)self->_accessibilityTitle copyWithZone:zone];
  *(v5 + 16) = [(NSString *)self->_displayTitle copyWithZone:zone];
  *(v5 + 24) = self->_image;
  v6 = *&self->_imageInsets.bottom;
  *(v5 + 32) = *&self->_imageInsets.top;
  *(v5 + 48) = v6;
  *(v5 + 64) = [(NSURL *)self->_imageURL copyWithZone:zone];
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