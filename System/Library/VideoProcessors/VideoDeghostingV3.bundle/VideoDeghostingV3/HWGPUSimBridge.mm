@interface HWGPUSimBridge
- (BOOL)pixelIsGhostWithDilationWithDilation:(int)a3 location:(float)a4[3][16][4] curGGCoord:(int)a5 GGCount:(int)a6 posInx:;
- (HWGPUSimBridge)init;
- (float)avgPixelFromPixelMemory:(id)a3 locX:(int)a4 locY:(int)a5;
- (float)getBlockTexturednessWithPixelMemory:(id)a3 x:(int)a4 y:(int)a5 width:(int)a6 height:(int)a7;
- (float)getDistWithGGCoord:(float)a3[3][16][4] GGCount:(int)a4 location:(int)a5 ggIdx:;
- (float)getWSpatialUsingGhostMotion_HWGPU:(id *)a3 ref0Meta:(id *)a4 ref1Meta:(float)a5 metaTPlusOrMinus1_HW:metaTPlusOrMinus2_HW:lowLight:ghostSize:;
- (float)gradientWithInput:(id)a3 width:(int)a4 height:(int)a5 fixedPosition:(int)a6 start:(int)a7 end:(int)a8 direction:(int)a9 GGCoord:(float)a10[3][16][4] GGCount:(int)a11;
- (void)dealloc;
- (void)getWStrongRepairInSpatialUsingBgTexturednessWithInput:(id)a3 curGGCoord:(float)a4[3][16][4] GGCount:(int)a5 dilation:(int)a6 gradMax:(int *)a7 curIdx:(int)a8;
- (void)hwMitigationFromVT:(double)a3 homography1:(double)a4 BBoxCur:(double)a5 warpedBBox0:(double)a6 warpedMeta1:(double)a7 inputBuf:(uint64_t)a8 ref0Buf:(void *)a9 ref1Buf:(uint64_t)a10 borderPixels:(uint64_t)a11 outputBuf:(__CVBuffer *)a12 boundingBoxWeights:(__CVBuffer *)a13 outputStruct:(__CVBuffer *)a14;
- (void)hwStatisticsFromVT:(__n128)a3 homography1:(__n128)a4 BBoxCur:(__n128)a5 warpedBBox0:(__n128)a6 warpedMeta1:(__n128)a7 inputBuf:(uint64_t)a8 ref0Buf:(void *)a9 ref1Buf:(void *)a10 borderPixels:(void *)a11 outputStruct:(uint64_t)a12;
- (void)spatialHMERCWithInputBuf:(double)a3 ref0Buf:(double)a4 ref1Buf:(double)a5 GGCount:(double)a6 GGCountRef0:(double)a7 GGCountRef1:(uint64_t)a8 GGCoord:(__CVBuffer *)a9 hmgrphy0:(__CVBuffer *)a10 hmgrphy1:(__CVBuffer *)a11 diffMax:(unsigned int)a12;
@end

@implementation HWGPUSimBridge

- (HWGPUSimBridge)init
{
  v14.receiver = self;
  v14.super_class = HWGPUSimBridge;
  v2 = [(HWGPUSimBridge *)&v14 init];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [[FigMetalContext alloc] initWithbundle:v3 andOptionalCommandQueue:0];
  metalContext = v2->_metalContext;
  v2->_metalContext = v4;

  v6 = [[GGMMetalToolBoxHWSim alloc] initWithMetalContext:v2->_metalContext tuningParamDict:0];
  metalToolBox = v2->_metalToolBox;
  v2->_metalToolBox = v6;

  v8 = [(FigMetalContext *)v2->_metalContext device];
  device = v2->_device;
  v2->_device = v8;

  v10 = [(FigMetalContext *)v2->_metalContext commandQueue];
  commandQueue = v2->_commandQueue;
  v2->_commandQueue = v10;

  v2->_forceWaitForComplete = 1;
  v2->_frameNum = 0;
  if (VTPixelTransferSessionCreate(kCFAllocatorDefault, &v2->_pixelTransferSession))
  {
    [HWGPUSimBridge init];
    v12 = 0;
  }

  else
  {
    v12 = v2;
  }

  return v12;
}

