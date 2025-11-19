@interface RTSCShadersV1
- (RTSCShadersV1)initWithContext:(id)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
@end

@implementation RTSCShadersV1

- (RTSCShadersV1)initWithContext:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_context, a3);
  v6 = [(FigMetalContext *)self->_context computePipelineStateFor:@"RTSC::Render" constants:0];
  v7 = self->_kernels[0];
  self->_kernels[0] = v6;

  if (!self->_kernels[0])
  {
    goto LABEL_6;
  }

  v8 = [(FigMetalContext *)self->_context computePipelineStateFor:@"RTSC::Downsample" constants:0];
  v9 = self->_kernels[1];
  self->_kernels[1] = v8;

  if (!self->_kernels[1])
  {
    goto LABEL_6;
  }

  v10 = [(FigMetalContext *)self->_context computePipelineStateFor:@"RTSC::ReplaceRegion" constants:0];
  v11 = self->_kernels[2];
  self->_kernels[2] = v10;

  if (self->_kernels[2])
  {
    v12 = self;
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  if (a3 <= 3)
  {
    v4 = self->_kernels[a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end