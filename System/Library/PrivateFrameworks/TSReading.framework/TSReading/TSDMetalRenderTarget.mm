@interface TSDMetalRenderTarget
- (CATransform3D)orthoProjectionWithVerticalFlip:(SEL)a3;
- (CGSize)size;
- (TSDMetalRenderTarget)initWithSize:(CGSize)a3 metalContext:(id)a4 numberOfAttachments:(unint64_t)a5;
- (id)textureAtAttachmentIndex:(unint64_t)a3;
- (void)setClearColor:(id)a3;
- (void)setClearColor:(id)a3 atAttachmentIndex:(unint64_t)a4;
- (void)setTextureLoadAction:(unint64_t)a3;
- (void)setTextureLoadAction:(unint64_t)a3 atAttachmentIndex:(unint64_t)a4;
@end

@implementation TSDMetalRenderTarget

- (TSDMetalRenderTarget)initWithSize:(CGSize)a3 metalContext:(id)a4 numberOfAttachments:(unint64_t)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a4;
  v30.receiver = self;
  v30.super_class = TSDMetalRenderTarget;
  v10 = [(TSDMetalRenderTarget *)&v30 init];
  v11 = v10;
  if (v10)
  {
    v10->_size.width = width;
    v10->_size.height = height;
    if (a5 >= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = a5;
    }

    v13 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:objc_msgSend(v9 width:"pixelFormat") height:width mipmapped:height, 0];
    [v13 setUsage:5];
    v14 = [MEMORY[0x277CBEB18] array];
    v15 = [MEMORY[0x277CD6F50] renderPassDescriptor];
    passDescriptor = v11->_passDescriptor;
    v11->_passDescriptor = v15;

    if (a5)
    {
      v17 = 0;
      do
      {
        v18 = [v9 device];
        v19 = [v18 newTextureWithDescriptor:v13];

        [(NSArray *)v14 addObject:v19];
        v20 = [(MTLRenderPassDescriptor *)v11->_passDescriptor colorAttachments];
        v21 = [v20 objectAtIndexedSubscript:v17];
        [v21 setTexture:v19];

        v22 = [(MTLRenderPassDescriptor *)v11->_passDescriptor colorAttachments];
        v23 = [v22 objectAtIndexedSubscript:v17];
        [v23 setLoadAction:2];

        v24 = [(MTLRenderPassDescriptor *)v11->_passDescriptor colorAttachments];
        v25 = [v24 objectAtIndexedSubscript:v17];
        [v25 setStoreAction:1];

        v26 = [(MTLRenderPassDescriptor *)v11->_passDescriptor colorAttachments];
        v27 = [v26 objectAtIndexedSubscript:v17];
        [v27 setClearColor:{0.0, 0.0, 0.0, 0.0}];

        ++v17;
      }

      while (v12 != v17);
    }

    textures = v11->_textures;
    v11->_textures = v14;
  }

  return v11;
}

- (void)setTextureLoadAction:(unint64_t)a3
{
  passDescriptor = self->_passDescriptor;
  if (passDescriptor)
  {
    v6 = [(MTLRenderPassDescriptor *)passDescriptor colorAttachments];
    v5 = [v6 objectAtIndexedSubscript:0];
    [v5 setLoadAction:a3];
  }
}

- (void)setTextureLoadAction:(unint64_t)a3 atAttachmentIndex:(unint64_t)a4
{
  if (self->_passDescriptor && [(NSArray *)self->_textures count]> a4)
  {
    v8 = [(MTLRenderPassDescriptor *)self->_passDescriptor colorAttachments];
    v7 = [v8 objectAtIndexedSubscript:a4];
    [v7 setLoadAction:a3];
  }
}

- (CATransform3D)orthoProjectionWithVerticalFlip:(SEL)a3
{
  if (a4)
  {
    v4 = 0.0;
    v5 = -1.0;
    v6 = 1.0;
    height = self->_size.height;
  }

  else
  {
    height = 0.0;
    v5 = -1.0;
    v6 = 1.0;
    v4 = self->_size.height;
  }

  TSDTransform3DMakeOrtho(retstr, 0.0, self->_size.width, height, v4, v5, v6);
  return result;
}

- (id)textureAtAttachmentIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_textures count]<= a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalRenderTarget textureAtAttachmentIndex:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalRenderTarget.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:77 description:{@"Attachment index %lu is out of bounds.", a3}];

    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_textures objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (void)setClearColor:(id)a3
{
  passDescriptor = self->_passDescriptor;
  if (passDescriptor)
  {
    var3 = a3.var3;
    var2 = a3.var2;
    var1 = a3.var1;
    var0 = a3.var0;
    v9 = [(MTLRenderPassDescriptor *)passDescriptor colorAttachments];
    v8 = [v9 objectAtIndexedSubscript:0];
    [v8 setClearColor:{var0, var1, var2, var3}];
  }
}

- (void)setClearColor:(id)a3 atAttachmentIndex:(unint64_t)a4
{
  if (self->_passDescriptor)
  {
    var3 = a3.var3;
    var2 = a3.var2;
    var1 = a3.var1;
    var0 = a3.var0;
    if ([(NSArray *)self->_textures count]> a4)
    {
      v11 = [(MTLRenderPassDescriptor *)self->_passDescriptor colorAttachments];
      v10 = [v11 objectAtIndexedSubscript:a4];
      [v10 setClearColor:{var0, var1, var2, var3}];
    }
  }
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end