@interface PTDisparityPostProcessingDescriptor
- (PTDisparityPostProcessingDescriptor)initWithCommandQueue:(id)queue disparitySize:(id *)size filteredDisparitySize:(id *)disparitySize disparityPixelFormat:(unint64_t)format colorSize:(id *)colorSize colorPixelFormat:(unint64_t)pixelFormat sensorPort:(id)port;
@end

@implementation PTDisparityPostProcessingDescriptor

- (PTDisparityPostProcessingDescriptor)initWithCommandQueue:(id)queue disparitySize:(id *)size filteredDisparitySize:(id *)disparitySize disparityPixelFormat:(unint64_t)format colorSize:(id *)colorSize colorPixelFormat:(unint64_t)pixelFormat sensorPort:(id)port
{
  queueCopy = queue;
  portCopy = port;
  v25.receiver = self;
  v25.super_class = PTDisparityPostProcessingDescriptor;
  v18 = [(PTDisparityPostProcessingDescriptor *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_commandQueue, queue);
    v20 = *&size->var0;
    v19->_disparitySize.depth = size->var2;
    *&v19->_disparitySize.width = v20;
    v21 = *&disparitySize->var0;
    v19->_filteredDisparitySize.depth = disparitySize->var2;
    *&v19->_filteredDisparitySize.width = v21;
    v19->_disparityPixelFormat = format;
    v22 = *&colorSize->var0;
    v19->_colorSize.depth = colorSize->var2;
    *&v19->_colorSize.width = v22;
    v19->_colorPixelFormat = pixelFormat;
    objc_storeStrong(&v19->_sensorPort, port);
    v23 = v19;
  }

  return v19;
}

@end