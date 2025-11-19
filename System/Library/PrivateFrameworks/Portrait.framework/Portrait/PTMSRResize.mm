@interface PTMSRResize
- (PTMSRResize)init;
- (PTMSRResize)initWithMetalContext:(id)a3 inputSize:(id *)a4 targetSize:(id *)a5 rotateTargetPixelBuffer:(BOOL)a6 compressedIntermediates:(BOOL)a7 sRGB:(BOOL)a8 sharedResources:(id)a9;
- (id)addAdditionalOutput:(id *)a3 allowCompressed:(BOOL)a4;
- (id)addAdditionalOutput:(id *)a3 allowCompressed:(BOOL)a4 pixelFormat:(unsigned int)a5 highQuality:(BOOL)a6;
- (id)computeDownsamplingStepsWithInputSize:(id *)a3 targetSize:(id *)a4;
- (int)downsampleToLayer:(int)a3 source:(__CVBuffer *)a4 dest:(__CVBuffer *)a5;
- (unsigned)downsample:(__CVBuffer *)a3;
- (unsigned)transform:(__CVBuffer *)a3 crop:(int)a4 rotationDegree:(__CVBuffer *)a5 toDest:(BOOL)a6 synchronous:;
- (void)dealloc;
@end

@implementation PTMSRResize

- (PTMSRResize)init
{
  v7.receiver = self;
  v7.super_class = PTMSRResize;
  v2 = [(PTMSRResize *)&v7 init];
  if (v2)
  {
    v2->_hasMSR = MGGetBoolAnswer();
    v2->_allocatedIOSurfaces = 0;
    v2->_runOptions = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v2->_csRGBLinear = CGColorSpaceCreateWithName(*MEMORY[0x277CBF460]);
    v2->_csSRGB = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    if (v2->_hasMSR)
    {
      v3 = objc_opt_new();
      msrController = v2->_msrController;
      v2->_msrController = v3;
    }

    v5 = v2;
  }

  return v2;
}

- (PTMSRResize)initWithMetalContext:(id)a3 inputSize:(id *)a4 targetSize:(id *)a5 rotateTargetPixelBuffer:(BOOL)a6 compressedIntermediates:(BOOL)a7 sRGB:(BOOL)a8 sharedResources:(id)a9
{
  v9 = a8;
  v69 = a7;
  v10 = a6;
  v77[2] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a9;
  v17 = [(PTMSRResize *)self init];
  if (v17)
  {
    v61 = v10;
    v63 = v16;
    v64 = v15;
    PTKTraceInit();
    objc_storeStrong(&v17->_metalContext, a3);
    v62 = v9;
    v17->_sRGB = v9;
    v18 = *&a4->var0;
    v17->_inputSize.depth = a4->var2;
    *&v17->_inputSize.width = v18;
    v19 = objc_opt_new();
    additionalSteps = v17->_additionalSteps;
    v17->_additionalSteps = v19;

    v17->_enablePyramidDownsampling = 1;
    v72 = *&a4->var0;
    var2 = a4->var2;
    v70 = *&a5->var0;
    v60 = a5;
    v71 = a5->var2;
    v21 = [(PTMSRResize *)v17 computeDownsamplingStepsWithInputSize:&v72 targetSize:&v70];
    v68 = v21;
    if ([v21 count])
    {
      v22 = 0;
      allocator = *MEMORY[0x277CBECE8];
      v66 = *MEMORY[0x277CC4DE8];
      v23 = *MEMORY[0x277CC4D60];
      outputPixelbuffer = v17->_outputPixelbuffer;
      if (v9)
      {
        v25 = 208;
      }

      else
      {
        v25 = 200;
      }

      key = *MEMORY[0x277CD29C0];
      while (1)
      {
        v26 = [v21 objectAtIndexedSubscript:v22];
        v27 = [v21 count];
        if (v17->_allocatedIOSurfaces >= 10)
        {
          [PTMSRResize initWithMetalContext:inputSize:targetSize:rotateTargetPixelBuffer:compressedIntermediates:sRGB:sharedResources:];
        }

        v28 = v22 != v27 - 1 && v69;
        v29 = [PTPixelBufferUtil compressedPixelFormat:1111970369 compression:v28];
        v30 = [v26 width];
        v31 = [v26 height];
        v76[0] = v66;
        v76[1] = v23;
        v77[0] = MEMORY[0x277CBEC10];
        v77[1] = &unk_2837F3100;
        v32 = CVPixelBufferCreate(allocator, v30, v31, v29, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2], &outputPixelbuffer[v17->_allocatedIOSurfaces]);
        if (v32)
        {
          break;
        }

        IOSurface = CVPixelBufferGetIOSurface(outputPixelbuffer[v17->_allocatedIOSurfaces]);
        v17->_outputIOSurface[v17->_allocatedIOSurfaces] = IOSurface;
        if (!IOSurface)
        {
          v42 = _PTLogSystem();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            [PTMSRResize initWithMetalContext:inputSize:targetSize:rotateTargetPixelBuffer:compressedIntermediates:sRGB:sharedResources:];
          }

          goto LABEL_32;
        }

        v34 = IOSurface;
        v35 = *(&v17->super.isa + v25);
        if (v35)
        {
          v36 = CGColorSpaceCopyPropertyList(v35);
          if (v36)
          {
            v37 = v36;
            IOSurfaceSetValue(v34, key, v36);
            CFRelease(v37);
          }
        }

        ++v17->_allocatedIOSurfaces;

        ++v22;
        v21 = v68;
        if ([v68 count] <= v22)
        {
          goto LABEL_17;
        }
      }

      v54 = v32;
      v42 = _PTLogSystem();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [PTMSRResize initWithMetalContext:v29 inputSize:v54 targetSize:v42 rotateTargetPixelBuffer:? compressedIntermediates:? sRGB:? sharedResources:?];
      }

