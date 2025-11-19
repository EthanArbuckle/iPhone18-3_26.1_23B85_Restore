@interface VDGMetalUtilsV1
+ (BOOL)isTenBitPixelBufferFormat:(unsigned int)a3;
+ (id)getMetalFormatFor:(unsigned int)a3;
- (CGRect)updateGhostPositionsUsingSourceImageFeatureMatching:(CGRect *)a3 shapeScore:(float *)a4 contextScore:(float *)a5 confidenceOut:(float *)a6 pixelBuffer:(__CVBuffer *)a7 searchRangeInPixel:(int)a8 shapeScoreLambda:(float)a9 contextScoreLambda:(float)a10 contextPaddingInPixel:(int)a11;
- (VDGMetalUtilsV1)initWithMetalContext:(id)a3;
- (int)_compileShaders;
- (int)computeGradientX:(id)a3 GradientY:(id)a4 absGradientX:(id)a5 absGradientY:(id)a6 inputLumaTex:(id)a7 roi:(CGRect)a8 isTenBitInput:(BOOL)a9 commandBuffer:(id)a10;
- (int)computeImageIntegralSourceTexture:(id)a3 destinationTexture:(id)a4 commandBuffer:(id)a5;
- (int)computeShapeScore:(float *)a3 contextScore:(float *)a4 confidence:(float *)a5 maxScoreXPos:(int *)a6 maxScoreYPos:(int *)a7 inputPixelBuffer:(__CVBuffer *)a8 searchRect:(CGRect)a9 ghostSize:(int)a10 shapeScoreLambda:(float)a11 contextScoreLambda:(float)a12 xSearchRangeInPixel:(int)a13 ySearchRangeInPixel:(int)a14 contextPaddingInPixel:(int)a15 maxSize:(int)a16;
@end

@implementation VDGMetalUtilsV1

- (int)_compileShaders
{
  v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingUtils::computeGradients" constants:0];
  v4 = self->_pipelineStates[0];
  self->_pipelineStates[0] = v3;

  if (!self->_pipelineStates[0])
  {
    sub_153E8(&v12);
    return v12;
  }

  v5 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingUtils::computeScore" constants:0];
  v6 = self->_pipelineStates[1];
  self->_pipelineStates[1] = v5;

  if (!self->_pipelineStates[1])
  {
    sub_1533C(&v12);
    return v12;
  }

  v7 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingUtils::sum_r_rows" constants:0];
  v8 = self->_pipelineStates[2];
  self->_pipelineStates[2] = v7;

  if (!self->_pipelineStates[2])
  {
    sub_15290(&v12);
    return v12;
  }

  v9 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingUtils::sum_r_columns" constants:0];
  v10 = self->_pipelineStates[3];
  self->_pipelineStates[3] = v9;

  if (!self->_pipelineStates[3])
  {
    sub_151E4(&v12);
    return v12;
  }

  return 0;
}

- (int)computeGradientX:(id)a3 GradientY:(id)a4 absGradientX:(id)a5 absGradientY:(id)a6 inputLumaTex:(id)a7 roi:(CGRect)a8 isTenBitInput:(BOOL)a9 commandBuffer:(id)a10
{
  v10 = a9;
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a10;
  if (!v20)
  {
    sub_15748(v32);
LABEL_15:
    v29 = v32[0];
    goto LABEL_9;
  }

  if (!v21)
  {
    sub_156EC(v32);
    goto LABEL_15;
  }

  if (!v22)
  {
    sub_15690(v32);
    goto LABEL_15;
  }

  if (!v23)
  {
    sub_15634(v32);
    goto LABEL_15;
  }

  if (!v24)
  {
    sub_155D8(v32);
    goto LABEL_15;
  }

  v26 = self->_pipelineStates[0];
  v27 = [v25 computeCommandEncoder];
  [v27 setComputePipelineState:v26];
  [v27 setTexture:v24 atIndex:0];
  [v27 setTexture:v20 atIndex:1];
  [v27 setTexture:v22 atIndex:2];
  [v27 setTexture:v21 atIndex:3];
  [v27 setTexture:v23 atIndex:4];
  v33[0] = x;
  v33[1] = y;
  v28 = 255.0;
  if (v10)
  {
    v28 = 1023.0;
  }

  *&v33[2] = v28;
  [v27 setBytes:v33 length:12 atIndex:0];
  v32[0] = width;
  v32[1] = height;
  v32[2] = 1;
  v31[0] = [(MTLComputePipelineState *)v26 threadExecutionWidth];
  v31[1] = [(MTLComputePipelineState *)v26 maxTotalThreadsPerThreadgroup]/ v31[0];
  v31[2] = 1;
  [v27 dispatchThreads:v32 threadsPerThreadgroup:v31];
  [v27 endEncoding];

  v29 = 0;
LABEL_9:

  return v29;
}

