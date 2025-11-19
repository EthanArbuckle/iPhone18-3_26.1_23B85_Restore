@interface CMIDeepZoomProcessorV2
- (CMIDeepZoomProcessorV2)init;
- (__n128)tileCount;
- (__n128)tileOverlap;
- (__n128)tileSize;
- (id)_getTuningTypeStringForProcessingType:(unsigned int)a3;
- (int)clearOutputBuffer:(__CVBuffer *)a3;
- (int)createInputTiles:(id)a3 atPosition:(id)a4 inputFullPixelBuffers:(id *)a5 cmdBuffer:;
- (int)prewarm;
- (int)process;
- (int)purgeResources;
- (int)resetState;
- (int)writeOutputTiles:(id)a3 atPosition:(__CVBuffer *)a4 outputPixelBuffer:(id)a5 inputTilePixelBuffers:(id)a6 inputFullPixelBuffers:(id *)a7 cmdBuffer:;
- (void)dealloc;
- (void)setZoomFactor:(CMIDeepZoomProcessorV2 *)self;
@end

@implementation CMIDeepZoomProcessorV2

- (void)dealloc
{
  [(CMIDeepZoomProcessorV2 *)self finishProcessing];
  [(CMIDeepZoomProcessorV2 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = CMIDeepZoomProcessorV2;
  [(CMIDeepZoomProcessorV2 *)&v3 dealloc];
}

- (id)_getTuningTypeStringForProcessingType:(unsigned int)a3
{
  if (a3 - 1 > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_18368 + a3 - 1);
  }
}

- (int)purgeResources
{
  deepZoomMetalStage = self->_deepZoomMetalStage;
  self->_deepZoomMetalStage = 0;

  metalContext = self->_metalContext;
  self->_metalContext = 0;

  return 0;
}

- (int)process
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [NSException raise:NSObjectNotAvailableException format:@"process method should be not used for this class %@", v3];

  return 0;
}

- (int)prewarm
{
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = self->_tuningParameters;
  v24 = [(NSDictionary *)v2 countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (!v24)
  {

    return 0;
  }

  obj = v2;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v22 = *v35;
  do
  {
    v6 = 0;
    do
    {
      if (*v35 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v27 = v6;
      v7 = *(*(&v34 + 1) + 8 * v6);
      v8 = [(NSDictionary *)self->_tuningParameters objectForKeyedSubscript:@"DefaultSensorIDs"];
      v9 = [v8 objectForKeyedSubscript:v7];

      v10 = [(NSDictionary *)self->_tuningParameters objectForKeyedSubscript:v7];
      v26 = v9;
      v11 = [v10 objectForKeyedSubscript:v9];
      v12 = [v11 objectForKeyedSubscript:@"DeepZoomParameters"];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v25 = v12;
      v13 = [v12 allKeys];
      v14 = [v13 countByEnumeratingWithState:&v29 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v30;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v30 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v29 + 1) + 8 * i);
            v5 |= [v18 isEqual:@"Lite"];
            v4 |= [v18 isEqual:@"Standard"];
            v3 |= [v18 isEqual:@"Transfer"];
          }

          v15 = [v13 countByEnumeratingWithState:&v29 objects:v28 count:16];
        }

        while (v15);
      }

      v6 = v27 + 1;
    }

    while ((v27 + 1) != v24);
    v24 = [(NSDictionary *)obj countByEnumeratingWithState:&v34 objects:v33 count:16];
  }

  while (v24);

  if ((v5 & 1) == 0)
  {
    v19 = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v19 = [(CMIDeepZoomProcessorV2 *)self prepareToProcess:1];
  if (v4)
  {
LABEL_20:
    v19 |= [(CMIDeepZoomProcessorV2 *)self prepareToProcess:2];
  }

LABEL_21:
  if (v3)
  {
    return [(CMIDeepZoomProcessorV2 *)self prepareToProcess:3]| v19;
  }

  return v19;
}

