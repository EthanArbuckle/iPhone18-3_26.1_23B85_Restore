@interface SKDiskImageResizeParams
- (SKDiskImageResizeParams)initWithSize:(unint64_t)size;
@end

@implementation SKDiskImageResizeParams

- (SKDiskImageResizeParams)initWithSize:(unint64_t)size
{
  v5.receiver = self;
  v5.super_class = SKDiskImageResizeParams;
  result = [(SKDiskImageResizeParams *)&v5 init];
  if (result)
  {
    result->_size = (size + 4095) & 0xFFFFFFFFFFFFF000;
    *&result->_stdinPassPhrase = 0;
  }

  return result;
}

@end