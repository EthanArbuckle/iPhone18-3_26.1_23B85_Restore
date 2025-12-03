@interface PTNormalAndDiffuseEstimation
- (PTNormalAndDiffuseEstimation)initWithMetalContext:(id)context;
- (PTNormalAndDiffuseEstimation)initWithMetalContext:(id)context sensorWidth:(float)width focalLength:(float)length;
- (void)estimateDiffuseFromDisparity:(id)disparity outDiffuse:(id)diffuse;
- (void)estimateNormalsFromDisparity:(id)disparity outNormal:(id)normal;
@end

@implementation PTNormalAndDiffuseEstimation

- (PTNormalAndDiffuseEstimation)initWithMetalContext:(id)context
{
  LODWORD(v3) = 1108344832;
  LODWORD(v4) = 1106866340;
  return [(PTNormalAndDiffuseEstimation *)self initWithMetalContext:context sensorWidth:v3 focalLength:v4];
}

- (PTNormalAndDiffuseEstimation)initWithMetalContext:(id)context sensorWidth:(float)width focalLength:(float)length
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = PTNormalAndDiffuseEstimation;
  v10 = [(PTNormalAndDiffuseEstimation *)&v19 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v10->_metalContext, context);
  v12 = [contextCopy computePipelineStateFor:@"estimateNormalsFromDisparity" withConstants:0];
  estimateNormalsFromDisparity = v11->_estimateNormalsFromDisparity;
  v11->_estimateNormalsFromDisparity = v12;

  if (!v11->_estimateNormalsFromDisparity)
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PTNormalAndDiffuseEstimation initWithMetalContext:v17 sensorWidth:? focalLength:?];
    }

    goto LABEL_9;
  }

  v14 = [contextCopy computePipelineStateFor:@"estimateDiffuseFromDisparity" withConstants:0];
  estimateDiffuseFromDisparity = v11->_estimateDiffuseFromDisparity;
  v11->_estimateDiffuseFromDisparity = v14;

  if (!v11->_estimateDiffuseFromDisparity)
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PTNormalAndDiffuseEstimation initWithMetalContext:v17 sensorWidth:? focalLength:?];
    }

LABEL_9:

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  v11->_sensorWidth = width;
  v11->_focalLength = length;
  v16 = v11;
LABEL_11:

  return v16;
}

- (void)estimateNormalsFromDisparity:(id)disparity outNormal:(id)normal
{
  metalContext = self->_metalContext;
  normalCopy = normal;
  disparityCopy = disparity;
  commandBuffer = [(PTMetalContext *)metalContext commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_estimateNormalsFromDisparity];
  v18[0] = (self->_sensorWidth * 0.5) / self->_focalLength;
  v11 = v18[0] * [normalCopy height];
  v18[1] = v11 / [normalCopy width];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];

  [computeCommandEncoder setTexture:normalCopy atIndex:1];
  [computeCommandEncoder setBytes:v18 length:8 atIndex:0];
  v17 = 1092616192;
  [computeCommandEncoder setBytes:&v17 length:4 atIndex:1];
  width = [normalCopy width];
  height = [normalCopy height];

  v16[0] = width;
  v16[1] = height;
  v16[2] = 1;
  v14 = xmmword_2244A5230;
  v15 = 1;
  [computeCommandEncoder dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];
}

- (void)estimateDiffuseFromDisparity:(id)disparity outDiffuse:(id)diffuse
{
  metalContext = self->_metalContext;
  diffuseCopy = diffuse;
  disparityCopy = disparity;
  commandBuffer = [(PTMetalContext *)metalContext commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_estimateDiffuseFromDisparity];
  v18[0] = (self->_sensorWidth * 0.5) / self->_focalLength;
  v11 = v18[0] * [diffuseCopy height];
  v18[1] = v11 / [diffuseCopy width];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];

  [computeCommandEncoder setTexture:diffuseCopy atIndex:1];
  [computeCommandEncoder setBytes:v18 length:8 atIndex:0];
  v17 = 1092616192;
  [computeCommandEncoder setBytes:&v17 length:4 atIndex:1];
  width = [diffuseCopy width];
  height = [diffuseCopy height];

  v16[0] = width;
  v16[1] = height;
  v16[2] = 1;
  v14 = xmmword_2244A5230;
  v15 = 1;
  [computeCommandEncoder dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];
}

- (void)initWithMetalContext:(os_log_t)log sensorWidth:focalLength:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_estimateDiffuseFromDisparity";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", &v1, 0xCu);
}

- (void)initWithMetalContext:(os_log_t)log sensorWidth:focalLength:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_estimateNormalsFromDisparity";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", &v1, 0xCu);
}

@end