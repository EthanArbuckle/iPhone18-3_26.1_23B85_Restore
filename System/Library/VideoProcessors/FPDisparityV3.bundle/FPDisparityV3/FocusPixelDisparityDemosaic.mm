@interface FocusPixelDisparityDemosaic
- (FocusPixelDisparityDemosaic)initWithMetalContext:(id)context;
- (void)dealloc;
@end

@implementation FocusPixelDisparityDemosaic

- (FocusPixelDisparityDemosaic)initWithMetalContext:(id)context
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = FocusPixelDisparityDemosaic;
  v6 = [(FocusPixelDisparityDemosaic *)&v18 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v6->_mtlContext, context);
  v10 = objc_msgSend_commandQueue(contextCopy, v8, v9);
  commandQueue = v7->_commandQueue;
  v7->_commandQueue = v10;

  v13 = objc_opt_new();
  if (!v13)
  {
    sub_2957998AC();
LABEL_9:

    v16 = 0;
    goto LABEL_6;
  }

  v14 = objc_msgSend_computePipelineStateFor_constants_(v7->_mtlContext, v12, @"demosaicHamiltonAdam", v13);
  v15 = v7->_pipelineStates[0];
  v7->_pipelineStates[0] = v14;

  if (!v7->_pipelineStates[0])
  {
    sub_295799834();
    goto LABEL_9;
  }

LABEL_5:
  v16 = v7;
LABEL_6:

  return v16;
}

- (void)dealloc
{
  objc_msgSend_waitForIdle(self->_mtlContext, a2, v2);
  objc_msgSend_releaseResources(self, v4, v5);
  v6.receiver = self;
  v6.super_class = FocusPixelDisparityDemosaic;
  [(FocusPixelDisparityDemosaic *)&v6 dealloc];
}

@end