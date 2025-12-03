@interface VDGMetalUtilsV1
+ (BOOL)isTenBitPixelBufferFormat:(unsigned int)format;
+ (id)getMetalFormatFor:(unsigned int)for;
- (CGRect)updateGhostPositionsUsingSourceImageFeatureMatching:(CGRect *)matching shapeScore:(float *)score contextScore:(float *)contextScore confidenceOut:(float *)out pixelBuffer:(__CVBuffer *)buffer searchRangeInPixel:(int)pixel shapeScoreLambda:(float)lambda contextScoreLambda:(float)self0 contextPaddingInPixel:(int)self1;
- (VDGMetalUtilsV1)initWithMetalContext:(id)context;
- (int)_compileShaders;
- (int)computeGradientX:(id)x GradientY:(id)y absGradientX:(id)gradientX absGradientY:(id)gradientY inputLumaTex:(id)tex roi:(CGRect)roi isTenBitInput:(BOOL)input commandBuffer:(id)self0;
- (int)computeImageIntegralSourceTexture:(id)texture destinationTexture:(id)destinationTexture commandBuffer:(id)buffer;
- (int)computeShapeScore:(float *)score contextScore:(float *)contextScore confidence:(float *)confidence maxScoreXPos:(int *)pos maxScoreYPos:(int *)yPos inputPixelBuffer:(__CVBuffer *)buffer searchRect:(CGRect)rect ghostSize:(int)self0 shapeScoreLambda:(float)self1 contextScoreLambda:(float)self2 xSearchRangeInPixel:(int)self3 ySearchRangeInPixel:(int)self4 contextPaddingInPixel:(int)self5 maxSize:(int)self6;
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

- (int)computeGradientX:(id)x GradientY:(id)y absGradientX:(id)gradientX absGradientY:(id)gradientY inputLumaTex:(id)tex roi:(CGRect)roi isTenBitInput:(BOOL)input commandBuffer:(id)self0
{
  inputCopy = input;
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  xCopy = x;
  yCopy = y;
  gradientXCopy = gradientX;
  gradientYCopy = gradientY;
  texCopy = tex;
  bufferCopy = buffer;
  if (!xCopy)
  {
    sub_15748(v32);
LABEL_15:
    v29 = v32[0];
    goto LABEL_9;
  }

  if (!yCopy)
  {
    sub_156EC(v32);
    goto LABEL_15;
  }

  if (!gradientXCopy)
  {
    sub_15690(v32);
    goto LABEL_15;
  }

  if (!gradientYCopy)
  {
    sub_15634(v32);
    goto LABEL_15;
  }

  if (!texCopy)
  {
    sub_155D8(v32);
    goto LABEL_15;
  }

  v26 = self->_pipelineStates[0];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:v26];
  [computeCommandEncoder setTexture:texCopy atIndex:0];
  [computeCommandEncoder setTexture:xCopy atIndex:1];
  [computeCommandEncoder setTexture:gradientXCopy atIndex:2];
  [computeCommandEncoder setTexture:yCopy atIndex:3];
  [computeCommandEncoder setTexture:gradientYCopy atIndex:4];
  v33[0] = x;
  v33[1] = y;
  v28 = 255.0;
  if (inputCopy)
  {
    v28 = 1023.0;
  }

  *&v33[2] = v28;
  [computeCommandEncoder setBytes:v33 length:12 atIndex:0];
  v32[0] = width;
  v32[1] = height;
  v32[2] = 1;
  v31[0] = [(MTLComputePipelineState *)v26 threadExecutionWidth];
  v31[1] = [(MTLComputePipelineState *)v26 maxTotalThreadsPerThreadgroup]/ v31[0];
  v31[2] = 1;
  [computeCommandEncoder dispatchThreads:v32 threadsPerThreadgroup:v31];
  [computeCommandEncoder endEncoding];

  v29 = 0;
LABEL_9:

  return v29;
}

