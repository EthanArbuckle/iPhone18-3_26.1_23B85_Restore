@interface PTRenderPipelineDescriptor
- (CGSize)colorInputSize;
- (CGSize)colorOutputSize;
- (CGSize)disparitySize;
- (PTRenderPipelineDescriptor)initWithDevice:(id)device version:(unint64_t)version colorInputSize:(CGSize)size colorOutputSize:(CGSize)outputSize disparitySize:(CGSize)disparitySize;
- (id)copy;
@end

@implementation PTRenderPipelineDescriptor

- (PTRenderPipelineDescriptor)initWithDevice:(id)device version:(unint64_t)version colorInputSize:(CGSize)size colorOutputSize:(CGSize)outputSize disparitySize:(CGSize)disparitySize
{
  height = disparitySize.height;
  width = disparitySize.width;
  v9 = outputSize.height;
  v10 = outputSize.width;
  v11 = size.height;
  v12 = size.width;
  deviceCopy = device;
  v23.receiver = self;
  v23.super_class = PTRenderPipelineDescriptor;
  v17 = [(PTRenderPipelineDescriptor *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_device, device);
    v18->_colorInputSize.width = v12;
    v18->_colorInputSize.height = v11;
    v18->_colorOutputSize.width = v10;
    v18->_colorOutputSize.height = v9;
    v18->_disparitySize.width = width;
    v18->_disparitySize.height = height;
    v18->_version = version;
    v18->_debugRendering = 0;
    *&v18->_verbose = 0;
    v18->_useRGBA = 0;
    v19 = MEMORY[0x277CBF2C0];
    v20 = *(MEMORY[0x277CBF2C0] + 16);
    *&v18->_preferredTransform.a = *MEMORY[0x277CBF2C0];
    *&v18->_preferredTransform.c = v20;
    *&v18->_preferredTransform.tx = *(v19 + 32);
    v21 = v18;
  }

  return v18;
}

- (id)copy
{
  v3 = [[PTRenderPipelineDescriptor alloc] initWithDevice:self->_device version:self->_version colorInputSize:self->_colorInputSize.width colorOutputSize:self->_colorInputSize.height disparitySize:self->_colorOutputSize.width, self->_colorOutputSize.height, self->_disparitySize.width, self->_disparitySize.height];
  [(PTRenderPipelineDescriptor *)v3 setDebugRendering:self->_debugRendering];
  [(PTRenderPipelineDescriptor *)v3 setVerbose:self->_verbose];
  [(PTRenderPipelineDescriptor *)v3 setUseRGBA:self->_useRGBA];
  v4 = *&self->_preferredTransform.c;
  v7[0] = *&self->_preferredTransform.a;
  v7[1] = v4;
  v7[2] = *&self->_preferredTransform.tx;
  [(PTRenderPipelineDescriptor *)v3 setPreferredTransform:v7];
  v5 = [(NSDictionary *)self->_options copy];
  [(PTRenderPipelineDescriptor *)v3 setOptions:v5];

  return v3;
}

- (CGSize)colorInputSize
{
  objc_copyStruct(v4, &self->_colorInputSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)colorOutputSize
{
  objc_copyStruct(v4, &self->_colorOutputSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)disparitySize
{
  objc_copyStruct(v4, &self->_disparitySize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end