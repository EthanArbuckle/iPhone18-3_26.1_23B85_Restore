@interface CMIColourConstancyStrobeDecompositionV1
- (CMIColourConstancyStrobeDecompositionV1)initWithMetalContext:(id)a3;
- (int)encodeStrobeComponentCalculate:(id)a3 flashSensorRGBATexture:(id)a4 ambientSensorRGBATexture:(id)a5 strobeWhitePoint:(id)a6 outputStrobeComponentRGBATexture:;
@end

@implementation CMIColourConstancyStrobeDecompositionV1

- (CMIColourConstancyStrobeDecompositionV1)initWithMetalContext:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CMIColourConstancyStrobeDecompositionV1;
  v6 = [(CMIColourConstancyStrobeDecompositionV1 *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    sub_F798();
LABEL_9:
    v10 = 0;
    goto LABEL_5;
  }

  if (!v5)
  {
    sub_F720();
    goto LABEL_9;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  v8 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::calculateStrobeComponentV1" constants:0];
  calculateStrobeComponentPipelineState = v7->_calculateStrobeComponentPipelineState;
  v7->_calculateStrobeComponentPipelineState = v8;

  if (!v7->_calculateStrobeComponentPipelineState)
  {
    sub_F6A8();
    goto LABEL_9;
  }

  v10 = v7;
LABEL_5:

  return v10;
}

- (int)encodeStrobeComponentCalculate:(id)a3 flashSensorRGBATexture:(id)a4 ambientSensorRGBATexture:(id)a5 strobeWhitePoint:(id)a6 outputStrobeComponentRGBATexture:
{
  v21 = v6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v24 = v21;
  v14 = a6;
  if (!v11)
  {
    sub_F884();
LABEL_7:
    v19 = 10;
    goto LABEL_4;
  }

  v15 = [v11 computeCommandEncoder];
  if (!v15)
  {
    sub_F810();
    goto LABEL_7;
  }

  v16 = v15;
  [v15 setComputePipelineState:self->_calculateStrobeComponentPipelineState];
  [v16 setTexture:v12 atIndex:0];
  [v16 setTexture:v13 atIndex:1];
  [v16 setTexture:v14 atIndex:2];
  [v16 setBytes:&v24 length:16 atIndex:0];
  v17 = [(MTLComputePipelineState *)self->_calculateStrobeComponentPipelineState threadExecutionWidth];
  v18 = [(MTLComputePipelineState *)self->_calculateStrobeComponentPipelineState maxTotalThreadsPerThreadgroup]/ v17;
  v23[0] = [v14 width];
  v23[1] = [v14 height];
  v23[2] = 1;
  v22[0] = v17;
  v22[1] = v18;
  v22[2] = 1;
  [v16 dispatchThreads:v23 threadsPerThreadgroup:v22];
  [v16 endEncoding];

  v19 = 0;
LABEL_4:

  return v19;
}

@end