- (int)computeShapeScore:(float *)score contextScore:(float *)contextScore confidence:(float *)confidence maxScoreXPos:(int *)pos maxScoreYPos:(int *)yPos inputPixelBuffer:(__CVBuffer *)buffer searchRect:(CGRect)rect ghostSize:(int)self0 shapeScoreLambda:(float)self1 contextScoreLambda:(float)self2 xSearchRangeInPixel:(int)self3 ySearchRangeInPixel:(int)self4 contextPaddingInPixel:(int)self5 maxSize:(int)self6
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
  if (!contextScore)
  {
    sub_160D4(v83);
LABEL_51:
    v71 = v83[0];
    goto LABEL_29;
  }

  if (!confidence)
  {
    sub_16078(v83);
    goto LABEL_51;
  }

  if (!pos)
  {
    sub_1601C(v83);
    goto LABEL_51;
  }

  if (!yPos)
  {
    sub_15FC0(v83);
    goto LABEL_51;
  }

  if (!score)
  {
    sub_15F64(v83);
    goto LABEL_51;
  }

  if (!buffer)
  {
    sub_15F08(v83);
    goto LABEL_51;
  }

  if (size <= 0)
  {
    sub_15EAC(v83);
    goto LABEL_51;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    sub_15E50(v83);
    goto LABEL_51;
  }

  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_15DDC();
    goto LABEL_51;
  }

  pixelBuffer = buffer;
  desc = [newTextureDescriptor desc];
  [desc setTextureType:2];

  desc2 = [newTextureDescriptor desc];
  [desc2 setPixelFormat:25];

  desc3 = [newTextureDescriptor desc];
  [desc3 setWidth:width];

  desc4 = [newTextureDescriptor desc];
  [desc4 setHeight:height];

  desc5 = [newTextureDescriptor desc];
  [desc5 setUsage:7];

  [newTextureDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metalContext allocator];
  v99 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];

  if (!v99)
  {
    sub_15D58();
    goto LABEL_51;
  }

  [newTextureDescriptor setLabel:0];
  allocator3 = [(FigMetalContext *)self->_metalContext allocator];
  v98 = [allocator3 newTextureWithDescriptor:newTextureDescriptor];

  if (!v98)
  {
    sub_15CD4();
    goto LABEL_51;
  }

  [newTextureDescriptor setLabel:0];
  allocator4 = [(FigMetalContext *)self->_metalContext allocator];
  v97 = [allocator4 newTextureWithDescriptor:newTextureDescriptor];

  if (!v97)
  {
    sub_15C50();
    goto LABEL_51;
  }

  [newTextureDescriptor setLabel:0];
  allocator5 = [(FigMetalContext *)self->_metalContext allocator];
  v42 = [allocator5 newTextureWithDescriptor:newTextureDescriptor];
  v96 = v42;

  if (!v42)
  {
    sub_15BCC();
    goto LABEL_51;
  }

  yPosCopy = yPos;
  v79 = v42;
  if ([(VDGMetalUtilsV1 *)self computeGradientX:v99 GradientY:v98 absGradientX:v97 absGradientY:v42 inputPixelBuffer:pixelBuffer roi:[VDGMetalUtilsV1 isTenBitPixelBufferFormat:?], x, y, width, height, commandBuffer])
  {
    sub_157A4();
    goto LABEL_51;
  }

  scoreCopy = score;
  desc6 = [newTextureDescriptor desc];
  [desc6 setTextureType:2];

  desc7 = [newTextureDescriptor desc];
  [desc7 setPixelFormat:55];

  desc8 = [newTextureDescriptor desc];
  [desc8 setWidth:(width + 1.0)];

  desc9 = [newTextureDescriptor desc];
  [desc9 setHeight:(height + 1.0)];

  desc10 = [newTextureDescriptor desc];
  [desc10 setUsage:7];

  [newTextureDescriptor setLabel:0];
  allocator6 = [(FigMetalContext *)self->_metalContext allocator];
  v49 = [allocator6 newTextureWithDescriptor:newTextureDescriptor];
  v95 = v49;

  if (!v49)
  {
    sub_15B48();
    goto LABEL_51;
  }

  contextScoreCopy = contextScore;
  [newTextureDescriptor setLabel:0];
  allocator7 = [(FigMetalContext *)self->_metalContext allocator];
  v51 = [allocator7 newTextureWithDescriptor:newTextureDescriptor];
  v94 = v51;

  if (!v51)
  {
    sub_15AC4();
    goto LABEL_51;
  }

  [newTextureDescriptor setLabel:0];
  allocator8 = [(FigMetalContext *)self->_metalContext allocator];
  v53 = [allocator8 newTextureWithDescriptor:newTextureDescriptor];
  v93 = v53;

  if (!v53)
  {
    sub_15A40();
    goto LABEL_51;
  }

  confidenceCopy = confidence;
  [newTextureDescriptor setLabel:0];
  allocator9 = [(FigMetalContext *)self->_metalContext allocator];
  v55 = [allocator9 newTextureWithDescriptor:newTextureDescriptor];
  v92 = v55;

  if (!v55)
  {
    sub_159BC();
    goto LABEL_51;
  }

  posCopy = pos;
  allocator10 = [(FigMetalContext *)self->_metalContext allocator];
  newBufferDescriptor = [allocator10 newBufferDescriptor];

  if (!newBufferDescriptor)
  {
    sub_15938();
    goto LABEL_51;
  }

  [newBufferDescriptor setLength:20];
  [newBufferDescriptor setLabel:0];
  allocator11 = [(FigMetalContext *)self->_metalContext allocator];
  v59 = [allocator11 newBufferWithDescriptor:newBufferDescriptor];
  v91 = v59;

  if (!v59)
  {
    sub_158B0();
    goto LABEL_51;
  }

  v73 = newBufferDescriptor;
  v60 = [(VDGMetalUtilsV1 *)self computeImageIntegralSourceTexture:v99 destinationTexture:v49 commandBuffer:commandBuffer];
  v61 = commandBuffer;
  v62 = [(VDGMetalUtilsV1 *)self computeImageIntegralSourceTexture:v98 destinationTexture:v51 commandBuffer:commandBuffer]| v60;
  v63 = [(VDGMetalUtilsV1 *)self computeImageIntegralSourceTexture:v97 destinationTexture:v53 commandBuffer:v61];
  if (v62 | v63 | [(VDGMetalUtilsV1 *)self computeImageIntegralSourceTexture:v79 destinationTexture:v55 commandBuffer:v61])
  {
    sub_15828();
    goto LABEL_51;
  }

  v64 = self->_pipelineStates[1];
  computeCommandEncoder = [v61 computeCommandEncoder];
  if (computeCommandEncoder)
  {
    v66 = computeCommandEncoder;
    [computeCommandEncoder setComputePipelineState:?];
    [v66 setTexture:v49 atIndex:0];
    [v66 setTexture:v51 atIndex:1];
    [v66 setTexture:v53 atIndex:2];
    [v66 setTexture:v55 atIndex:3];
    [v66 setBuffer:v59 offset:0 atIndex:1];
    v84[0] = size;
    v84[1] = size;
    *&v84[2] = (paddingInPixel + (maxSize - size) / 2);
    lambdaCopy = lambda;
    scoreLambdaCopy = scoreLambda;
    paddingInPixelCopy = paddingInPixel;
    v85 = llroundf(size / 3.0);
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
    v83[0] = pixel + 1;
    v83[1] = inPixel + 1;
    v83[2] = 1;
    v81 = vdupq_n_s64(0x20uLL);
    v82 = 1;
    [v66 dispatchThreads:v83 threadsPerThreadgroup:&v81];
    [v66 endEncoding];
    if (gGMFigKTraceEnabled)
    {
      commandQueue2 = [v61 commandQueue];
      commandBuffer2 = [commandQueue2 commandBuffer];

      [commandBuffer2 setLabel:@"KTRACE_MTLCMDBUF"];
      [commandBuffer2 addCompletedHandler:&stru_345F8];
      [commandBuffer2 commit];
      [v61 addCompletedHandler:&stru_34618];
    }

    [v61 setLabel:@"VideoDeghostingV1Util_ComputeShape"];
    [v61 commit];
    [v61 waitUntilCompleted];
    contents = [v59 contents];
    *contextScoreCopy = contents[1];
    *scoreCopy = contents[2];
    *confidenceCopy = *contents;
    *posCopy = *(contents + 3);
    *yPosCopy = *(contents + 4);

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

- (CGRect)updateGhostPositionsUsingSourceImageFeatureMatching:(CGRect *)matching shapeScore:(float *)score contextScore:(float *)contextScore confidenceOut:(float *)out pixelBuffer:(__CVBuffer *)buffer searchRangeInPixel:(int)pixel shapeScoreLambda:(float)lambda contextScoreLambda:(float)self0 contextPaddingInPixel:(int)self1
{
  if (pixel >= 15)
  {
    pixelCopy = 15;
  }

  else
  {
    pixelCopy = pixel;
  }

  v50 = 0;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if (buffer)
  {
    if (matching)
    {
      if (out)
      {
        if (score)
        {
          x = matching->origin.x;
          y = matching->origin.y;
          width = matching->size.width;
          height = matching->size.height;
          v24 = CVPixelBufferGetWidth(buffer);
          v25 = CVPixelBufferGetHeight(buffer);
          v26 = pixelCopy;
          inPixelCopy = inPixel;
          v28 = (matching->origin.x - pixelCopy - inPixel);
          if ((v28 & 0x80000000) == 0)
          {
            v29 = matching->origin.y;
            v30 = (v29 - v26 - inPixelCopy);
            if ((v30 & 0x80000000) == 0)
            {
              v31 = matching->size.width;
              v32 = matching->size.height;
              v33 = (matching->origin.x + v31 + v26 + inPixelCopy);
              v34 = (v29 + v32 + v26 + inPixelCopy);
              if (v33 <= v24 && v34 <= v25)
              {
                v36 = (v34 - v30);
                v37 = (v33 - v28);
                v38 = v28;
                v39 = v31;
                v40 = v38;
                v41 = (2 * inPixel);
                v42 = v36 - v32 - v41;
                LODWORD(v48) = v42;
                HIDWORD(v48) = inPixel;
                LODWORD(v49) = v39;
                LODWORD(v47) = v39;
                HIDWORD(v47) = (v37 - v39 - v41);
                *&v42 = lambda;
                *&v41 = scoreLambda;
                if ([(VDGMetalUtilsV1 *)self computeShapeScore:score contextScore:contextScore confidence:out maxScoreXPos:&v50 + 4 maxScoreYPos:&v50 inputPixelBuffer:buffer searchRect:v40 ghostSize:v30 shapeScoreLambda:v37 contextScoreLambda:v36 xSearchRangeInPixel:v42 ySearchRangeInPixel:v41 contextPaddingInPixel:v47 maxSize:v48, v49])
                {
                  sub_16130();
                }

                else
                {
                  x = x + SHIDWORD(v50) - v26 - inPixelCopy;
                  y = y + v50 - v26 - inPixelCopy;
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

- (int)computeImageIntegralSourceTexture:(id)texture destinationTexture:(id)destinationTexture commandBuffer:(id)buffer
{
  textureCopy = texture;
  destinationTextureCopy = destinationTexture;
  bufferCopy = buffer;
  v41 = 0;
  if (!bufferCopy)
  {
    sub_16500(&v38);
LABEL_15:
    v31 = v38;
    goto LABEL_8;
  }

  if (!textureCopy)
  {
    sub_164A4(&v38);
    goto LABEL_15;
  }

  if (!destinationTextureCopy)
  {
    sub_16448(&v38);
    goto LABEL_15;
  }

  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_163EC(&v38);
    goto LABEL_15;
  }

  desc = [newTextureDescriptor desc];
  [desc setTextureType:2];

  desc2 = [newTextureDescriptor desc];
  [desc2 setPixelFormat:55];

  v15 = [destinationTextureCopy width] - 1;
  desc3 = [newTextureDescriptor desc];
  [desc3 setWidth:v15];

  v17 = [destinationTextureCopy height] - 1;
  desc4 = [newTextureDescriptor desc];
  [desc4 setHeight:v17];

  desc5 = [newTextureDescriptor desc];
  [desc5 setUsage:7];

  [newTextureDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metalContext allocator];
  v21 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
  v41 = v21;

  if (!v21)
  {
    sub_16378();
    goto LABEL_15;
  }

  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_16304();
    goto LABEL_15;
  }

  v23 = computeCommandEncoder;
  v24 = self->_pipelineStates[3];
  threadExecutionWidth = [(MTLComputePipelineState *)v24 threadExecutionWidth];
  v34 = bufferCopy;
  v26 = textureCopy;
  v27 = ([v21 width] + threadExecutionWidth - 1) / threadExecutionWidth;
  v40[0] = [v21 width];
  v40[1] = [v21 height];
  [v23 setComputePipelineState:v24];
  [v23 setTexture:v26 atIndex:0];
  [v23 setTexture:v21 atIndex:1];
  [v23 setBytes:v40 length:4 atIndex:0];
  v38 = v27;
  v33 = vdupq_n_s64(1uLL);
  v39 = v33;
  v36 = threadExecutionWidth;
  v37 = v33;
  [v23 dispatchThreadgroups:&v38 threadsPerThreadgroup:&v36];
  v28 = self->_pipelineStates[2];

  threadExecutionWidth2 = [(MTLComputePipelineState *)v28 threadExecutionWidth];
  v30 = ([destinationTextureCopy height] + threadExecutionWidth2 - 1) / threadExecutionWidth2;
  v35[0] = [destinationTextureCopy width];
  v35[1] = [destinationTextureCopy height];
  [v23 setComputePipelineState:v28];
  [v23 setTexture:v21 atIndex:0];
  [v23 setTexture:destinationTextureCopy atIndex:1];
  [v23 setBytes:v35 length:4 atIndex:0];
  v38 = v30;
  textureCopy = v26;
  bufferCopy = v34;
  v39 = v33;
  v36 = threadExecutionWidth2;
  v37 = v33;
  [v23 dispatchThreadgroups:&v38 threadsPerThreadgroup:&v36];
  [v23 endEncoding];

  v31 = 0;
LABEL_8:
  FigMetalDecRef();

  return v31;
}

+ (id)getMetalFormatFor:(unsigned int)for
{
  result = 0;
  if (for <= 796419633)
  {
    if (for > 758674991)
    {
      if (for <= 762869297)
      {
        if (for <= 762865201)
        {
          if (for != 758674992)
          {
            v4 = 26160;
LABEL_42:
            v9 = v4 | 0x2D780000;
            goto LABEL_49;
          }

          return &off_35A08;
        }

        if (for != 762865202)
        {
          v4 = 30256;
          goto LABEL_42;
        }

        return &off_35A50;
      }

      if (for > 792229423)
      {
        if (for != 792229424)
        {
          v9 = 796419632;
LABEL_49:
          if (for != v9)
          {
            return result;
          }

          return &off_35A38;
        }

        return &off_35A08;
      }

      if (for != 762869298)
      {
        v7 = 792225328;
        goto LABEL_45;
      }

      return &off_35A50;
    }

    if (for <= 645424689)
    {
      if (for == 641230384 || for == 641234480)
      {
        return &off_35A08;
      }

      v6 = 26160;
      goto LABEL_30;
    }

    if (for <= 645428785)
    {
      if (for == 645424690)
      {
        return &off_35A50;
      }

      v6 = 30256;
LABEL_30:
      v9 = v6 | 0x26780000;
      goto LABEL_49;
    }

    if (for == 645428786)
    {
      return &off_35A50;
    }

    v7 = 758670896;
LABEL_45:
    if (for != v7)
    {
      return result;
    }

    return &off_35A08;
  }

  if (for > 2019963439)
  {
    if (for <= 2088265263)
    {
      if (for > 2084070959)
      {
        if (for == 2084070960)
        {
          return &off_35A08;
        }

        v7 = 2084075056;
        goto LABEL_45;
      }

      if (for != 2019963440)
      {
        v5 = 2019963442;
        goto LABEL_38;
      }

      return &off_35A20;
    }

    if (for > 2088269359)
    {
      if (for != 2088269360)
      {
        v8 = 30258;
        goto LABEL_54;
      }
    }

    else if (for != 2088265264)
    {
      v8 = 26162;
LABEL_54:
      v10 = v8 | 0x7C780000;
LABEL_55:
      if (for != v10)
      {
        return result;
      }

      return &off_35A50;
    }

    return &off_35A38;
  }

  if (for <= 875704421)
  {
    if (for == 796419634)
    {
      return &off_35A50;
    }

    if (for != 796423728)
    {
      v10 = 796423730;
      goto LABEL_55;
    }

    return &off_35A38;
  }

  if (for > 2016686639)
  {
    if (for != 2016686640)
    {
      v5 = 2016686642;
LABEL_38:
      if (for != v5)
      {
        return result;
      }
    }

    return &off_35A20;
  }

  if (for == 875704422 || for == 875704438)
  {
    return &off_359F0;
  }

  return result;
}

+ (BOOL)isTenBitPixelBufferFormat:(unsigned int)format
{
  result = 0;
  if (format > 1882468911)
  {
    if (format > 2019963439)
    {
      if (format > 2088265265)
      {
        if (format == 2088265266 || format == 2088269362)
        {
          return 1;
        }

        v6 = 30256;
      }

      else
      {
        if (format == 2019963440 || format == 2019963442)
        {
          return 1;
        }

        v6 = 26160;
      }

      v4 = v6 | 0x7C780000;
    }

    else if (format > 1885745713)
    {
      if (format == 1885745714 || format == 2016686640)
      {
        return 1;
      }

      v4 = 2016686642;
    }

    else
    {
      if (format == 1882468912 || format == 1882468914)
      {
        return 1;
      }

      v4 = 1885745712;
    }

    goto LABEL_34;
  }

  if (format > 762869295)
  {
    if (format > 796419633)
    {
      if (format == 796419634 || format == 796423728)
      {
        return 1;
      }

      v5 = 30258;
    }

    else
    {
      if (format == 762869296 || format == 762869298)
      {
        return 1;
      }

      v5 = 26160;
    }

    v4 = v5 | 0x2F780000;
    goto LABEL_34;
  }

  if (format > 645428785)
  {
    if (format == 645428786 || format == 762865200)
    {
      return 1;
    }

    v4 = 762865202;
LABEL_34:
    if (format != v4)
    {
      return result;
    }

    return 1;
  }

  if (format != 645424688 && format != 645424690)
  {
    v4 = 645428784;
    goto LABEL_34;
  }

  return 1;
}

- (VDGMetalUtilsV1)initWithMetalContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_7:
    selfCopy = 0;
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

  objc_storeStrong(&v6->_metalContext, context);
  if ([(VDGMetalUtilsV1 *)self _compileShaders])
  {
    goto LABEL_7;
  }

  self = self;
  selfCopy = self;
LABEL_5:

  return selfCopy;
}

@end