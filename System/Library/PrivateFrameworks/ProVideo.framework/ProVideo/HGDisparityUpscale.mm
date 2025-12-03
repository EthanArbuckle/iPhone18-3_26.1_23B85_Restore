@interface HGDisparityUpscale
- (HGDisparityUpscale)initWithDevice:(id)device disparitySize:(CGSize)size colorSize:(CGSize)colorSize portraitUtil:(id)util;
- (id)newTextureArrayFromTexture:(id)texture;
- (id)upscaleDisparity:(id)disparity inRGBA:(id)a commandBuffer:(id)buffer;
- (void)dealloc;
@end

@implementation HGDisparityUpscale

- (HGDisparityUpscale)initWithDevice:(id)device disparitySize:(CGSize)size colorSize:(CGSize)colorSize portraitUtil:(id)util
{
  height = colorSize.height;
  width = colorSize.width;
  v8 = size.height;
  v9 = size.width;
  v12.receiver = self;
  v12.super_class = HGDisparityUpscale;
  result = [(HGDisparityUpscale *)&v12 init:device];
  if (result)
  {
    result->_colorSize.width = width;
    result->_colorSize.height = height;
    result->_depthSize.width = v9;
    result->_depthSize.height = v8;
    result->_device = device;
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

- (id)newTextureArrayFromTexture:(id)texture
{
  if ([texture textureType] == 3)
  {
    return 0;
  }

  pixelFormat = [texture pixelFormat];

  return [texture newTextureViewWithPixelFormat:pixelFormat textureType:3 levels:0 slices:1, 0, 1];
}

- (id)upscaleDisparity:(id)disparity inRGBA:(id)a commandBuffer:(id)buffer
{
  v9 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:self->_colorSize.width height:self->_colorSize.height mipmapped:0];
  [v9 setUsage:19];
  self->_depthTex = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
  v10 = [objc_alloc(MEMORY[0x277CD74E0]) initWithDevice:self->_device];
  [v10 encodeToCommandBuffer:buffer sourceTexture:disparity destinationTexture:self->_depthTex];
  v11 = [(HGDisparityUpscale *)self newTextureArrayFromTexture:disparity];
  v12 = [(HGDisparityUpscale *)self newTextureArrayFromTexture:a];
  v13 = [(HGDisparityUpscale *)self newTextureArrayFromTexture:self->_depthTex];

  return self->_depthTex;
}

@end