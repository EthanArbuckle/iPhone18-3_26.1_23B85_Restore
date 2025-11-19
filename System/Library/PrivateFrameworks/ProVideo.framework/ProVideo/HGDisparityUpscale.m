@interface HGDisparityUpscale
- (HGDisparityUpscale)initWithDevice:(id)a3 disparitySize:(CGSize)a4 colorSize:(CGSize)a5 portraitUtil:(id)a6;
- (id)newTextureArrayFromTexture:(id)a3;
- (id)upscaleDisparity:(id)a3 inRGBA:(id)a4 commandBuffer:(id)a5;
- (void)dealloc;
@end

@implementation HGDisparityUpscale

- (HGDisparityUpscale)initWithDevice:(id)a3 disparitySize:(CGSize)a4 colorSize:(CGSize)a5 portraitUtil:(id)a6
{
  height = a5.height;
  width = a5.width;
  v8 = a4.height;
  v9 = a4.width;
  v12.receiver = self;
  v12.super_class = HGDisparityUpscale;
  result = [(HGDisparityUpscale *)&v12 init:a3];
  if (result)
  {
    result->_colorSize.width = width;
    result->_colorSize.height = height;
    result->_depthSize.width = v9;
    result->_depthSize.height = v8;
    result->_device = a3;
    result->_depthTex = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = HGDisparityUpscale;
  [(HGDisparityUpscale *)&v3 dealloc];
}

- (id)newTextureArrayFromTexture:(id)a3
{
  if ([a3 textureType] == 3)
  {
    return 0;
  }

  v5 = [a3 pixelFormat];

  return [a3 newTextureViewWithPixelFormat:v5 textureType:3 levels:0 slices:1, 0, 1];
}

- (id)upscaleDisparity:(id)a3 inRGBA:(id)a4 commandBuffer:(id)a5
{
  v9 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:self->_colorSize.width height:self->_colorSize.height mipmapped:0];
  [v9 setUsage:19];
  self->_depthTex = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
  v10 = [objc_alloc(MEMORY[0x277CD74E0]) initWithDevice:self->_device];
  [v10 encodeToCommandBuffer:a5 sourceTexture:a3 destinationTexture:self->_depthTex];
  v11 = [(HGDisparityUpscale *)self newTextureArrayFromTexture:a3];
  v12 = [(HGDisparityUpscale *)self newTextureArrayFromTexture:a4];
  v13 = [(HGDisparityUpscale *)self newTextureArrayFromTexture:self->_depthTex];

  return self->_depthTex;
}

@end