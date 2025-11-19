@interface CMIDeepZoomTransferPostProcMetalStageV2
- (CMIDeepZoomTransferPostProcMetalStageV2)initWithMetalContext:(id)a3 withTileConfiguration:(id *)a4;
- (int)processTileFrom:(id)a3 with:(id)a4 to:(id)a5 commandBuffer:(id)a6;
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

- (CMIDeepZoomTransferPostProcMetalStageV2)initWithMetalContext:(id)a3 withTileConfiguration:(id *)a4
{
  v7 = a3;
  if (!a4)
  {
    goto LABEL_11;
  }

  v8 = 0;
  if (*a4 && *(a4 + 1))
  {
    v14.receiver = self;
    v14.super_class = CMIDeepZoomTransferPostProcMetalStageV2;
    v9 = [(CMIDeepZoomTransferPostProcMetalStageV2 *)&v14 init];
    self = v9;
    if (!v9)
    {
      goto LABEL_9;
    }

    objc_storeStrong(&v9->_metalContext, a3);
    if (self->_metalContext || (+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), v10 = objc_claimAutoreleasedReturnValue(), v11 = [[FigMetalContext alloc] initWithbundle:v10 andOptionalCommandQueue:0], metalContext = self->_metalContext, self->_metalContext = v11, metalContext, v10, self->_metalContext))
    {
      if (!sub_FEDC(self) && !sub_108FC(self, *a4, *(a4 + 1)))
      {
LABEL_9:
        self = self;
        v8 = self;
        goto LABEL_10;
      }
    }

LABEL_11:
    v8 = 0;
  }

LABEL_10:

  return v8;
}

- (int)processTileFrom:(id)a3 with:(id)a4 to:(id)a5 commandBuffer:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  v15 = 0;
  v16 = -12780;
  if (v10 && v11 && v12)
  {
    v17 = v13;
    if (!v13)
    {
      v18 = [(FigMetalContext *)self->_metalContext commandQueue];
      v17 = [v18 commandBuffer];
    }

    objc_storeStrong(&self->_tileResiduals, a4);
    v19 = [v12 objectAtIndexedSubscript:0];
    tileOutputLuma = self->_tileOutputLuma;
    self->_tileOutputLuma = v19;

    v21 = [v12 objectAtIndexedSubscript:1];
    tileOutputChroma = self->_tileOutputChroma;
    self->_tileOutputChroma = v21;

    v15 = [v17 computeCommandEncoder];
    if ([v10 count] == &dword_0 + 1)
    {
      v23 = [v10 objectAtIndexedSubscript:0];
      sub_1165C(self, v23, self->_tileSourceLuma, self->_tileSourceChroma, v15);
    }

    else
    {
      sub_1177C(self, v10, self->_tileSourceLuma, self->_tileSourceChroma, v15);
    }

    v24 = sub_118F8(self, self->_tileSourceLuma, self->_tileSourceChroma, self->_tileSourceLPLuma, self->_tileSourceLPChroma, self->_tileResiduals, self->_tileEnhancedLuma, self->_tileEnhancedChroma, v15);
    if (v24 || (v24 = sub_11C80(self, self->_tileSourceLPLuma, self->_tileSourceLPChroma, self->_tileEnhancedLuma, self->_tileEnhancedChroma, self->_tileOutputLuma, self->_tileOutputChroma, v15)) != 0)
    {
      v16 = v24;
    }

    else
    {
      v16 = sub_12084(self, self->_tileSourceLuma, self->_tileOutputLuma, v15);
      if (!v16)
      {
        [v15 endEncoding];
        if (!v14)
        {
          if (v17)
          {
            [v17 commit];
            [v17 waitUntilScheduled];
            v16 = 0;
          }
        }
      }
    }
  }

  else
  {
    v17 = v13;
  }

  return v16;
}

@end