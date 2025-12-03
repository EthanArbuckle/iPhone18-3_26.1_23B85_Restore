@interface SBBannerUnfurlSourceContext
- (CGPoint)referenceVelocity;
- (CGRect)referenceCoordinateSpaceBounds;
- (CGRect)referenceFrame;
- (id)_copyWithClass:(Class)class;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation SBBannerUnfurlSourceContext

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SBBannerUnfurlSourceContext *)self _copyWithClass:v4];
}

- (id)_copyWithClass:(Class)class
{
  result = objc_alloc_init(class);
  if (result)
  {
    *(result + 1) = *&self->_cornerRadius;
    size = self->_referenceCoordinateSpaceBounds.size;
    *(result + 1) = self->_referenceCoordinateSpaceBounds.origin;
    *(result + 2) = size;
    v6 = self->_referenceFrame.size;
    *(result + 3) = self->_referenceFrame.origin;
    *(result + 4) = v6;
    *(result + 5) = self->_referenceVelocity;
  }

  return result;
}

- (CGRect)referenceCoordinateSpaceBounds
{
  x = self->_referenceCoordinateSpaceBounds.origin.x;
  y = self->_referenceCoordinateSpaceBounds.origin.y;
  width = self->_referenceCoordinateSpaceBounds.size.width;
  height = self->_referenceCoordinateSpaceBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)referenceFrame
{
  x = self->_referenceFrame.origin.x;
  y = self->_referenceFrame.origin.y;
  width = self->_referenceFrame.size.width;
  height = self->_referenceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)referenceVelocity
{
  x = self->_referenceVelocity.x;
  y = self->_referenceVelocity.y;
  result.y = y;
  result.x = x;
  return result;
}

@end