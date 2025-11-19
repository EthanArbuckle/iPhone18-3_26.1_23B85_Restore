@interface PVMTLTextureImageBufferImpl
- (CGSize)size;
- (HGRef<HGBitmap>)hgBitmapWithColorSpace:(id)a3;
- (PVMTLTextureImageBufferImpl)initWithMTLTexture:(id)a3;
@end

@implementation PVMTLTextureImageBufferImpl

- (PVMTLTextureImageBufferImpl)initWithMTLTexture:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PVMTLTextureImageBufferImpl;
  v6 = [(PVMTLTextureImageBufferImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mtlTexture, a3);
  }

  return v7;
}

- (HGRef<HGBitmap>)hgBitmapWithColorSpace:(id)a3
{
  v4 = v3;
  v5 = HGMetalTexture::createFromTexture(self->_mtlTexture, &v6);
  *v4 = v6;
  return v5;
}

- (CGSize)size
{
  v3 = [(MTLTexture *)self->_mtlTexture width];
  v4 = [(MTLTexture *)self->_mtlTexture height];
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

@end