LABEL_32:
      v16 = v63;
      v15 = v64;
      v52 = v68;
      goto LABEL_36;
    }

LABEL_17:
    v26 = objc_opt_new();
    if (v17->_allocatedIOSurfaces >= 1)
    {
      v38 = 0;
      v39 = v17->_outputPixelbuffer;
      while (1)
      {
        v40 = MEMORY[0x277CD7058];
        Width = CVPixelBufferGetWidth(v39[v38]);
        v42 = [v40 texture2DDescriptorWithPixelFormat:81 width:Width height:CVPixelBufferGetHeight(v39[v38]) mipmapped:0];
        [v42 setUsage:[PTPixelBufferUtil getNoConcurrentAccessHint:v39[v38]]| 3];
        v43 = [(PTMetalContext *)v17->_metalContext device];
        v44 = [v43 newTextureWithDescriptor:v42 iosurface:CVPixelBufferGetIOSurface(v39[v38]) plane:0];

        if (!v44)
        {
          break;
        }

        [v26 addObject:v44];

        if (++v38 >= v17->_allocatedIOSurfaces)
        {
          goto LABEL_21;
        }
      }

      v55 = _PTLogSystem();
      v16 = v63;
      v15 = v64;
      v52 = v68;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        [PTMSRResize initWithMetalContext:inputSize:targetSize:rotateTargetPixelBuffer:compressedIntermediates:sRGB:sharedResources:];
      }

LABEL_36:
LABEL_37:
      v53 = 0;
LABEL_44:

      goto LABEL_45;
    }

LABEL_21:
    v45 = [v26 copy];
    pyramidRGBA = v17->_pyramidRGBA;
    v17->_pyramidRGBA = v45;

    v17->_rotateTargetPixelBuffer = v61;
    v15 = v64;
    if (v61 && v17->_hasMSR)
    {
      v47 = *MEMORY[0x277CBECE8];
      var0 = v60->var0;
      var1 = v60->var1;
      v50 = *MEMORY[0x277CC4D60];
      v74[0] = *MEMORY[0x277CC4DE8];
      v74[1] = v50;
      v75[0] = MEMORY[0x277CBEC10];
      v75[1] = &unk_2837F3100;
      if (CVPixelBufferCreate(v47, var1, var0, 0x42475241u, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2], &v17->_outputPixelbuffer[v17->_allocatedIOSurfaces]))
      {
        v51 = _PTLogSystem();
        v16 = v63;
        v52 = v68;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          [PTMSRResizeAdditionalOutput initWithSize:colorSpace:pixelFormat:allowCompressed:metalDevice:];
        }

        goto LABEL_37;
      }

      v56 = CVPixelBufferGetIOSurface(v17->_outputPixelbuffer[v17->_allocatedIOSurfaces]);
      v17->_outputIOSurface[v17->_allocatedIOSurfaces] = v56;
      if (!v56)
      {
        v59 = _PTLogSystem();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          [PTMSRResize initWithMetalContext:inputSize:targetSize:rotateTargetPixelBuffer:compressedIntermediates:sRGB:sharedResources:];
        }

        v53 = 0;
        goto LABEL_43;
      }

      v57 = 200;
      if (v62)
      {
        v57 = 208;
      }

      PTIOSurfaceSetColorSpace(v56, *(&v17->super.isa + v57));
      ++v17->_allocatedIOSurfaces;
    }

    v53 = v17;
