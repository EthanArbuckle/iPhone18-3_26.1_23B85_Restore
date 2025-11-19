@interface IOSurface(VG)
+ (id)vg_IOSurfaceFromData:()VG pixelFormat:;
+ (id)vg_surfaceWithPNGData:()VG;
- (BOOL)vg_convertARGB8888ToPlanarF:()VG;
- (BOOL)vg_rotateToSurface:()VG rotation:;
- (BOOL)vg_scaleToSurface:()VG temporaryBuffer:;
- (IOSurface)vg_copyAlphaFromSurface:()VG;
- (IOSurface)vg_multiplyAlphaFromSurface:()VG;
- (NSObject)vg_convertSurfaceStride:()VG;
- (id)vg_basicProperties;
- (id)vg_copy;
- (id)vg_data;
- (id)vg_emptyLike;
- (id)vg_stack420Yp8_CbCr8ToL008;
- (id)vg_stack444Yp8_CbCr8ToL008;
- (id)vg_toFloat16Surface;
- (id)vg_toFloat32Surface;
- (uint64_t)_scaleToSurface:()VG temporaryBuffer:flags:;
- (uint64_t)_scaleYCbCrToSurface:()VG temporaryBuffer:flags:;
- (uint64_t)vg_copyToSurfaceWithNewStride:()VG;
- (uint64_t)vg_hasBasicProperties:()VG;
- (uint64_t)vg_scaleToSurfaceUsingNearestNeighborResampling:()VG;
- (uint64_t)vg_vImageBuffer;
- (uint64_t)vg_vImageBufferOfPlaneAtIndex:()VG;
- (uint64_t)vg_vImageBufferWithCropOrigin:()VG cropSize:;
- (void)vg_convert420Yp8_CbCr8ToARGB8888:()VG;
- (void)vg_convert444Yp8_CbCr8FullRangeToARGB8888:()VG;
- (void)vg_convertARGB8888To420Yp8_CbCr8:()VG;
- (void)vg_convertARGB8888To444Yp8_CbCr8FullRange:()VG;
- (void)vg_copyToSurface:()VG;
- (void)vg_cropAndResizeYIntoSurface:()VG origin:size:;
- (void)vg_cropIntoSurface:()VG origin:;
- (void)vg_fillWithData:()VG;
- (void)vg_unstackL008To420Yp8_CbCr8:()VG;
- (void)vg_unstackL008To444Yp8_CbCr8:()VG;
@end

@implementation IOSurface(VG)

+ (id)vg_IOSurfaceFromData:()VG pixelFormat:
{
  v31[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBF758] imageWithData:v5];
  v30[0] = *MEMORY[0x277CD2B88];
  v7 = MEMORY[0x277CCABB0];
  [v6 extent];
  v9 = [v7 numberWithDouble:v8];
  v31[0] = v9;
  v30[1] = *MEMORY[0x277CD2A28];
  v10 = MEMORY[0x277CCABB0];
  [v6 extent];
  v12 = [v10 numberWithDouble:v11];
  v13 = *MEMORY[0x277CD2960];
  v31[1] = v12;
  v31[2] = &unk_2880F60A0;
  v14 = *MEMORY[0x277CD2A70];
  v30[2] = v13;
  v30[3] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a4];
  v31[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];

  v17 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v16];
  v18 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __50__IOSurface_VG__vg_IOSurfaceFromData_pixelFormat___block_invoke;
  v27[3] = &__block_descriptor_40_e5_v8__0l;
  v27[4] = v18;
  v19 = MEMORY[0x2743B9AA0](v27);
  v28 = *MEMORY[0x277CBF938];
  v29 = MEMORY[0x277CBEC28];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v21 = [objc_alloc(MEMORY[0x277CBF740]) initWithOptions:v20];
  [v17 lockWithOptions:0 seed:0];
  [v6 extent];
  v23 = v22;
  [v6 extent];
  [v21 render:v6 toIOSurface:v17 bounds:v18 colorSpace:{0.0, 0.0, v23}];
  [v17 unlockWithOptions:0 seed:0];
  v24 = v17;

  v19[2](v19);
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)vg_basicProperties
{
  v18[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB38];
  v17[0] = *MEMORY[0x277CD2928];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "width")}];
  v18[0] = v3;
  v17[1] = *MEMORY[0x277CD28D0];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "height")}];
  v18[1] = v4;
  v17[2] = *MEMORY[0x277CD28C8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "elementWidth")}];
  v18[2] = v5;
  v17[3] = *MEMORY[0x277CD28C0];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "elementHeight")}];
  v18[3] = v6;
  v17[4] = *MEMORY[0x277CD28B0];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "bytesPerElement")}];
  v18[4] = v7;
  v17[5] = *MEMORY[0x277CD28B8];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "bytesPerRow")}];
  v18[5] = v8;
  v17[6] = *MEMORY[0x277CD28D8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "pixelFormat")}];
  v18[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:7];
  v11 = [v2 dictionaryWithDictionary:v10];

  if ([a1 planeCount])
  {
    v12 = [a1 allAttachments];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CD29D0]];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CD2B30]];
    [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x277CD2908]];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)vg_data
{
  v2 = [a1 width];
  v3 = [a1 bytesPerElement] * v2;
  v4 = [a1 bytesPerRow];
  v5 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(a1, "height") * v3}];
  [a1 lockWithOptions:1 seed:0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __24__IOSurface_VG__vg_data__block_invoke;
  v12[3] = &unk_279E28D98;
  v12[4] = a1;
  v6 = MEMORY[0x2743B9AA0](v12);
  v7 = [a1 baseAddress];
  v8 = [v5 mutableBytes];
  for (i = 0; i < [a1 height]; ++i)
  {
    memcpy(v8, v7, v3);
    v7 += v4;
    v8 += v3;
  }

  v10 = v5;
  v6[2](v6);

  return v10;
}

- (uint64_t)vg_hasBasicProperties:()VG
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 vg_basicProperties];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v6 objectForKeyedSubscript:{v10, v17}];
        v12 = [v5 objectForKeyedSubscript:v10];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (uint64_t)vg_vImageBuffer
{
  *a2 = [a1 baseAddress];
  a2[1] = [a1 height];
  a2[2] = [a1 width];
  result = [a1 bytesPerRow];
  a2[3] = result;
  return result;
}

- (uint64_t)vg_vImageBufferOfPlaneAtIndex:()VG
{
  if ([a1 planeCount])
  {
    *a3 = [a1 baseAddressOfPlaneAtIndex:a2];
    a3[1] = [a1 heightOfPlaneAtIndex:a2];
    a3[2] = [a1 widthOfPlaneAtIndex:a2];
    result = [a1 bytesPerRowOfPlaneAtIndex:a2];
    a3[3] = result;
  }

  else
  {

    return [a1 vg_vImageBuffer];
  }

  return result;
}

- (uint64_t)vg_vImageBufferWithCropOrigin:()VG cropSize:
{
  v8 = [a1 baseAddress];
  v9 = v8 + [a1 bytesPerRow] * HIWORD(a2);
  *a4 = v9 + [a1 bytesPerElement] * a2;
  a4[1] = HIWORD(a3);
  a4[2] = a3;
  result = [a1 bytesPerRow];
  a4[3] = result;
  return result;
}

- (id)vg_copy
{
  v2 = [a1 allAttachments];
  v3 = [v2 objectForKeyedSubscript:@"CreationProperties"];

  v4 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v3];
  [a1 vg_copyToSurface:v4];

  return v4;
}

