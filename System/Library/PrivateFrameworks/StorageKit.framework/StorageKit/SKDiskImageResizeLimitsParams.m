@interface SKDiskImageResizeLimitsParams
- (SKDiskImageResizeLimitsParams)init;
@end

@implementation SKDiskImageResizeLimitsParams

- (SKDiskImageResizeLimitsParams)init
{
  v3.receiver = self;
  v3.super_class = SKDiskImageResizeLimitsParams;
  result = [(SKDiskImageResizeLimitsParams *)&v3 init];
  if (result)
  {
    *&result->_stdinPassPhrase = 0;
  }

  return result;
}

@end