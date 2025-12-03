@interface CMIDeepZoomTransferPostProcMetalStageV2
- (CMIDeepZoomTransferPostProcMetalStageV2)initWithMetalContext:(id)context withTileConfiguration:(id *)configuration;
- (int)processTileFrom:(id)from with:(id)with to:(id)to commandBuffer:(id)buffer;
- (void)dealloc;
@end

@implementation CMIDeepZoomTransferPostProcMetalStageV2

- (void)dealloc
{
  sub_12570(self);
  v3.receiver = self;
  v3.super_class = CMIDeepZoomTransferPostProcMetalStageV2;
  [(CMIDeepZoomTransferPostProcMetalStageV2 *)&v3 dealloc];
}

- (CMIDeepZoomTransferPostProcMetalStageV2)initWithMetalContext:(id)context withTileConfiguration:(id *)configuration
{
  contextCopy = context;
  if (!configuration)
  {
    goto LABEL_11;
  }

  selfCopy = 0;
  if (*configuration && *(configuration + 1))
  {
    v14.receiver = self;
    v14.super_class = CMIDeepZoomTransferPostProcMetalStageV2;
    v9 = [(CMIDeepZoomTransferPostProcMetalStageV2 *)&v14 init];
    self = v9;
    if (!v9)
    {
      goto LABEL_9;
    }

    objc_storeStrong(&v9->_metalContext, context);
    if (self->_metalContext || (+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), v10 = objc_claimAutoreleasedReturnValue(), v11 = [[FigMetalContext alloc] initWithbundle:v10 andOptionalCommandQueue:0], metalContext = self->_metalContext, self->_metalContext = v11, metalContext, v10, self->_metalContext))
    {
      if (!sub_FEDC(self) && !sub_108FC(self, *configuration, *(configuration + 1)))
      {
LABEL_9:
        self = self;
        selfCopy = self;
        goto LABEL_10;
      }
    }

LABEL_11:
    selfCopy = 0;
  }

LABEL_10:

  return selfCopy;
}

- (int)processTileFrom:(id)from with:(id)with to:(id)to commandBuffer:(id)buffer
{
  fromCopy = from;
  withCopy = with;
  toCopy = to;
  bufferCopy = buffer;
  v14 = bufferCopy;
  computeCommandEncoder = 0;
  v16 = -12780;
  if (fromCopy && withCopy && toCopy)
  {
    commandBuffer = bufferCopy;
    if (!bufferCopy)
    {
      commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
      commandBuffer = [commandQueue commandBuffer];
    }

    objc_storeStrong(&self->_tileResiduals, with);
    v19 = [toCopy objectAtIndexedSubscript:0];
    tileOutputLuma = self->_tileOutputLuma;
    self->_tileOutputLuma = v19;

    v21 = [toCopy objectAtIndexedSubscript:1];
    tileOutputChroma = self->_tileOutputChroma;
    self->_tileOutputChroma = v21;

    computeCommandEncoder = [commandBuffer computeCommandEncoder];
    if ([fromCopy count] == &dword_0 + 1)
    {
      v23 = [fromCopy objectAtIndexedSubscript:0];
      sub_1165C(self, v23, self->_tileSourceLuma, self->_tileSourceChroma, computeCommandEncoder);
    }

    else
    {
      sub_1177C(self, fromCopy, self->_tileSourceLuma, self->_tileSourceChroma, computeCommandEncoder);
    }

    v24 = sub_118F8(self, self->_tileSourceLuma, self->_tileSourceChroma, self->_tileSourceLPLuma, self->_tileSourceLPChroma, self->_tileResiduals, self->_tileEnhancedLuma, self->_tileEnhancedChroma, computeCommandEncoder);
    if (v24 || (v24 = sub_11C80(self, self->_tileSourceLPLuma, self->_tileSourceLPChroma, self->_tileEnhancedLuma, self->_tileEnhancedChroma, self->_tileOutputLuma, self->_tileOutputChroma, computeCommandEncoder)) != 0)
    {
      v16 = v24;
    }

    else
    {
      v16 = sub_12084(self, self->_tileSourceLuma, self->_tileOutputLuma, computeCommandEncoder);
      if (!v16)
      {
        [computeCommandEncoder endEncoding];
        if (!v14)
        {
          if (commandBuffer)
          {
            [commandBuffer commit];
            [commandBuffer waitUntilScheduled];
            v16 = 0;
          }
        }
      }
    }
  }

  else
  {
    commandBuffer = bufferCopy;
  }

  return v16;
}

@end