- (id)vg_emptyLike
{
  v2 = objc_alloc(MEMORY[0x277CD2930]);
  v3 = [a1 vg_basicProperties];
  v4 = [v2 initWithProperties:v3];

  return v4;
}

- (void)vg_copyToSurface:()VG
{
  v9 = a3;
  [v9 lockWithOptions:0 seed:0];
  [a1 lockWithOptions:1 seed:0];
  v4 = [v9 baseAddress];
  v5 = [a1 baseAddress];
  v6 = [a1 allocationSize];
  v7 = [v9 allocationSize];
  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  memcpy(v4, v5, v8);
  [a1 unlockWithOptions:1 seed:0];
  [v9 unlockWithOptions:0 seed:0];
}

- (void)vg_cropIntoSurface:()VG origin:
{
  v6 = a3;
  v7 = [v6 width];
  v8 = [v6 height];
  v9 = [v6 bytesPerElement];
  [a1 lockWithOptions:1 seed:0];
  [v6 lockWithOptions:0 seed:0];
  HIWORD(v12) = v8;
  LOWORD(v12) = v7;
  [a1 vg_vImageBufferWithCropOrigin:a4 cropSize:v12];
  if (v6)
  {
    [v6 vg_vImageBuffer];
  }

  v10 = v8;
  if (v8)
  {
    v11 = v9 * v7;
    do
    {
      memcpy(0, 0, v11);
      --v10;
    }

    while (v10);
  }

  [a1 unlockWithOptions:1 seed:0];
  [v6 unlockWithOptions:0 seed:0];
}

- (void)vg_cropAndResizeYIntoSurface:()VG origin:size:
{
  v8 = a3;
  [a1 lockWithOptions:1 seed:0];
  [v8 lockWithOptions:0 seed:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__IOSurface_VG__vg_cropAndResizeYIntoSurface_origin_size___block_invoke;
  v17[3] = &unk_279E28D98;
  v17[4] = a1;
  v9 = MEMORY[0x2743B9AA0](v17);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__IOSurface_VG__vg_cropAndResizeYIntoSurface_origin_size___block_invoke_2;
  v15[3] = &unk_279E28D98;
  v10 = v8;
  v16 = v10;
  v11 = MEMORY[0x2743B9AA0](v15);
  memset(&dest, 0, sizeof(dest));
  if (v10)
  {
    [v10 vg_vImageBuffer];
  }

  v12 = [a1 bytesPerRowOfPlaneAtIndex:0];
  v13.data = ([a1 baseAddressOfPlaneAtIndex:0] + v12 * HIWORD(a4) + a4);
  v13.height = HIWORD(a5);
  v13.width = a5;
  v13.rowBytes = v12;
  vImageScale_Planar8(&v13, &dest, 0, 0);
  v11[2](v11);

  v9[2](v9);
}

- (void)vg_convert420Yp8_CbCr8ToARGB8888:()VG
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CB86F0];
  if ([v4 pixelFormat] == 32)
  {
    v6 = 0x3000200010000;
  }

  else
  {
    if ([v4 pixelFormat] != 1111970369)
    {
      goto LABEL_6;
    }

    v6 = 0x100020003;
  }

  *permuteMap = vuzp1_s8(v6, v6).u32[0];
LABEL_6:
  v7 = [a1 pixelFormat];
  v8.i32[0] = 875704422;
  v9.i32[0] = v7;
  v10 = vbsl_s8(vdup_lane_s32(vceq_s32(v9, v8), 0), 0x1000000FFLL, 0x10000000EBLL);
  pixelRange.Yp_bias = 16 * (v7 != 875704422);
  pixelRange.CbCr_bias = 128;
  pixelRange.YpRangeMax = v10.i32[0];
  if (v7 == 875704422)
  {
    v11 = 255;
  }

  else
  {
    v11 = 240;
  }

  pixelRange.CbCrRangeMax = v11;
  *&pixelRange.YpMax = v10;
  pixelRange.CbCrMax = v11;
  pixelRange.CbCrMin = 16 * (v7 != 875704422);
  vImageConvert_YpCbCrToARGB_GenerateConversion(v5, &pixelRange, &outInfo, kvImage420Yp8_CbCr8, kvImageARGB8888, 0);
  [a1 lockWithOptions:1 seed:0];
  [v4 lockWithOptions:0 seed:0];
  memset(&srcYp, 0, sizeof(srcYp));
  [a1 vg_vImageBufferOfPlaneAtIndex:0];
  memset(&srcCbCr, 0, sizeof(srcCbCr));
  [a1 vg_vImageBufferOfPlaneAtIndex:1];
  memset(&v13, 0, sizeof(v13));
  if (v4)
  {
    [v4 vg_vImageBuffer];
  }

  vImageConvert_420Yp8_CbCr8ToARGB8888(&srcYp, &srcCbCr, &v13, &outInfo, permuteMap, 0xFFu, 0);
  [v4 unlockWithOptions:0 seed:0];
  [a1 unlockWithOptions:1 seed:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)vg_convertARGB8888To420Yp8_CbCr8:()VG
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CB86D8];
  if ([a1 pixelFormat] == 32)
  {
    v6 = 0x3000200010000;
  }

  else
  {
    if ([a1 pixelFormat] != 1111970369)
    {
      goto LABEL_6;
    }

    v6 = 0x100020003;
  }

  *permuteMap = vuzp1_s8(v6, v6).u32[0];
