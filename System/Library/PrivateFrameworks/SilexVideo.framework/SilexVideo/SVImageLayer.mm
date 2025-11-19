@interface SVImageLayer
- (void)setImage:(id)a3;
@end

@implementation SVImageLayer

- (void)setImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);
  v7 = a3;
  v5 = v7;
  -[SVImageLayer setContents:](self, "setContents:", [v7 CGImage]);
  if (v7)
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