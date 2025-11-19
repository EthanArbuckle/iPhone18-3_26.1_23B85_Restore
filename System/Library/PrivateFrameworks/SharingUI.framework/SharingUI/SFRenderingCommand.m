@interface SFRenderingCommand
- (CGSize)contextSize;
@end

@implementation SFRenderingCommand

- (CGSize)contextSize
{
  width = self->_contextSize.width;
  height = self->_contextSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end