- (int)computeShapeScore:(float *)a3 contextScore:(float *)a4 confidence:(float *)a5 maxScoreXPos:(int *)a6 maxScoreYPos:(int *)a7 inputPixelBuffer:(__CVBuffer *)a8 searchRect:(CGRect)a9 ghostSize:(int)a10 shapeScoreLambda:(float)a11 contextScoreLambda:(float)a12 xSearchRangeInPixel:(int)a13 ySearchRangeInPixel:(int)a14 contextPaddingInPixel:(int)a15 maxSize:(int)a16
{
  v98 = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  v94 = 0;
  v95 = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  if (!a4)
  {
    sub_160D4(v83);
LABEL_51:
    v71 = v83[0];
    goto LABEL_29;
  }

  if (!a5)
  {
    sub_16078(v83);
    goto LABEL_51;
  }

  if (!a6)
  {
    sub_1601C(v83);
    goto LABEL_51;
  }

  if (!a7)
  {
    sub_15FC0(v83);
    goto LABEL_51;
  }

  if (!a3)
  {
    sub_15F64(v83);
    goto LABEL_51;
  }

  if (!a8)
  {
    sub_15F08(v83);
    goto LABEL_51;
  }

  if (a10 <= 0)
  {
    sub_15EAC(v83);
    goto LABEL_51;
  }

  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v29 = [(FigMetalContext *)self->_metalContext commandQueue];
  v30 = [v29 commandBuffer];

  if (!v30)
  {
    sub_15E50(v83);
    goto LABEL_51;
  }

  v31 = [(FigMetalContext *)self->_metalContext allocator];
  v32 = [v31 newTextureDescriptor];

  if (!v32)
  {
    sub_15DDC();
    goto LABEL_51;
  }

  pixelBuffer = a8;
  v33 = [v32 desc];
  [v33 setTextureType:2];

  v34 = [v32 desc];
  [v34 setPixelFormat:25];

  v35 = [v32 desc];
  [v35 setWidth:width];

  v36 = [v32 desc];
  [v36 setHeight:height];

  v37 = [v32 desc];
  [v37 setUsage:7];

  [v32 setLabel:0];
  v38 = [(FigMetalContext *)self->_metalContext allocator];
  v99 = [v38 newTextureWithDescriptor:v32];

  if (!v99)
  {
    sub_15D58();
    goto LABEL_51;
  }

  [v32 setLabel:0];
  v39 = [(FigMetalContext *)self->_metalContext allocator];
  v98 = [v39 newTextureWithDescriptor:v32];

  if (!v98)
  {
    sub_15CD4();
    goto LABEL_51;
  }

  [v32 setLabel:0];
  v40 = [(FigMetalContext *)self->_metalContext allocator];
  v97 = [v40 newTextureWithDescriptor:v32];

  if (!v97)
  {
    sub_15C50();
    goto LABEL_51;
  }

  [v32 setLabel:0];
  v41 = [(FigMetalContext *)self->_metalContext allocator];
  v42 = [v41 newTextureWithDescriptor:v32];
  v96 = v42;

  if (!v42)
  {
    sub_15BCC();
    goto LABEL_51;
  }

  v78 = a7;
  v79 = v42;
  if ([(VDGMetalUtilsV1 *)self computeGradientX:v99 GradientY:v98 absGradientX:v97 absGradientY:v42 inputPixelBuffer:pixelBuffer roi:[VDGMetalUtilsV1 isTenBitPixelBufferFormat:?], x, y, width, height, v30])
  {
    sub_157A4();
    goto LABEL_51;
  }

  v77 = a3;
  v43 = [v32 desc];
  [v43 setTextureType:2];

  v44 = [v32 desc];
  [v44 setPixelFormat:55];

  v45 = [v32 desc];
  [v45 setWidth:(width + 1.0)];

  v46 = [v32 desc];
  [v46 setHeight:(height + 1.0)];

  v47 = [v32 desc];
  [v47 setUsage:7];

  [v32 setLabel:0];
  v48 = [(FigMetalContext *)self->_metalContext allocator];
  v49 = [v48 newTextureWithDescriptor:v32];
  v95 = v49;

  if (!v49)
  {
    sub_15B48();
    goto LABEL_51;
  }

  v76 = a4;
  [v32 setLabel:0];
  v50 = [(FigMetalContext *)self->_metalContext allocator];
  v51 = [v50 newTextureWithDescriptor:v32];
  v94 = v51;

  if (!v51)
  {
    sub_15AC4();
    goto LABEL_51;
  }

  [v32 setLabel:0];
  v52 = [(FigMetalContext *)self->_metalContext allocator];
  v53 = [v52 newTextureWithDescriptor:v32];
  v93 = v53;

  if (!v53)
  {
    sub_15A40();
    goto LABEL_51;
  }

  v75 = a5;
  [v32 setLabel:0];
  v54 = [(FigMetalContext *)self->_metalContext allocator];
  v55 = [v54 newTextureWithDescriptor:v32];
  v92 = v55;

  if (!v55)
  {
    sub_159BC();
    goto LABEL_51;
  }

  v74 = a6;
  v56 = [(FigMetalContext *)self->_metalContext allocator];
  v57 = [v56 newBufferDescriptor];

  if (!v57)
  {
    sub_15938();
    goto LABEL_51;
  }

  [v57 setLength:20];
  [v57 setLabel:0];
  v58 = [(FigMetalContext *)self->_metalContext allocator];
  v59 = [v58 newBufferWithDescriptor:v57];
  v91 = v59;

  if (!v59)
  {
    sub_158B0();
    goto LABEL_51;
  }

  v73 = v57;
  v60 = [(VDGMetalUtilsV1 *)self computeImageIntegralSourceTexture:v99 destinationTexture:v49 commandBuffer:v30];
  v61 = v30;
  v62 = [(VDGMetalUtilsV1 *)self computeImageIntegralSourceTexture:v98 destinationTexture:v51 commandBuffer:v30]| v60;
  v63 = [(VDGMetalUtilsV1 *)self computeImageIntegralSourceTexture:v97 destinationTexture:v53 commandBuffer:v61];
  if (v62 | v63 | [(VDGMetalUtilsV1 *)self computeImageIntegralSourceTexture:v79 destinationTexture:v55 commandBuffer:v61])
  {
    sub_15828();
    goto LABEL_51;
  }

  v64 = self->_pipelineStates[1];
  v65 = [v61 computeCommandEncoder];
  if (v65)
  {
    v66 = v65;
    [v65 setComputePipelineState:?];
    [v66 setTexture:v49 atIndex:0];
    [v66 setTexture:v51 atIndex:1];
    [v66 setTexture:v53 atIndex:2];
    [v66 setTexture:v55 atIndex:3];
    [v66 setBuffer:v59 offset:0 atIndex:1];
    v84[0] = a10;
    v84[1] = a10;
    *&v84[2] = (a15 + (a16 - a10) / 2);
    v88 = a11;
    v89 = a12;
    v90 = a15;
    v85 = llroundf(a10 / 3.0);
    v86 = v85;
    if ([VDGMetalUtilsV1 isTenBitPixelBufferFormat:CVPixelBufferGetPixelFormatType(pixelBuffer)])
    {
      v67 = 4;
    }

    else
    {
      v67 = 1;
    }

    v87 = v67;
    [v66 setBytes:v84 length:36 atIndex:0];
    v83[0] = a13 + 1;
    v83[1] = a14 + 1;
    v83[2] = 1;
    v81 = vdupq_n_s64(0x20uLL);
    v82 = 1;
    [v66 dispatchThreads:v83 threadsPerThreadgroup:&v81];
    [v66 endEncoding];
    if (gGMFigKTraceEnabled)
    {
      v68 = [v61 commandQueue];
      v69 = [v68 commandBuffer];

      [v69 setLabel:@"KTRACE_MTLCMDBUF"];
      [v69 addCompletedHandler:&stru_345F8];
      [v69 commit];
      [v61 addCompletedHandler:&stru_34618];
    }

    [v61 setLabel:@"VideoDeghostingV1Util_ComputeShape"];
    [v61 commit];
    [v61 waitUntilCompleted];
    v70 = [v59 contents];
    *v76 = v70[1];
    *v77 = v70[2];
    *v75 = *v70;
    *v74 = *(v70 + 3);
    *v78 = *(v70 + 4);

    v71 = 0;
  }

  else
  {
    fig_log_get_emitter();
    v71 = FigSignalErrorAtGM();
  }

LABEL_29:
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();

  return v71;
}