LABEL_43:
    v16 = v63;
    v52 = v68;
    goto LABEL_44;
  }

  v53 = 0;
LABEL_45:

  return v53;
}

- (id)computeDownsamplingStepsWithInputSize:(id *)a3 targetSize:(id *)a4
{
  v6 = objc_opt_new();
  v7 = vmovn_s64(*&a4->var0);
  *&v8 = vmovn_s64(*&a3->var0);
  while (1)
  {
    v9 = vmvn_s8(vceq_s32(*&v8, v7));
    if ((vpmax_u32(v9, v9).u32[0] & 0x80000000) == 0)
    {
      v21 = v8;
      v10 = [v6 count];
      v8 = v21;
      if (v10)
      {
        break;
      }
    }

    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v25 = v8;
      v14 = *(&v25 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
      v24 = v7;
      v15 = *(&v24 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
      v16 = v14 / v15;
      if (v16 > 4.0)
      {
        v17 = v16 * 0.5;
        if (v17 >= 4.0)
        {
          v17 = 4.0;
        }

        v18 = v17;
        v15 = llroundf(v14 / v18);
      }

      v12 = 0;
      v23 = v8;
      *(&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1))) = v15;
      v11 = 1;
      *&v8 = v23;
    }

    while ((v13 & 1) != 0);
    v22 = v8;
    v19 = [[PTPixelBufferSize alloc] initWithWidth:v22 height:DWORD1(v22)];
    [v6 addObject:v19];

    v8 = v22;
  }

  return v6;
}

- (id)addAdditionalOutput:(id *)a3 allowCompressed:(BOOL)a4
{
  v6 = *a3;
  v4 = [(PTMSRResize *)self addAdditionalOutput:&v6 allowCompressed:a4 pixelFormat:1111970369 highQuality:0];

  return v4;
}

- (id)addAdditionalOutput:(id *)a3 allowCompressed:(BOOL)a4 pixelFormat:(unsigned int)a5 highQuality:(BOOL)a6
{
  v7 = *&a5;
  v8 = a4;
  v11 = [(NSArray *)self->_pyramidRGBA count]- 1;
  if (a6)
  {
    if ((self->_inputSize.width / a3->var0) <= 4.0 && (self->_inputSize.height / a3->var1) <= 4.0)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else if (self->_allocatedIOSurfaces >= 1)
    {
      v12 = 0;
      while (1)
      {
        v13 = [(NSArray *)self->_pyramidRGBA objectAtIndexedSubscript:v12];
        v14 = [v13 width];

        v15 = [(NSArray *)self->_pyramidRGBA objectAtIndexedSubscript:v12];
        v16 = [v15 height];

        if ((v14 / a3->var0) <= 4.0 && (v16 / a3->var1) <= 4.0)
        {
          break;
        }

        if (++v12 >= self->_allocatedIOSurfaces)
        {
          goto LABEL_31;
        }
      }

      v11 = v12;
    }

    goto LABEL_31;
  }

  if (self->_allocatedIOSurfaces >= 1)
  {
    v18 = 0;
    while (1)
    {
      var0 = a3->var0;
      v20 = [(NSArray *)self->_pyramidRGBA objectAtIndexedSubscript:v18];
      if (var0 > [v20 width])
      {
        break;
      }

      var1 = a3->var1;
      v22 = [(NSArray *)self->_pyramidRGBA objectAtIndexedSubscript:v18];
      v23 = [v22 height];

      if (var1 > v23)
      {
        goto LABEL_21;
      }

      if (++v18 >= self->_allocatedIOSurfaces)
      {
        goto LABEL_25;
      }
    }

LABEL_21:
    if (v18 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v18;
    }

    v11 = (v24 - 1);
  }

LABEL_25:
  v25 = a3->var0;
  v26 = [(NSArray *)self->_pyramidRGBA objectAtIndexedSubscript:v11];
  if ([v26 width] <= 4 * v25)
  {
    v27 = a3->var1;
    v28 = [(NSArray *)self->_pyramidRGBA objectAtIndexedSubscript:v11];
    v29 = [v28 height];

    if (v29 <= 4 * v27)
    {
LABEL_31:
      v32 = [PTMSRResizeAdditionalOutput alloc];
      v33 = 200;
      if (self->_sRGB)
      {
        v33 = 208;
      }

      v34 = *(&self->super.isa + v33);
      v35 = [(PTMetalContext *)self->_metalContext device];
      v37 = *&a3->var0;
      var2 = a3->var2;
      v31 = [(PTMSRResizeAdditionalOutput *)v32 initWithSize:&v37 colorSpace:v34 pixelFormat:v7 allowCompressed:v8 metalDevice:v35];

      [(PTMSRResizeAdditionalOutput *)v31 setSourcePyramidIndex:v11];
      [(NSMutableArray *)self->_additionalSteps addObject:v31];
      goto LABEL_34;
    }
  }

  else
  {
  }

  v30 = _PTLogSystem();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [PTMSRResize addAdditionalOutput:allowCompressed:pixelFormat:highQuality:];
  }

  v31 = 0;
