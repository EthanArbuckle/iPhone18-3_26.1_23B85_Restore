@interface SFInfoFetchRequest
- (CGSize)iconSize;
@end

@implementation SFInfoFetchRequest

- (CGSize)iconSize
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end