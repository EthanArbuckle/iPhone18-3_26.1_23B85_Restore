@interface VUIRemoteImageDescriptor
- (CGSize)boundingSize;
- (CGSize)containerSize;
- (CGSize)downloadSize;
- (VUIRemoteImageDescriptor)initWithSrc:(id)a3 size:(CGSize)a4 containerSize:(CGSize)a5;
- (_VUICornerRadii)borderRadii;
@end

@implementation VUIRemoteImageDescriptor

- (VUIRemoteImageDescriptor)initWithSrc:(id)a3 size:(CGSize)a4 containerSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  v11 = a3;
  v16.receiver = self;
  v16.super_class = VUIRemoteImageDescriptor;
  v12 = [(VUIRemoteImageDescriptor *)&v16 init];
  v13 = v12;
  if (!v12 || (*MEMORY[0x277CBF3A8] == v8 ? (v14 = *(MEMORY[0x277CBF3A8] + 8) == v7) : (v14 = 0), v14))
  {

    v13 = 0;
  }

  else
  {
    objc_storeStrong(&v12->_src, a3);
    v13->_boundingSize.width = v8;
    v13->_boundingSize.height = v7;
    v13->_containerSize.width = width;
    v13->_containerSize.height = height;
    v13->_aspectRatio = v8 / v7;
    *&v13->_decoratorType = xmmword_270EA2C30;
    v13->_continuousBorder = 0;
    *&v13->_borderRadii.topLeft = VUICornerRadiiZero;
    *&v13->_borderRadii.bottomLeft = *&qword_270EA2BE8;
    v13->_sizeComputationOnly = 0;
    *&v13->_optimizedImageRendering = 257;
  }

  return v13;
}

- (CGSize)boundingSize
{
  width = self->_boundingSize.width;
  height = self->_boundingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)containerSize
{
  width = self->_containerSize.width;
  height = self->_containerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)downloadSize
{
  width = self->_downloadSize.width;
  height = self->_downloadSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_VUICornerRadii)borderRadii
{
  topLeft = self->_borderRadii.topLeft;
  topRight = self->_borderRadii.topRight;
  bottomLeft = self->_borderRadii.bottomLeft;
  bottomRight = self->_borderRadii.bottomRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topRight = topRight;
  result.topLeft = topLeft;
  return result;
}

@end