LABEL_34:

  return v31;
}

- (void)dealloc
{
  CFRelease(self->_runOptions);
  CFRelease(self->_csRGBLinear);
  CFRelease(self->_csSRGB);
  allocatedIOSurfaces = self->_allocatedIOSurfaces;
  if (allocatedIOSurfaces >= 1)
  {
    v4 = 0;
    outputPixelbuffer = self->_outputPixelbuffer;
    do
    {
      v6 = outputPixelbuffer[v4];
      if (v6)
      {
        CVPixelBufferRelease(v6);
        outputPixelbuffer[v4] = 0;
        allocatedIOSurfaces = self->_allocatedIOSurfaces;
      }

      ++v4;
    }

    while (v4 < allocatedIOSurfaces);
  }

  v7.receiver = self;
  v7.super_class = PTMSRResize;
  [(PTMSRResize *)&v7 dealloc];
}

- (unsigned)downsample:(__CVBuffer *)a3
{
  v44 = *MEMORY[0x277D85DE8];
  if (!self->_allocatedIOSurfaces)
  {
    v6 = _PTLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PTMSRResize downsample:];
    }

    return -10;
  }

  if (!self->_hasMSR)
  {
    v8 = _PTLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PTMSRResize downsample:];
    }

    return 0;
  }

  kdebug_trace();
  if (self->_enablePyramidDownsampling)
  {
    allocatedIOSurfaces = self->_allocatedIOSurfaces;
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v9 = self->_additionalSteps;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      allocatedIOSurfaces = 0;
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          if (allocatedIOSurfaces <= ([v14 sourcePyramidIndex] + 1))
          {
            allocatedIOSurfaces = [v14 sourcePyramidIndex] + 1;
          }
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v11);
    }

    else
    {
      allocatedIOSurfaces = 0;
    }
  }

  if (allocatedIOSurfaces < 1)
  {
LABEL_29:
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = self->_additionalSteps;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v35;
      while (2)
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v34 + 1) + 8 * j);
          if ([v24 enabled])
          {
            v25 = a3;
            if ([v24 sourcePyramidIndex] != -1)
            {
              v25 = self->_outputPixelbuffer[[v24 sourcePyramidIndex]];
            }

            msrController = self->_msrController;
            v27 = [v24 pixelbuffer];
            LODWORD(v28) = 1.0;
            LODWORD(v29) = 1.0;
            [(FigM2MController *)msrController setCustomFilter:3 alignment:2 src:v25 dst:v27 luma_param:v28 chroma_param:v29];
            v30 = -[FigM2MController downsample:dst:sync_m2m:](self->_msrController, "downsample:dst:sync_m2m:", v25, [v24 pixelbuffer], 0);
            if (v30)
            {
              v7 = v30;
              v31 = _PTLogSystem();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                [PTMSRResize downsample:];
              }

              return v7;
            }
          }
        }

        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    kdebug_trace();
    return 0;
  }

  v15 = 0;
  while (1)
  {
    v16 = &self->super.isa + v15;
    v17 = a3;
    if (v15)
    {
      v17 = v16[1];
    }

    v18 = [(PTMSRResize *)self downsampleToLayer:v15 source:v17 dest:v16[2]];
    if (v18)
    {
      break;
    }

    if (allocatedIOSurfaces == ++v15)
    {
      goto LABEL_29;
    }
  }

  v7 = v18;
  v32 = _PTLogSystem();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    [(PTMSRResize *)self downsample:v15, v32];
  }

  return v7;
}