LABEL_6:
  v7 = [v4 pixelFormat];
  v8.i32[0] = 875704422;
  v9.i32[0] = v7;
  v10 = vbsl_s8(vdup_lane_s32(vceq_s32(v9, v8), 0), 0x1000000FFLL, 0x10000000EBLL);
  pixelRange.Yp_bias = 16 * (v7 != 875704422);
  pixelRange.CbCr_bias = 128;
  pixelRange.YpRangeMax = v10.i32[0];
  if (v7 == 875704422)
  {
    v11 = 255;
  }

  else
  {
    v11 = 240;
  }

  pixelRange.CbCrRangeMax = v11;
  *&pixelRange.YpMax = v10;
  pixelRange.CbCrMax = v11;
  pixelRange.CbCrMin = 16 * (v7 != 875704422);
  vImageConvert_ARGBToYpCbCr_GenerateConversion(v5, &pixelRange, &outInfo, kvImageARGB8888, kvImage420Yp8_CbCr8, 0);
  [a1 lockWithOptions:1 seed:0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __50__IOSurface_VG__vg_convertARGB8888To420Yp8_CbCr8___block_invoke;
  v21[3] = &unk_279E28D98;
  v21[4] = a1;
  v12 = MEMORY[0x2743B9AA0](v21);
  [v4 lockWithOptions:0 seed:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __50__IOSurface_VG__vg_convertARGB8888To420Yp8_CbCr8___block_invoke_2;
  v19[3] = &unk_279E28D98;
  v13 = v4;
  v20 = v13;
  v14 = MEMORY[0x2743B9AA0](v19);
  memset(&src, 0, sizeof(src));
  [a1 vg_vImageBuffer];
  memset(&destYp, 0, sizeof(destYp));
  if (v13)
  {
    [v13 vg_vImageBufferOfPlaneAtIndex:0];
    [v13 vg_vImageBufferOfPlaneAtIndex:{1, 0, 0, 0, 0, destYp.data, destYp.height, destYp.width, destYp.rowBytes}];
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  vImageConvert_ARGB8888To420Yp8_CbCr8(&src, &destYp, &v16, &outInfo, permuteMap, 0);
  v14[2](v14);

  v12[2](v12);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)vg_convert444Yp8_CbCr8FullRangeToARGB8888:()VG
{
  v4 = a3;
  [a1 lockWithOptions:1 seed:{0, v4}];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __59__IOSurface_VG__vg_convert444Yp8_CbCr8FullRangeToARGB8888___block_invoke;
  v48[3] = &unk_279E28D98;
  v48[4] = a1;
  v35 = MEMORY[0x2743B9AA0](v48);
  [v4 lockWithOptions:0 seed:0];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __59__IOSurface_VG__vg_convert444Yp8_CbCr8FullRangeToARGB8888___block_invoke_2;
  v46[3] = &unk_279E28D98;
  v5 = v4;
  v47 = v5;
  v36 = MEMORY[0x2743B9AA0](v46);
  v39 = [a1 bytesPerRowOfPlaneAtIndex:0];
  v38 = [a1 bytesPerRowOfPlaneAtIndex:1];
  v37 = [v5 bytesPerRow];
  v45 = [a1 baseAddressOfPlaneAtIndex:0];
  v44 = [a1 baseAddressOfPlaneAtIndex:1];
  v6 = [v5 baseAddress];
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  while ([a1 height] > v9)
  {
    v41 = v9;
    v42 = v8;
    v11 = 0;
    v43 = v7;
    v40 = v10;
    while ([a1 width] > v11)
    {
      LOBYTE(v12) = *(v45 + v7);
      LOBYTE(v13) = *(v44 + v8);
      LOBYTE(v14) = *(v44 + v8 + 1);
      _Q0 = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_270FA9280, v12 * 0.0039216), xmmword_270FA9290, v13 * 0.0039216), xmmword_270FA92A0, v14 * 0.0039216), xmmword_270FA92B0);
      _S1 = 1132396544;
      v17 = (_Q0.f32[0] * 255.0) + 0.5;
      if (v17 <= 255.0)
      {
        v18 = (_Q0.f32[0] * 255.0) + 0.5;
      }

      else
      {
        v18 = 255.0;
      }

      if (v17 >= 0.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0.0;
      }

      __asm { FMLA            S2, S1, V0.S[1] }

      if (_S2 <= 255.0)
      {
        v25 = _S2;
      }

      else
      {
        v25 = 255.0;
      }

      if (_S2 >= 0.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0.0;
      }

      __asm { FMLA            S2, S1, V0.S[2] }

      if (_S2 <= 255.0)
      {
        _Q0.f32[0] = _S2;
      }

      else
      {
        _Q0.f32[0] = 255.0;
      }

      if (_S2 >= 0.0)
      {
        v28 = _Q0.f32[0];
      }

      else
      {
        v28 = 0.0;
      }

      if ([v5 pixelFormat] == 32)
      {
        v29 = v10;
      }

      else
      {
        v29 = v10 + 1;
      }

      if ([v5 pixelFormat] == 32)
      {
        v30 = v10 + 1;
      }

      else
      {
        v30 = v10;
      }

      v31 = [v5 pixelFormat];
      v32 = [v5 pixelFormat];
      v33 = v10 - 1;
      if (v31 == 32)
      {
        v34 = v10 + 2;
      }

      else
      {
        v34 = v10 - 1;
      }

      if (v32 != 32)
      {
        v33 = v10 + 2;
      }

      *(v6 + v33) = -1;
      *(v6 + v29) = v19;
      *(v6 + v30) = v26;
      *(v6 + v34) = v28;
      ++v11;
      v10 += 4;
      v8 += 2;
      ++v7;
    }

    v9 = v41 + 1;
    v10 = v40 + v37;
    v8 = v42 + v38;
    v7 = v43 + v39;
  }

  v36[2](v36);

  v35[2](v35);
}

- (void)vg_convertARGB8888To444Yp8_CbCr8FullRange:()VG
{
  v4 = a3;
  [a1 lockWithOptions:1 seed:{0, v4}];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __59__IOSurface_VG__vg_convertARGB8888To444Yp8_CbCr8FullRange___block_invoke;
  v46[3] = &unk_279E28D98;
  v46[4] = a1;
  v34 = MEMORY[0x2743B9AA0](v46);
  [v4 lockWithOptions:0 seed:0];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __59__IOSurface_VG__vg_convertARGB8888To444Yp8_CbCr8FullRange___block_invoke_2;
  v44[3] = &unk_279E28D98;
  v5 = v4;
  v45 = v5;
  v35 = MEMORY[0x2743B9AA0](v44);
  v38 = [v5 bytesPerRowOfPlaneAtIndex:0];
  v37 = [v5 bytesPerRowOfPlaneAtIndex:1];
  v36 = [a1 bytesPerRow];
  v43 = [v5 baseAddressOfPlaneAtIndex:0];
  v42 = [v5 baseAddressOfPlaneAtIndex:1];
  v6 = [a1 baseAddress];
  v41 = 0;
  v39 = 1;
  v40 = 0;
  while ([a1 height] > HIDWORD(v41))
  {
    v7 = 0;
    v8 = v40;
    v9 = v41;
    v10 = v39;
    while ([a1 width] > v7)
    {
      if ([v5 pixelFormat] == 32)
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 + 1;
      }

      if ([v5 pixelFormat] == 32)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = v10;
      }

      v13 = [v5 pixelFormat];
      v14 = [v5 pixelFormat];
      v19 = v10 - 1;
      if (v13 == 32)
      {
        v20 = v10 + 2;
      }

      else
      {
        v20 = v10 - 1;
      }

      if (v14 != 32)
      {
        v19 = v10 + 2;
      }

      LOBYTE(v15) = *(v6 + v19);
      LOBYTE(v16) = *(v6 + v11);
      LOBYTE(v17) = *(v6 + v12);
      LOBYTE(v18) = *(v6 + v20);
      _Q1 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_270FA92C0, v16 * 0.0039216), xmmword_270FA92D0, v17 * 0.0039216), xmmword_270FA92E0, v18 * 0.0039216), xmmword_270FA92F0, v15 * 0.0039216);
      _S0 = 255.0;
      v23 = (_Q1.f32[0] * 255.0) + 0.5;
      if (v23 <= 255.0)
      {
        v24 = (_Q1.f32[0] * 255.0) + 0.5;
      }

      else
      {
        v24 = 255.0;
      }

      if (v23 >= 0.0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0.0;
      }

      *(v43 + v9) = v25;
      __asm { FMLA            S2, S0, V1.S[1] }

      if (_S2 <= 255.0)
      {
        v31 = _S2;
      }

      else
      {
        v31 = 255.0;
      }

      if (_S2 >= 0.0)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0.0;
      }

      *(v42 + v8) = v32;
      __asm { FMLA            S2, S0, V1.S[2] }

      if (_S2 <= 255.0)
      {
        _S0 = _S2;
      }

      if (_S2 < 0.0)
      {
        _S0 = 0.0;
      }

      *(v42 + v8 + 1) = _S0;
      ++v7;
      v8 += 2;
      v10 += 4;
      ++v9;
    }

    v40 += v37;
    v39 += v36;
    LODWORD(v41) = v41 + v38;
    ++HIDWORD(v41);
  }

  v35[2](v35);

  v34[2](v34);
}