- (void)dealloc
{
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    v4 = self->_pixelTransferSession;
    if (v4)
    {
      CFRelease(v4);
      self->_pixelTransferSession = 0;
    }
  }

  v5.receiver = self;
  v5.super_class = HWGPUSimBridge;
  [(HWGPUSimBridge *)&v5 dealloc];
}

- (float)getBlockTexturednessWithPixelMemory:(id)a3 x:(int)a4 y:(int)a5 width:(int)a6 height:(int)a7
{
  if (a4 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = a4;
  }

  if (a5 <= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = a5;
  }

  if (a6 - 3 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = (a6 - 3);
  }

  if (a7 - 3 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = (a7 - 3);
  }

  v11 = a3;
  [v11 ReadYValue8AtX:(v9 - 1) Y:(v10 - 2)];
  v54 = v12;
  [v11 ReadYValue8AtX:(v9 - 1) Y:(v10 - 1)];
  v53 = v13;
  [v11 ReadYValue8AtX:(v9 - 1) Y:v10];
  v52 = v14;
  [v11 ReadYValue8AtX:(v9 - 1) Y:(v10 + 1)];
  v51 = v15;
  [v11 ReadYValue8AtX:(v9 - 1) Y:(v10 + 2)];
  v50 = v16;
  [v11 ReadYValue8AtX:v9 Y:(v10 - 2)];
  v49 = v17;
  [v11 ReadYValue8AtX:v9 Y:(v10 - 1)];
  v19 = v18;
  [v11 ReadYValue8AtX:v9 Y:v10];
  v21 = v20;
  [v11 ReadYValue8AtX:v9 Y:(v10 + 1)];
  v23 = v22;
  [v11 ReadYValue8AtX:v9 Y:(v10 + 2)];
  v48 = v24;
  [v11 ReadYValue8AtX:(v9 + 1) Y:(v10 - 2)];
  v47 = v25;
  [v11 ReadYValue8AtX:(v9 + 1) Y:(v10 - 1)];
  v27 = v26;
  [v11 ReadYValue8AtX:(v9 + 1) Y:v10];
  v29 = v28;
  [v11 ReadYValue8AtX:(v9 + 1) Y:(v10 + 1)];
  v31 = v30;
  [v11 ReadYValue8AtX:(v9 + 1) Y:(v10 + 2)];
  v46 = v32;
  [v11 ReadYValue8AtX:(v9 - 2) Y:(v10 - 1)];
  v44 = v33;
  [v11 ReadYValue8AtX:(v9 - 2) Y:v10];
  v45 = v34;
  [v11 ReadYValue8AtX:(v9 - 2) Y:(v10 + 1)];
  v43 = v35;
  [v11 ReadYValue8AtX:(v9 + 2) Y:(v10 - 1)];
  v37 = v36;
  [v11 ReadYValue8AtX:(v9 + 2) Y:v10];
  v39 = v38;
  [v11 ReadYValue8AtX:(v9 + 2) Y:(v10 + 1)];
  v42 = v40;

  return (vabds_f32(v31, v42) + (vabds_f32(v23, v31) + (vabds_f32(v51, v23) + (vabds_f32(v43, v51) + (vabds_f32(v29, v39) + (vabds_f32(v21, v29) + (vabds_f32(v52, v21) + (vabds_f32(v45, v52) + ((vabds_f32(v19, v27) + (vabds_f32(v53, v19) + ((((((((((((vabds_f32(v54, v53) + vabds_f32(v53, v52)) + vabds_f32(v52, v51)) + vabds_f32(v51, v50)) + vabds_f32(v49, v19)) + vabds_f32(v19, v21)) + vabds_f32(v21, v23)) + vabds_f32(v23, v48)) + vabds_f32(v47, v27)) + vabds_f32(v27, v29)) + vabds_f32(v29, v31)) + vabds_f32(v31, v46)) + vabds_f32(v44, v53)))) + vabds_f32(v27, v37)))))))))) / 24.0;
}

