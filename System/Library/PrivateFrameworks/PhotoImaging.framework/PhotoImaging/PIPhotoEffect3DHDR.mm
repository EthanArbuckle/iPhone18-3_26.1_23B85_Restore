@interface PIPhotoEffect3DHDR
- (void)configureFilter:(id)a3;
@end

@implementation PIPhotoEffect3DHDR

- (void)configureFilter:(id)a3
{
  v7 = a3;
  *&v4 = self->_inputThreshold;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v7 setValue:v5 forKey:@"inputThreshold"];

  inputDepthMap = self->_inputDepthMap;
  if (inputDepthMap)
  {
    [v7 setValue:inputDepthMap forKey:@"inputDepthMap"];
  }
}

@end