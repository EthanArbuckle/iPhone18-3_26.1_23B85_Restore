@interface PXGPrivateMetalRenderContext
- (PXGPrivateMetalRenderContext)initWithDevice:(id)device;
- (id)newTextureWithDescriptor:(id)descriptor;
- (void)copyBytes:(const void *)bytes toTexture:(id)texture inRegion:(id *)region length:(unint64_t)length bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
- (void)fastCopyBytes:(const void *)bytes toTexture:(id)texture inRegion:(id *)region length:(unint64_t)length bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
@end

@implementation PXGPrivateMetalRenderContext

- (void)fastCopyBytes:(const void *)bytes toTexture:(id)texture inRegion:(id *)region length:(unint64_t)length bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  v8 = *&region->var0.var2;
  v9[0] = *&region->var0.var0;
  v9[1] = v8;
  v9[2] = *&region->var1.var1;
  [(PXGPrivateMetalRenderContext *)self copyBytes:bytes toTexture:texture inRegion:v9 length:length bytesPerRow:row bytesPerImage:image];
}

- (void)copyBytes:(const void *)bytes toTexture:(id)texture inRegion:(id *)region length:(unint64_t)length bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  v8 = *&region->var0.var2;
  v9[0] = *&region->var0.var0;
  v9[1] = v8;
  v9[2] = *&region->var1.var1;
  if (image)
  {
    [texture replaceRegion:v9 mipmapLevel:0 slice:0 withBytes:bytes bytesPerRow:row bytesPerImage:?];
  }

  else
  {
    [texture replaceRegion:v9 mipmapLevel:0 withBytes:bytes bytesPerRow:row];
  }
}

- (id)newTextureWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  device = [(PXGMetalRenderContext *)self device];
  v6 = [device newTextureWithDescriptor:descriptorCopy];

  return v6;
}

- (PXGPrivateMetalRenderContext)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = PXGPrivateMetalRenderContext;
  return [(PXGMetalRenderContext *)&v4 initWithDevice:device commandQueue:0];
}

@end