- (BOOL)pixelIsGhostWithDilationWithDilation:(int)a3 location:(float)a4[3][16][4] curGGCoord:(int)a5 GGCount:(int)a6 posInx:
{
  if (a5 < 1)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = &(*a4)[16 * a6][4 * v7];
    if (v6 >= *v8 - a3)
    {
      v9 = v8[2];
      v10 = v8[3] + a3;
      v11 = v8[1] - a3;
      v12 = v6 > v9 + a3 || SHIDWORD(v6) < v11;
      if (!v12 && SHIDWORD(v6) <= v10)
      {
        break;
      }
    }

    if (a5 <= ++v7)
    {
      return 0;
    }
  }

  return 1;
}

- (float)gradientWithInput:(id)a3 width:(int)a4 height:(int)a5 fixedPosition:(int)a6 start:(int)a7 end:(int)a8 direction:(int)a9 GGCoord:(float)a10[3][16][4] GGCount:(int)a11
{
  v15 = a3;
  v16 = 0.0;
  if (a7 <= a8)
  {
    v17 = a8 + 1;
    do
    {
      if (a9)
      {
        v18 = a7;
      }

      else
      {
        v18 = a6;
      }

      if (a9)
      {
        v19 = a6;
      }

      else
      {
        v19 = a7;
      }

      LODWORD(v20) = 2 * v18;
      HIDWORD(v20) = 2 * v19;
      if (![(HWGPUSimBridge *)self pixelIsGhostWithDilationWithDilation:0 location:a10 curGGCoord:a11 GGCount:0 posInx:v20])
      {
        [(HWGPUSimBridge *)self getBlockTexturednessWithPixelMemory:v15 x:v18 y:v19 width:a4 height:a5];
        if (v21 > v16)
        {
          v16 = v21;
        }
      }

      ++a7;
    }

    while (v17 != a7);
  }

  return v16;
}

- (void)getWStrongRepairInSpatialUsingBgTexturednessWithInput:(id)a3 curGGCoord:(float)a4[3][16][4] GGCount:(int)a5 dilation:(int)a6 gradMax:(int *)a7 curIdx:(int)a8
{
  HIDWORD(v37) = a8;
  v13 = a3;
  v14 = [v13 height];
  v15 = [v13 width];
  v16 = (*a4)[a8];
  v17 = v16[3];
  v18 = (*v16 / 2 - a6) & ~((*v16 / 2 - a6) >> 31);
  v19 = (v16[1] / 2 - a6) & ~((v16[1] / 2 - a6) >> 31);
  v20 = a6 + v16[2] / 2;
  if (v15 - 1 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = (v15 - 1);
  }

  v22 = a6 + v17 / 2;
  if (v14 - 1 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = (v14 - 1);
  }

  LODWORD(v37) = a5;
  LODWORD(v33) = 0;
  [(HWGPUSimBridge *)self gradientWithInput:v13 width:v15 height:v14 fixedPosition:v18 start:v19 end:v23 direction:v33 GGCoord:a4 GGCount:v37];
  v25 = fmaxf(v24, 0.0);
  LODWORD(v38) = a5;
  LODWORD(v34) = 0;
  [(HWGPUSimBridge *)self gradientWithInput:v13 width:v15 height:v14 fixedPosition:v21 start:v19 end:v23 direction:v34 GGCoord:a4 GGCount:v38];
  if (v25 < v26)
  {
    v25 = v26;
  }

  v27 = (v21 - 1);
  LODWORD(v39) = a5;
  LODWORD(v35) = 1;
  [(HWGPUSimBridge *)self gradientWithInput:v13 width:v15 height:v14 fixedPosition:v19 start:(v18 + 1) end:v27 direction:v35 GGCoord:a4 GGCount:v39];
  if (v25 >= v28)
  {
    v29 = v25;
  }

  else
  {
    v29 = v28;
  }

  LODWORD(v40) = a5;
  LODWORD(v36) = 1;
  [(HWGPUSimBridge *)self gradientWithInput:v13 width:v15 height:v14 fixedPosition:v23 start:(v18 + 1) end:v27 direction:v36 GGCoord:a4 GGCount:v40];
  v31 = v30;

  if (v29 >= v31)
  {
    v32 = v29;
  }

  else
  {
    v32 = v31;
  }

  a7[v41] = (v32 * 255.0 * 24.0);
}

