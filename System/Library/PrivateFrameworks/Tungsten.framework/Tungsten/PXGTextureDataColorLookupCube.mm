@interface PXGTextureDataColorLookupCube
- (PXGTextureDataColorLookupCube)init;
- (PXGTextureDataColorLookupCube)initWithData:(id)data edgeSize:(int64_t)size pixelFormat:(unint64_t)format;
- (double)center;
- (id)createTextureWithContext:(id)context;
@end

@implementation PXGTextureDataColorLookupCube

- (double)center
{
  edgeSize = [self edgeSize];
  bytes = [self[6] bytes];
  v5 = 0;
  v6 = (edgeSize - 1 + ((edgeSize - 1) >> 31)) >> 1;
  v7 = bytes + 4 * ((edgeSize - 1) / 2);
  v8 = 0uLL;
  v9 = vdupq_n_s32(0x4B400000u);
  v10 = vdupq_n_s32(0xCB400000);
  v11 = vdupq_n_s32(0x437F0000u);
  v12 = 1;
  do
  {
    v13 = 0;
    v14 = v12;
    v15 = v7 + 4 * (edgeSize * edgeSize) * (v5 + v6);
    v16 = 1;
    do
    {
      v17 = 0;
      v18 = v16;
      v19 = v15 + 4 * (v13 + v6) * edgeSize;
      v20 = 1;
      do
      {
        v21 = v20;
        v4.i32[0] = *(v19 + 4 * v17);
        v4 = vdivq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*v4.f32)), v9), v10), v11);
        v8 = vaddq_f32(v8, v4);
        v17 = 1;
        v20 = 0;
      }

      while ((v21 & 1) != 0);
      v16 = 0;
      v13 = 1;
    }

    while ((v18 & 1) != 0);
    v12 = 0;
    v5 = 1;
  }

  while ((v14 & 1) != 0);
  v22.i64[0] = 0x3E0000003E000000;
  v22.i64[1] = 0x3E0000003E000000;
  *&result = vmulq_f32(v8, v22).u64[0];
  return result;
}

- (id)createTextureWithContext:(id)context
{
  contextCopy = context;
  device = [contextCopy device];
  device = self->_device;

  if (device == device)
  {
    v12 = self->_texture;
  }

  else
  {
    data = [(PXGTextureDataColorLookupCube *)self data];
    edgeSize = [(PXGColorLookupCube *)self edgeSize];
    pixelFormat = [(PXGTextureDataColorLookupCube *)self pixelFormat];
    v10 = PXGBytesPerPixelForMetalPixelFormat(pixelFormat) * edgeSize;
    v11 = objc_alloc_init(MEMORY[0x277CD7058]);
    [v11 setTextureType:7];
    [v11 setWidth:edgeSize];
    [v11 setHeight:edgeSize];
    [v11 setDepth:edgeSize];
    [v11 setPixelFormat:pixelFormat];
    [v11 setUsage:1];
    [v11 setResourceOptions:0];
    v12 = [contextCopy newTextureWithDescriptor:v11];
    memset(v16, 0, 24);
    v16[3] = edgeSize;
    v16[4] = edgeSize;
    v16[5] = edgeSize;
    [contextCopy copyBytes:objc_msgSend(data toTexture:"bytes" inRegion:0 length:0 bytesPerRow:0) bytesPerImage:{v12, v16, objc_msgSend(data, "length"), v10, v10 * edgeSize}];
    device2 = [contextCopy device];
    v14 = self->_device;
    self->_device = device2;

    objc_storeStrong(&self->_texture, v12);
  }

  return v12;
}

- (PXGTextureDataColorLookupCube)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGColorLookupCube.m" lineNumber:446 description:{@"%s is not available as initializer", "-[PXGTextureDataColorLookupCube init]"}];

  abort();
}

- (PXGTextureDataColorLookupCube)initWithData:(id)data edgeSize:(int64_t)size pixelFormat:(unint64_t)format
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = PXGTextureDataColorLookupCube;
  v10 = [(PXGTextureDataColorLookupCube *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(PXGColorLookupCube *)v10 setEdgeSize:size];
    v11->_pixelFormat = format;
    objc_storeStrong(&v11->_data, data);
  }

  return v11;
}

@end