- (CGRect)updateGhostPositionsUsingSourceImageFeatureMatching:(CGRect *)a3 shapeScore:(float *)a4 contextScore:(float *)a5 confidenceOut:(float *)a6 pixelBuffer:(__CVBuffer *)a7 searchRangeInPixel:(int)a8 shapeScoreLambda:(float)a9 contextScoreLambda:(float)a10 contextPaddingInPixel:(int)a11
{
  if (a8 >= 15)
  {
    v11 = 15;
  }

  else
  {
    v11 = a8;
  }

  v50 = 0;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if (a7)
  {
    if (a3)
    {
      if (a6)
      {
        if (a4)
        {
          x = a3->origin.x;
          y = a3->origin.y;
          width = a3->size.width;
          height = a3->size.height;
          v24 = CVPixelBufferGetWidth(a7);
          v25 = CVPixelBufferGetHeight(a7);
          v26 = v11;
          v27 = a11;
          v28 = (a3->origin.x - v11 - a11);
          if ((v28 & 0x80000000) == 0)
          {
            v29 = a3->origin.y;
            v30 = (v29 - v26 - v27);
            if ((v30 & 0x80000000) == 0)
            {
              v31 = a3->size.width;
              v32 = a3->size.height;
              v33 = (a3->origin.x + v31 + v26 + v27);
              v34 = (v29 + v32 + v26 + v27);
              if (v33 <= v24 && v34 <= v25)
              {
                v36 = (v34 - v30);
                v37 = (v33 - v28);
                v38 = v28;
                v39 = v31;
                v40 = v38;
                v41 = (2 * a11);
                v42 = v36 - v32 - v41;
                LODWORD(v48) = v42;
                HIDWORD(v48) = a11;
                LODWORD(v49) = v39;
                LODWORD(v47) = v39;
                HIDWORD(v47) = (v37 - v39 - v41);
                *&v42 = a9;
                *&v41 = a10;
                if ([(VDGMetalUtilsV1 *)self computeShapeScore:a4 contextScore:a5 confidence:a6 maxScoreXPos:&v50 + 4 maxScoreYPos:&v50 inputPixelBuffer:a7 searchRect:v40 ghostSize:v30 shapeScoreLambda:v37 contextScoreLambda:v36 xSearchRangeInPixel:v42 ySearchRangeInPixel:v41 contextPaddingInPixel:v47 maxSize:v48, v49])
                {
                  sub_16130();
                }

                else
                {
                  x = x + SHIDWORD(v50) - v26 - v27;
                  y = y + v50 - v26 - v27;
                }
              }
            }
          }
        }

        else
        {
          sub_16184();
        }
      }

      else
      {
        sub_161E4();
      }
    }

    else
    {
      sub_16244();
    }
  }

  else
  {
    sub_162A4();
  }

  v43 = x;
  v44 = y;
  v45 = width;
  v46 = height;
  result.size.height = v46;
  result.size.width = v45;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

- (int)computeImageIntegralSourceTexture:(id)a3 destinationTexture:(id)a4 commandBuffer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v41 = 0;
  if (!v10)
  {
    sub_16500(&v38);
LABEL_15:
    v31 = v38;
    goto LABEL_8;
  }

  if (!v8)
  {
    sub_164A4(&v38);
    goto LABEL_15;
  }

  if (!v9)
  {
    sub_16448(&v38);
    goto LABEL_15;
  }

  v11 = [(FigMetalContext *)self->_metalContext allocator];
  v12 = [v11 newTextureDescriptor];

  if (!v12)
  {
    sub_163EC(&v38);
    goto LABEL_15;
  }

  v13 = [v12 desc];
  [v13 setTextureType:2];

  v14 = [v12 desc];
  [v14 setPixelFormat:55];

  v15 = [v9 width] - 1;
  v16 = [v12 desc];
  [v16 setWidth:v15];

  v17 = [v9 height] - 1;
  v18 = [v12 desc];
  [v18 setHeight:v17];

  v19 = [v12 desc];
  [v19 setUsage:7];

  [v12 setLabel:0];
  v20 = [(FigMetalContext *)self->_metalContext allocator];
  v21 = [v20 newTextureWithDescriptor:v12];
  v41 = v21;

  if (!v21)
  {
    sub_16378();
    goto LABEL_15;
  }

  v22 = [v10 computeCommandEncoder];
  if (!v22)
  {
    sub_16304();
    goto LABEL_15;
  }

  v23 = v22;
  v24 = self->_pipelineStates[3];
  v25 = [(MTLComputePipelineState *)v24 threadExecutionWidth];
  v34 = v10;
  v26 = v8;
  v27 = ([v21 width] + v25 - 1) / v25;
  v40[0] = [v21 width];
  v40[1] = [v21 height];
  [v23 setComputePipelineState:v24];
  [v23 setTexture:v26 atIndex:0];
  [v23 setTexture:v21 atIndex:1];
  [v23 setBytes:v40 length:4 atIndex:0];
  v38 = v27;
  v33 = vdupq_n_s64(1uLL);
  v39 = v33;
  v36 = v25;
  v37 = v33;
  [v23 dispatchThreadgroups:&v38 threadsPerThreadgroup:&v36];
  v28 = self->_pipelineStates[2];

  v29 = [(MTLComputePipelineState *)v28 threadExecutionWidth];
  v30 = ([v9 height] + v29 - 1) / v29;
  v35[0] = [v9 width];
  v35[1] = [v9 height];
  [v23 setComputePipelineState:v28];
  [v23 setTexture:v21 atIndex:0];
  [v23 setTexture:v9 atIndex:1];
  [v23 setBytes:v35 length:4 atIndex:0];
  v38 = v30;
  v8 = v26;
  v10 = v34;
  v39 = v33;
  v36 = v29;
  v37 = v33;
  [v23 dispatchThreadgroups:&v38 threadsPerThreadgroup:&v36];
  [v23 endEncoding];

  v31 = 0;
LABEL_8:
  FigMetalDecRef();

  return v31;
}

