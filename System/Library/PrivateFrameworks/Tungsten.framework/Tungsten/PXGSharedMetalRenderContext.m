@interface PXGSharedMetalRenderContext
- (id)newTextureWithDescriptor:(id)a3;
- (void)copyBytes:(const void *)a3 toTexture:(id)a4 inRegion:(id *)a5 length:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8;
- (void)fastCopyBytes:(const void *)a3 toTexture:(id)a4 inRegion:(id *)a5 length:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8;
@end

@implementation PXGSharedMetalRenderContext

- (void)fastCopyBytes:(const void *)a3 toTexture:(id)a4 inRegion:(id *)a5 length:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8
{
  v14 = a4;
  if ([v14 isShareable])
  {
    v15 = -*MEMORY[0x277D85FA0];
    v16 = v15 & a3;
    v17 = a3 - (v15 & a3);
    v18 = ((a3 + a6 + *MEMORY[0x277D85FA0] - 1) & v15) - (v15 & a3);
    v19 = [(PXGMetalRenderContext *)self device];
    v20 = [v19 newBufferWithBytesNoCopy:v16 length:v18 options:0 deallocator:0];

    v21 = *&a5->var0.var2;
    v23 = *&a5->var0.var0;
    v24 = v21;
    v25 = *&a5->var1.var1;
    [(PXGMetalRenderContext *)self _blitFromBuffer:v20 toTexture:v14 inRegion:&v23 bytesPerRow:a7 offset:v17 bytesPerImage:a8];
  }

  else
  {
    v22 = *&a5->var0.var2;
    v23 = *&a5->var0.var0;
    v24 = v22;
    v25 = *&a5->var1.var1;
    [(PXGSharedMetalRenderContext *)self copyBytes:a3 toTexture:v14 inRegion:&v23 length:a6 bytesPerRow:a7 bytesPerImage:a8];
  }
}

- (void)copyBytes:(const void *)a3 toTexture:(id)a4 inRegion:(id *)a5 length:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8
{
  v14 = a4;
  if ([v14 isShareable])
  {
    v15 = [(PXGMetalRenderContext *)self device];
    v16 = [v15 newBufferWithBytes:a3 length:a6 options:0];

    v17 = *&a5->var0.var2;
    v19 = *&a5->var0.var0;
    v20 = v17;
    v21 = *&a5->var1.var1;
    [(PXGMetalRenderContext *)self _blitFromBuffer:v16 toTexture:v14 inRegion:&v19 bytesPerRow:a7 offset:0 bytesPerImage:a8];
  }

  else
  {
    v18 = *&a5->var0.var2;
    v19 = *&a5->var0.var0;
    v20 = v18;
    v21 = *&a5->var1.var1;
    if (a8)
    {
      [v14 replaceRegion:&v19 mipmapLevel:0 slice:0 withBytes:a3 bytesPerRow:a7 bytesPerImage:a8];
    }

    else
    {
      [v14 replaceRegion:&v19 mipmapLevel:0 withBytes:a3 bytesPerRow:a7];
    }
  }
}

- (id)newTextureWithDescriptor:(id)a3
{
  v4 = a3;
  [v4 setStorageMode:2];
  v5 = [(PXGMetalRenderContext *)self device];
  v6 = [v5 newSharedTextureWithDescriptor:v4];

  return v6;
}

@end