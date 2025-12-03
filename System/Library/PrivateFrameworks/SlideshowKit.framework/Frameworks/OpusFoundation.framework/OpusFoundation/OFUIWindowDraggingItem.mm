@interface OFUIWindowDraggingItem
- (CGAffineTransform)originalTransform;
- (CGRect)imageContentsRect;
- (CGRect)originalBounds;
- (OFUIWindowDraggingItem)init;
- (OFUIWindowDraggingItem)initWithObject:(id)object image:(id)image;
- (void)dealloc;
- (void)setOriginalTransform:(CGAffineTransform *)transform;
@end

@implementation OFUIWindowDraggingItem

- (OFUIWindowDraggingItem)init
{
  v8.receiver = self;
  v8.super_class = OFUIWindowDraggingItem;
  result = [(OFUIWindowDraggingItem *)&v8 init];
  if (result)
  {
    *&result->_originalImage = 0u;
    v3 = MEMORY[0x277CBF3A0];
    *&result->_object = 0u;
    v4 = *v3;
    v5 = *(v3 + 16);
    result->_originalBounds.origin = *v3;
    result->_originalBounds.size = v5;
    result->_imageAspectRatio = 0.0;
    result->_imageContentsRect.origin = v4;
    result->_imageContentsRect.size = v5;
    v6 = MEMORY[0x277CBF2C0];
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    *&result->_originalTransform.a = *MEMORY[0x277CBF2C0];
    *&result->_originalTransform.c = v7;
    *&result->_originalTransform.tx = *(v6 + 32);
    result->_isReverting = 0;
    result->_rotation = 0.0;
  }

  return result;
}

- (OFUIWindowDraggingItem)initWithObject:(id)object image:(id)image
{
  v6 = [(OFUIWindowDraggingItem *)self init];
  v7 = v6;
  if (v6)
  {
    [(OFUIWindowDraggingItem *)v6 setObject:object];
    v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:image];
    v7->_imageView = v8;
    [(UIImageView *)v8 setContentMode:0];
    [(UIImageView *)v7->_imageView setUserInteractionEnabled:0];
    [(UIImageView *)v7->_imageView setClipsToBounds:0];
    [(UIImageView *)v7->_imageView setOpaque:1];
    [-[UIImageView layer](v7->_imageView "layer")];
    [-[UIImageView layer](v7->_imageView "layer")];
    [-[UIImageView layer](v7->_imageView "layer")];
    [-[UIImageView layer](v7->_imageView "layer")];
    [-[UIImageView layer](v7->_imageView "layer")];
    v9 = (arc4random() % 0xB);
    if (arc4random())
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }

    v7->_rotation = v9 * v10;
  }

  return v7;
}

- (void)dealloc
{
  object = self->_object;
  if (object)
  {

    self->_object = 0;
  }

  imageView = self->_imageView;
  if (imageView)
  {

    self->_imageView = 0;
  }

  originalImage = self->_originalImage;
  if (originalImage)
  {

    self->_originalImage = 0;
  }

  placeHolderImage = self->_placeHolderImage;
  if (placeHolderImage)
  {

    self->_placeHolderImage = 0;
  }

  v7.receiver = self;
  v7.super_class = OFUIWindowDraggingItem;
  [(OFUIWindowDraggingItem *)&v7 dealloc];
}

- (CGRect)originalBounds
{
  x = self->_originalBounds.origin.x;
  y = self->_originalBounds.origin.y;
  width = self->_originalBounds.size.width;
  height = self->_originalBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)imageContentsRect
{
  x = self->_imageContentsRect.origin.x;
  y = self->_imageContentsRect.origin.y;
  width = self->_imageContentsRect.size.width;
  height = self->_imageContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)originalTransform
{
  v3 = *&self[2].tx;
  *&retstr->a = *&self[2].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].a;
  return self;
}

- (void)setOriginalTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_originalTransform.c = *&transform->c;
  *&self->_originalTransform.tx = v4;
  *&self->_originalTransform.a = v3;
}

@end