- (float)getWSpatialUsingGhostMotion_HWGPU:(id *)a3 ref0Meta:(id *)a4 ref1Meta:(float)a5 metaTPlusOrMinus1_HW:metaTPlusOrMinus2_HW:lowLight:ghostSize:
{
  v9 = v8;
  v10 = v7;
  v11 = v5;
  v12 = 0.0;
  v13 = fmaxf((a5 + -450.0) / 2150.0, 0.0);
  var1 = a3->var1;
  r1 = a3->var0;
  v15 = var1;
  v16 = a3->var2 - a3->var0;
  v17 = v16;
  v18 = a3->var3 - var1;
  v19 = v18;
  v20 = v16 * v18;
  v48 = v20;
  v49 = v13;
  if (a4->var0 < 1)
  {
    v23 = 0;
    v28 = 0.0;
    v27 = 0.0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = v20;
    v25 = v6 + 2436;
    p_var5 = &a4->var9[0].var5;
    v27 = 0.0;
    v28 = 0.0;
    do
    {
      v29 = *(p_var5 - 3);
      v30 = *(p_var5 - 2);
      v56.origin.x = v29;
      v56.origin.y = v30;
      v56.size.width = (*(p_var5 - 1) - v29);
      v56.size.height = (*p_var5 - v30);
      v52.origin.x = r1;
      v52.origin.y = v15;
      v52.size.width = v17;
      v52.size.height = v19;
      v53 = CGRectIntersection(v52, v56);
      v31 = v53.size.height * v53.size.width;
      v32 = v53.size.height * v53.size.width / v24;
      if (v32 > v28)
      {
        v28 = v32;
      }

      if (!CGRectIsNull(v53))
      {
        v33 = v31 * *(v25 + 4 * v22) / v24;
        if (v27 < v33)
        {
          v27 = v31 * *(v25 + 4 * v22) / v24;
        }

        v23 = 1;
      }

      ++v22;
      p_var5 += 8;
    }

    while (v22 < a4->var0);
  }

  v50 = fminf(v49, 1.0);
  if (*v11 < 1)
  {
    v35 = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = v48;
    v37 = v10 + 2436;
    v38 = (v11 + 26);
    v12 = 0.0;
    do
    {
      v39 = *(v38 - 3);
      v40 = *(v38 - 2);
      v57.origin.x = v39;
      v57.origin.y = v40;
      v57.size.width = (*(v38 - 1) - v39);
      v57.size.height = (*v38 - v40);
      v54.origin.x = r1;
      v54.origin.y = v15;
      v54.size.width = v17;
      v54.size.height = v19;
      v55 = CGRectIntersection(v54, v57);
      v41 = v55.size.height * v55.size.width;
      v42 = v55.size.height * v55.size.width / v36;
      if (v42 > v12)
      {
        v12 = v42;
      }

      if (!CGRectIsNull(v55))
      {
        v43 = v41 * *(v37 + 4 * v34) / v36;
        if (v27 < v43)
        {
          v27 = v41 * *(v37 + 4 * v34) / v36;
        }

        v35 = 1;
      }

      ++v34;
      v38 += 8;
    }

    while (v34 < *v11);
  }

  if (v50 > 0.5 && v28 <= 0.9 && v12 <= 0.8)
  {
    v27 = (v50 * fminf(fmaxf((v28 + v12) + -0.5, 0.0), 1.0)) / 5.0 + v27;
  }

  v44 = 0.005;
  if (v9)
  {
    v44 = 0.01;
  }

  v45 = v44 + v27;
  if ((v23 & 1) == 0)
  {
    v45 = v27;
  }

  v46 = v44 + v45;
  if ((v35 & 1) == 0)
  {
    v46 = v45;
  }

  return fminf(v46, 1.0);
}

