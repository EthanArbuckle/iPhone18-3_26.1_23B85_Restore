@interface PXGMetalRenderPassState
- (PXGMetalRenderPassState)initWithDevice:(id)device capacity:(int64_t)capacity;
- (id)description;
@end

@implementation PXGMetalRenderPassState

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p capacity:%ld>", v5, self, self->_capacity];;

  return v6;
}

- (PXGMetalRenderPassState)initWithDevice:(id)device capacity:(int64_t)capacity
{
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = PXGMetalRenderPassState;
  v8 = [(PXGMetalRenderPassState *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v9->_capacity = capacity;
    v10 = [deviceCopy newBufferWithLength:4 * capacity options:0];
    spriteIndexesMetalBuffer = v9->_spriteIndexesMetalBuffer;
    v9->_spriteIndexesMetalBuffer = v10;

    v12 = [deviceCopy newBufferWithLength:capacity << 6 options:0];
    spriteTextureInfosMetalBuffer = v9->_spriteTextureInfosMetalBuffer;
    v9->_spriteTextureInfosMetalBuffer = v12;

    v14 = v9->_spriteIndexesMetalBuffer;
    if (!v14 || !v9->_spriteTextureInfosMetalBuffer)
    {
      v15 = 0;
      goto LABEL_7;
    }

    v9->_spriteIndexes = [(MTLBuffer *)v14 contents];
    v9->_textureInfos = [(MTLBuffer *)v9->_spriteTextureInfosMetalBuffer contents];
  }

  v15 = v9;
LABEL_7:

  return v15;
}

@end