- (BOOL)vg_convertARGB8888ToPlanarF:()VG
{
  if ([a1 pixelFormat] != 32 && objc_msgSend(a1, "pixelFormat") != 1111970369 && objc_msgSend(a1, "pixelFormat") != 1380401729)
  {
    return 0;
  }

  [a1 lockWithOptions:1 seed:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__IOSurface_VG__vg_convertARGB8888ToPlanarF___block_invoke;
  v14[3] = &unk_279E28D98;
  v14[4] = a1;
  v5 = MEMORY[0x2743B9AA0](v14);
  v12 = 0u;
  v13 = 0u;
  [a1 vg_vImageBuffer];
  *&src.data = v12;
  src.rowBytes = *(&v13 + 1);
  src.width = 4 * v13;
  v6 = a3[1];
  *&v10.data = *a3;
  v10.rowBytes = *(&v6 + 1);
  v10.width = 4 * v6;
  v7 = vImageConvert_Planar8toPlanarF(&src, &v10, 255.0, 0.0, 0x100u);
  v5[2](v5);
  v8 = v7 == 0;

  return v8;
}

- (id)vg_toFloat32Surface
{
  v21[4] = *MEMORY[0x277D85DE8];
  if ([a1 pixelFormat] == 1278226534 || objc_msgSend(a1, "pixelFormat") == 1717855600)
  {
    v2 = a1;
  }

  else if ([a1 pixelFormat] == 1278226536 || objc_msgSend(a1, "pixelFormat") == 1751410032)
  {
    v5 = objc_alloc(MEMORY[0x277CD2930]);
    v20[0] = *MEMORY[0x277CD2928];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "width")}];
    v21[0] = v6;
    v20[1] = *MEMORY[0x277CD28D0];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "height")}];
    v8 = *MEMORY[0x277CD28D8];
    v21[1] = v7;
    v21[2] = &unk_2880F60B8;
    v9 = *MEMORY[0x277CD28B0];
    v20[2] = v8;
    v20[3] = v9;
    v21[3] = &unk_2880F60A0;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
    v11 = [v5 initWithProperties:v10];

    [v11 lockWithOptions:0 seed:0];
    [a1 lockWithOptions:1 seed:0];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __36__IOSurface_VG__vg_toFloat32Surface__block_invoke;
    v18[3] = &unk_279E28D98;
    v12 = v11;
    v19 = v12;
    v13 = MEMORY[0x2743B9AA0](v18);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __36__IOSurface_VG__vg_toFloat32Surface__block_invoke_2;
    v17[3] = &unk_279E28D98;
    v17[4] = a1;
    v14 = MEMORY[0x2743B9AA0](v17);
    memset(&src, 0, sizeof(src));
    [a1 vg_vImageBuffer];
    memset(&v15, 0, sizeof(v15));
    if (v12)
    {
      [v12 vg_vImageBuffer];
    }

    if (vImageConvert_Planar16FtoPlanarF(&src, &v15, 0))
    {
      v2 = 0;
    }

    else
    {
      v2 = v12;
    }

    v14[2](v14);

    v13[2](v13);
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)vg_toFloat16Surface
{
  v21[4] = *MEMORY[0x277D85DE8];
  if ([a1 pixelFormat] == 1278226536 || objc_msgSend(a1, "pixelFormat") == 1751410032)
  {
    v2 = a1;
  }

  else if ([a1 pixelFormat] == 1278226534 || objc_msgSend(a1, "pixelFormat") == 1717855600)
  {
    v5 = objc_alloc(MEMORY[0x277CD2930]);
    v20[0] = *MEMORY[0x277CD2928];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "width")}];
    v21[0] = v6;
    v20[1] = *MEMORY[0x277CD28D0];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "height")}];
    v8 = *MEMORY[0x277CD28D8];
    v21[1] = v7;
    v21[2] = &unk_2880F60D0;
    v9 = *MEMORY[0x277CD28B0];
    v20[2] = v8;
    v20[3] = v9;
    v21[3] = &unk_2880F60E8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
    v11 = [v5 initWithProperties:v10];

    [v11 lockWithOptions:0 seed:0];
    [a1 lockWithOptions:1 seed:0];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __36__IOSurface_VG__vg_toFloat16Surface__block_invoke;
    v18[3] = &unk_279E28D98;
    v12 = v11;
    v19 = v12;
    v13 = MEMORY[0x2743B9AA0](v18);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __36__IOSurface_VG__vg_toFloat16Surface__block_invoke_2;
    v17[3] = &unk_279E28D98;
    v17[4] = a1;
    v14 = MEMORY[0x2743B9AA0](v17);
    memset(&src, 0, sizeof(src));
    [a1 vg_vImageBuffer];
    memset(&v15, 0, sizeof(v15));
    if (v12)
    {
      [v12 vg_vImageBuffer];
    }

    if (vImageConvert_PlanarFtoPlanar16F(&src, &v15, 0))
    {
      v2 = 0;
    }

    else
    {
      v2 = v12;
    }

    v14[2](v14);

    v13[2](v13);
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (NSObject)vg_convertSurfaceStride:()VG
{
  v34[5] = *MEMORY[0x277D85DE8];
  v5 = [a1 width];
  if ([a1 bytesPerElement] * v5 <= a3)
  {
    v8 = objc_alloc(MEMORY[0x277CD2930]);
    v33[0] = *MEMORY[0x277CD2928];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "width")}];
    v34[0] = v9;
    v33[1] = *MEMORY[0x277CD28D0];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "height")}];
    v34[1] = v10;
    v33[2] = *MEMORY[0x277CD28D8];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "pixelFormat")}];
    v34[2] = v11;
    v33[3] = *MEMORY[0x277CD28B0];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "bytesPerElement")}];
    v34[3] = v12;
    v33[4] = *MEMORY[0x277CD28B8];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
    v34[4] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:5];
    v15 = [v8 initWithProperties:v14];

    [v15 lockWithOptions:0 seed:0];
    [a1 lockWithOptions:1 seed:0];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __41__IOSurface_VG__vg_convertSurfaceStride___block_invoke;
    v30[3] = &unk_279E28D98;
    v16 = v15;
    v31 = v16;
    v17 = MEMORY[0x2743B9AA0](v30);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __41__IOSurface_VG__vg_convertSurfaceStride___block_invoke_2;
    v29[3] = &unk_279E28D98;
    v29[4] = a1;
    v18 = MEMORY[0x2743B9AA0](v29);
    v19 = a1;
    v20 = [a1 baseAddress];
    v21 = v16;
    v22 = [v16 baseAddress];
    v23 = [a1 bytesPerRow];
    v24 = v23;
    v25 = 0;
    if (v23 >= a3)
    {
      v26 = a3;
    }

    else
    {
      v26 = v23;
    }

    while (v25 < [a1 height])
    {
      memcpy(v22, v20, v26);
      ++v25;
      v22 += a3;
      v20 += v24;
    }

    v6 = v16;
    v18[2](v18);

    v17[2](v17);
    v7 = v6;
  }

  else
  {
    v6 = __VGLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_ERROR, " Invalid stride size. ", buf, 2u);
    }

    v7 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v7;
}

