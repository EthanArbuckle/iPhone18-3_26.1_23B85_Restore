@interface SVImageLayer
- (void)setImage:(id)image;
@end

@implementation SVImageLayer

- (void)setImage:(id)image
{
  objc_storeStrong(&self->_image, image);
  imageCopy = image;
  v5 = imageCopy;
  -[SVImageLayer setContents:](self, "setContents:", [imageCopy CGImage]);
  if (imageCopy)
  {
    identifier = self->_identifier;
  }

  else
  {
    identifier = 0;
  }

  objc_storeStrong(&self->_identifier, identifier);
}

@end