+ (id)getMetalFormatFor:(unsigned int)a3
{
  result = 0;
  if (a3 <= 796419633)
  {
    if (a3 > 758674991)
    {
      if (a3 <= 762869297)
      {
        if (a3 <= 762865201)
        {
          if (a3 != 758674992)
          {
            v4 = 26160;
LABEL_42:
            v9 = v4 | 0x2D780000;
            goto LABEL_49;
          }

          return &off_35A08;
        }

        if (a3 != 762865202)
        {
          v4 = 30256;
          goto LABEL_42;
        }

        return &off_35A50;
      }

      if (a3 > 792229423)
      {
        if (a3 != 792229424)
        {
          v9 = 796419632;
LABEL_49:
          if (a3 != v9)
          {
            return result;
          }

          return &off_35A38;
        }

        return &off_35A08;
      }

      if (a3 != 762869298)
      {
        v7 = 792225328;
        goto LABEL_45;
      }

      return &off_35A50;
    }

    if (a3 <= 645424689)
    {
      if (a3 == 641230384 || a3 == 641234480)
      {
        return &off_35A08;
      }

      v6 = 26160;
      goto LABEL_30;
    }

    if (a3 <= 645428785)
    {
      if (a3 == 645424690)
      {
        return &off_35A50;
      }

      v6 = 30256;
LABEL_30:
      v9 = v6 | 0x26780000;
      goto LABEL_49;
    }

    if (a3 == 645428786)
    {
      return &off_35A50;
    }

    v7 = 758670896;
LABEL_45:
    if (a3 != v7)
    {
      return result;
    }

    return &off_35A08;
  }

  if (a3 > 2019963439)
  {
    if (a3 <= 2088265263)
    {
      if (a3 > 2084070959)
      {
        if (a3 == 2084070960)
        {
          return &off_35A08;
        }

        v7 = 2084075056;
        goto LABEL_45;
      }

      if (a3 != 2019963440)
      {
        v5 = 2019963442;
        goto LABEL_38;
      }

      return &off_35A20;
    }

    if (a3 > 2088269359)
    {
      if (a3 != 2088269360)
      {
        v8 = 30258;
        goto LABEL_54;
      }
    }

    else if (a3 != 2088265264)
    {
      v8 = 26162;
LABEL_54:
      v10 = v8 | 0x7C780000;
LABEL_55:
      if (a3 != v10)
      {
        return result;
      }

      return &off_35A50;
    }

    return &off_35A38;
  }

  if (a3 <= 875704421)
  {
    if (a3 == 796419634)
    {
      return &off_35A50;
    }

    if (a3 != 796423728)
    {
      v10 = 796423730;
      goto LABEL_55;
    }

    return &off_35A38;
  }

  if (a3 > 2016686639)
  {
    if (a3 != 2016686640)
    {
      v5 = 2016686642;
LABEL_38:
      if (a3 != v5)
      {
        return result;
      }
    }

    return &off_35A20;
  }

  if (a3 == 875704422 || a3 == 875704438)
  {
    return &off_359F0;
  }

  return result;
}

