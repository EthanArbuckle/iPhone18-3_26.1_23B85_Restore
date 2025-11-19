@interface PXGPrivateMetalRenderContext
- (PXGPrivateMetalRenderContext)initWithDevice:(id)a3;
- (id)newTextureWithDescriptor:(id)a3;
- (void)copyBytes:(const void *)a3 toTexture:(id)a4 inRegion:(id *)a5 length:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8;
- (void)fastCopyBytes:(const void *)a3 toTexture:(id)a4 inRegion:(id *)a5 length:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8;
@end

@implementation PXGPrivateMetalRenderContext

- (void)fastCopyBytes:(const void *)a3 toTexture:(id)a4 inRegion:(id *)a5 length:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8
{
  v8 = *&a5->var0.var2;
  v9[0] = *&a5->var0.var0;
  v9[1] = v8;
  v9[2] = *&a5->var1.var1;
  [(PXGPrivateMetalRenderContext *)self copyBytes:a3 toTexture:a4 inRegion:v9 length:a6 bytesPerRow:a7 bytesPerImage:a8];
}

- (void)copyBytes:(const void *)a3 toTexture:(id)a4 inRegion:(id *)a5 length:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8
{
  v8 = *&a5->var0.var2;
  v9[0] = *&a5->var0.var0;
  v9[1] = v8;
  v9[2] = *&a5->var1.var1;
  if (a8)
  {
    [a4 replaceRegion:v9 mipmapLevel:0 slice:0 withBytes:a3 bytesPerRow:a7 bytesPerImage:?];
  }

  else
  {
    [a4 replaceRegion:v9 mipmapLevel:0 withBytes:a3 bytesPerRow:a7];
  }
}

- (id)newTextureWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(PXGMetalRenderContext *)self device];
  v6 = [v5 newTextureWithDescriptor:v4];

  return v6;
}

- (PXGPrivateMetalRenderContext)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXGPrivateMetalRenderContext;
  return [(PXGMetalRenderContext *)&v4 initWithDevice:a3 commandQueue:0];
}

@end