- (int)resetState
{
  modelNetworkBaseName = self->_modelNetworkBaseName;
  self->_modelNetworkBaseName = &stru_18510;

  modelInputBindingNames = self->_modelInputBindingNames;
  self->_modelInputBindingNames = &__NSArray0__struct;

  modelInputSizes = self->_modelInputSizes;
  self->_modelInputSizes = &__NSArray0__struct;

  modelInputPixelFormats = self->_modelInputPixelFormats;
  self->_modelInputPixelFormats = &__NSArray0__struct;

  modelInputSlicesCount = self->_modelInputSlicesCount;
  self->_modelInputSlicesCount = &__NSArray0__struct;

  modelOutputBindingNames = self->_modelOutputBindingNames;
  self->_modelOutputBindingNames = &__NSArray0__struct;

  modelOutputSizes = self->_modelOutputSizes;
  self->_modelOutputSizes = &__NSArray0__struct;

  modelOutputPixelFormats = self->_modelOutputPixelFormats;
  self->_modelOutputPixelFormats = &__NSArray0__struct;

  modelOutputSlicesCount = self->_modelOutputSlicesCount;
  self->_modelOutputSlicesCount = &__NSArray0__struct;

  *self->_tileSize = 0;
  *self->_tileCount = 0;
  *self->_inputROI = 0;
  *self->_zoomFactor = 0;
  portType = self->_portType;
  self->_portType = &stru_18510;

  return 0;
}

