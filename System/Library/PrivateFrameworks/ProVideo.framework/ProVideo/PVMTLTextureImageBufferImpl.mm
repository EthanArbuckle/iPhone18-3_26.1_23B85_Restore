@interface PVMTLTextureImageBufferImpl
- (CGSize)size;
- (HGRef<HGBitmap>)hgBitmapWithColorSpace:(id)space;
- (PVMTLTextureImageBufferImpl)initWithMTLTexture:(id)texture;
@end

@implementation PVMTLTextureImageBufferImpl

- (PVMTLTextureImageBufferImpl)initWithMTLTexture:(id)texture
{
  textureCopy = texture;
  v9.receiver = self;
  v9.super_class = PVMTLTextureImageBufferImpl;
  v6 = [(PVMTLTextureImageBufferImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mtlTexture, texture);
  }

  return v7;
}

- (HGRef<HGBitmap>)hgBitmapWithColorSpace:(id)space
{
  v4 = v3;
  v5 = HGMetalTexture::createFromTexture(self->_mtlTexture, &v6);
  *v4 = v6;
  return v5;
}

- (CGSize)size
{
  width = [(MTLTexture *)self->_mtlTexture width];
  height = [(MTLTexture *)self->_mtlTexture height];
  v5 = width;
  result.height = height;
  result.width = v5;
  return result;
}

@end