- (uint64_t)vg_copyToSurfaceWithNewStride:()VG
{
  v4 = a3;
  v5 = [v4 bytesPerRow];
  v6 = [a1 width];
  if (v5 < [a1 bytesPerElement] * v6)
  {
    v7 = __VGLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = " Invalid stride size. ";
LABEL_15:
      _os_log_impl(&dword_270F06000, v7, OS_LOG_TYPE_ERROR, v8, buf, 2u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v9 = [v4 width];
  if (v9 != [a1 width] || (v10 = objc_msgSend(v4, "height"), v10 != objc_msgSend(a1, "height")))
  {
    v7 = __VGLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = " Invalid destination surface height/width. ";
      goto LABEL_15;
    }

LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  v11 = [v4 pixelFormat];
  if (v11 != [a1 pixelFormat] || (v12 = objc_msgSend(v4, "bytesPerElement"), v12 != objc_msgSend(a1, "bytesPerElement")))
  {
    v7 = __VGLogSharedInstance();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v8 = " Invalid destination surface pixel format. ";
    goto LABEL_15;
  }

  [v4 lockWithOptions:0 seed:0];
  [a1 lockWithOptions:1 seed:0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __47__IOSurface_VG__vg_copyToSurfaceWithNewStride___block_invoke;
  v25[3] = &unk_279E28D98;
  v13 = v4;
  v26 = v13;
  v14 = MEMORY[0x2743B9AA0](v25);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __47__IOSurface_VG__vg_copyToSurfaceWithNewStride___block_invoke_2;
  v24[3] = &unk_279E28D98;
  v24[4] = a1;
  v15 = MEMORY[0x2743B9AA0](v24);
  v16 = [a1 baseAddress];
  v17 = [v13 baseAddress];
  v18 = [a1 bytesPerRow];
  v19 = v18;
  v20 = 0;
  if (v5 >= v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = v5;
  }

  while (v20 < [a1 height])
  {
    memcpy(v17, v16, v21);
    ++v20;
    v17 += v5;
    v16 += v19;
  }

  v15[2](v15);

  v14[2](v14);
  v22 = 1;
  v7 = v26;
LABEL_17:

  return v22;
}

- (IOSurface)vg_multiplyAlphaFromSurface:()VG
{
  v4 = a3;
  v5 = [(IOSurface *)a1 vg_emptyLike];
  vg::IOSurfaceData::IOSurfaceData(v19, v4, 1);
  vg::IOSurfaceData::IOSurfaceData(v18, a1, 1);
  vg::IOSurfaceData::IOSurfaceData(v17, v5, 0);
  for (i = 0; i < [(IOSurface *)a1 height]; ++i)
  {
    for (j = 0; j < [(IOSurface *)a1 width]; ++j)
    {
      v9 = v18[4] + v18[5] * i + v18[6] * j;
      v10 = v17[4] + v17[5] * i + v17[6] * j;
      LOBYTE(v8) = *(v19[4] + v19[5] * i + v19[6] * j);
      v11 = 1132396544;
      v12 = v8 / 255.0;
      if (v12 > 1.0)
      {
        v12 = 1.0;
      }

      LOBYTE(v11) = *v9;
      *&v13 = v12 * v11;
      *v10 = *&v13;
      LOBYTE(v13) = v9[1];
      *&v14 = v12 * v13;
      v10[1] = *&v14;
      LOBYTE(v14) = v9[2];
      *&v15 = v12 * v14;
      v10[2] = *&v15;
      LOBYTE(v15) = v9[3];
      v10[3] = (v12 * v15);
    }
  }

  vg::IOSurfaceData::~IOSurfaceData(v17);
  vg::IOSurfaceData::~IOSurfaceData(v18);
  vg::IOSurfaceData::~IOSurfaceData(v19);

  return v5;
}

- (IOSurface)vg_copyAlphaFromSurface:()VG
{
  v4 = a3;
  v5 = [(IOSurface *)a1 vg_emptyLike];
  vg::IOSurfaceData::IOSurfaceData(v16, v4, 1);
  vg::IOSurfaceData::IOSurfaceData(v15, a1, 1);
  vg::IOSurfaceData::IOSurfaceData(v14, v5, 0);
  for (i = 0; i < [(IOSurface *)a1 height]; ++i)
  {
    for (j = 0; j < [(IOSurface *)a1 width]; ++j)
    {
      v9 = v15[4] + v15[5] * i + v15[6] * j;
      v10 = v14[4] + v14[5] * i + v14[6] * j;
      LOBYTE(v8) = *(v16[4] + v16[5] * i + v16[6] * j);
      v11 = 1132396544;
      v12 = v8 / 255.0;
      if (v12 > 1.0)
      {
        v12 = 1.0;
      }

      LOBYTE(v11) = *v9;
      *v10 = (v12 * v11);
      v10[1] = v9[1];
      v10[2] = v9[2];
      v10[3] = v9[3];
    }
  }

  vg::IOSurfaceData::~IOSurfaceData(v14);
  vg::IOSurfaceData::~IOSurfaceData(v15);
  vg::IOSurfaceData::~IOSurfaceData(v16);

  return v5;
}

- (id)vg_stack420Yp8_CbCr8ToL008
{
  v40[4] = *MEMORY[0x277D85DE8];
  [a1 lockWithOptions:1 seed:0];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __43__IOSurface_VG__vg_stack420Yp8_CbCr8ToL008__block_invoke;
  v38[3] = &unk_279E28D98;
  v38[4] = a1;
  v2 = MEMORY[0x2743B9AA0](v38);
  memset(&src, 0, sizeof(src));
  [a1 vg_vImageBufferOfPlaneAtIndex:0];
  v35 = 0u;
  v36 = 0u;
  [a1 vg_vImageBufferOfPlaneAtIndex:1];
  height = src.height;
  width = src.width;
  v5 = WORD4(v35);
  v4 = v36;
  v6 = objc_alloc(MEMORY[0x277CD2930]);
  v39[0] = *MEMORY[0x277CD2928];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:2 * v4];
  v40[0] = v7;
  v39[1] = *MEMORY[0x277CD28D0];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v5 + height];
  v9 = *MEMORY[0x277CD28D8];
  v40[1] = v8;
  v40[2] = &unk_2880F6100;
  v10 = *MEMORY[0x277CD28B0];
  v39[2] = v9;
  v39[3] = v10;
  v40[3] = &unk_2880F6118;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];
  v12 = [v6 initWithProperties:v11];

  [v12 lockWithOptions:0 seed:0];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __43__IOSurface_VG__vg_stack420Yp8_CbCr8ToL008__block_invoke_20;
  v33[3] = &unk_279E28D98;
  v13 = v12;
  v34 = v13;
  v14 = MEMORY[0x2743B9AA0](v33);
  memset(&dest, 0, sizeof(dest));
  if (v13)
  {
    HIWORD(v30) = height;
    LOWORD(v30) = width;
    [v13 vg_vImageBufferWithCropOrigin:0 cropSize:v30];
  }

  vImageCopyBuffer(&src, &dest, 1uLL, 0);
  if (v13)
  {
    HIWORD(v29) = height;
    LOWORD(v29) = 0;
    HIWORD(v28) = v5;
    LOWORD(v28) = v4;
    [v13 vg_vImageBufferWithCropOrigin:v29 cropSize:v28];
    v31 = 0u;
    LOWORD(v27) = v4;
    HIWORD(v27) = height;
    [v13 vg_vImageBufferWithCropOrigin:v27 cropSize:v28];
  }

  else
  {
    *(&v31 + 1) = 0;
  }

  v15 = *(&v35 + 1);
  if (*(&v35 + 1))
  {
    v16 = 0;
    v17 = 0;
    v18 = v35;
    v19 = v36;
    do
    {
      if (v19)
      {
        v20 = 0;
        v21 = (v18 + 1);
        do
        {
          *v20 = *(v21 - 1);
          v22 = *v21;
          v21 += 2;
          (v20++)[v17] = v22;
          v19 = v36;
        }

        while (v20 < v36);
        v15 = *(&v35 + 1);
      }

      v18 += *(&v36 + 1);
      v17 += *(&v31 + 1);
      ++v16;
    }

    while (v16 < v15);
  }

  v23 = v13;
  v14[2](v14);

  v2[2](v2);
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)vg_unstackL008To420Yp8_CbCr8:()VG
{
  v4 = a3;
  [a1 lockWithOptions:1 seed:0];
  [v4 lockWithOptions:0 seed:0];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __46__IOSurface_VG__vg_unstackL008To420Yp8_CbCr8___block_invoke;
  v22[3] = &unk_279E28D98;
  v22[4] = a1;
  v5 = MEMORY[0x2743B9AA0](v22);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __46__IOSurface_VG__vg_unstackL008To420Yp8_CbCr8___block_invoke_2;
  v20[3] = &unk_279E28D98;
  v6 = v4;
  v21 = v6;
  v7 = MEMORY[0x2743B9AA0](v20);
  v8 = 0uLL;
  memset(&dest, 0, sizeof(dest));
  if (v6)
  {
    [v6 vg_vImageBufferOfPlaneAtIndex:0];
    v17 = 0u;
    v18 = 0u;
    [v6 vg_vImageBufferOfPlaneAtIndex:1];
    *(&v8 + 1) = dest.width;
    *&v8 = vmovn_s64(*&dest.height);
  }

  else
  {
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v11 = v8;
  v9 = vrev64_s32(*&v8);
  HIWORD(v15) = v9.i16[2];
  LOWORD(v15) = v9.i16[0];
  memset(&src, 0, sizeof(src));
  [a1 vg_vImageBufferWithCropOrigin:0 cropSize:{v15, v11}];
  vImageCopyBuffer(&src, &dest, 1uLL, 0);
  LOWORD(v14) = 0;
  v10 = vzip1_s32(0, *&v11);
  HIWORD(v14) = v10.i16[2];
  [a1 vg_vImageBufferWithCropOrigin:v14 cropSize:{0, *&v10, *(&v11 + 1)}];
  LOWORD(v13) = 0;
  HIWORD(v13) = v12;
  [a1 vg_vImageBufferWithCropOrigin:v13 cropSize:0];
  v7[2](v7);

  v5[2](v5);
}

- (id)vg_stack444Yp8_CbCr8ToL008
{
  v40[4] = *MEMORY[0x277D85DE8];
  [a1 lockWithOptions:1 seed:0];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __43__IOSurface_VG__vg_stack444Yp8_CbCr8ToL008__block_invoke;
  v38[3] = &unk_279E28D98;
  v38[4] = a1;
  v2 = MEMORY[0x2743B9AA0](v38);
  memset(&src, 0, sizeof(src));
  [a1 vg_vImageBufferOfPlaneAtIndex:0];
  v35 = 0u;
  v36 = 0u;
  [a1 vg_vImageBufferOfPlaneAtIndex:1];
  width = src.width;
  height = src.height;
  LOWORD(v5) = v36;
  WORD2(v5) = WORD4(v35);
  v26 = v5;
  v6 = objc_alloc(MEMORY[0x277CD2930]);
  v39[0] = *MEMORY[0x277CD2928];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:width];
  v40[0] = v7;
  v39[1] = *MEMORY[0x277CD28D0];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:3 * height];
  v9 = *MEMORY[0x277CD28D8];
  v40[1] = v8;
  v40[2] = &unk_2880F6100;
  v10 = *MEMORY[0x277CD28B0];
  v39[2] = v9;
  v39[3] = v10;
  v40[3] = &unk_2880F6118;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];
  v12 = [v6 initWithProperties:v11];

  [v12 lockWithOptions:0 seed:0];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __43__IOSurface_VG__vg_stack444Yp8_CbCr8ToL008__block_invoke_2;
  v33[3] = &unk_279E28D98;
  v13 = v12;
  v34 = v13;
  v14 = MEMORY[0x2743B9AA0](v33);
  memset(&dest, 0, sizeof(dest));
  if (v13)
  {
    HIWORD(v30) = height;
    LOWORD(v30) = width;
    [v13 vg_vImageBufferWithCropOrigin:0 cropSize:v30];
  }

  vImageCopyBuffer(&src, &dest, 1uLL, 0);
  if (v13)
  {
    HIWORD(v29) = height;
    LOWORD(v29) = 0;
    HIWORD(v28) = WORD2(v26);
    LOWORD(v28) = v26;
    [v13 vg_vImageBufferWithCropOrigin:v29 cropSize:v28];
    v31 = 0u;
    HIWORD(v27) = 2 * height;
    LOWORD(v27) = 0;
    [v13 vg_vImageBufferWithCropOrigin:v27 cropSize:v28];
  }

  else
  {
    *(&v31 + 1) = 0;
  }

  v15 = *(&v35 + 1);
  if (*(&v35 + 1))
  {
    v16 = 0;
    v17 = 0;
    v18 = v35;
    v19 = v36;
    do
    {
      if (v19)
      {
        v20 = 0;
        v21 = (v18 + 1);
        do
        {
          *v20 = *(v21 - 1);
          v22 = *v21;
          v21 += 2;
          (v20++)[v17] = v22;
          v19 = v36;
        }

        while (v20 < v36);
        v15 = *(&v35 + 1);
      }

      v18 += *(&v36 + 1);
      v17 += *(&v31 + 1);
      ++v16;
    }

    while (v16 < v15);
  }

  v23 = v13;
  v14[2](v14);

  v2[2](v2);
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)vg_unstackL008To444Yp8_CbCr8:()VG
{
  v4 = a3;
  [a1 lockWithOptions:1 seed:0];
  [v4 lockWithOptions:0 seed:0];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __46__IOSurface_VG__vg_unstackL008To444Yp8_CbCr8___block_invoke;
  v32[3] = &unk_279E28D98;
  v32[4] = a1;
  v5 = MEMORY[0x2743B9AA0](v32);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __46__IOSurface_VG__vg_unstackL008To444Yp8_CbCr8___block_invoke_2;
  v30[3] = &unk_279E28D98;
  v6 = v4;
  v31 = v6;
  v7 = MEMORY[0x2743B9AA0](v30);
  memset(&dest, 0, sizeof(dest));
  if (v6)
  {
    [v6 vg_vImageBufferOfPlaneAtIndex:0];
    memset(v28, 0, sizeof(v28));
    [v6 vg_vImageBufferOfPlaneAtIndex:1];
    v21 = *(v28 + 8);
    v8 = vmovn_s64(*&dest.height);
  }

  else
  {
    memset(v28, 0, sizeof(v28));
    v8 = 0;
    v21 = 0uLL;
  }

  v22 = v8;
  v9 = vrev64_s32(v8);
  HIWORD(v26) = v9.i16[2];
  LOWORD(v26) = v9.i16[0];
  memset(&src, 0, sizeof(src));
  [a1 vg_vImageBufferWithCropOrigin:0 cropSize:v26];
  vImageCopyBuffer(&src, &dest, 1uLL, 0);
  v10 = vrev64_s32(vmovn_s64(v21));
  LOWORD(v25) = 0;
  v11 = vzip1_s32(0, v22);
  v20 = v11.i16[0];
  HIWORD(v25) = v11.i16[2];
  HIWORD(v24) = v10.i16[2];
  LOWORD(v24) = v10.i16[0];
  [a1 vg_vImageBufferWithCropOrigin:v25 cropSize:v24];
  LOWORD(v23) = v20;
  HIWORD(v23) = 2 * v22.i16[0];
  [a1 vg_vImageBufferWithCropOrigin:v23 cropSize:v24];
  if (v21.i16[0])
  {
    v12 = 0;
    v13 = *&v28[0];
    do
    {
      if (v21.i16[4])
      {
        v14 = (v13 + 1);
        v15 = 0;
        v16 = 0;
        v17 = v21.u16[4];
        do
        {
          v18 = *v15++;
          *(v14 - 1) = v18;
          v19 = *v16++;
          *v14 = v19;
          v14 += 2;
          --v17;
        }

        while (v17);
      }

      v13 += *(&v28[1] + 1);
      ++v12;
    }

    while (v12 != v21.u16[0]);
  }

  v7[2](v7);

  v5[2](v5);
}