- (__n128)tileSize
{
  LOWORD(v1) = *(a1 + 28);
  WORD2(v1) = *(a1 + 30);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (__n128)tileOverlap
{
  LOWORD(v1) = *(a1 + 32);
  WORD2(v1) = *(a1 + 34);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (__n128)tileCount
{
  LOWORD(v1) = *(a1 + 36);
  WORD2(v1) = *(a1 + 38);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (CMIDeepZoomProcessorV2)init
{
  v6.receiver = self;
  v6.super_class = CMIDeepZoomProcessorV2;
  v2 = [(CMIDeepZoomProcessorV2 *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)setZoomFactor:(CMIDeepZoomProcessorV2 *)self
{
  if (*&v2 != 0.0 && *(&v2 + 1) != 0.0 && *&self->_inputROI[4])
  {
    v3 = *&self->_inputROI[6];
    if (*&self->_inputROI[6])
    {
      v4 = ((((*self->_tileSize + (*&v2 * *&self->_inputROI[4])) - *self->_tileOverlap) + -1.0) / (*self->_tileSize - *self->_tileOverlap));
      *self->_zoomFactor = v2;
      *&self->_tileCount[2] = ((((*&self->_tileSize[2] + (*(&v2 + 1) * v3)) - *&self->_tileOverlap[2]) + -1.0) / (*&self->_tileSize[2] - *&self->_tileOverlap[2]));
      *self->_tileCount = v4;
    }
  }
}

- (int)clearOutputBuffer:(__CVBuffer *)a3
{
  if (!a3)
  {
    return -12780;
  }

  if (!self->_portType)
  {
    return -12780;
  }

  deepZoomMetalStage = self->_deepZoomMetalStage;
  if (!deepZoomMetalStage)
  {
    return -12780;
  }

  processingType = self->_processingType;
  if (processingType == 2)
  {
    v9 = [(NSDictionary *)self->_tuningParameters objectForKeyedSubscript:0, 0, 0, 0];
    v10 = [v9 objectForKeyedSubscript:@"Standard"];
    v11 = [v10 objectForKeyedSubscript:@"LumaGainCoefX"];

    if ([v11 count] == &dword_4)
    {
      v12 = [(NSDictionary *)self->_tuningParameters objectForKeyedSubscript:self->_portType];
      v13 = [v12 objectForKeyedSubscript:@"Standard"];
      v14 = [v13 objectForKeyedSubscript:@"LumaGainCoefY"];

      if ([v14 count] == &dword_4)
      {
        for (i = 0; i != 4; ++i)
        {
          v16 = [v11 objectAtIndexedSubscript:i];
          [v16 floatValue];
          v17 = &v22 + i;
          *v17 = v18;

          v19 = [v14 objectAtIndexedSubscript:i];
          [v19 floatValue];
          v17[4] = v20;
        }

        if (![(CMIDeepZoomMetalStageV2 *)self->_deepZoomMetalStage configurePostProcess:&v22])
        {
          deepZoomMetalStage = self->_deepZoomMetalStage;

          return [(CMIDeepZoomMetalStageV2 *)deepZoomMetalStage clearBuffer:a3];
        }

        v8 = -12782;
LABEL_23:

        return v8;
      }
    }

    else
    {
      v14 = 0;
    }

    v8 = -12780;
    goto LABEL_23;
  }

  if (processingType != 1)
  {
    return [(CMIDeepZoomMetalStageV2 *)deepZoomMetalStage clearBuffer:a3];
  }

  if (COERCE_FLOAT(*self->_zoomFactor) == 2.0 && COERCE_FLOAT(HIDWORD(*self->_zoomFactor)) == 2.0)
  {
    return [(CMIDeepZoomMetalStageV2 *)deepZoomMetalStage clearBuffer:a3];
  }

  return -12786;
}

- (int)createInputTiles:(id)a3 atPosition:(id)a4 inputFullPixelBuffers:(id *)a5 cmdBuffer:
{
  v6 = v5;
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v19 = 0;
  if ([v10 count])
  {
    v12 = [v11 count];
    v13 = -12780;
    if (v6)
    {
      if (v12)
      {
        v14 = *self->_zoomFactor;
        if (*&v14 != 0.0 && *(&v14 + 1) != 0.0)
        {
          v15 = *self->_inputROI;
          v16 = vmovl_u16(v15);
          *v16.i8 = vceqz_s32(*&vextq_s8(v16, v16, 8uLL));
          if (((v16.i32[0] | v16.i32[1]) & 1) == 0)
          {
            LODWORD(v19) = v8;
            v18 = *self->_tileSize;
            v20 = v14;
            v21 = v15;
            v13 = [(CMIDeepZoomMetalStageV2 *)self->_deepZoomMetalStage cutTilesFrom:v11 to:v10 params:&v18 outCommandBuffer:v6];
          }
        }
      }
    }
  }

  else
  {
    v13 = -12780;
  }

  return v13;
}

- (int)writeOutputTiles:(id)a3 atPosition:(__CVBuffer *)a4 outputPixelBuffer:(id)a5 inputTilePixelBuffers:(id)a6 inputFullPixelBuffers:(id *)a7 cmdBuffer:
{
  v8 = v7;
  v12 = a4;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = [v14 count];
  v18 = -12780;
  if (a5)
  {
    if (v17)
    {
      if ([v15 count])
      {
        v19 = [v16 count];
        if (v8)
        {
          if (v19)
          {
            v20 = *self->_zoomFactor;
            if (*&v20 != 0.0 && *(&v20 + 1) != 0.0)
            {
              v21 = *self->_inputROI;
              v22 = vmovl_u16(v21);
              v23 = vceqz_s32(*&vextq_s8(v22, v22, 8uLL));
              if (((v23.i32[0] | v23.i32[1]) & 1) == 0)
              {
                v28 = v12;
                v27 = *self->_tileSize;
                v24 = v12;
                if (v12)
                {
                  if (v12 == *self->_tileCount - 1)
                  {
                    v24 = 2;
                  }

                  else
                  {
                    v24 = 1;
                  }
                }

                v23.i32[0] = v24;
                v23.i16[0] = vmovl_u16(v23).u16[0];
                if (v12 >= 0x10000)
                {
                  if (*&self->_tileCount[2] - 1 == HIWORD(v12))
                  {
                    v25 = 2;
                  }

                  else
                  {
                    v25 = 1;
                  }
                }

                else
                {
                  v25 = 0;
                }

                v30 = v25;
                v29 = v23.i16[0];
                v31 = v21;
                v18 = [(CMIDeepZoomMetalStageV2 *)self->_deepZoomMetalStage pasteTilesFrom:v15 with:v14 inputFullPixelBuffers:v16 to:a5 params:&v27 outCommandBuffer:v8];
              }
            }
          }
        }
      }
    }
  }

  return v18;
}

@end