- (float)getDistWithGGCoord:(float)a3[3][16][4] GGCount:(int)a4 location:(int)a5 ggIdx:
{
  if (a4 < 1)
  {
    LODWORD(v14) = 0;
    v6 = 0;
    v13 = 0x7FFFFFFF;
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v6 = 0;
    v7 = a4;
    v8 = &(*a3)[0][2];
    v9 = a4;
    do
    {
      v10 = v6;
      v11 = *v8;
      v8 += 4;
      v12 = v11;
      if (v11 >= v6)
      {
        v10 = v12;
      }

      v6 = v10;
      --v9;
    }

    while (v9);
    v13 = 0x7FFFFFFF;
    v14 = a4;
    v15 = a3;
    do
    {
      v16 = v13;
      v17 = *v15;
      v15 = (v15 + 16);
      v18 = v17;
      if (v17 <= v13)
      {
        v16 = v18;
      }

      v13 = v16;
      --v14;
    }

    while (v14);
    v19 = &(*a3)[0][3];
    v20 = a4;
    do
    {
      v21 = v14;
      v22 = *v19;
      v19 += 4;
      v23 = v22;
      if (v22 >= v14)
      {
        v21 = v23;
      }

      LODWORD(v14) = v21;
      --v20;
    }

    while (v20);
    v24 = &(*a3)[0][1];
    v25 = 0x7FFFFFFF;
    do
    {
      v26 = v25;
      v27 = *v24;
      v24 += 4;
      v28 = v27;
      if (v27 <= v25)
      {
        v26 = v28;
      }

      v25 = v26;
      --v7;
    }

    while (v7);
  }

  v29 = 255.0;
  if (v5.i32[0] - v6 > 64 || v13 - v5.i32[0] > 64 || v5.i32[1] - v14 > 64 || v25 - v5.i32[1] > 64)
  {
    return v29;
  }

  if (a4 < 1)
  {
LABEL_35:
    v37 = (*a3)[a5];
    v38 = vcvt_s32_f32(*v37);
    v39 = vcvt_s32_f32(v37[1]);
    if (v38.i32[0] <= v5.i32[0] && v5.i32[0] <= v39.i32[0])
    {
      v43 = v5.i32[1] - v39.i32[1];
      if (v5.i32[1] >= v39.i32[1])
      {
        return v43;
      }

      v43 = v38.i32[1] - v5.i32[1];
      if (v38.i32[1] >= v5.i32[1])
      {
        return v43;
      }

      return 255.0;
    }

    v41 = vcgt_s32(v38, v5).i32[1];
    v42 = vcgt_s32(v5, v39).i32[1];
    if ((v41 & 1) == 0 && (v42 & 1) == 0)
    {
      if (v5.i32[0] >= v39.i32[0])
      {
        return (v5.i32[0] - v39.i32[0]);
      }

      v43 = v38.i32[0] - v5.i32[0];
      if (v38.i32[0] >= v5.i32[0])
      {
        return v43;
      }

      return 255.0;
    }

    if (v38.i32[0] <= v5.i32[0] || (v41 & 1) == 0)
    {
      if (((v38.i32[0] > v5.i32[0]) & v42) != 1)
      {
        if (v5.i32[0] <= v39.i32[0] || (v41 & 1) == 0)
        {
          if (((v5.i32[0] > v39.i32[0]) & v42) != 1)
          {
            return 255.0;
          }

          v44 = vcvt_f32_s32(v5);
        }

        else
        {
          v44 = vcvt_f32_s32(v5);
          v39.i32[1] = v38.i32[1];
        }

        v45 = vcvt_f32_s32(v39);
        return vaddv_f32(vabd_f32(v44, v45));
      }

      v44 = vcvt_f32_s32(v5);
      v38.i32[1] = v39.i32[1];
    }

    else
    {
      v44 = vcvt_f32_s32(v5);
    }

    v45 = vcvt_f32_s32(v38);
    return vaddv_f32(vabd_f32(v44, v45));
  }

  v30 = 0;
  while (1)
  {
    v31 = (*a3)[v30];
    if (v5.i32[0] >= *v31)
    {
      v32 = v31[2];
      v33 = v31[3];
      v34 = v31[1];
      v35 = v5.i32[0] > v32 || v5.i32[1] < v34;
      if (!v35 && v5.i32[1] <= v33)
      {
        return 0.0;
      }
    }

    if (a4 <= ++v30)
    {
      goto LABEL_35;
    }
  }
}

