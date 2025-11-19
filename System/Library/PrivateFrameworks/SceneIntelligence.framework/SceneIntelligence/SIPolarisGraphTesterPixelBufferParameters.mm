@interface SIPolarisGraphTesterPixelBufferParameters
- (id)streamFromParameters;
@end

@implementation SIPolarisGraphTesterPixelBufferParameters

- (id)streamFromParameters
{
  v7 = vdupq_n_s64(1uLL);
  if (!self->_use384Stride && !self->_use1024Stride)
  {
    format = self->_format;
    goto LABEL_9;
  }

  format = self->_format;
  if (format != 875836518)
  {
LABEL_9:
    v5 = [MEMORY[0x277D3E680] cvPixelStreamWithResourceKey:self->_resourceKey options:&v7 width:self->_width height:self->_height pixelFormat:format];
    goto LABEL_10;
  }

  if (self->_use384Stride)
  {
    v4 = yuv444_camera_resource_buffer_allocator;
  }

  else
  {
    v4 = thm_camera_resource_buffer_allocator;
  }

  v7.i64[1] = 2;
  v5 = [MEMORY[0x277D3E680] cvPixelStreamWithResourceKey:self->_resourceKey options:&v7 allocator:v4 deallocator:deallocator_0];
  [v5 setWidth:{-[SIPolarisGraphTesterPixelBufferParameters width](self, "width", v7.i64[0])}];
  [v5 setHeight:{-[SIPolarisGraphTesterPixelBufferParameters height](self, "height")}];
  [v5 setPixelFormat:875836518];
LABEL_10:
  if (self->_metadataIOSurfaceProperties)
  {
    [v5 setProvider:10];
    [v5 setMetadataIOSurfaceProperties:self->_metadataIOSurfaceProperties];
  }

  return v5;
}

@end