@interface SKDiskImageResizeParams
- (SKDiskImageResizeParams)initWithSize:(unint64_t)a3;
@end

@implementation SKDiskImageResizeParams

- (SKDiskImageResizeParams)initWithSize:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SKDiskImageResizeParams;
  result = [(SKDiskImageResizeParams *)&v5 init];
  if (result)
  {
    result->_size = (a3 + 4095) & 0xFFFFFFFFFFFFF000;
    *&result->_stdinPassPhrase = 0;
  }

  return result;
}

@end