- (float)avgPixelFromPixelMemory:(id)a3 locX:(int)a4 locY:(int)a5
{
  v7 = 0;
  v8 = 0;
  if (a5 <= 0)
  {
    v9 = -(-a5 & 3);
  }

  else
  {
    v9 = a5 & 3;
  }

  if (a4 <= 0)
  {
    v10 = -(-a4 & 3);
  }

  else
  {
    v10 = a4 & 3;
  }

  v23 = a4 - 1;
  for (i = -1; i != 2; ++i)
  {
    if (v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = i == -1;
    }

    v13 = v12;
    if (v9 == 3 && i == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }

    v16 = 2;
    v17 = v23;
    do
    {
      if (v10)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16 == 2;
      }

      if (v18)
      {
        v19 = 1;
      }

      else
      {
        v19 = v15;
      }

      v21 = v10 == 3 && v16 == 0;
      if ((v19 & 1) == 0 && !v21)
      {
        v7 += [a3 readOneChannelAtX:v17 Y:(i + a5) Channel:0];
        ++v8;
      }

      --v16;
      v17 = (v17 + 1);
    }

    while (v16 != -1);
  }

  return v7 / v8;
}

- (void)spatialHMERCWithInputBuf:(double)a3 ref0Buf:(double)a4 ref1Buf:(double)a5 GGCount:(double)a6 GGCountRef0:(double)a7 GGCountRef1:(uint64_t)a8 GGCoord:(__CVBuffer *)a9 hmgrphy0:(__CVBuffer *)a10 hmgrphy1:(__CVBuffer *)a11 diffMax:(unsigned int)a12
{
  CVPixelBufferGetWidth(a9);
  CVPixelBufferGetHeight(a9);
  PixelBufferFromInputWithDifferentRes = createPixelBufferFromInputWithDifferentRes(a9);
  [a1 resizeInputBuffer:a9 outputBuffer:PixelBufferFromInputWithDifferentRes];
  PixelBufferFromInput = createPixelBufferFromInput(a10);
  [a1[1] backWarpYUV:a10 warped:PixelBufferFromInput withHomography:0 waitForComplete:{a2, a3, a4}];
  v22 = createPixelBufferFromInputWithDifferentRes(a9);
  [a1 resizeInputBuffer:PixelBufferFromInput outputBuffer:v22];
  v23 = createPixelBufferFromInput(a11);
  [a1[1] backWarpYUV:a11 warped:v23 withHomography:0 waitForComplete:{a5, a6, a7}];
  v24 = createPixelBufferFromInputWithDifferentRes(a9);
  [a1 resizeInputBuffer:v23 outputBuffer:v24];
  PixelBufferFromInputWithDifferentFormat = createPixelBufferFromInputWithDifferentFormat(PixelBufferFromInputWithDifferentRes);
  v26 = createPixelBufferFromInputWithDifferentFormat(v22);
  v27 = createPixelBufferFromInputWithDifferentFormat(v24);
  [a1[1] convertYUV2Gray:PixelBufferFromInputWithDifferentRes gray:PixelBufferFromInputWithDifferentFormat waitForComplete:1];
  [a1[1] convertYUV2Gray:v22 gray:v26 waitForComplete:1];
  [a1[1] convertYUV2Gray:v24 gray:v27 waitForComplete:1];
  [a1 setWSpatialWithGGCoord:a15 GGCount:a12 GGCountRef0:a13 GGCountRef1:a14 downscaledInputY:PixelBufferFromInputWithDifferentFormat downscaledwarpedRef0Y:v26 downscaledwarpedRef1Y:v27 diffMax:a16];
  CVBufferRelease(PixelBufferFromInputWithDifferentRes);
  CVBufferRelease(PixelBufferFromInput);
  CVBufferRelease(v22);
  CVBufferRelease(v23);
  CVBufferRelease(v24);
  CVBufferRelease(PixelBufferFromInputWithDifferentFormat);
  CVBufferRelease(v26);

  CVBufferRelease(v27);
}