- (void)vg_fillWithData:()VG
{
  v4 = a3;
  v5 = [a1 width];
  v6 = [a1 bytesPerElement];
  v7 = [a1 bytesPerRow];
  [a1 lockWithOptions:0 seed:0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __33__IOSurface_VG__vg_fillWithData___block_invoke;
  v13[3] = &unk_279E28D98;
  v13[4] = a1;
  v8 = MEMORY[0x2743B9AA0](v13);
  v9 = [v4 bytes];
  v10 = [a1 baseAddress];
  v11 = 0;
  v12 = v6 * v5;
  while (v11 < [a1 height])
  {
    memcpy(v10, v9, v12);
    ++v11;
    v9 += v12;
    v10 += v7;
  }

  v8[2](v8);
}

+ (id)vg_surfaceWithPNGData:()VG
{
  v68[1] = *MEMORY[0x277D85DE8];
  data = a3;
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v67 = *MEMORY[0x277CD3618];
  v68[0] = MEMORY[0x277CBEC28];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
  v5 = [v3 initWithDictionary:v4];

  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kCGImageSourceCreateUnpremultipliedPNG"];
  v6 = CGImageSourceCreateWithData(data, v5);
  v7 = CFAutorelease(v6);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, v5);
  v9 = CFAutorelease(ImageAtIndex);
  DataProvider = CGImageGetDataProvider(v9);
  v11 = CGDataProviderCopyData(DataProvider);
  v12 = CFAutorelease(v11);
  v13 = CGImageSourceCopyPropertiesAtIndex(v7, 0, 0);
  CFAutorelease(v13);
  v54 = theData = v12;
  v14 = [v54 objectForKeyedSubscript:*MEMORY[0x277CD3038]];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CD30E0]];

  if (!v15)
  {
    goto LABEL_3;
  }

  v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v15 options:0];
  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = [v17 setWithObjects:{v18, v19, v20, objc_opt_class(), 0}];
  v62 = 0;
  v22 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v21 fromData:v16 error:&v62];
  v23 = v62;

  if (!v22)
  {
LABEL_3:
    ColorSpace = CGImageGetColorSpace(v9);
    Model = CGColorSpaceGetModel(ColorSpace);
    BitsPerPixel = CGImageGetBitsPerPixel(v9);
    v27 = BitsPerPixel;
    v28 = 1278226488;
    if (Model || BitsPerPixel != 8)
    {
      if (Model || BitsPerPixel != 16)
      {
        if (BitsPerPixel == 32 && Model == kCGColorSpaceModelRGB)
        {
          v28 = 1380401729;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 1278226742;
      }
    }

    v65[0] = *MEMORY[0x277CD2928];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CGImageGetWidth(v9)];
    v66[0] = v30;
    v65[1] = *MEMORY[0x277CD28D0];
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CGImageGetHeight(v9)];
    v66[1] = v31;
    v65[2] = *MEMORY[0x277CD28D8];
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v28];
    v66[2] = v32;
    v65[3] = *MEMORY[0x277CD28B0];
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v27 >> 3];
    v66[3] = v33;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:4];
  }

  v34 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v22];
  v35 = [v34 pixelFormat];
  if (v35 == 32)
  {
    goto LABEL_18;
  }

  if (v35 != 875704422)
  {
    if (v35 != 1111970369)
    {
      [v34 vg_fillWithData:theData];
      goto LABEL_33;
    }

LABEL_18:
    src.data = CFDataGetBytePtr(theData);
    src.height = [v34 height];
    src.width = [v34 width];
    v36 = [v34 width];
    src.rowBytes = [v34 bytesPerElement] * v36;
    [v34 lockWithOptions:0 seed:0];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __39__IOSurface_VG__vg_surfaceWithPNGData___block_invoke;
    v59[3] = &unk_279E28D98;
    v37 = v34;
    v60 = v37;
    v38 = MEMORY[0x2743B9AA0](v59);
    memset(&dest, 0, sizeof(dest));
    if (v37)
    {
      [v37 vg_vImageBuffer];
    }

    if ([v37 pixelFormat] == 32)
    {
      v39 = 0x2000100000003;
    }

    else
    {
      if ([v37 pixelFormat] != 1111970369)
      {
LABEL_28:
        vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0x10u);
        v38[2](v38);

        goto LABEL_33;
      }

      v39 = 0x3000000010002;
    }

    *permuteMap = vuzp1_s8(v39, v39).u32[0];
    goto LABEL_28;
  }

  v40 = objc_alloc(MEMORY[0x277CD2930]);
  v63[0] = *MEMORY[0x277CD2928];
  v41 = MEMORY[0x277CCABB0];
  if ([v34 width])
  {
    v43 = [v34 width];
    v44 = [v34 width];
    v45 = v44 & 1;
    if (v44 < 0)
    {
      v45 = -v45;
    }

    v42 = v43 - v45 + 2;
  }

  else
  {
    v42 = [v34 width];
  }

  v46 = [v41 numberWithInteger:v42];
  v64[0] = v46;
  v63[1] = *MEMORY[0x277CD28D0];
  v47 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v34, "height") + (objc_msgSend(v34, "height") + 1) / 2}];
  v48 = *MEMORY[0x277CD28D8];
  v64[1] = v47;
  v64[2] = &unk_2880F6100;
  v49 = *MEMORY[0x277CD28B0];
  v63[2] = v48;
  v63[3] = v49;
  v64[3] = &unk_2880F6118;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:4];
  v51 = [v40 initWithProperties:v50];

  [v51 vg_fillWithData:theData];
  [v51 vg_unstackL008To420Yp8_CbCr8:v34];

