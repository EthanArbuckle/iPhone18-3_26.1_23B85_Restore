@interface CMIColourConstancyStrobeDecompositionV1
- (CMIColourConstancyStrobeDecompositionV1)initWithMetalContext:(id)context;
- (int)encodeStrobeComponentCalculate:(id)calculate flashSensorRGBATexture:(id)texture ambientSensorRGBATexture:(id)aTexture strobeWhitePoint:(id)point outputStrobeComponentRGBATexture:;
@end

@implementation CMIColourConstancyStrobeDecompositionV1

- (CMIColourConstancyStrobeDecompositionV1)initWithMetalContext:(id)context
{
  contextCopy = context;
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

  if (!contextCopy)
  {
    sub_F720();
    goto LABEL_9;
  }

  objc_storeStrong(&v6->_metalContext, context);
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

- (int)encodeStrobeComponentCalculate:(id)calculate flashSensorRGBATexture:(id)texture ambientSensorRGBATexture:(id)aTexture strobeWhitePoint:(id)point outputStrobeComponentRGBATexture:
{
  v21 = v6;
  calculateCopy = calculate;
  textureCopy = texture;
  aTextureCopy = aTexture;
  v24 = v21;
  pointCopy = point;
  if (!calculateCopy)
  {
    sub_F884();
LABEL_7:
    v19 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [calculateCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_F810();
    goto LABEL_7;
  }

  v16 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_calculateStrobeComponentPipelineState];
  [v16 setTexture:textureCopy atIndex:0];
  [v16 setTexture:aTextureCopy atIndex:1];
  [v16 setTexture:pointCopy atIndex:2];
  [v16 setBytes:&v24 length:16 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_calculateStrobeComponentPipelineState threadExecutionWidth];
  v18 = [(MTLComputePipelineState *)self->_calculateStrobeComponentPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v23[0] = [pointCopy width];
  v23[1] = [pointCopy height];
  v23[2] = 1;
  v22[0] = threadExecutionWidth;
  v22[1] = v18;
  v22[2] = 1;
  [v16 dispatchThreads:v23 threadsPerThreadgroup:v22];
  [v16 endEncoding];

  v19 = 0;
LABEL_4:

  return v19;
}

@end