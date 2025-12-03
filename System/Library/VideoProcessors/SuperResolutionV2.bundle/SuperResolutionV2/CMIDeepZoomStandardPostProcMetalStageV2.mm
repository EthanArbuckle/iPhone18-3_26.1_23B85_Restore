@interface CMIDeepZoomStandardPostProcMetalStageV2
- (CMIDeepZoomStandardPostProcMetalStageV2)initWithMetalContext:(id)context withTileConfiguration:(id *)configuration;
- (int)configureLumaGainLUT:(id *)t;
- (void)dealloc;
@end

@implementation CMIDeepZoomStandardPostProcMetalStageV2

- (CMIDeepZoomStandardPostProcMetalStageV2)initWithMetalContext:(id)context withTileConfiguration:(id *)configuration
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
    v14.super_class = CMIDeepZoomStandardPostProcMetalStageV2;
    v9 = [(CMIDeepZoomStandardPostProcMetalStageV2 *)&v14 init];
    self = v9;
    if (!v9)
    {
      goto LABEL_9;
    }

    objc_storeStrong(&v9->_metalContext, context);
    if (self->_metalContext || (+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), v10 = objc_claimAutoreleasedReturnValue(), v11 = [[FigMetalContext alloc] initWithbundle:v10 andOptionalCommandQueue:0], metalContext = self->_metalContext, self->_metalContext = v11, metalContext, v10, self->_metalContext))
    {
      if (!sub_7B9C(self) && !sub_86F4(self, *configuration, *(configuration + 1)))
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

- (int)configureLumaGainLUT:(id *)t
{
  if (!t)
  {
    return -12780;
  }

  v7 = 0;
  v8 = 0;
  p_controlParams = &self->_controlParams;
  lumaGainCoefY = self->_controlParams.lumaGainCoefY;
LABEL_3:
  v11 = v7 - 4;
  v12 = &t->var1[v7];
  v13 = &lumaGainCoefY[v7];
  do
  {
    v14 = *(v12 - 4);
    if (*(v13 - 4) != v14 || *v13 != *v12)
    {
      *(v13 - 4) = v14;
      *v13 = *v12;
      v7 = v11 + 5;
      v8 = 1;
      if (v11 != -1)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    *(v13 - 4) = v14;
    v15 = *v12++;
    *v13++ = v15;
  }

  while (!__CFADD__(v11++, 1));
  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v17 = 0;
  lumaGainLUT = self->_lumaGainLUT;
  LODWORD(v3) = 1132396544;
  LODWORD(v4) = 1.0;
  LODWORD(v5) = 3.0;
  LODWORD(v6) = -2.0;
  do
  {
    v19 = v17 / 255.0;
    v20 = 4;
    do
    {
      v21 = v20 - 2;
      v22 = p_controlParams->lumaGainCoefX[v21];
      --v20;
    }

    while (v19 < v22);
    v23 = lumaGainCoefY[v21];
    v24 = lumaGainCoefY[v20];
    v25 = (v19 - v22) / (p_controlParams->lumaGainCoefX[v20] - v22);
    if (v25 > 1.0)
    {
      v25 = 1.0;
    }

    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    v26 = (v25 * v25) * ((v25 * -2.0) + 3.0);
    v27 = v24 + ((v23 - v24) * (1.0 - v26));
    v28 = v23 + ((v24 - v23) * v26);
    if (v23 > v24)
    {
      v28 = v27;
    }

    lumaGainLUT[v17++] = v28;
  }

  while (v17 != 256);
  memcpy([(MTLBuffer *)self->_lumaGainLUTBuffer contents:v3], lumaGainLUT, 0x400uLL);
  return 0;
}

- (void)dealloc
{
  sub_A94C(self);
  v3.receiver = self;
  v3.super_class = CMIDeepZoomStandardPostProcMetalStageV2;
  [(CMIDeepZoomStandardPostProcMetalStageV2 *)&v3 dealloc];
}

@end