LABEL_33:
  v52 = *MEMORY[0x277D85DE8];

  return v34;
}

- (BOOL)vg_rotateToSurface:()VG rotation:
{
  backColor[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(IOSurface *)a1 pixelFormat];
  if (v7 == [(IOSurface *)v6 pixelFormat])
  {
    v8 = [(IOSurface *)a1 pixelFormat];
    vg::IOSurfaceData::IOSurfaceData(v20, a1, 1);
    vg::IOSurfaceData::IOSurfaceData(v19, v6, 0);
    memset(&src, 0, sizeof(src));
    [(IOSurface *)a1 vg_vImageBuffer];
    memset(&v17, 0, sizeof(v17));
    if (v6)
    {
      [(IOSurface *)v6 vg_vImageBuffer];
    }

    if ((a4 & 0xFD) == 1)
    {
      if (src.width != v17.height)
      {
        goto LABEL_16;
      }

      height = src.height;
      width = v17.width;
    }

    else
    {
      if (src.width != v17.width)
      {
        goto LABEL_16;
      }

      height = src.height;
      width = v17.height;
    }

    if (height == width)
    {
      backColor[0] = 0;
      backColor[1] = 0;
      if (v8 > 1278226533)
      {
        if (v8 <= 1380410944)
        {
          if (v8 != 1278226534)
          {
            if (v8 != 1278226536)
            {
              v12 = 1380401729;
              goto LABEL_21;
            }

LABEL_42:
            v13 = vImageRotate90_Planar16U(&src, &v17, a4, 0, 0);
            goto LABEL_43;
          }

          goto LABEL_32;
        }

        switch(v8)
        {
          case 1751410032:
            goto LABEL_42;
          case 1717855600:
LABEL_32:
            v13 = vImageRotate90_PlanarF(&src, &v17, a4, 0.0, 0);
            goto LABEL_43;
          case 1380410945:
            v13 = vImageRotate90_ARGBFFFF(&src, &v17, a4, backColor, 0);
LABEL_43:
            v11 = v13 == 0;
            goto LABEL_44;
        }

LABEL_33:
        v14 = __VGLogSharedInstance();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.data) = 67109120;
          HIDWORD(buf.data) = v8;
          _os_log_impl(&dword_270F06000, v14, OS_LOG_TYPE_ERROR, " Format not supported: %u ", &buf, 8u);
        }

        v13 = -21773;
        goto LABEL_43;
      }

      if (v8 <= 875704437)
      {
        if (v8 == 32)
        {
          goto LABEL_31;
        }

        if (v8 != 875704422)
        {
          goto LABEL_33;
        }
      }

      else if (v8 != 875704438)
      {
        if (v8 != 1094862674)
        {
          v12 = 1111970369;
LABEL_21:
          if (v8 != v12)
          {
            goto LABEL_33;
          }
        }

LABEL_31:
        v13 = vImageRotate90_ARGB8888(&src, &v17, a4, backColor, 0);
        goto LABEL_43;
      }

      [(IOSurface *)a1 vg_vImageBufferOfPlaneAtIndex:0, v17.data];
      src = buf;
      if (v6)
      {
        [(IOSurface *)v6 vg_vImageBufferOfPlaneAtIndex:0];
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      v17 = buf;
      v13 = vImageRotate90_Planar8(&src, &v17, a4, 0, 0);
      if (v13)
      {
        goto LABEL_43;
      }

      [(IOSurface *)a1 vg_vImageBufferOfPlaneAtIndex:1];
      src = buf;
      if (v6)
      {
        [(IOSurface *)v6 vg_vImageBufferOfPlaneAtIndex:1];
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      v17 = buf;
      goto LABEL_42;
    }

LABEL_16:
    v11 = 0;
LABEL_44:
    vg::IOSurfaceData::~IOSurfaceData(v19);
    vg::IOSurfaceData::~IOSurfaceData(v20);
    goto LABEL_45;
  }

  v11 = 0;
LABEL_45:

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)vg_scaleToSurface:()VG temporaryBuffer:
{
  v6 = a3;
  if ([a1 pixelFormat] == 875704422 || objc_msgSend(a1, "pixelFormat") == 875704438)
  {
    v7 = [a1 _scaleYCbCrToSurface:v6 temporaryBuffer:a4 flags:0];
  }

  else
  {
    v7 = [a1 _scaleToSurface:v6 temporaryBuffer:a4 flags:0];
  }

  v8 = v7 == 0;

  return v8;
}

