@interface SIScaleTask
- (void)registerResoureStreamWithContext:(id)a3;
@end

@implementation SIScaleTask

- (void)registerResoureStreamWithContext:(id)a3
{
  v4 = a3;
  v8 = xmmword_21DECC010;
  if (self->_cvPixelBufferProperties)
  {
    *(&v8 + 1) = 2;
    v5 = [SIScaleResourceStream cvPixelStreamWithResourceKey:self->_outputResourceKey options:&v8 allocator:camera_resource_buffer_allocator deallocator:deallocator cvPixelBufferProps:?];
    [v5 setHeight:{self->_outputResolution.height, v8}];
    [v5 setWidth:self->_outputResolution.width];
    [v5 setPixelFormat:self->_pixelFormat];
    if (self->_metadataIOSurfaceProperties)
    {
      [v5 setProvider:11];
      [v5 setMetadataIOSurfaceProperties:self->_metadataIOSurfaceProperties];
    }
  }

  else
  {
    height = self->_outputResolution.height;
    width = self->_outputResolution.width;
    *(&v8 + 1) = 1;
    v5 = [MEMORY[0x277D3E680] cvPixelStreamWithResourceKey:self->_outputResourceKey options:&v8 width:width height:height pixelFormat:self->_pixelFormat];
  }

  [v4 addResourceStream:{v5, v8}];
}

@end