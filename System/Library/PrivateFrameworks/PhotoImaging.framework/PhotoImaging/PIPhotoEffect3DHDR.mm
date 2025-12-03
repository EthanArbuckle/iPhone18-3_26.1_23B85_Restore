@interface PIPhotoEffect3DHDR
- (void)configureFilter:(id)filter;
@end

@implementation PIPhotoEffect3DHDR

- (void)configureFilter:(id)filter
{
  filterCopy = filter;
  *&v4 = self->_inputThreshold;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [filterCopy setValue:v5 forKey:@"inputThreshold"];

  inputDepthMap = self->_inputDepthMap;
  if (inputDepthMap)
  {
    [filterCopy setValue:inputDepthMap forKey:@"inputDepthMap"];
  }
}

@end