- (uint64_t)vg_scaleToSurfaceUsingNearestNeighborResampling:()VG
{
  v4 = a3;
  v5 = [MEMORY[0x277CBF758] imageWithIOSurface:a1];
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformScale(&v12, &v11, ([v4 width] / objc_msgSend(a1, "width")), (objc_msgSend(v4, "height") / objc_msgSend(a1, "height")));
  v6 = [v5 imageBySamplingNearest];
  v11 = v12;
  v7 = [v6 imageByApplyingTransform:&v11];
  v8 = objc_alloc_init(MEMORY[0x277CBF740]);
  v9 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF448]);
  [v8 render:v7 toIOSurface:v4 bounds:v9 colorSpace:{0.0, 0.0, objc_msgSend(v4, "width"), objc_msgSend(v4, "height")}];
  CGColorSpaceRelease(v9);

  return 1;
}

- (uint64_t)_scaleToSurface:()VG temporaryBuffer:flags:
{
  v8 = a3;
  vg::IOSurfaceData::IOSurfaceData(v17, a1, 1);
  vg::IOSurfaceData::IOSurfaceData(v16, v8, 0);
  memset(&src, 0, sizeof(src));
  [(IOSurface *)a1 vg_vImageBuffer];
  memset(&v14, 0, sizeof(v14));
  if (v8)
  {
    [(IOSurface *)v8 vg_vImageBuffer:*&v14.data];
  }

  v9 = [(IOSurface *)a1 pixelFormat:*&v14.data];
  v10 = -21778;
  if (v9 <= 1278226533)
  {
    if (v9 > 1111970368)
    {
      if (v9 != 1111970369)
      {
        if (v9 != 1278226488)
        {
          goto LABEL_22;
        }

        v12 = vImageScale_Planar8(&src, &v14, a4, a5);
LABEL_21:
        v10 = v12;
        goto LABEL_22;
      }
    }

    else if (v9 != 32 && v9 != 1094862674)
    {
      goto LABEL_22;
    }

LABEL_15:
    v12 = vImageScale_ARGB8888(&src, &v14, a4, a5);
    goto LABEL_21;
  }

  if (v9 > 1380401728)
  {
    if (v9 != 1380401729)
    {
      if (v9 != 1717855600)
      {
        v11 = 1751410032;
        goto LABEL_18;
      }

LABEL_20:
      v12 = vImageScale_PlanarF(&src, &v14, a4, a5);
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (v9 == 1278226534)
  {
    goto LABEL_20;
  }

  v11 = 1278226536;
LABEL_18:
  if (v9 == v11)
  {
    v12 = vImageScale_Planar16F(&src, &v14, a4, a5);
    goto LABEL_21;
  }

LABEL_22:
  vg::IOSurfaceData::~IOSurfaceData(v16);
  vg::IOSurfaceData::~IOSurfaceData(v17);

  return v10;
}

- (uint64_t)_scaleYCbCrToSurface:()VG temporaryBuffer:flags:
{
  v4 = a3;
  memset(&src, 0, sizeof(src));
  [a1 vg_vImageBufferOfPlaneAtIndex:0];
  memset(&dest, 0, sizeof(dest));
  if (v4)
  {
    [v4 vg_vImageBufferOfPlaneAtIndex:0];
  }

  if (vImageScale_Planar8(&src, &dest, 0, 0))
  {
    v5 = __VGLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11.data) = 0;
      v6 = " resize of Y plane error ";
      v7 = &v11;
LABEL_11:
      _os_log_impl(&dword_270F06000, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  memset(&v11, 0, sizeof(v11));
  [a1 vg_vImageBufferOfPlaneAtIndex:1];
  memset(&v10, 0, sizeof(v10));
  if (v4)
  {
    [v4 vg_vImageBufferOfPlaneAtIndex:1];
  }

  if (vImageScale_CbCr8(&v11, &v10, 0, 0))
  {
    v5 = __VGLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v6 = " resize of CbCr plane error ";
      v7 = &v9;
      goto LABEL_11;
    }

LABEL_12:
  }

  return 0;
}

@end