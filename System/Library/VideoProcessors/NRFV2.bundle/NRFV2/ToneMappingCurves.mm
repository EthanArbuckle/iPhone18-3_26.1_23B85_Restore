@interface ToneMappingCurves
- (ToneMappingCurves)initWithWithContext:(id)a3;
- (int)estimateMaskRegionInTiles:(__CVBuffer *)a3;
- (int)regularizeLocalToneCurves:(const ltmCurves *)a3 mask:(__CVBuffer *)a4 tcrParams:(id)a5 imageDims:;
- (uint64_t)setToneCurvesWithLTC:(int32x4_t)a3 GTC:(int32x4_t)a4 colorCorrectionMatrix:(uint64_t)a5 dump:(unsigned __int16 *)a6;
- (void)dealloc;
@end

@implementation ToneMappingCurves

- (ToneMappingCurves)initWithWithContext:(id)a3
{
  v4 = a3;
  v121.receiver = self;
  v121.super_class = ToneMappingCurves;
  v5 = [(ToneMappingCurves *)&v121 init];
  if (!v5)
  {
    sub_29587BC60(&v122);
    v9 = 0;
LABEL_18:
    v25 = 0;
    goto LABEL_28;
  }

  v6 = objc_opt_new();
  v9 = v6;
  if (!v6)
  {
    sub_29587BBC4(&v122);
    goto LABEL_18;
  }

  objc_msgSend_setStorageMode_(v6, v7, 0, v8);
  objc_msgSend_setHazardTrackingMode_(v9, v10, 2, v11);
  objc_msgSend_setSize_(v9, v12, 51200, v13);
  v17 = objc_msgSend_device(v4, v14, v15, v16);
  v20 = objc_msgSend_newHeapWithDescriptor_(v17, v18, v9, v19);
  internalHeap = v5->_internalHeap;
  v5->_internalHeap = v20;

  if (!v5->_internalHeap)
  {
    sub_29587BB28(&v122);
    goto LABEL_18;
  }

  v25 = objc_opt_new();
  if (v25)
  {
    v26 = objc_msgSend_resourceOptions(v5->_internalHeap, v22, v23, v24);
    objc_msgSend_setResourceOptions_(v25, v27, v26, v28);
    v5->_newLTC = malloc_type_calloc(0xC30uLL, 2uLL, 0x1000040BDFB0063uLL);
    v5->_regGlobal = malloc_type_calloc(0x41uLL, 4uLL, 0x100004052888210uLL);
    v5->_regLocal = malloc_type_calloc(0x41uLL, 4uLL, 0x100004052888210uLL);
    v5->_maskTile = malloc_type_calloc(0x30uLL, 4uLL, 0x100004052888210uLL);
    v5->_isRegularized = 0;
    v5->_hasBeenRegularized = 0;
    v120.receiver = v5;
    v120.super_class = ToneMappingCurves;
    v29 = [(ToneMappingCurves *)&v120 init];
    v5 = v29;
    if (v29)
    {
      v33 = v29->_internalHeap;
      v34 = objc_msgSend_resourceOptions(v33, v30, v31, v32);
      v36 = objc_msgSend_newBufferWithLength_options_(v33, v35, 1024, v34);
      lumaHistogram = v5->_lumaHistogram;
      v5->_lumaHistogram = v36;

      if (v5->_lumaHistogram)
      {
        v41 = v5->_internalHeap;
        v42 = objc_msgSend_resourceOptions(v41, v38, v39, v40);
        v44 = objc_msgSend_newBufferWithLength_options_(v41, v43, 16, v42);
        blackWhiteStrengthCenter = v5->_blackWhiteStrengthCenter;
        v5->_blackWhiteStrengthCenter = v44;

        if (v5->_blackWhiteStrengthCenter)
        {
          objc_msgSend_setTextureType_(v25, v46, 7, v47);
          objc_msgSend_setWidth_(v25, v48, 33, v49);
          objc_msgSend_setHeight_(v25, v50, 8, v51);
          objc_msgSend_setDepth_(v25, v52, 6, v53);
          objc_msgSend_setPixelFormat_(v25, v54, 20, v55);
          objc_msgSend_setUsage_(v25, v56, 1, v57);
          v60 = objc_msgSend_newTextureWithDescriptor_(v5->_internalHeap, v58, v25, v59);
          ltcBinsTexD3x = v5->_ltcBinsTexD3x;
          v5->_ltcBinsTexD3x = v60;

          v62 = v5->_ltcBinsTexD3x;
          if (v62)
          {
            objc_storeStrong(&v5->_ltcBinsTex, v62);
            objc_msgSend_setWidth_(v25, v63, 65, v64);
            v67 = objc_msgSend_newTextureWithDescriptor_(v5->_internalHeap, v65, v25, v66);
            ltcBinsTexD4x = v5->_ltcBinsTexD4x;
            v5->_ltcBinsTexD4x = v67;

            if (v5->_ltcBinsTexD4x)
            {
              objc_msgSend_setTextureType_(v25, v69, 0, v70);
              objc_msgSend_setWidth_(v25, v71, 257, v72);
              objc_msgSend_setHeight_(v25, v73, 1, v74);
              objc_msgSend_setDepth_(v25, v75, 1, v76);
              objc_msgSend_setPixelFormat_(v25, v77, 20, v78);
              objc_msgSend_setUsage_(v25, v79, 1, v80);
              v83 = objc_msgSend_newTextureWithDescriptor_(v5->_internalHeap, v81, v25, v82);
              ltcGTCRatioTex = v5->_ltcGTCRatioTex;
              v5->_ltcGTCRatioTex = v83;

              if (v5->_ltcGTCRatioTex)
              {
                objc_msgSend_setTextureType_(v25, v85, 0, v86);
                objc_msgSend_setWidth_(v25, v87, 257, v88);
                objc_msgSend_setHeight_(v25, v89, 1, v90);
                objc_msgSend_setDepth_(v25, v91, 1, v92);
                objc_msgSend_setPixelFormat_(v25, v93, 20, v94);
                objc_msgSend_setUsage_(v25, v95, 1, v96);
                v99 = objc_msgSend_newTextureWithDescriptor_(v5->_internalHeap, v97, v25, v98);
                ltcGTCFinalTex = v5->_ltcGTCFinalTex;
                v5->_ltcGTCFinalTex = v99;

                if (v5->_ltcGTCFinalTex)
                {
                  objc_msgSend_setTextureType_(v25, v101, 7, v102);
                  objc_msgSend_setWidth_(v25, v103, 3, v104);
                  objc_msgSend_setHeight_(v25, v105, 8, v106);
                  objc_msgSend_setDepth_(v25, v107, 6, v108);
                  objc_msgSend_setPixelFormat_(v25, v109, 115, v110);
                  objc_msgSend_setUsage_(v25, v111, 1, v112);
                  v115 = objc_msgSend_newTextureWithDescriptor_(v5->_internalHeap, v113, v25, v114);
                  spatialCCMTex = v5->_spatialCCMTex;
                  v5->_spatialCCMTex = v115;

                  if (v5->_spatialCCMTex)
                  {
                    goto LABEL_13;
                  }

                  sub_29587B5F8(&v122);
                }

                else
                {
                  sub_29587B694(&v122);
                }
              }

              else
              {
                sub_29587B730(&v122);
              }
            }

            else
            {
              sub_29587B7CC(&v122);
            }
          }

          else
          {
            sub_29587B868(&v122);
          }
        }

        else
        {
          sub_29587B904(&v122);
        }
      }

      else
      {
        sub_29587B9A0(&v122);
      }
    }

    else
    {
      sub_29587BA3C(&v122);
    }
  }

  else
  {
    sub_29587BA8C(&v122);
  }

LABEL_28:
  if (v122)
  {
    v117 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v117 = v5;
LABEL_14:
  v118 = v117;

  return v118;
}

- (void)dealloc
{
  unregularizedLTC = self->_unregularizedLTC;
  if (unregularizedLTC)
  {
    free(unregularizedLTC);
  }

  free(self->_newLTC);
  free(self->_regGlobal);
  free(self->_regLocal);
  free(self->_maskTile);
  v4.receiver = self;
  v4.super_class = ToneMappingCurves;
  [(ToneMappingCurves *)&v4 dealloc];
}

- (int)estimateMaskRegionInTiles:(__CVBuffer *)a3
{
  if (CVPixelBufferLockBaseAddress(a3, 0))
  {
    return -1;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v10 = 0;
  offX = self->_offX;
  offY = self->_offY;
  v13 = Height - 2 * offY;
  ltmBinsX = self->_ltmBinsX;
  ltmBinsY = self->_ltmBinsY;
  v16 = v13 / ltmBinsY;
  v17 = (Width - 2 * offX) / ltmBinsX;
  v18 = &BaseAddress[offX];
  maskTile = self->_maskTile;
  if (ltmBinsX <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = self->_ltmBinsX;
  }

  if (ltmBinsY <= 1)
  {
    ltmBinsY = 1;
  }

  do
  {
    v21 = 0;
    v22 = &v18[(offY + v10 * v16) * BytesPerRow];
    v23 = &maskTile[v10 * ltmBinsX];
    do
    {
      v24 = 0;
      v23[v21] = 0.0;
      v25 = 0.0;
      do
      {
        v26 = 0;
        v27 = 8;
        do
        {
          v25 = v25 + vcvts_n_f32_u32(v22[(v16 >> 2) * BytesPerRow * v24 + v26 * (v17 >> 3)], 5uLL);
          v23[v21] = v25;
          ++v26;
          --v27;
        }

        while (v27);
        ++v24;
      }

      while (v24 != 4);
      ++v21;
      v22 += v17;
    }

    while (v21 != v20);
    ++v10;
  }

  while (v10 != ltmBinsY);
  CVPixelBufferUnlockBaseAddress(a3, 0);
  return 0;
}

- (int)regularizeLocalToneCurves:(const ltmCurves *)a3 mask:(__CVBuffer *)a4 tcrParams:(id)a5 imageDims:
{
  v98 = v5;
  v9 = a5;
  if (!v9)
  {
    sub_29587BDC4();
    goto LABEL_52;
  }

  self->_isRegularized = 1;
  if (self->_enableSTF)
  {
    self->_hasBeenRegularized = 1;
  }

  self->_ltmBinsX = sub_29583725C(&a3->ltmLut.version);
  self->_ltmBinsY = sub_2958372C4(&a3->ltmLut.version);
  v10 = sub_295837494(&a3->ltmLut.version);
  v11 = sub_2958373F4(&a3->ltmLut.version);
  v12 = sub_295837430(&a3->ltmLut.version);
  v97 = v11;
  v13 = sub_295837354(&a3->ltmLut.version) * v11;
  v14 = sub_29583732C(&a3->ltmLut.version);
  v15 = sub_29583760C(&a3->ltmLut.version, (v13 + v14 * v12) >> 1);
  v16 = sub_29583737C(&a3->ltmLut.version);
  v17 = sub_2958373B8(&a3->ltmLut.version);
  ltmBinsY = self->_ltmBinsY;
  v19 = self->_ltmBinsX * v16;
  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  if (v98 >= v19 && SHIDWORD(v98) >= ltmBinsY * v17)
  {
    self->_offX = ((vcvts_n_f32_u64(v98 - v19, 1uLL) * Width) / v98);
    self->_offY = ((vcvts_n_f32_u64(SHIDWORD(v98) - ltmBinsY * v17, 1uLL) * Height) / SHIDWORD(v98));
    objc_msgSend_estimateMaskRegionInTiles_(self, v22, a4, v23);
  }

  v27 = 1.0;
  v28 = 1.0;
  if (self->_isRegularized)
  {
    v27 = 1.0 - v9[3];
    v28 = 1.0 - v9[2];
  }

  if (self->_ltmBinsX != 8 || self->_ltmBinsY != 6)
  {
    sub_29587BCFC();
    goto LABEL_52;
  }

  if (v10 != 33 && v10 != 65)
  {
    FigDebugAssert3();
LABEL_52:
    v95 = -12780;
    goto LABEL_53;
  }

  if (!v15)
  {
    sub_29587BD60();
    goto LABEL_52;
  }

  v29 = 0;
  v30 = 0;
  regLocal = self->_regLocal;
  maskTile = self->_maskTile;
  v33 = 2 * (v97 >> 1);
  v34 = 2 * (v12 >> 1);
  v35 = v15;
  do
  {
    v36 = 0;
    regLocal[v29] = 0.0;
    v37 = 0.0;
    v38 = maskTile;
    v39 = v35;
    do
    {
      v40 = 0;
      v41 = v39;
      do
      {
        v42 = v38[v40];
        if (v42 > v9[4])
        {
          LOWORD(v42) = *v41;
          v37 = v37 + (LODWORD(v42) / 65535.0);
          regLocal[v29] = v37;
          ++v30;
        }

        v41 = (v41 + v34);
        ++v40;
      }

      while (v40 != 8);
      ++v36;
      v39 = (v39 + v33);
      v38 += 8;
    }

    while (v36 != 6);
    ++v29;
    ++v35;
  }

  while (v29 != v10);
  v43 = 1.0;
  if (v9[5] < v30)
  {
    v44 = self->_regLocal;
    v45 = v10 & 0x7FFFFFFF;
    do
    {
      *v44 = *v44 / (v30 / v10);
      ++v44;
      --v45;
    }

    while (v45);
    v46 = 0;
    v47 = 0.0;
    v48 = v15;
    do
    {
      v49 = 0;
      v50 = self->_maskTile;
      v51 = v48;
      do
      {
        v52 = 0;
        v53 = v51;
        do
        {
          if (v50[v52] > v9[4])
          {
            LOWORD(v24) = *v53;
            v24 = LODWORD(v24) / -65535.0;
            v47 = v47 + fabsf(self->_regLocal[v46] + v24);
          }

          v53 = (v53 + v34);
          ++v52;
        }

        while (v52 != 8);
        ++v49;
        v51 = (v51 + v33);
        v50 += 8;
      }

      while (v49 != 6);
      ++v46;
      ++v48;
    }

    while (v46 != (v10 & 0x7FFFFFFF));
    v54 = fminf(fmaxf((v47 - v9[6]) / (v9[7] - v9[6]), 0.0), 1.0);
    v43 = ((1.0 - v9[8]) * ((v54 * v54) * ((v54 * -2.0) + 3.0))) + (v27 * (1.0 - ((v54 * v54) * ((v54 * -2.0) + 3.0))));
  }

  v55 = 0;
  newLTC = self->_newLTC;
  v58 = self->_regLocal;
  v57 = self->_maskTile;
  regGlobal = self->_regGlobal;
  __asm { FMOV            V7.4S, #1.0 }

  v65.i64[0] = 0x400000004;
  v65.i64[1] = 0x400000004;
  v66 = v15;
  do
  {
    v67 = 0;
    v68 = v66;
    do
    {
      v69 = 0;
      memset(v99, 0, 192);
      *v25.i32 = v67;
      v70 = vdupq_lane_s32(v25, 0);
      v25 = 0;
      v71 = v99;
      do
      {
        v72 = 0;
        v26.f32[0] = (v69 - v55) * (v69 - v55);
        v26 = vdupq_lane_s32(*v26.f32, 0);
        v73 = xmmword_2958D5B50;
        do
        {
          v74 = vsubq_f32(vcvtq_f32_u32(v73), v70);
          v75 = vaddq_f32(v26, vmulq_f32(v74, v74));
          v76 = vbicq_s8(vdivq_f32(_Q7, v75), vceqzq_f32(v75));
          v71[v72] = v76;
          *v25.i32 = (((*v25.i32 + *v76.i32) + *&v76.i32[1]) + *&v76.i32[2]) + *&v76.i32[3];
          v73 = vaddq_s32(v73, v65);
          ++v72;
        }

        while (v72 != 2);
        ++v69;
        v71 += 2;
      }

      while (v69 != 6);
      v77 = 0;
      v78 = v15;
      do
      {
        v79 = 0;
        v80 = 0.0;
        v81 = v99;
        v82 = v78;
        do
        {
          v83 = 0;
          v84 = v82;
          do
          {
            v73.i16[0] = *v84;
            *v73.i32 = v73.u32[0];
            v80 = v80 + (((*(v81 + v83) / *v25.i32) * *v73.i32) / 65535.0);
            v84 = (v84 + v34);
            v83 += 4;
          }

          while (v83 != 32);
          ++v79;
          v82 = (v82 + v33);
          v81 += 2;
        }

        while (v79 != 6);
        regGlobal[v77++] = v80;
        ++v78;
      }

      while (v77 != (v10 & 0x7FFFFFFF));
      v85 = (1.0 - (v57[8 * v55 + v67] / 255.0)) + (v43 * (v57[8 * v55 + v67] / 255.0));
      v86 = v10 & 0x7FFFFFFF;
      v87 = v58;
      v88 = regGlobal;
      v89 = v68;
      do
      {
        v90 = *v87++;
        v91 = v90;
        v92 = *v89++;
        v93 = ((v85 * v92) + (((1.0 - v85) * v91) * 65535.0));
        v94 = *v88++;
        *newLTC++ = ((v28 * v93) + (((1.0 - v28) * v94) * 65535.0));
        --v86;
      }

      while (v86);
      ++v67;
      v68 = (v68 + v34);
    }

    while (v67 != 8);
    ++v55;
    v66 = (v66 + v33);
  }

  while (v55 != 6);
  v95 = 0;
LABEL_53:

  return v95;
}

- (uint64_t)setToneCurvesWithLTC:(int32x4_t)a3 GTC:(int32x4_t)a4 colorCorrectionMatrix:(uint64_t)a5 dump:(unsigned __int16 *)a6
{
  v10 = sub_295837494(a6);
  v11 = sub_29583725C(a6);
  v12 = sub_2958372C4(a6);
  v13 = sub_2958373F4(a6);
  v14 = sub_295837430(a6);
  v15 = sub_295837354(a6) * v13;
  v16 = sub_29583732C(a6);
  v17 = sub_29583760C(a6, (v15 + v16 * v14) >> 1);
  if (v11 != 8 || v12 != 6)
  {
    sub_29587C250();
    goto LABEL_50;
  }

  if (v10 != 33 && v10 != 65)
  {
    FigDebugAssert3();
LABEL_50:
    v41 = 0;
    v109 = 4294954516;
    goto LABEL_54;
  }

  if (!v17)
  {
    sub_29587C1EC();
    goto LABEL_50;
  }

  v121 = v17;
  v123 = v14;
  v125 = v13;
  v127 = a7;
  v18 = 2 * v10;
  if (*(a1 + 160) == 1)
  {
    if (!*(a1 + 64))
    {
      v19 = malloc_type_calloc(48 * v10, 2uLL, 0x1000040BDFB0063uLL);
      *(a1 + 64) = v19;
      if (!v19)
      {
        sub_29587C150(&v143);
        v41 = 0;
        v109 = v143.u32[0];
        goto LABEL_54;
      }
    }

    v20 = 0;
    v21 = 0;
    do
    {
      v22 = 0;
      v23 = 2 * v21;
      v21 += 8 * v10;
      do
      {
        v24 = sub_29583760C(a6, 0);
        v25 = sub_295837354(a6) + v20;
        v26 = v24 + v25 * sub_2958373F4(a6);
        v27 = sub_29583732C(a6) + v22;
        v28 = sub_295837430(a6);
        memcpy((*(a1 + 64) + v23), &v26[v27 * v28], v18);
        ++v22;
        v23 += v18;
      }

      while (v22 != 8);
      ++v20;
    }

    while (v20 != 6);
  }

  v29 = 96;
  if (v10 == 33)
  {
    v29 = 80;
  }

  objc_storeStrong((a1 + 8), *(a1 + v29));
  v31 = *(a1 + 8);
  v32 = v121;
  if (*(a1 + 128) == 1)
  {
    v32 = *(a1 + 72);
  }

  if (*(a1 + 128))
  {
    v33 = 2 * v10;
  }

  else
  {
    v33 = v123;
  }

  if (*(a1 + 128))
  {
    v34 = 16 * v10;
  }

  else
  {
    v34 = v125;
  }

  v143 = 0uLL;
  v144.i64[0] = 0;
  v144.i64[1] = v10;
  v145 = xmmword_2958D5B60;
  objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v31, v30, &v143, 0, 0, v32, v33, v34);
  v35 = *(a1 + 16);
  v143 = 0uLL;
  v36 = a6[110616];
  v144.i64[0] = 0;
  v144.i64[1] = v36;
  v129 = vdupq_n_s64(1uLL);
  v145 = v129;
  objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v35, v37, &v143, 0, 0, a6 + 110617, 0, 0);
  v38 = *(a1 + 24);
  v143 = 0uLL;
  v39 = *(v127 + 221748);
  v144.i64[0] = 0;
  v144.i64[1] = v39;
  v145 = v129;
  objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v38, v40, &v143, 0, 0, v127 + 221750, 0, 0);
  v41 = sub_2958375D8(a6 + 55308);
  *(a1 + 56) = v41 != 0;
  if (!v41)
  {
    goto LABEL_48;
  }

  if (v41 != 27)
  {
    sub_29587BE28();
    goto LABEL_50;
  }

  v42 = sub_29583725C(a6 + 55308);
  v43 = sub_2958372C4(a6 + 55308);
  v124 = v42;
  if (v42 > 0x20 || (v47 = v43, v43 >= 0x21))
  {
    sub_29587C0EC();
    goto LABEL_50;
  }

  if (v42 != objc_msgSend_height(*(a1 + 48), v44, v45, v46) || v47 != objc_msgSend_depth(*(a1 + 48), v48, v49, v50))
  {
    objc_msgSend_makeAliasable(*(a1 + 48), v48, v49, v50);
    v54 = objc_opt_new();
    if (v54)
    {
      v55 = objc_msgSend_resourceOptions(*(a1 + 88), v51, v52, v53);
      objc_msgSend_setResourceOptions_(v54, v56, v55, v57);
      objc_msgSend_setTextureType_(v54, v58, 7, v59);
      objc_msgSend_setWidth_(v54, v60, 3, v61);
      objc_msgSend_setHeight_(v54, v62, v42, v63);
      objc_msgSend_setDepth_(v54, v64, v47, v65);
      objc_msgSend_setPixelFormat_(v54, v66, 115, v67);
      objc_msgSend_setUsage_(v54, v68, 1, v69);
      v72 = objc_msgSend_newTextureWithDescriptor_(*(a1 + 88), v70, v54, v71);
      v73 = *(a1 + 48);
      *(a1 + 48) = v72;

      if (*(a1 + 48))
      {

        goto LABEL_32;
      }

      sub_29587BE8C(&v143);
    }

    else
    {
      sub_29587BF28(&v143);
    }

    v109 = v143.u32[0];

    v41 = 0;
    goto LABEL_54;
  }

LABEL_32:
  v74 = vzip1q_s32(a2, a4);
  v146.columns[0] = vzip1q_s32(v74, a3);
  v146.columns[1] = vzip2q_s32(v74, vdupq_lane_s32(*a3.i8, 1));
  v146.columns[0].i32[3] = 0;
  v146.columns[2] = vzip1q_s32(vzip2q_s32(a2, a4), vdupq_laneq_s32(a3, 2));
  v114 = v146.columns[1];
  v146.columns[1].i32[3] = 0;
  v146.columns[2].i32[3] = 0;
  v147 = __invert_f3(v146);
  v117 = v147.columns[1];
  v119 = v147.columns[0];
  v115 = v147.columns[2];
  v75 = 24 * v42;
  v76 = malloc_type_malloc(24 * v124 * v47, 0x1000040BDFB0063uLL);
  if (!v76)
  {
    sub_29587C08C();
    v41 = 0;
    v109 = 4294954510;
    goto LABEL_54;
  }

  v122 = v76;
  if (!v47)
  {
LABEL_47:
    v108 = *(a1 + 48);
    v143 = 0uLL;
    v144.i64[0] = 0;
    v144.i64[1] = 3;
    *&v145 = v124;
    *(&v145 + 1) = v47;
    objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v108, v77, &v143, 0, 0, v122, 24, v75);
    v41 = v122;
LABEL_48:
    v109 = 0;
    goto LABEL_54;
  }

  v78 = 0;
  v79 = vzip1q_s32(a2, a3);
  v79.i32[2] = a4.i32[0];
  v80 = vzip2q_s32(a2, a3);
  v80.i32[2] = a4.i32[2];
  v81 = v119;
  v81.i32[3] = 0;
  v120 = v81;
  v82 = v117;
  v82.i32[3] = 0;
  v118 = v82;
  v83 = v115;
  v83.i32[3] = 0;
  v116 = v83;
  v111 = v47;
  v112 = v80;
  v113 = v79;
  while (!v124)
  {
LABEL_46:
    ++v78;
    v47 = v111;
    if (v78 == v111)
    {
      goto LABEL_47;
    }
  }

  v84 = 0;
  while (1)
  {
    *v85.i64 = sub_295837654(a6 + 55308, v84, v78, 0);
    v85.i32[3] = 0;
    v86.i32[3] = 0;
    v132 = v86;
    v87.i32[3] = 0;
    v134 = v87;
    v136 = v85;
    *v88.i64 = sub_295837654(a6 + 55308, v84, v78, 1);
    v88.i32[3] = 0;
    v89.i32[3] = 0;
    v128 = v89;
    v130 = v88;
    v90.i32[3] = 0;
    v126 = v90;
    *v91.i64 = sub_295837654(a6 + 55308, v84, v78, 2);
    v94 = vandq_s8(vandq_s8(vceqq_f32(v136, v130), vceqq_f32(v132, v128)), vceqq_f32(v134, v126));
    v94.i32[3] = v94.i32[2];
    if ((vminvq_u32(v94) & 0x80000000) == 0)
    {
      sub_29587BFC4();
      goto LABEL_53;
    }

    v93.i32[3] = 0;
    v92.i32[3] = 0;
    v91.i32[3] = 0;
    v95 = vandq_s8(vandq_s8(vceqq_f32(v91, v130), vceqq_f32(v92, v128)), vceqq_f32(v93, v126));
    v95.i32[3] = v95.i32[2];
    if ((vminvq_u32(v95) & 0x80000000) == 0)
    {
      break;
    }

    v96 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    v140 = v130;
    v141 = v128;
    v142 = v126;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    do
    {
      *(&v143 + v96 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v113, COERCE_FLOAT(*(&v140 + v96 * 4))), v114, *&v140.f32[v96], 1), v112, *(&v140 + v96 * 4), 2);
      v96 += 4;
    }

    while (v96 != 12);
    v97 = 0;
    v98 = v143;
    v99 = v144;
    v100 = v145;
    v140 = v120;
    v141 = v118;
    v142 = v116;
    v143 = 0uLL;
    v144 = 0uLL;
    v145 = 0uLL;
    do
    {
      *(&v143 + v97 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98, COERCE_FLOAT(*(&v140 + v97 * 4))), v99, *&v140.f32[v97], 1), v100, *(&v140 + v97 * 4), 2);
      v97 += 4;
    }

    while (v97 != 12);
    v101 = 0;
    DWORD2(v137) = v143.i32[2];
    DWORD2(v138) = v144.i32[2];
    *&v137 = v143.i64[0];
    *&v138 = v144.i64[0];
    DWORD2(v139) = DWORD2(v145);
    *&v139 = v145;
    do
    {
      v102 = v101 / 3u;
      _S0 = *((&v137 + v102) & 0xFFFFFFFFFFFFFFF3 | (4 * ((v101 % 3u) & 3)));
      __asm { FCVT            H0, S0 }

      *(&v122[12 * v84 + 12 * v78 * v124] + ((8 * v102) | (2 * (v101++ % 3u)))) = _S0;
    }

    while (v101 != 9);
    if (++v84 == v124)
    {
      goto LABEL_46;
    }
  }

  sub_29587C028();
LABEL_53:
  v109 = 4294954516;
  v41 = v122;
LABEL_54:
  free(v41);
  *(a1 + 128) = 0;
  return v109;
}

@end