- (void)hwStatisticsFromVT:(__n128)a3 homography1:(__n128)a4 BBoxCur:(__n128)a5 warpedBBox0:(__n128)a6 warpedMeta1:(__n128)a7 inputBuf:(uint64_t)a8 ref0Buf:(void *)a9 ref1Buf:(void *)a10 borderPixels:(void *)a11 outputStruct:(uint64_t)a12
{
  v41 = a16;
  v22 = [a9 count];
  v23 = [a10 count];
  v24 = [a11 count];
  HomographyToBuffer(v52, a2, a3, a4, a5, a6, a7);
  BoundingBoxToBuffer(a9, a10, a11, v51);
  v50 = malloc_type_calloc(v22, 4uLL, 0x100004052888210uLL);
  v25 = malloc_type_calloc(v22, 4uLL, 0x100004052888210uLL);
  v40 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  v26 = objc_alloc_init(NSMutableArray);
  v47 = v25;
  [a1 strongSpatialHMEFSWithInputBuf:a12 GGCount:v22 GGCoord:v51 gradMax:v25];
  if (a1[14] > 1)
  {
    [a1 spatialHMERCWithInputBuf:a12 ref0Buf:a13 ref1Buf:a14 GGCount:v22 GGCountRef0:v23 GGCountRef1:v24 GGCoord:a2.n128_f64[0] hmgrphy0:a3.n128_f64[0] hmgrphy1:a4.n128_f64[0] diffMax:{a5.n128_f64[0], a6.n128_f64[0], a7.n128_f64[0], v51, v50}];
  }

  v49 = a1;
  if (v22 >= 1)
  {
    v27 = 0;
    v28 = v22 & 0x7FFFFFFF;
    v29 = v25;
    do
    {
      printf("BBox[%d]: GradMax: %d\n", v27, *(v25 + v27));
      ++v27;
    }

    while (v28 != v27);
    v30 = 0;
    do
    {
      if (v49[14] >= 2)
      {
        printf("BBox[%d]: diffMax:%d\n", v30, v50[v30]);
      }

      ++v30;
    }

    while (v28 != v30);
    v31 = kVTDeghostingBoundingBoxStatisticsKey_MaximumGradient;
    v32 = kVTDeghostingBoundingBoxStatisticsKey_MaximumTemporalDifference;
    v33 = v50;
    do
    {
      v34 = objc_alloc_init(NSMutableDictionary);
      v35 = *v29++;
      v36 = [NSNumber numberWithInt:v35];
      [v34 setValue:v36 forKey:v31];

      v37 = *v33++;
      v38 = [NSNumber numberWithInt:v37];
      [v34 setValue:v38 forKey:v32];

      [v26 addObject:v34];
      --v28;
    }

    while (v28);
  }

  (*(v41 + 2))(v41, 0, 0, 0, v26);
  ++v49[14];
  free(v50);
  free(v47);
  free(v40);
}

