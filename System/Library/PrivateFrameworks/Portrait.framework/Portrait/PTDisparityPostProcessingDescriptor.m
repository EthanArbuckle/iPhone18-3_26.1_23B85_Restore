@interface PTDisparityPostProcessingDescriptor
- (PTDisparityPostProcessingDescriptor)initWithCommandQueue:(id)a3 disparitySize:(id *)a4 filteredDisparitySize:(id *)a5 disparityPixelFormat:(unint64_t)a6 colorSize:(id *)a7 colorPixelFormat:(unint64_t)a8 sensorPort:(id)a9;
@end

@implementation PTDisparityPostProcessingDescriptor

- (PTDisparityPostProcessingDescriptor)initWithCommandQueue:(id)a3 disparitySize:(id *)a4 filteredDisparitySize:(id *)a5 disparityPixelFormat:(unint64_t)a6 colorSize:(id *)a7 colorPixelFormat:(unint64_t)a8 sensorPort:(id)a9
{
  v16 = a3;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = PTDisparityPostProcessingDescriptor;
  v18 = [(PTDisparityPostProcessingDescriptor *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_commandQueue, a3);
    v20 = *&a4->var0;
    v19->_disparitySize.depth = a4->var2;
    *&v19->_disparitySize.width = v20;
    v21 = *&a5->var0;
    v19->_filteredDisparitySize.depth = a5->var2;
    *&v19->_filteredDisparitySize.width = v21;
    v19->_disparityPixelFormat = a6;
    v22 = *&a7->var0;
    v19->_colorSize.depth = a7->var2;
    *&v19->_colorSize.width = v22;
    v19->_colorPixelFormat = a8;
    objc_storeStrong(&v19->_sensorPort, a9);
    v23 = v19;
  }

  return v19;
}

@end