+ (BOOL)isTenBitPixelBufferFormat:(unsigned int)a3
{
  result = 0;
  if (a3 > 1882468911)
  {
    if (a3 > 2019963439)
    {
      if (a3 > 2088265265)
      {
        if (a3 == 2088265266 || a3 == 2088269362)
        {
          return 1;
        }

        v6 = 30256;
      }

      else
      {
        if (a3 == 2019963440 || a3 == 2019963442)
        {
          return 1;
        }

        v6 = 26160;
      }

      v4 = v6 | 0x7C780000;
    }

    else if (a3 > 1885745713)
    {
      if (a3 == 1885745714 || a3 == 2016686640)
      {
        return 1;
      }

      v4 = 2016686642;
    }

    else
    {
      if (a3 == 1882468912 || a3 == 1882468914)
      {
        return 1;
      }

      v4 = 1885745712;
    }

    goto LABEL_34;
  }

  if (a3 > 762869295)
  {
    if (a3 > 796419633)
    {
      if (a3 == 796419634 || a3 == 796423728)
      {
        return 1;
      }

      v5 = 30258;
    }

    else
    {
      if (a3 == 762869296 || a3 == 762869298)
      {
        return 1;
      }

      v5 = 26160;
    }

    v4 = v5 | 0x2F780000;
    goto LABEL_34;
  }

  if (a3 > 645428785)
  {
    if (a3 == 645428786 || a3 == 762865200)
    {
      return 1;
    }

    v4 = 762865202;
LABEL_34:
    if (a3 != v4)
    {
      return result;
    }

    return 1;
  }

  if (a3 != 645424688 && a3 != 645424690)
  {
    v4 = 645428784;
    goto LABEL_34;
  }

  return 1;
}

- (VDGMetalUtilsV1)initWithMetalContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_7:
    v7 = 0;
    goto LABEL_5;
  }

  v9.receiver = self;
  v9.super_class = VDGMetalUtilsV1;
  v6 = [(VDGMetalUtilsV1 *)&v9 init];
  self = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  if ([(VDGMetalUtilsV1 *)self _compileShaders])
  {
    goto LABEL_7;
  }

  self = self;
  v7 = self;
LABEL_5:

  return v7;
}

@end