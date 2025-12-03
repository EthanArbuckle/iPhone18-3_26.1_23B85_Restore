@interface PXGSharedMetalRenderContext
- (id)newTextureWithDescriptor:(id)descriptor;
- (void)copyBytes:(const void *)bytes toTexture:(id)texture inRegion:(id *)region length:(unint64_t)length bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
- (void)fastCopyBytes:(const void *)bytes toTexture:(id)texture inRegion:(id *)region length:(unint64_t)length bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
@end

@implementation PXGSharedMetalRenderContext

- (void)fastCopyBytes:(const void *)bytes toTexture:(id)texture inRegion:(id *)region length:(unint64_t)length bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  textureCopy = texture;
  if ([textureCopy isShareable])
  {
    v15 = -*MEMORY[0x277D85FA0];
    v16 = v15 & bytes;
    v17 = bytes - (v15 & bytes);
    v18 = ((bytes + length + *MEMORY[0x277D85FA0] - 1) & v15) - (v15 & bytes);
    device = [(PXGMetalRenderContext *)self device];
    v20 = [device newBufferWithBytesNoCopy:v16 length:v18 options:0 deallocator:0];

    v21 = *&region->var0.var2;
    v23 = *&region->var0.var0;
    v24 = v21;
    v25 = *&region->var1.var1;
    [(PXGMetalRenderContext *)self _blitFromBuffer:v20 toTexture:textureCopy inRegion:&v23 bytesPerRow:row offset:v17 bytesPerImage:image];
  }

  else
  {
    v22 = *&region->var0.var2;
    v23 = *&region->var0.var0;
    v24 = v22;
    v25 = *&region->var1.var1;
    [(PXGSharedMetalRenderContext *)self copyBytes:bytes toTexture:textureCopy inRegion:&v23 length:length bytesPerRow:row bytesPerImage:image];
  }
}

- (void)copyBytes:(const void *)bytes toTexture:(id)texture inRegion:(id *)region length:(unint64_t)length bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  textureCopy = texture;
  if ([textureCopy isShareable])
  {
    device = [(PXGMetalRenderContext *)self device];
    v16 = [device newBufferWithBytes:bytes length:length options:0];

    v17 = *&region->var0.var2;
    v19 = *&region->var0.var0;
    v20 = v17;
    v21 = *&region->var1.var1;
    [(PXGMetalRenderContext *)self _blitFromBuffer:v16 toTexture:textureCopy inRegion:&v19 bytesPerRow:row offset:0 bytesPerImage:image];
  }

  else
  {
    v18 = *&region->var0.var2;
    v19 = *&region->var0.var0;
    v20 = v18;
    v21 = *&region->var1.var1;
    if (image)
    {
      [textureCopy replaceRegion:&v19 mipmapLevel:0 slice:0 withBytes:bytes bytesPerRow:row bytesPerImage:image];
    }

    else
    {
      [textureCopy replaceRegion:&v19 mipmapLevel:0 withBytes:bytes bytesPerRow:row];
    }
  }
}

- (id)newTextureWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  [descriptorCopy setStorageMode:2];
  device = [(PXGMetalRenderContext *)self device];
  v6 = [device newSharedTextureWithDescriptor:descriptorCopy];

  return v6;
}

@end