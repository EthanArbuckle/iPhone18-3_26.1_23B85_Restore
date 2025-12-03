@interface RTSCShadersV1
- (RTSCShadersV1)initWithContext:(id)context;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
@end

@implementation RTSCShadersV1

- (RTSCShadersV1)initWithContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_context, context);
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
    selfCopy = self;
  }

  else
  {
LABEL_6:
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  if (subscript <= 3)
  {
    v4 = self->_kernels[subscript];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end