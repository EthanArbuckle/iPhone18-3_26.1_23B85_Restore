@interface MRSlideInfo
- (CGPoint)center;
- (void)dealloc;
@end

@implementation MRSlideInfo

- (void)dealloc
{
  self->_assetPath = 0;
  v3.receiver = self;
  v3.super_class = MRSlideInfo;
  [(MRSlideInfo *)&v3 dealloc];
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

@end