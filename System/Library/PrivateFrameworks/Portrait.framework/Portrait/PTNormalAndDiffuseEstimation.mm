@interface PTNormalAndDiffuseEstimation
- (PTNormalAndDiffuseEstimation)initWithMetalContext:(id)a3;
- (PTNormalAndDiffuseEstimation)initWithMetalContext:(id)a3 sensorWidth:(float)a4 focalLength:(float)a5;
- (void)estimateDiffuseFromDisparity:(id)a3 outDiffuse:(id)a4;
- (void)estimateNormalsFromDisparity:(id)a3 outNormal:(id)a4;
@end

@implementation PTNormalAndDiffuseEstimation

- (PTNormalAndDiffuseEstimation)initWithMetalContext:(id)a3
{
  LODWORD(v3) = 1108344832;
  LODWORD(v4) = 1106866340;
  return [(PTNormalAndDiffuseEstimation *)self initWithMetalContext:a3 sensorWidth:v3 focalLength:v4];
}

- (PTNormalAndDiffuseEstimation)initWithMetalContext:(id)a3 sensorWidth:(float)a4 focalLength:(float)a5
{
  v9 = a3;
  v19.receiver = self;
  v19.super_class = PTNormalAndDiffuseEstimation;
  v10 = [(PTNormalAndDiffuseEstimation *)&v19 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v10->_metalContext, a3);
  v12 = [v9 computePipelineStateFor:@"estimateNormalsFromDisparity" withConstants:0];
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

  v14 = [v9 computePipelineStateFor:@"estimateDiffuseFromDisparity" withConstants:0];
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

  v11->_sensorWidth = a4;
  v11->_focalLength = a5;
  v16 = v11;
LABEL_11:

  return v16;
}

- (void)estimateNormalsFromDisparity:(id)a3 outNormal:(id)a4
{
  metalContext = self->_metalContext;
  v7 = a4;
  v8 = a3;
  v9 = [(PTMetalContext *)metalContext commandBuffer];
  v10 = [v9 computeCommandEncoder];

  [v10 setComputePipelineState:self->_estimateNormalsFromDisparity];
  v18[0] = (self->_sensorWidth * 0.5) / self->_focalLength;
  v11 = v18[0] * [v7 height];
  v18[1] = v11 / [v7 width];
  [v10 setTexture:v8 atIndex:0];

  [v10 setTexture:v7 atIndex:1];
  [v10 setBytes:v18 length:8 atIndex:0];
  v17 = 1092616192;
  [v10 setBytes:&v17 length:4 atIndex:1];
  v12 = [v7 width];
  v13 = [v7 height];

  v16[0] = v12;
  v16[1] = v13;
  v16[2] = 1;
  v14 = xmmword_2244A5230;
  v15 = 1;
  [v10 dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [v10 endEncoding];
}

- (void)estimateDiffuseFromDisparity:(id)a3 outDiffuse:(id)a4
{
  metalContext = self->_metalContext;
  v7 = a4;
  v8 = a3;
  v9 = [(PTMetalContext *)metalContext commandBuffer];
  v10 = [v9 computeCommandEncoder];

  [v10 setComputePipelineState:self->_estimateDiffuseFromDisparity];
  v18[0] = (self->_sensorWidth * 0.5) / self->_focalLength;
  v11 = v18[0] * [v7 height];
  v18[1] = v11 / [v7 width];
  [v10 setTexture:v8 atIndex:0];

  [v10 setTexture:v7 atIndex:1];
  [v10 setBytes:v18 length:8 atIndex:0];
  v17 = 1092616192;
  [v10 setBytes:&v17 length:4 atIndex:1];
  v12 = [v7 width];
  v13 = [v7 height];

  v16[0] = v12;
  v16[1] = v13;
  v16[2] = 1;
  v14 = xmmword_2244A5230;
  v15 = 1;
  [v10 dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [v10 endEncoding];
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