- (int)downsampleToLayer:(int)a3 source:(__CVBuffer *)a4 dest:(__CVBuffer *)a5
{
  if (self->_allocatedIOSurfaces - 1 == a3 && self->_rotateTargetPixelBuffer)
  {

    return [(PTMSRResize *)self transform:a4 crop:90 rotationDegree:a5 toDest:0 synchronous:0.0];
  }

  else
  {
    LODWORD(v5) = 1.0;
    LODWORD(v6) = 1.0;
    [(FigM2MController *)self->_msrController setCustomFilter:3 alignment:2 src:a4 dst:a5 luma_param:v5 chroma_param:v6];
    msrController = self->_msrController;
    v12 = self->_outputPixelbuffer[a3];

    return [(FigM2MController *)msrController downsample:a4 dst:v12 sync_m2m:0];
  }
}

- (unsigned)transform:(__CVBuffer *)a3 crop:(int)a4 rotationDegree:(__CVBuffer *)a5 toDest:(BOOL)a6 synchronous:
{
  if (*&v6 >= 0.0)
  {
    v7 = *&v6 + *(&v6 + 2);
    v8 = *(&v6 + 1);
    v9 = *(&v6 + 1) >= 0.0 && v7 <= 1.0;
    v10 = *(&v6 + 1) + *(&v6 + 3);
    if (v9 && v10 <= 1.0)
    {
      v14 = a6;
      v31 = v6;
      Width = CVPixelBufferGetWidth(a3);
      Height = CVPixelBufferGetHeight(a3);
      v21 = (*&v31 * Width);
      v22 = (v8 * Height);
      v23 = (v7 * Width);
      v24 = (v10 * Height);
      v25 = CVPixelBufferGetWidth(a5);
      v28 = CVPixelBufferGetHeight(a5);
      if (a4 > 179)
      {
        if (a4 == 180)
        {
          v29 = 3;
          goto LABEL_24;
        }

        if (a4 == 270)
        {
          v29 = 8;
          goto LABEL_24;
        }
      }

      else
      {
        if (!a4)
        {
LABEL_22:
          v29 = 1;
          goto LABEL_24;
        }

        if (a4 == 90)
        {
          v29 = 6;
LABEL_24:
          LODWORD(v26) = 1.0;
          LODWORD(v27) = 1.0;
          [(FigM2MController *)self->_msrController setCustomFilter:3 alignment:2 src:a3 dst:a5 luma_param:v26 chroma_param:v27, v31];
          return [(FigM2MController *)self->_msrController transform:a3 srcRect:a5 dst:v29 dstRect:v14 rotate:v21 sync_m2m:v22, v23, v24, 0.0, 0.0, v25, v28];
        }
      }

      v30 = _PTLogSystem();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [PTMSRResize transform:crop:rotationDegree:toDest:synchronous:];
      }

      goto LABEL_22;
    }
  }

  v12 = _PTLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [PTMSRResize transform:crop:rotationDegree:toDest:synchronous:];
  }

  return -1;
}

- (void)initWithMetalContext:(NSObject *)a3 inputSize:targetSize:rotateTargetPixelBuffer:compressedIntermediates:sRGB:sharedResources:.cold.1(unsigned int a1, int a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromFourCharCode(a1);
  v6[0] = 67109378;
  v6[1] = a2;
  v7 = 2112;
  v8 = v5;
  _os_log_error_impl(&dword_2243FB000, a3, OS_LOG_TYPE_ERROR, "CVPixelBufferCreate failed %i using %@", v6, 0x12u);
}

- (void)initWithMetalContext:inputSize:targetSize:rotateTargetPixelBuffer:compressedIntermediates:sRGB:sharedResources:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithMetalContext:inputSize:targetSize:rotateTargetPixelBuffer:compressedIntermediates:sRGB:sharedResources:.cold.5()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addAdditionalOutput:allowCompressed:pixelFormat:highQuality:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)downsample:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)downsample:(os_log_t)log .cold.2(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 249);
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 1024;
  v6 = v3;
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "MSR failed %i %i", v4, 0xEu);
}

- (void)downsample:.cold.3()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)downsample:.cold.4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)transform:crop:rotationDegree:toDest:synchronous:.cold.1()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)transform:crop:rotationDegree:toDest:synchronous:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end