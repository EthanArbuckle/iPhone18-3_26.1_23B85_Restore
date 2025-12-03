@interface TSDMetalRenderTarget
- (CATransform3D)orthoProjectionWithVerticalFlip:(SEL)flip;
- (CGSize)size;
- (TSDMetalRenderTarget)initWithSize:(CGSize)size metalContext:(id)context numberOfAttachments:(unint64_t)attachments;
- (id)textureAtAttachmentIndex:(unint64_t)index;
- (void)setClearColor:(id)color;
- (void)setClearColor:(id)color atAttachmentIndex:(unint64_t)index;
- (void)setTextureLoadAction:(unint64_t)action;
- (void)setTextureLoadAction:(unint64_t)action atAttachmentIndex:(unint64_t)index;
@end

@implementation TSDMetalRenderTarget

- (TSDMetalRenderTarget)initWithSize:(CGSize)size metalContext:(id)context numberOfAttachments:(unint64_t)attachments
{
  height = size.height;
  width = size.width;
  contextCopy = context;
  v30.receiver = self;
  v30.super_class = TSDMetalRenderTarget;
  v10 = [(TSDMetalRenderTarget *)&v30 init];
  v11 = v10;
  if (v10)
  {
    v10->_size.width = width;
    v10->_size.height = height;
    if (attachments >= 4)
    {
      attachmentsCopy = 4;
    }

    else
    {
      attachmentsCopy = attachments;
    }

    v13 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:objc_msgSend(contextCopy width:"pixelFormat") height:width mipmapped:height, 0];
    [v13 setUsage:5];
    array = [MEMORY[0x277CBEB18] array];
    renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
    passDescriptor = v11->_passDescriptor;
    v11->_passDescriptor = renderPassDescriptor;

    if (attachments)
    {
      v17 = 0;
      do
      {
        device = [contextCopy device];
        v19 = [device newTextureWithDescriptor:v13];

        [(NSArray *)array addObject:v19];
        colorAttachments = [(MTLRenderPassDescriptor *)v11->_passDescriptor colorAttachments];
        v21 = [colorAttachments objectAtIndexedSubscript:v17];
        [v21 setTexture:v19];

        colorAttachments2 = [(MTLRenderPassDescriptor *)v11->_passDescriptor colorAttachments];
        v23 = [colorAttachments2 objectAtIndexedSubscript:v17];
        [v23 setLoadAction:2];

        colorAttachments3 = [(MTLRenderPassDescriptor *)v11->_passDescriptor colorAttachments];
        v25 = [colorAttachments3 objectAtIndexedSubscript:v17];
        [v25 setStoreAction:1];

        colorAttachments4 = [(MTLRenderPassDescriptor *)v11->_passDescriptor colorAttachments];
        v27 = [colorAttachments4 objectAtIndexedSubscript:v17];
        [v27 setClearColor:{0.0, 0.0, 0.0, 0.0}];

        ++v17;
      }

      while (attachmentsCopy != v17);
    }

    textures = v11->_textures;
    v11->_textures = array;
  }

  return v11;
}

- (void)setTextureLoadAction:(unint64_t)action
{
  passDescriptor = self->_passDescriptor;
  if (passDescriptor)
  {
    colorAttachments = [(MTLRenderPassDescriptor *)passDescriptor colorAttachments];
    v5 = [colorAttachments objectAtIndexedSubscript:0];
    [v5 setLoadAction:action];
  }
}

- (void)setTextureLoadAction:(unint64_t)action atAttachmentIndex:(unint64_t)index
{
  if (self->_passDescriptor && [(NSArray *)self->_textures count]> index)
  {
    colorAttachments = [(MTLRenderPassDescriptor *)self->_passDescriptor colorAttachments];
    v7 = [colorAttachments objectAtIndexedSubscript:index];
    [v7 setLoadAction:action];
  }
}

- (CATransform3D)orthoProjectionWithVerticalFlip:(SEL)flip
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

- (id)textureAtAttachmentIndex:(unint64_t)index
{
  if ([(NSArray *)self->_textures count]<= index)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalRenderTarget textureAtAttachmentIndex:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalRenderTarget.m"];
    [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:77 description:{@"Attachment index %lu is out of bounds.", index}];

    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_textures objectAtIndexedSubscript:index];
  }

  return v5;
}

- (void)setClearColor:(id)color
{
  passDescriptor = self->_passDescriptor;
  if (passDescriptor)
  {
    var3 = color.var3;
    var2 = color.var2;
    var1 = color.var1;
    var0 = color.var0;
    colorAttachments = [(MTLRenderPassDescriptor *)passDescriptor colorAttachments];
    v8 = [colorAttachments objectAtIndexedSubscript:0];
    [v8 setClearColor:{var0, var1, var2, var3}];
  }
}

- (void)setClearColor:(id)color atAttachmentIndex:(unint64_t)index
{
  if (self->_passDescriptor)
  {
    var3 = color.var3;
    var2 = color.var2;
    var1 = color.var1;
    var0 = color.var0;
    if ([(NSArray *)self->_textures count]> index)
    {
      colorAttachments = [(MTLRenderPassDescriptor *)self->_passDescriptor colorAttachments];
      v10 = [colorAttachments objectAtIndexedSubscript:index];
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