- (void)hwMitigationFromVT:(double)a3 homography1:(double)a4 BBoxCur:(double)a5 warpedBBox0:(double)a6 warpedMeta1:(double)a7 inputBuf:(uint64_t)a8 ref0Buf:(void *)a9 ref1Buf:(uint64_t)a10 borderPixels:(uint64_t)a11 outputBuf:(__CVBuffer *)a12 boundingBoxWeights:(__CVBuffer *)a13 outputStruct:(__CVBuffer *)a14
{
  v75 = a18;
  v22 = [NSMutableData dataWithLength:10192];
  v23 = [*(a1 + 8) getDevice];
  v73 = [v23 newBufferWithBytesNoCopy:objc_msgSend(v22 length:"mutableBytes") options:10192 deallocator:{0, 0}];

  v74 = v22;
  v24 = [v22 mutableBytes];
  bzero(v24, 0x27D0uLL);
  *v24 = [a9 count];
  v25 = a9;
  if (*v24 < 1)
  {
    *&v27 = vneg_f32(0x80000000800000);
    *&v26 = 0;
  }

  else
  {
    v28 = 0;
    *&v27 = vneg_f32(0x80000000800000);
    v29 = (v24 + 32);
    *&v26 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    *buffer = _Q0;
    do
    {
      v79 = v26;
      v81 = v27;
      memset(&rect, 0, sizeof(rect));
      v35 = [v25 objectAtIndexedSubscript:v28];
      CGRectMakeWithDictionaryRepresentation(v35, &rect);

      *(&v27 + 1) = *(&v81 + 1);
      size = rect.size;
      v37 = vcvt_f32_f64(rect.origin);
      v38 = vaddq_f64(rect.origin, rect.size);
      v39 = vcvt_f32_f64(v38);
      *&v27 = vbsl_s8(vcgt_f32(*&v81, v37), v37, *&v81);
      *v29[-3].f32 = vcvt_hight_f32_f64(v37, v38);
      *(&v26 + 1) = *(&v79 + 1);
      v29[-1] = vmul_f32(vcvt_f32_s32(vadd_s32(vcvt_s32_f32(v39), vcvt_s32_f32(v37))), 0x3F0000003F000000);
      *v29 = vcvt_f32_f64(vmulq_f64(size, *buffer));
      *&v26 = vbsl_s8(vcgt_f32(v39, *&v79), v39, *&v79);
      ++v28;
      v29 += 4;
    }

    while (v28 < *v24);
  }

  v80 = v25;
  v40.i64[0] = v27;
  v40.i64[1] = v26;
  *(v24 + 4) = vuzp1q_s32(v40, vrev64q_s32(v40));
  v41 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vaddq_f64(vcvtq_f64_f32(*&v27), vdupq_n_s64(0xC050000000000000)), 0)));
  *(v24 + 3) = vcvt_u32_f32(vsub_f32(*&v26, *&v27));
  *(v24 + 4) = *&vsra_n_u32(v41, vcltz_s32(v41), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;
  v42 = a17;
  if (*v24 >= 1)
  {
    buffera = a14;
    v82 = a12;
    v43 = 0;
    v44 = kVTDeghostingBoundingBoxRepairOptionKey_SpatioTemporalFilterWeight;
    v45 = kVTDeghostingBoundingBoxRepairOptionKey_SpatialFilterWeight;
    v46 = (v24 + 2772);
    v47 = v24 + 2772;
    do
    {
      v48 = [(__CFArray *)v42 objectAtIndexedSubscript:v43];
      v49 = [v48 objectForKeyedSubscript:v44];
      [v49 floatValue];
      v51 = v50;

      *(v47 + 896) = 1.0 - v51;
      v52 = [(__CFArray *)v42 objectAtIndexedSubscript:v43];
      v53 = [v52 objectForKeyedSubscript:v45];
      [v53 floatValue];
      *v47 = v54;
      v47 += 2;

      ++v43;
      v55 = *v24;
    }

    while (v43 < v55);
    a12 = v82;
    a14 = buffera;
    if (v55 >= 1)
    {
      v56 = 0;
      do
      {
        printf("Main frame #: %d SPA_HW: %.4f, Orig: %.4f \n", *(a1 + 56), *v46, v46[896]);
        ++v56;
        ++v46;
      }

      while (v56 < *v24);
    }
  }

  v57 = createSingleCachedTextureFromPixelBuffer(a12, [*(a1 + 8) cvMetalTextureCacheRef], *(a1 + 16), 0, 0);
  v83 = createSingleCachedTextureFromPixelBuffer(a13, [*(a1 + 8) cvMetalTextureCacheRef], *(a1 + 16), 0, 0);
  v58 = createSingleCachedTextureFromPixelBuffer(a14, [*(a1 + 8) cvMetalTextureCacheRef], *(a1 + 16), 0, 0);
  Width = CVPixelBufferGetWidth(a12);
  Height = CVPixelBufferGetHeight(a12);
  bufferb = createPixelBufferWithDifferentFormat(Width, Height, 645428784);
  v61 = createSingleTextureFromYuvBuffer(bufferb, *(a1 + 16), 0, 0);
  PixelBufferWithDifferentFormat = createPixelBufferWithDifferentFormat(Width, Height, 645428784);
  v63 = createSingleTextureFromYuvBuffer(PixelBufferWithDifferentFormat, *(a1 + 16), 0, 0);
  v64 = [*(a1 + 32) commandBuffer];
  v65 = [v64 computeCommandEncoder];
  [*(a1 + 8) encodeHwSimTemporalRepairAndCopyInputYUVToCommandEncoder:v65 input:v57 frRef0:v83 frRef1:v58 hmgrphy0:v61 hmgrphy1:v63 temporalOutput:a2 inputCopy:a3 metaBuf:{a4, a5, a6, a7, v73}];
  [*(a1 + 8) encodeHwSimFuseYUVToCommandEncoder:v65 input:v63 temporalMit:v61 output:v57 metaBuf:v73];
  [v65 endEncoding];
  [a1 _commitCmdBuffer:v64 waitForComplete:1];
  (*(v75 + 2))(v75, 0, 0, 0);
  ++*(a1 + 56);
  CVBufferRelease(bufferb);
  CVBufferRelease(PixelBufferWithDifferentFormat);
}

@end