id sub_1EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_arg(va1, void);
  v13 = v7;

  return [v6 dispatchThreads:va1 threadsPerThreadgroup:va];
}

float sub_1ED8@<S0>(unsigned int a1@<W8>, float result@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, float a6@<S4>)
{
  v6 = fminf(fmaxf((a1 + result) / a3, a4), result);
  _S6 = (v6 * v6) * (a5 + (v6 * a6));
  __asm { FCVT            H6, S6 }

  return result;
}

uint64_t sub_1F20()
{

  return fig_log_get_emitter();
}

uint64_t sub_1FB4()
{

  return fig_log_get_emitter();
}

void sub_1FD8()
{
  v2 = v0[1] >> 1;
  *(v1 - 120) = *v0 >> 1;
  *(v1 - 112) = v2;
}

id sub_1FF0(void *a1, const char *a2)
{

  return [a1 setBytes:v2 length:24 atIndex:0];
}

id sub_200C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return [v3 setTexture:a3 atIndex:1];
}

id sub_2080(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_arg(va1, void);
  v9 = v3;

  return [v2 dispatchThreads:va1 threadsPerThreadgroup:va];
}

id sub_20A0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return [v3 setTexture:a3 atIndex:0];
}

uint64_t sub_20B8()
{

  return fig_log_get_emitter();
}

void *sub_20D0(size_t a1)
{

  return malloc_type_calloc(a1, 2uLL, v1);
}

uint64_t sub_2904()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 288);
  v4 = *(v0 + 292);
  return v0;
}

uint64_t sub_2934()
{
  v1 = *(v0 + 292);
  v2 = *(v0 + 288);
  return v0;
}

id sub_2948(__n128 a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  v10 = va_arg(va1, void);
  v7 = a1;
  v9 = v4;

  return [v3 dispatchThreads:va1 threadsPerThreadgroup:va];
}

uint64_t sub_296C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 288);
  v4 = *(v0 + 292);
  return v0;
}

uint64_t sub_2994()
{
  v1 = *(v0 + 292);
  v2 = *(v0 + 288);
  return v0;
}

id sub_29D8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);

  return [v2 dispatchThreads:va1 threadsPerThreadgroup:va];
}

id sub_2A78()
{

  return [v0 setComputePipelineState:v1];
}

id sub_2A90(void *a1, const char *a2)
{

  return [a1 newTextureWithDescriptor:v2];
}

id sub_2AA8(void *a1, const char *a2)
{

  return [a1 newTextureWithDescriptor:v2];
}

id sub_2AE0()
{

  return [v0 setBytes:v1 + 288 length:16 atIndex:0];
}

id sub_2B00(void *a1, const char *a2)
{

  return [a1 setImageblockWidth:32 height:32];
}

id sub_354C()
{

  return [v0 setBytes:v1 - 160 length:32 atIndex:0];
}

id sub_356C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{

  return [v43 setBytes:&a43 length:48 atIndex:1];
}

uint64_t sub_358C()
{

  return fig_log_get_emitter();
}

uint64_t sub_36A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CVPixelBufferRef *a6)
{

  return CVPixelBufferCreate(v7, 0x400uLL, v9, v8, v6, a6);
}

id sub_3728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return [v14 setBytes:va length:80 atIndex:0];
}

uint64_t sub_3748()
{

  return fig_log_get_emitter();
}

uint64_t sub_3928()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 288);
  v4 = *(v0 + 292);
  return v0;
}

id sub_3950(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);

  return [v2 dispatchThreads:va1 threadsPerThreadgroup:va];
}

uint64_t sub_396C()
{
  v1 = *(v0 + 292);
  v2 = *(v0 + 288);
  return v0;
}

id sub_3980()
{

  return [v1 setTexture:v0 atIndex:0];
}

id sub_39A8()
{

  return [v0 setBytes:v1 + 288 length:32 atIndex:0];
}

uint64_t sub_39C8(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{

  return sub_12664(v7, a2, a3, 5uLL, a5, a6, 1, v6);
}

uint64_t sub_39E8(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{

  return sub_12664(v7, a2, a3, 3uLL, a5, a6, 1, v6);
}

id sub_3A08(void *a1, const char *a2)
{

  return [a1 newTextureWithDescriptor:v2];
}

id sub_3A20()
{

  return [v0 setComputePipelineState:v1];
}

id sub_3A38()
{

  return [v0 maxTotalThreadsPerThreadgroup];
}

uint64_t sub_4114(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteClearOutputTexture" constants:0];
  v3 = *(a1 + 32);
  *(a1 + 32) = v2;

  if (*(a1 + 32))
  {
    v4 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteTileCutKernel" constants:0];
    v5 = *(a1 + 40);
    *(a1 + 40) = v4;

    if (*(a1 + 40))
    {
      v6 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteTileMergeKernel" constants:0];
      v7 = *(a1 + 48);
      *(a1 + 48) = v6;

      if (*(a1 + 48))
      {
        v8 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteTilePasteKernel" constants:0];
        v9 = *(a1 + 56);
        *(a1 + 56) = v8;

        if (*(a1 + 56))
        {
          v10 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLitePaste2xFullChromaKernel" constants:0];
          v11 = *(a1 + 96);
          *(a1 + 96) = v10;

          if (*(a1 + 96))
          {
            v12 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteEnhanceTile" constants:0];
            v13 = *(a1 + 64);
            *(a1 + 64) = v12;

            if (*(a1 + 64))
            {
              v14 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteComputeBlendingMask" constants:0];
              v15 = *(a1 + 80);
              *(a1 + 80) = v14;

              if (*(a1 + 80))
              {
                v16 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteGaussian5RowGather" constants:0];
                v17 = *(a1 + 72);
                *(a1 + 72) = v16;

                if (*(a1 + 72))
                {
                  v18 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomLiteBlendEnhanced" constants:0];
                  v19 = *(a1 + 88);
                  *(a1 + 88) = v18;

                  if (*(a1 + 88))
                  {
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_1F20();
  sub_1E7C();
  FigDebugAssert3();
  sub_1F20();
  sub_1EAC();

  return FigSignalErrorAtGM();
}

id sub_46F0(uint64_t a1, __CVBuffer *a2, uint64_t a3)
{
  if (a1)
  {
    image = 0;
    if (a2)
    {
      v4 = a1;
      v5 = [[NSMutableArray alloc] initWithCapacity:2];
      if (v5)
      {
        v6 = 0;
        v7 = 0;
        PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
        v21 = kCVMetalTextureUsage;
        v8 = 1;
        while (1)
        {
          v9 = sub_61D0(v4, PixelFormatType, v6);
          if (!v9)
          {
            break;
          }

          v10 = v9;
          v24 = v8;
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, v6);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, v6);
          v25 = v21;
          [NSNumber numberWithUnsignedInteger:a3];
          v14 = v13 = v4;
          v26 = v14;
          v15 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];

          v4 = v13;
          v16 = CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, *(v13 + 24), a2, v15, v10, WidthOfPlane, HeightOfPlane, v6, &image);
          v17 = image;
          if (v16)
          {
            goto LABEL_16;
          }

          CVMetalTextureGetTexture(image);
          objc_claimAutoreleasedReturnValue();
          [sub_1FA4() setObject:? atIndexedSubscript:?];

          v18 = [v5 objectAtIndexedSubscript:v6];

          v17 = image;
          if (!v18)
          {
LABEL_16:
            v7 = v15;
            goto LABEL_18;
          }

          if (image)
          {
            CFRelease(image);
          }

          v6 = 1;
          v7 = v15;
          v8 = 0;
          if (((((PixelFormatType - 1278226534) & 0xFFFFFFFD) != 0) & v24) == 0)
          {
            v19 = v5;
            v5 = v19;
            goto LABEL_12;
          }
        }

        v17 = image;
LABEL_18:
        if (v17)
        {
          CFRelease(v17);
        }

        v19 = 0;
        v15 = v7;
        goto LABEL_12;
      }

      v19 = 0;
    }

    else
    {
      v19 = 0;
      v5 = 0;
    }

    v15 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v19 = 0;
LABEL_13:

  return v19;
}

uint64_t sub_4940(uint64_t a1, __CVBuffer *a2, _WORD *a3, double a4)
{
  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    LOWORD(a4) = *a3;
    WORD2(a4) = a3[1];
    v97 = a4;
    v99 = a3[3];
    v5 = a3[2];
    v6 = sub_20D0(v5);
    if (v6)
    {
      v7 = v99;
      v8 = sub_20D0(v99);
      if (v8)
      {
        v9 = sub_20D0(v5 * v99);
        if (v9)
        {
          v10 = sub_20D0(v5 * v99);
          if (v10)
          {
            if (v5 >= 2)
            {
              sub_204C();
              do
              {
                v12 = sub_1ED8(v11, v12, v13, v14, v15, v16);
                *&v6[v17] = v18;
                *&v6[v20] = v19 - v18;
                v11 = v17 + 1;
              }

              while (v21 != v11);
            }

            if (v99 >= 2u)
            {
              sub_204C();
              do
              {
                v23 = sub_1ED8(v22, v23, v24, v25, v26, v27);
                v8[v28] = v29;
                v8[v31] = v30 - v29;
                v22 = v28 + 1;
              }

              while (v32 != v22);
            }

            v33 = 2 * v5;
            v98 = v8;
            if (v7)
            {
              v34 = 0;
              if (v5 >= v7)
              {
                v35 = v7;
              }

              else
              {
                v35 = v5;
              }

              v36 = (v35 + 1);
              v37 = v9;
              do
              {
                if (v5)
                {
                  v38 = v5;
                  v39 = v37;
                  do
                  {
                    _D6 = sqrt(((v7 - v34) * (v7 - v34) + v38 * v38));
                    __asm
                    {
                      FCVT            H6, D6
                      FCVT            S6, H6
                    }

                    *&_D6 = fminf(fmaxf(*&_D6 / v36, 0.0), 1.0);
                    _D6 = 1.0 - ((*&_D6 * *&_D6) * ((*&_D6 * -2.0) + 3.0));
                    __asm { FCVT            H6, D6 }

                    *v39 = *&_D6;
                    __asm { FCMP            H6, #0 }

                    if (_ZF)
                    {
                      _H6 = *v6;
                    }

                    *v39++ = _H6;
                    --v38;
                  }

                  while (v38);
                }

                ++v34;
                v37 = (v37 + v33);
              }

              while (v34 != v7);
              v46 = 0;
              v47 = (v7 - 1) * v5;
              v48 = v5 - 1;
              v49 = v5 * v7 - 1;
              v50 = v10;
              v51 = v9;
              do
              {
                if (v5)
                {
                  v52 = 0;
                  v53 = v49;
                  v54 = v48;
                  do
                  {
                    v55 = v51[v52];
                    v50[v52] = v55;
                    v56 = v55 + v9[v54];
                    v50[v52] = v56;
                    v57 = v56 + v9[(v47 + v52)];
                    v50[v52] = v57;
                    v50[v52++] = v57 + v9[v53];
                    --v54;
                    --v53;
                  }

                  while (v5 != v52);
                }

                ++v46;
                v51 = (v51 + v33);
                v50 = (v50 + v33);
                v47 -= v5;
                v48 += v5;
                v49 -= v5;
              }

              while (v46 != v7);
              v58 = v7;
            }

            else
            {
              v58 = 0;
            }

            CVPixelBufferLockBaseAddress(a2, 0);
            BaseAddress = CVPixelBufferGetBaseAddress(a2);
            pixelBuffer = a2;
            BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
            v61 = 0;
            v62 = BytesPerRow >> 1;
            v63 = WORD2(v97) - v7;
            v64 = LOWORD(v97) - v5;
            v93 = 2 * WORD2(v97) * v62;
            v65 = 2 * v62;
            v95 = LOWORD(v97) - 1;
            do
            {
              v66 = 0;
              v94 = BaseAddress;
              v96 = BaseAddress;
              do
              {
                if (WORD2(v97))
                {
                  v67 = 0;
                  v68 = v95;
                  v69 = (WORD2(v97) - 1) * v5;
                  v70 = v10;
                  v71 = v9;
                  v72 = v96;
                  do
                  {
                    LOWORD(v73) = COERCE_UNSIGNED_INT(1.0);
                    if (v61 && v67 < v58)
                    {
                      v73 = v98[v67];
                    }

                    if (v61 != 2 && v67 >= v63)
                    {
                      v73 = v98[~v67 + WORD2(v97)];
                    }

                    if (LOWORD(v97))
                    {
                      v75 = 0;
                      v76 = v67 < v58 && v66 != 0;
                      v77 = v67 >= v58 || v66 == 2;
                      v78 = v67 >= v63 && v66 != 0;
                      v79 = v67 < v63 || v66 == 2;
                      v80 = !v76;
                      v81 = !v78;
                      v82 = v95;
                      v83 = v68;
                      do
                      {
                        if (v73 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                        {
                          LOWORD(v84) = COERCE_UNSIGNED_INT(1.0);
                          if (v66 && v75 < v5)
                          {
                            v84 = *&v6[v75];
                          }

                          if (v66 != 2 && v75 >= v64)
                          {
                            v84 = *&v6[v82];
                          }
                        }

                        else
                        {
                          if (v75 >= v5)
                          {
                            v86 = 1;
                          }

                          else
                          {
                            v86 = v80;
                          }

                          v84 = v73;
                          if ((v86 & 1) == 0)
                          {
                            v84 = v71[v75] / v70[v75];
                          }

                          v87 = v75 < v64 || v77;
                          if ((v87 & 1) == 0)
                          {
                            v84 = v9[v83] / v10[v83];
                          }

                          if (v75 >= v5)
                          {
                            v88 = 1;
                          }

                          else
                          {
                            v88 = v81;
                          }

                          if ((v88 & 1) == 0)
                          {
                            v84 = v9[(v69 + v75)] / v10[(v69 + v75)];
                          }

                          v89 = v75 < v64 || v79;
                          if ((v89 & 1) == 0)
                          {
                            v84 = v9[v69 + v82] / v10[v69 + v82];
                          }
                        }

                        *&v72[2 * v75++] = v84;
                        --v83;
                        --v82;
                      }

                      while (LOWORD(v97) != v75);
                    }

                    ++v67;
                    v72 += v65;
                    v71 = (v71 + v33);
                    v70 = (v70 + v33);
                    v69 -= v5;
                    v68 += v5;
                  }

                  while (v67 != WORD2(v97));
                }

                ++v66;
                v96 += 2 * LOWORD(v97);
              }

              while (v66 != 3);
              ++v61;
              BaseAddress = &v94[v93];
            }

            while (v61 != 3);
            CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
            v90 = 0;
            v8 = v98;
            goto LABEL_94;
          }

          goto LABEL_100;
        }

LABEL_99:
        v10 = 0;
LABEL_100:
        v90 = 4294954510;
        goto LABEL_94;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = 0;
    goto LABEL_99;
  }

  v6 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v90 = 4294954516;
LABEL_94:
  free(v6);
  free(v8);
  free(v9);
  free(v10);
  return v90;
}

void sub_4E9C(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CVMetalTextureCacheFlush(v2, 0);
      v3 = a1[3];
      if (v3)
      {
        CFRelease(v3);
      }
    }

    v4 = a1[13];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[21];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[17];
    a1[17] = 0;

    v7 = a1[18];
    a1[18] = 0;

    v8 = a1[16];
    a1[16] = 0;

    v9 = a1[15];
    a1[15] = 0;

    v10 = a1[19];
    a1[19] = 0;
  }
}

uint64_t sub_5E78(uint64_t a1, void *a2, void *a3, int a4, int a5, id *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = v12;
  if (!a1)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v14 = 4294954516;
  if (v11 && v12)
  {
    v15 = [*a6 computeCommandEncoder];
    if (!v15)
    {
      sub_20B8();
      sub_1F84();
      FigDebugAssert3();
      sub_20B8();
      sub_1EAC();
      v14 = FigSignalErrorAtGM();
      goto LABEL_7;
    }

    v16 = v15;
    v17 = *(a1 + 64);
    [v16 setComputePipelineState:v17];
    [v16 setTexture:v11 atIndex:0];
    [v16 setTexture:v13 atIndex:1];
    [v16 setTexture:*(a1 + 144) atIndex:2];
    v70 = v11;
    v71 = [v17 threadExecutionWidth];
    v18 = a4;
    v19 = a5;
    v74 = a4;
    v75 = a5;
    v76 = 1;
    v72 = [v17 maxTotalThreadsPerThreadgroup] / v71;
    v73 = 1;
    [v16 dispatchThreads:&v74 threadsPerThreadgroup:&v71];
    v20 = *(a1 + 80);

    v21 = [v16 setComputePipelineState:v20];
    v23 = sub_20A0(v21, v22, *(a1 + 144));
    sub_200C(v23, v24, *(a1 + 120));
    v25 = [v20 threadExecutionWidth];
    v26 = [v20 maxTotalThreadsPerThreadgroup];
    v68 = 2 * a4;
    v69 = v13;
    v27 = 2 * a5;
    v74 = v68;
    v75 = v27;
    v76 = 1;
    v71 = v25;
    v72 = v26 / v25;
    sub_1EB8(v26, v28, v29, v30, v31, v32);
    v33 = *(a1 + 72);

    v34 = [v16 setComputePipelineState:v33];
    v36 = sub_20A0(v34, v35, *(a1 + 120));
    sub_200C(v36, v37, *(a1 + 128));
    v38 = [v33 threadExecutionWidth];
    v39 = [v33 maxTotalThreadsPerThreadgroup];
    v74 = v18;
    v75 = v19;
    v76 = 1;
    v71 = v38;
    v72 = v39 / v38;
    sub_1EB8(v39, v40, v41, v42, v43, v44);
    v45 = *(a1 + 72);

    v46 = [v16 setComputePipelineState:v45];
    v48 = sub_20A0(v46, v47, *(a1 + 128));
    sub_200C(v48, v49, *(a1 + 120));
    v50 = [v45 threadExecutionWidth];
    v51 = [v45 maxTotalThreadsPerThreadgroup];
    v74 = v19;
    v75 = v18;
    v11 = v70;
    v76 = 1;
    v71 = v50;
    v72 = v51 / v50;
    sub_1EB8(v51, v52, v53, v54, v55, v56);
    v57 = *(a1 + 88);

    [v16 setComputePipelineState:v57];
    v58 = [v16 setTexture:v70 atIndex:0];
    sub_200C(v58, v59, *(a1 + 144));
    [v16 setTexture:*(a1 + 120) atIndex:2];
    [v16 setTexture:*(a1 + 136) atIndex:3];
    v60 = [v57 threadExecutionWidth];
    v61 = [v57 maxTotalThreadsPerThreadgroup];
    v74 = v68;
    v75 = v27;
    v13 = v69;
    v76 = 1;
    v71 = v60;
    v72 = v61 / v60;
    sub_1EB8(v61, v62, v63, v64, v65, v66);
    [v16 endEncoding];

    goto LABEL_6;
  }

LABEL_7:

  return v14;
}

uint64_t sub_61D0(uint64_t result, int a2, int a3)
{
  if (result)
  {
    if (a2 != 641230384)
    {
      if (a2 == 645424688)
      {
        goto LABEL_20;
      }

      if (a2 != 758670896)
      {
        if (a2 == 762865200)
        {
          goto LABEL_20;
        }

        if (a2 != 792225328)
        {
          if (a2 == 796419632)
          {
            goto LABEL_20;
          }

          if (a2 != 875704422)
          {
            switch(a2)
            {
              case 1278226534:
                return 55;
              case 1278226536:
                return 25;
              case 1751527984:
                v3 = a3 == 0;
                v4 = 65;
                v5 = 25;
                goto LABEL_17;
            }

            if (a2 != 1885745712)
            {
              if (a2 != 2019963440)
              {
                if (a2 != 2088265264)
                {
                  if (a2 != 2084070960)
                  {
                    return 0;
                  }

                  goto LABEL_16;
                }

                goto LABEL_20;
              }

              v3 = a3 == 0;
              v4 = 60;
              v5 = 20;
LABEL_17:
              if (v3)
              {
                return v5;
              }

              else
              {
                return v4;
              }
            }

LABEL_20:
            if (a3)
            {
              return 589;
            }

            else
            {
              return 588;
            }
          }
        }
      }
    }

LABEL_16:
    v3 = a3 == 0;
    v4 = 30;
    v5 = 10;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_6310()
{
  sub_1F20();
  sub_1E7C();
  FigDebugAssert3();
  sub_1F20();
  sub_1EAC();
  return FigSignalErrorAtGM();
}

uint64_t sub_63B4()
{
  sub_1F20();
  sub_1E7C();
  FigDebugAssert3();
  sub_1F20();
  sub_1EAC();
  return FigSignalErrorAtGM();
}

uint64_t sub_6458()
{
  sub_1F20();
  sub_1E7C();
  FigDebugAssert3();
  sub_1F20();
  sub_1EAC();
  return FigSignalErrorAtGM();
}

uint64_t sub_64FC()
{
  sub_1F20();
  sub_1E7C();
  FigDebugAssert3();
  sub_1F20();
  sub_1EAC();
  return FigSignalErrorAtGM();
}

uint64_t sub_65A0()
{
  sub_1F20();
  sub_1E7C();
  FigDebugAssert3();
  sub_1F20();
  sub_1EAC();
  return FigSignalErrorAtGM();
}

uint64_t sub_6644(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardClearOutputTexture" constants:0];
  v3 = *(a1 + 32);
  *(a1 + 32) = v2;

  if (*(a1 + 32))
  {
    v4 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardTileCutKernel" constants:0];
    v5 = *(a1 + 40);
    *(a1 + 40) = v4;

    if (*(a1 + 40))
    {
      v6 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardTileMergeKernel" constants:0];
      v7 = *(a1 + 56);
      *(a1 + 56) = v6;

      if (*(a1 + 56))
      {
        v8 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardTilePasteKernel" constants:0];
        v9 = *(a1 + 48);
        *(a1 + 48) = v8;

        if (*(a1 + 48))
        {
          return 0;
        }
      }
    }
  }

  sub_1F20();
  sub_1E7C();
  FigDebugAssert3();
  sub_1F20();
  sub_1EAC();

  return FigSignalErrorAtGM();
}

id sub_6914(uint64_t a1, __CVBuffer *a2, uint64_t a3)
{
  if (a1)
  {
    image = 0;
    if (a2)
    {
      v4 = a1;
      v5 = [[NSMutableArray alloc] initWithCapacity:2];
      if (v5)
      {
        v6 = 0;
        v7 = 0;
        PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
        v21 = kCVMetalTextureUsage;
        v8 = 1;
        while (1)
        {
          v9 = sub_61D0(v4, PixelFormatType, v6);
          if (!v9)
          {
            break;
          }

          v10 = v9;
          v24 = v8;
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, v6);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, v6);
          v25 = v21;
          [NSNumber numberWithUnsignedInteger:a3];
          v14 = v13 = v4;
          v26 = v14;
          v15 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];

          v4 = v13;
          v16 = CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, *(v13 + 24), a2, v15, v10, WidthOfPlane, HeightOfPlane, v6, &image);
          v17 = image;
          if (v16)
          {
            goto LABEL_16;
          }

          CVMetalTextureGetTexture(image);
          objc_claimAutoreleasedReturnValue();
          [sub_27AC() setObject:HeightOfPlane atIndexedSubscript:v6];

          v18 = [v5 objectAtIndexedSubscript:v6];

          v17 = image;
          if (!v18)
          {
LABEL_16:
            v7 = v15;
            goto LABEL_18;
          }

          if (image)
          {
            CFRelease(image);
          }

          v6 = 1;
          v7 = v15;
          v8 = 0;
          if (((((PixelFormatType - 1278226534) & 0xFFFFFFFD) != 0) & v24) == 0)
          {
            v19 = v5;
            v5 = v19;
            goto LABEL_12;
          }
        }

        v17 = image;
LABEL_18:
        if (v17)
        {
          CFRelease(v17);
        }

        v19 = 0;
        v15 = v7;
        goto LABEL_12;
      }

      v19 = 0;
    }

    else
    {
      v19 = 0;
      v5 = 0;
    }

    v15 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v19 = 0;
LABEL_13:

  return v19;
}

void sub_6B68(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CVMetalTextureCacheFlush(v2, 0);
      v3 = a1[3];
      if (v3)
      {
        CFRelease(v3);
      }
    }

    v4 = a1[8];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[10];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[11];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[13];
    a1[13] = 0;
  }
}

uint64_t sub_7B9C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardAssembleResidual" constants:0];
  v3 = *(a1 + 72);
  *(a1 + 72) = v2;

  if (*(a1 + 72))
  {
    v4 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardReduceLowFreqDiffYUV" constants:0];
    v5 = *(a1 + 80);
    *(a1 + 80) = v4;

    if (*(a1 + 80))
    {
      v6 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardGaussian3RowGatherXY" constants:0];
      v7 = *(a1 + 24);
      *(a1 + 24) = v6;

      if (*(a1 + 24))
      {
        v8 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardGaussian5RowGather" constants:0];
        v9 = *(a1 + 48);
        *(a1 + 48) = v8;

        if (*(a1 + 48))
        {
          v10 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardGaussian9RowGatherXY" constants:0];
          v11 = *(a1 + 32);
          *(a1 + 32) = v10;

          if (*(a1 + 32))
          {
            v12 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardGaussian11RowGatherXY" constants:0];
            v13 = *(a1 + 40);
            *(a1 + 40) = v12;

            if (*(a1 + 40))
            {
              v14 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardGaussian17RowGather" constants:0];
              v15 = *(a1 + 56);
              *(a1 + 56) = v14;

              if (*(a1 + 56))
              {
                v16 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardGaussian21RowGather" constants:0];
                v17 = *(a1 + 64);
                *(a1 + 64) = v16;

                if (*(a1 + 64))
                {
                  v18 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardYuv444To420" constants:0];
                  v19 = *(a1 + 16);
                  *(a1 + 16) = v18;

                  if (*(a1 + 16))
                  {
                    v20 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardComputeDetail" constants:0];
                    v21 = *(a1 + 88);
                    *(a1 + 88) = v20;

                    if (*(a1 + 88))
                    {
                      v22 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardMaxFilterH" constants:0];
                      v23 = *(a1 + 96);
                      *(a1 + 96) = v22;

                      if (*(a1 + 96))
                      {
                        v24 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardMaxFilterHxy" constants:0];
                        v25 = *(a1 + 104);
                        *(a1 + 104) = v24;

                        if (*(a1 + 104))
                        {
                          v26 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardComputeDetailGainMap" constants:0];
                          v27 = *(a1 + 112);
                          *(a1 + 112) = v26;

                          if (*(a1 + 112))
                          {
                            v28 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardDownsample2xLumaLUT" constants:0];
                            v29 = *(a1 + 120);
                            *(a1 + 120) = v28;

                            if (*(a1 + 120))
                            {
                              v30 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardUpsample2xAdjLumaGain" constants:0];
                              v31 = *(a1 + 128);
                              *(a1 + 128) = v30;

                              if (*(a1 + 128))
                              {
                                v32 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardModulateStrength" constants:0];
                                v33 = *(a1 + 136);
                                *(a1 + 136) = v32;

                                if (*(a1 + 136))
                                {
                                  v34 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardComputeLumaBlendingMask" constants:0];
                                  v35 = *(a1 + 144);
                                  *(a1 + 144) = v34;

                                  if (*(a1 + 144))
                                  {
                                    v36 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomStandardBlendEnhanced" constants:0];
                                    v37 = *(a1 + 152);
                                    *(a1 + 152) = v36;

                                    if (*(a1 + 152))
                                    {
                                      return 0;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_1F20();
  sub_1E7C();
  FigDebugAssert3();
  sub_1F20();
  sub_1EAC();

  return FigSignalErrorAtGM();
}

uint64_t sub_86F4(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 4294954516;
  if (a2 && a3)
  {
    *(a1 + 288) = a2;
    *(a1 + 292) = a3;
    v8 = objc_alloc_init(MTLTextureDescriptor);
    if (v8)
    {
      v5 = v8;
      [v8 setWidth:a2];
      [sub_29C0() setHeight:?];
      [v5 setPixelFormat:25];
      [v5 setUsage:3];
      v9 = [*(a1 + 8) device];
      v11 = sub_2AA8(v9, v10);
      v12 = *(a1 + 176);
      *(a1 + 176) = v11;

      if (!*(a1 + 176))
      {
        goto LABEL_22;
      }

      v13 = [*(a1 + 8) device];
      v15 = sub_2AA8(v13, v14);
      v16 = *(a1 + 160);
      *(a1 + 160) = v15;

      if (!*(a1 + 160))
      {
        goto LABEL_22;
      }

      v17 = [*(a1 + 8) device];
      v19 = sub_2AA8(v17, v18);
      v20 = *(a1 + 208);
      *(a1 + 208) = v19;

      if (!*(a1 + 208))
      {
        goto LABEL_22;
      }

      v21 = [*(a1 + 8) device];
      v23 = sub_2AA8(v21, v22);
      v24 = *(a1 + 192);
      *(a1 + 192) = v23;

      if (!*(a1 + 192))
      {
        goto LABEL_22;
      }

      v25 = [*(a1 + 8) device];
      v27 = sub_2AA8(v25, v26);
      v28 = *(a1 + 240);
      *(a1 + 240) = v27;

      if (!*(a1 + 240))
      {
        goto LABEL_22;
      }

      [sub_29C0() setWidth:?];
      [sub_29F4() setHeight:?];
      v29 = [*(a1 + 8) device];
      v31 = sub_2A90(v29, v30);
      v32 = *(a1 + 224);
      *(a1 + 224) = v31;

      if (!*(a1 + 224))
      {
        goto LABEL_22;
      }

      [sub_29A8() setWidth:?];
      [sub_29CC() setHeight:?];
      [v5 setPixelFormat:65];
      v33 = [*(a1 + 8) device];
      v35 = sub_2A90(v33, v34);
      v36 = *(a1 + 184);
      *(a1 + 184) = v35;

      if (!*(a1 + 184))
      {
        goto LABEL_22;
      }

      v37 = [*(a1 + 8) device];
      v39 = sub_2A90(v37, v38);
      v40 = *(a1 + 168);
      *(a1 + 168) = v39;

      if (!*(a1 + 168))
      {
        goto LABEL_22;
      }

      v41 = [*(a1 + 8) device];
      v43 = sub_2A90(v41, v42);
      v44 = *(a1 + 216);
      *(a1 + 216) = v43;

      if (!*(a1 + 216))
      {
        goto LABEL_22;
      }

      v45 = [*(a1 + 8) device];
      v47 = sub_2A90(v45, v46);
      v48 = *(a1 + 200);
      *(a1 + 200) = v47;

      if (!*(a1 + 200))
      {
        goto LABEL_22;
      }

      v49 = [*(a1 + 8) device];
      v51 = sub_2A90(v49, v50);
      v52 = *(a1 + 248);
      *(a1 + 248) = v51;

      if (!*(a1 + 248))
      {
        goto LABEL_22;
      }

      [sub_29CC() setWidth:?];
      [sub_29A8() setHeight:?];
      v53 = [*(a1 + 8) device];
      v54 = [v53 newTextureWithDescriptor:v5];
      v55 = *(a1 + 232);
      *(a1 + 232) = v54;

      if (!*(a1 + 232))
      {
        goto LABEL_22;
      }

      v56 = [*(a1 + 8) device];
      v57 = [v56 newBufferWithLength:1024 options:0];
      v58 = *(a1 + 256);
      *(a1 + 256) = v57;

      if (*(a1 + 256))
      {
        v6 = 0;
      }

      else
      {
LABEL_22:
        sub_20B8();
        sub_28D8();
        FigDebugAssert3();
        sub_20B8();
        sub_1EAC();
        v6 = FigSignalErrorAtGM();
      }
    }

    else
    {
      fig_log_get_emitter();
      sub_28D8();
      FigDebugAssert3();
      fig_log_get_emitter();
      sub_1EAC();
      v6 = FigSignalErrorAtGM();
      v5 = 0;
    }
  }

  return v6;
}

uint64_t sub_9398(uint32x2_t *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {
    v10 = *&a1[2];
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = a2;
    sub_2A78();
    [sub_29CC() setTexture:? atIndex:?];

    [sub_29A8() setTexture:? atIndex:?];
    [sub_29F4() setTexture:? atIndex:?];

    [v10 threadExecutionWidth];
    v15 = [sub_2AD4() maxTotalThreadsPerThreadgroup];
    v16 = a1[36];
    v17 = v15 / v14;

    v18 = vshr_n_u32(v16, 1uLL);
    *&v19 = v18.u32[0];
    *(&v19 + 1) = v18.u32[1];
    v22 = v19;
    v23 = 1;
    v21[0] = v14;
    v21[1] = v17;
    v21[2] = 1;
    [v11 dispatchThreads:&v22 threadsPerThreadgroup:v21];
  }

  return 0;
}

uint64_t sub_96C4(uint32x2_t *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a1)
  {
    v14 = sub_296C();
    v19 = sub_9A8C(v14, a2, a3, v15, v16, 0x11u, v17, v18, v72);
    if (v19)
    {
      goto LABEL_11;
    }

    v20 = a1[28];
    v21 = a1[29];
    v22 = a1[30];
    v23 = a1[31];
    v24 = sub_2994();
    v19 = sub_9A8C(v24, v25, v26, v27, v28, 0x11u, v29, v30, v73);
    if (v19)
    {
      goto LABEL_11;
    }

    v31 = sub_296C();
    v19 = sub_9A8C(v31, v11, v12, v32, v33, 5u, v34, v35, v74);
    if (v19)
    {
      goto LABEL_11;
    }

    v36 = a1[28];
    v37 = a1[29];
    v38 = a1[26];
    v39 = a1[27];
    v40 = sub_2994();
    v19 = sub_9A8C(v40, v41, v42, v43, v44, 5u, v45, v46, v75);
    if (v19)
    {
      goto LABEL_11;
    }

    v47 = a1[26];
    v48 = a1[27];
    v49 = sub_296C();
    v19 = sub_9A8C(v49, v50, v51, v52, v53, 0x11u, v54, v55, v76);
    if (v19 || (v56 = a1[28], v57 = a1[29], v58 = a1[26], v59 = a1[27], v60 = sub_2994(), v19 = sub_9A8C(v60, v61, v62, v63, v64, 0x11u, v65, v66, v77), v19))
    {
LABEL_11:
      v70 = v19;
      fig_log_get_emitter();
      sub_28EC();
      FigDebugAssert3();
      goto LABEL_10;
    }

    v67 = *&a1[10];
    [sub_2AD4() setComputePipelineState:a3];
    sub_2B00(v13, v68);
    [v13 setTexture:*&a1[30] atIndex:0];
    [v13 setTexture:*&a1[26] atIndex:1];
    [v13 setTexture:v11 atIndex:2];
    [v13 setTexture:v11 atIndex:3];
    [v13 setTexture:*&a1[31] atIndex:4];
    [v13 setTexture:*&a1[27] atIndex:5];
    [v13 setTexture:v12 atIndex:6];
    [v13 setTexture:v12 atIndex:7];
    v69 = vshr_n_u32(a1[36], 1uLL);
    sub_29B4();
    v81 = 1;
    v78 = vdupq_n_s64(0x10uLL);
    v79 = 1;
    [v13 dispatchThreads:v80 threadsPerThreadgroup:&v78];
  }

  v70 = 0;
LABEL_10:

  return v70;
}

uint64_t sub_9A8C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6, unsigned int a7, unsigned int a8, void *a9)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a9;
  if (a1)
  {
    v21 = sub_AA64(a1, v16, v18, a6, a7, a8, 1, v20);
    if (!v21)
    {
      v21 = sub_AA64(a1, v17, v19, (a6 >> 1) + 1, a7 >> 1, a8 >> 1, 0, v20);
    }

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t sub_9CE8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1)
  {
    v12 = *(a1 + 288);
    v13 = *(a1 + 292);
    v14 = *(a1 + 96);
    v15 = a6;
    v31 = a5;
    v16 = a4;
    v30 = a3;
    v17 = a2;
    [sub_29F4() setComputePipelineState:?];
    [sub_29C0() setTexture:? atIndex:?];

    [v15 setTexture:*(a1 + 224) atIndex:1];
    [v14 threadExecutionWidth];
    v18 = [v14 maxTotalThreadsPerThreadgroup];
    sub_29D8(v18, v19);
    v20 = *(a1 + 96);

    [sub_29C0() setComputePipelineState:?];
    [v15 setTexture:*(a1 + 224) atIndex:0];
    [sub_29A8() setTexture:? atIndex:?];

    [v20 threadExecutionWidth];
    v21 = [v20 maxTotalThreadsPerThreadgroup];
    sub_29D8(v21, v22);
    v23 = *(a1 + 104);

    [sub_29A8() setComputePipelineState:?];
    [v15 setTexture:v30 atIndex:0];

    [v15 setTexture:*(a1 + 232) atIndex:1];
    [v23 threadExecutionWidth];
    v24 = [v23 maxTotalThreadsPerThreadgroup];
    sub_29D8(v24, v25);
    v26 = *(a1 + 104);

    [sub_29CC() setComputePipelineState:?];
    [v15 setTexture:*(a1 + 232) atIndex:0];
    [v15 setTexture:v31 atIndex:1];

    [v26 threadExecutionWidth];
    [v26 maxTotalThreadsPerThreadgroup];

    sub_29D8(v27, v28);
  }

  return 0;
}

uint64_t sub_A0B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = *(a1 + 288);
    v24 = vshr_n_u32(v9, 1uLL);
    *(a1 + 296) = v24;
    v10 = *(a1 + 120);
    v11 = a2;
    [v8 setComputePipelineState:v10];
    [v8 setTexture:v11 atIndex:0];

    [v8 setTexture:*(a1 + 240) atIndex:1];
    [v8 setBytes:a1 + 288 length:16 atIndex:0];
    [v8 setBuffer:*(a1 + 256) offset:0 atIndex:1];
    v12 = [v10 threadExecutionWidth];
    v13 = [v10 maxTotalThreadsPerThreadgroup];
    v14 = vsra_n_u32(0x200000002, v9, 1uLL);
    *&v15 = v14.u32[0];
    *(&v15 + 1) = v14.u32[1];
    v28 = v15;
    v29 = 1;
    v25 = v12;
    v26 = v13 / v12;
    v27 = 1;
    [v8 dispatchThreads:&v28 threadsPerThreadgroup:&v25];
    v16 = sub_AA64(a1, *(a1 + 240), *(a1 + 224), 5, v24.u32[0], v24.u32[1], 1, v8);
    if (v16 || (v16 = sub_AA64(a1, *(a1 + 224), *(a1 + 240), 5, v24.u32[1], v24.u32[0], 1, v8), v16))
    {
      v22 = v16;
      fig_log_get_emitter();
      sub_2A48();
      FigDebugAssert3();
    }

    else
    {
      v17 = *(a1 + 128);

      [v8 setComputePipelineState:v17];
      [v8 setTexture:*(a1 + 240) atIndex:0];
      [v8 setTexture:v7 atIndex:1];
      v18 = [v17 threadExecutionWidth];
      v19 = [v17 maxTotalThreadsPerThreadgroup];
      v20 = *(a1 + 288);
      *&v21 = v20;
      *(&v21 + 1) = HIDWORD(v20);
      v28 = v21;
      v29 = 1;
      v25 = v18;
      v26 = v19 / v18;
      v27 = 1;
      [v8 dispatchThreads:&v28 threadsPerThreadgroup:&v25];
      v22 = 0;
      v10 = v17;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t sub_A37C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  if (a1)
  {
    v17 = *(a1 + 136);
    v18 = a10;
    v30 = a9;
    v19 = a8;
    v20 = a7;
    v21 = a6;
    v22 = a5;
    v23 = a4;
    v24 = a3;
    v25 = a2;
    sub_2A78();
    [v18 setTexture:v25 atIndex:0];

    [sub_29CC() setTexture:? atIndex:?];
    [v18 setTexture:v21 atIndex:2];

    [v18 setTexture:v19 atIndex:3];
    [v17 threadExecutionWidth];
    [sub_2AD4() maxTotalThreadsPerThreadgroup];
    v26 = *(a1 + 288);
    sub_2984();
    sub_2A00();
    [v18 dispatchThreads:? threadsPerThreadgroup:?];
    sub_2A78();
    [sub_29C0() setTexture:? atIndex:?];

    [sub_29F4() setTexture:? atIndex:?];
    [sub_29A8() setTexture:? atIndex:?];

    [v18 setTexture:v30 atIndex:3];
    [v17 threadExecutionWidth];
    [sub_2AD4() maxTotalThreadsPerThreadgroup];
    v27 = *(a1 + 288);

    sub_2984();
    sub_2A00();
    [v18 dispatchThreads:? threadsPerThreadgroup:?];
  }

  return 0;
}

void sub_A554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int64x2_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_2A2C();
  a28 = v29;
  a29 = v30;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v38;
  v44 = v36;
  v45 = v34;
  v46 = v32;
  if (v40)
  {
    v47 = *(v40 + 144);
    [v46 setComputePipelineState:v47];
    [v46 setTexture:v42 atIndex:0];
    [v46 setTexture:v44 atIndex:1];
    v48 = [v47 threadExecutionWidth];
    [v47 maxTotalThreadsPerThreadgroup];
    v49 = *(v40 + 288);
    sub_2984();
    a11.i64[0] = v48;
    a11.i64[1] = v50 / v48;
    a12 = 1;
    [v46 dispatchThreads:&a14 threadsPerThreadgroup:&a11];
    if (sub_AA64(v40, v44, *(v40 + 224), 5, *(v40 + 288), *(v40 + 292), 1, v46) || sub_AA64(v40, *(v40 + 224), v44, 5, *(v40 + 292), *(v40 + 288), 1, v46))
    {
      fig_log_get_emitter();
      sub_291C();
      FigDebugAssert3();
    }

    else
    {
      v51 = *(v40 + 152);

      [v46 setComputePipelineState:v51];
      sub_2B00(v46, v52);
      [v46 setTexture:v43 atIndex:0];
      [v46 setTexture:v42 atIndex:1];
      [v46 setTexture:v44 atIndex:2];
      [v46 setTexture:v45 atIndex:3];
      v53 = *(v40 + 288);
      sub_29B4();
      a16 = 1;
      a11 = vdupq_n_s64(0x20uLL);
      a12 = 1;
      [v46 dispatchThreads:&a14 threadsPerThreadgroup:&a11];
      v47 = v51;
    }
  }

  sub_2A10();
}

void sub_A94C(void *a1)
{
  if (a1)
  {
    v2 = a1[20];
    a1[20] = 0;

    v3 = a1[21];
    a1[21] = 0;

    v4 = a1[22];
    a1[22] = 0;

    v5 = a1[23];
    a1[23] = 0;

    v6 = a1[28];
    a1[28] = 0;

    v7 = a1[29];
    a1[29] = 0;

    v8 = a1[30];
    a1[30] = 0;

    v9 = a1[31];
    a1[31] = 0;

    v10 = a1[26];
    a1[26] = 0;

    v11 = a1[27];
    a1[27] = 0;

    v12 = a1[24];
    a1[24] = 0;

    v13 = a1[25];
    a1[25] = 0;

    v14 = a1[32];
    a1[32] = 0;
  }
}

uint64_t sub_AA64(uint64_t a1, void *a2, void *a3, int a4, unsigned int a5, unsigned int a6, int a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a8;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (a7)
  {
    switch(a4)
    {
      case 5:
        v18 = 48;
        goto LABEL_16;
      case 21:
        v18 = 64;
        goto LABEL_16;
      case 17:
        v18 = 56;
LABEL_16:
        v20 = *(a1 + v18);
        [v17 setComputePipelineState:v20];
        [v17 setTexture:v15 atIndex:0];
        [v17 setTexture:v16 atIndex:1];
        v23[0] = a5 >> 1;
        v23[1] = a6 >> 1;
        v23[2] = 1;
        v22[0] = [v20 threadExecutionWidth];
        v22[1] = [v20 maxTotalThreadsPerThreadgroup] / v22[0];
        v22[2] = 1;
        [v17 dispatchThreads:v23 threadsPerThreadgroup:v22];

LABEL_17:
        v19 = 0;
        goto LABEL_18;
    }
  }

  else
  {
    switch(a4)
    {
      case 3:
        v18 = 24;
        goto LABEL_16;
      case 11:
        v18 = 40;
        goto LABEL_16;
      case 9:
        v18 = 32;
        goto LABEL_16;
    }
  }

  v19 = 4294954516;
LABEL_18:

  return v19;
}

uint64_t sub_ABD4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferClearOutputTexture" constants:0];
  v3 = *(a1 + 32);
  *(a1 + 32) = v2;

  if (!*(a1 + 32))
  {
    goto LABEL_13;
  }

  v4 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferTileCutKernel" constants:0];
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;

  if (!*(a1 + 40))
  {
    goto LABEL_13;
  }

  v6 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferTileCutInSlicesKernel" constants:0];
  v7 = *(a1 + 48);
  *(a1 + 48) = v6;

  if (!*(a1 + 48))
  {
    goto LABEL_13;
  }

  v8 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferTileMergeKernel" constants:0];
  v9 = *(a1 + 64);
  *(a1 + 64) = v8;

  if (!*(a1 + 64))
  {
    goto LABEL_13;
  }

  v10 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferTilePasteKernel" constants:0];
  v11 = *(a1 + 56);
  *(a1 + 56) = v10;

  if (*(a1 + 56) && (v12 = objc_opt_new()) != 0)
  {
    v13 = v12;
    [v12 setNormalizedCoordinates:1];
    [sub_3520() setMinFilter:?];
    [sub_3520() setMagFilter:?];
    [sub_352C() setSAddressMode:?];
    [sub_352C() setTAddressMode:?];
    v14 = [*(a1 + 8) device];
    v15 = [v14 newSamplerStateWithDescriptor:v13];
    v16 = *(a1 + 72);
    *(a1 + 72) = v15;

    if (!*(a1 + 72))
    {
      goto LABEL_14;
    }

    [v13 setNormalizedCoordinates:1];
    [v13 setMinFilter:2];
    [v13 setMagFilter:2];
    [sub_352C() setSAddressMode:?];
    [sub_352C() setTAddressMode:?];
    v17 = [*(a1 + 8) device];
    v18 = [v17 newSamplerStateWithDescriptor:v13];
    v19 = *(a1 + 80);
    *(a1 + 80) = v18;

    if (*(a1 + 80))
    {
      v20 = 0;
    }

    else
    {
LABEL_14:
      sub_20B8();
      sub_1E7C();
      FigDebugAssert3();
      sub_20B8();
      sub_1EAC();
      v20 = FigSignalErrorAtGM();
    }
  }

  else
  {
LABEL_13:
    sub_1F20();
    sub_1E7C();
    FigDebugAssert3();
    sub_1F20();
    sub_1EAC();
    v20 = FigSignalErrorAtGM();
    v13 = 0;
  }

  return v20;
}

id sub_B168(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  if (a1)
  {
    v3 = pixelBuffer;
    textureOut = 0;
    if (pixelBuffer)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
      v6 = PixelFormatType;
      v7 = PixelFormatType - 1278226534;
      v9 = PixelFormatType == 706956392 || PixelFormatType == 707153000;
      v10 = [NSMutableArray alloc];
      if ((v7 & 0xFFFFFFFD) == 0 || v6 == 642527336)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      v42 = v9;
      v38 = v12;
      if (v9)
      {
        v13 = 3;
      }

      else
      {
        v13 = v12;
      }

      v14 = [v10 initWithCapacity:v13];
      if (v14)
      {
        v15 = 0;
        textureAttributes = 0;
        v16 = 0;
        v39 = kCVMetalTextureUsage;
        v37 = a3;
        v40 = v6;
        while (1)
        {
          v17 = textureAttributes;
          v18 = sub_CC78(a1, v6, v15);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          v41 = v16;
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(v3, v15);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(v3, v15);
          v45 = v39;
          v22 = [NSNumber numberWithUnsignedInteger:a3];
          v46 = v22;
          textureAttributes = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];

          v6 = v40;
          if (v40 == 707153000 || v40 == 706956392)
          {
            v24 = 0;
            while (1)
            {
              v25 = *(a1 + 24);
              if (CVMetalTextureCacheCreateTextureFromSliceOfImage())
              {
                goto LABEL_56;
              }

              v26 = v3;
              v27 = CVMetalTextureGetTexture(textureOut);
              [v14 setObject:v27 atIndexedSubscript:{v41 + v24, v24, &textureOut}];

              v28 = [v14 objectAtIndexedSubscript:v41 + v24];

              if (!v28)
              {
                goto LABEL_56;
              }

              if (textureOut)
              {
                CFRelease(textureOut);
              }

              v29 = v24 + 1;
              v30 = v42;
              if (v24 >= 2)
              {
                v30 = 0;
              }

              ++v24;
              v3 = v26;
              if (!v30)
              {
                v6 = v40;
                v16 = v41 + v29;
                a3 = v37;
                goto LABEL_39;
              }
            }
          }

          if (CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, *(a1 + 24), v3, textureAttributes, v19, WidthOfPlane, HeightOfPlane, v15, &textureOut))
          {
            break;
          }

          v31 = CVMetalTextureGetTexture(textureOut);
          [v14 setObject:v31 atIndexedSubscript:v41];

          v32 = [v14 objectAtIndexedSubscript:v41];

          if (!v32)
          {
            break;
          }

          v16 = v41 + 1;
          if (textureOut)
          {
            CFRelease(textureOut);
          }

LABEL_39:
          if (v38 <= ++v15 || v6 == 707153000 || v6 == 706956392)
          {
            v35 = v14;
            v14 = v35;
            goto LABEL_48;
          }
        }
      }

      else
      {
        textureAttributes = 0;
      }

LABEL_56:
      if (textureOut)
      {
        CFRelease(textureOut);
      }

      v35 = 0;
LABEL_48:
    }

    else
    {
      v35 = 0;
      v14 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

void sub_B4F8(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CVMetalTextureCacheFlush(v2, 0);
      v3 = a1[3];
      if (v3)
      {
        CFRelease(v3);
      }
    }

    v4 = a1[12];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[14];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[15];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[20];
    a1[20] = 0;
  }
}

uint64_t sub_C2B8(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_6;
  }

  memset(v43, 0, 32);
  memset(v42, 0, sizeof(v42));
  if ([v5 count] != &dword_0 + 2)
  {
    goto LABEL_8;
  }

  v7.i16[0] = *(a3 + 28);
  v7.i16[2] = *(a3 + 30);
  v40 = v7;
  v7.i16[0] = *a3;
  v7.i16[2] = *(a3 + 2);
  v38 = v7;
  v7.i16[0] = *(a3 + 4);
  v7.i16[2] = *(a3 + 6);
  v36 = v7;
  v8 = *(a3 + 8);
  v9 = objc_alloc_init(NSMutableArray);
  v10 = a1[17];
  a1[17] = v9;

  if (!a1[17])
  {
LABEL_8:
    v30 = 4294954516;
    goto LABEL_7;
  }

  v11 = vand_s8(vadd_s32(vadd_s32(v38, v40), vmvn_s8(v36)), 0xFFFF0000FFFFLL);
  v12 = vand_s8(vsub_s32(v38, v36), 0xFFFF0000FFFFLL);
  v39 = v11.i32[0] / v12.i32[0];
  v41 = v8;
  v13 = a1[16];
  v37 = v11.i32[1] / v12.i32[1];
  v14 = [sub_34DC() objectAtIndexedSubscript:?];
  v15 = [NSNumber numberWithLong:v14];
  v16 = [v13 objectForKeyedSubscript:v15];
  FigCFDictionaryGetCGRectIfPresent();

  v17 = a1[16];
  v18 = [sub_3514() objectAtIndexedSubscript:?];
  v19 = [NSNumber numberWithLong:v18];
  v20 = [v17 objectForKeyedSubscript:v19];
  FigCFDictionaryGetCGRectIfPresent();

  v21 = a1[18];
  v34 = a1[17];
  v33 = [sub_34DC() objectAtIndexedSubscript:?];
  v22 = a1[16];
  v35 = [sub_34DC() objectAtIndexedSubscript:?];
  v23 = [NSNumber numberWithLong:v35];
  v24 = [v22 objectForKeyedSubscript:v23];
  v25 = [sub_3514() objectAtIndexedSubscript:?];
  v26 = a1[16];
  v27 = [sub_3514() objectAtIndexedSubscript:?];
  v28 = [NSNumber numberWithLong:v27];
  v29 = [v26 objectForKeyedSubscript:v28];
  WORD1(v32) = v37;
  LOWORD(v32) = v39;
  HIDWORD(v32) = v41;
  v30 = [v21 computeLocalHomographies:v34 referencePixelBuffer:v33 referenceMetadata:v24 nonReferencePixelBuffer:v25 nonReferenceMetadata:v29 referenceNormalizedCropRectangle:v43 nonReferenceNormalizedCropRectangle:v42 computeLocalHomographiesConfig:a1[11] tileCount:v32 tileIndex:?];

  if (!v30)
  {
    if ([a1[17] count] == &dword_0 + 1)
    {
LABEL_6:
      v30 = 0;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

LABEL_7:

  return v30;
}

uint64_t sub_CC78(uint64_t result, int a2, int a3)
{
  if (result)
  {
    if (a2 == 641230384)
    {
      goto LABEL_22;
    }

    result = 25;
    switch(a2)
    {
      case 642527336:
        return result;
      case 644376112:
        goto LABEL_26;
      case 645424688:
        goto LABEL_23;
    }

    if (a2 != 706956392 && a2 != 707153000)
    {
      if (a2 != 758670896)
      {
        if (a2 == 762865200)
        {
          goto LABEL_23;
        }

        if (a2 != 792225328)
        {
          if (a2 == 796419632)
          {
            goto LABEL_23;
          }

          if (a2 != 875704422)
          {
            if (a2 == 1278226534)
            {
              return 55;
            }

            if (a2 == 1278226536)
            {
              return result;
            }

            if (a2 != 1751527984)
            {
              if (a2 != 1885745712)
              {
                if (a2 != 2019963440)
                {
                  if (a2 != 2088265264)
                  {
                    if (a2 != 2084070960)
                    {
                      return 0;
                    }

                    goto LABEL_22;
                  }

                  goto LABEL_23;
                }

                v4 = a3 == 0;
                v5 = 60;
                v6 = 20;
LABEL_28:
                if (v4)
                {
                  return v6;
                }

                else
                {
                  return v5;
                }
              }

LABEL_23:
              if (a3)
              {
                return 589;
              }

              else
              {
                return 588;
              }
            }

LABEL_26:
            v4 = a3 == 0;
            v5 = 65;
            v6 = 25;
            goto LABEL_28;
          }
        }
      }

LABEL_22:
      v4 = a3 == 0;
      v5 = 30;
      v6 = 10;
      goto LABEL_28;
    }
  }

  return result;
}

void sub_CDF0(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = [a1 objectForKeyedSubscript:a2];
  if (!v6)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v17 = v6;
  if (!FigGetCFPreferenceNumberWithDefault())
  {
    *(a3 + 8) = 0;
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v7 = [v17 objectForKeyedSubscript:@"UseFlowWeightedAverage"];
  *(a3 + 8) = [v7 BOOLValue];

  if ((*(a3 + 8) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [v17 objectForKeyedSubscript:@"FlowWeightCurveDx"];
  v9 = [v8 copy];
  v10 = *(a3 + 16);
  *(a3 + 16) = v9;

  v11 = [v17 objectForKeyedSubscript:@"FlowWeightCurveDy"];
  v12 = [v11 copy];
  v13 = *(a3 + 24);
  *(a3 + 24) = v12;

  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = [v14 count];
    if (v15 == [*(a3 + 24) count])
    {
      goto LABEL_9;
    }
  }

  v16 = -12780;
LABEL_10:
  v6 = v17;
LABEL_11:
  *a4 = v16;
}

uint64_t sub_D184(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 8) computePipelineStateFor:@"DeepZoomTransferCopyOpticalFlowInputRGBFloat16" constants:0];
    v3 = *(v1 + 16);
    *(v1 + 16) = v2;

    if (*(v1 + 16) && ([*(v1 + 8) computePipelineStateFor:@"DeepZoomTransferCopyOpticalFlowInputRGBUint8" constants:0], v4 = objc_claimAutoreleasedReturnValue(), v5 = *(v1 + 24), *(v1 + 24) = v4, v5, *(v1 + 24)))
    {
      v6 = [*(v1 + 8) computePipelineStateFor:@"DeepZoomTransferCopyOpticalFlowOutput" constants:0];
      v7 = *(v1 + 32);
      *(v1 + 32) = v6;

      if (*(v1 + 32))
      {
        return 0;
      }

      else
      {
        return 4294954510;
      }
    }

    else
    {
      return 4294954510;
    }
  }

  return result;
}

uint64_t sub_D240(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v26 = 0;
  v25[3] = 0;
  v24[0] = kCVPixelBufferMetalCompatibilityKey;
  v24[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v25[0] = &__kCFBooleanTrue;
  v25[1] = &__kCFBooleanTrue;
  v24[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v25[2] = &__NSDictionary0__struct;
  v2 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];
  context = espresso_create_context();
  *(a1 + 56) = context;
  if (context && (plan = espresso_create_plan(), (*(a1 + 64) = plan) != 0))
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    if (v5)
    {
      v6 = +[CMInferenceUtils sharedInstance];
      v7 = [v6 getNetworkPath:@"mrflownet-v2" isE5:0];

      if (v7)
      {
        v8 = *(a1 + 64);
        [v7 UTF8String];
        if (espresso_plan_add_network() || (v9 = *(a1 + 72), v10 = *(a1 + 80), espresso_network_query_quantization_info()) || (*(a1 + 88) = 0x30000000400, *(a1 + 128) = 4, v11 = *(a1 + 64), v12 = espresso_plan_build(), v12))
        {
          v22 = 4294954514;
        }

        else
        {
          v17 = sub_36A4(v12, v13, v14, v15, v16, (a1 + 96));
          if (!v17)
          {
            v17 = sub_36A4(v17, v18, v19, v20, v21, (a1 + 104));
            if (!v17)
            {
              v17 = CVPixelBufferCreate(kCFAllocatorDefault, 0x100uLL, 0x180uLL, 0x4C303068u, v2, (a1 + 112));
            }
          }

          v22 = v17;
        }
      }

      else
      {
        v22 = 4294954516;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = 0;
  v22 = 4294954510;
LABEL_13:

  return v22;
}

uint64_t sub_E1EC(uint64_t a1, __CVBuffer *a2, uint64_t a3, __CVBuffer *a4, void *a5, float64x2_t *a6, float64x2_t *a7, unsigned __int16 a8)
{
  v14 = a5;
  if (!a1)
  {
    v16 = 0;
    goto LABEL_27;
  }

  v91[0] = kCVPixelBufferMetalCompatibilityKey;
  v91[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v92[0] = &__kCFBooleanTrue;
  v92[1] = &__kCFBooleanTrue;
  v91[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v92[2] = &__NSDictionary0__struct;
  pixelBufferAttributes = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:3];
  v15 = 0;
  v16 = 4294954516;
  if (!a2 || !a3 || !a4 || !v14 || !a6 || !a7)
  {
    goto LABEL_24;
  }

  v83 = matrix_identity_float3x3.columns[1];
  v84 = matrix_identity_float3x3.columns[0];
  v82 = matrix_identity_float3x3.columns[2];
  v17 = [v14 objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_StillImageProcessingMetadata];
  v15 = [v17 objectForKeyedSubscript:kFigCaptureStillImageProcessingMetadataKey_RegistrationHomography];

  v89 = v84;
  v87 = v83;
  v85 = v82;
  if (v15)
  {
    v75 = [v15 objectAtIndexedSubscript:0];
    [v75 floatValue];
    v90 = v18;
    v74 = [v15 objectAtIndexedSubscript:3];
    [v74 floatValue];
    v88 = v19;
    v73 = [v15 objectAtIndexedSubscript:6];
    [v73 floatValue];
    v86 = v20;
    v72 = [v15 objectAtIndexedSubscript:1];
    [v72 floatValue];
    v70 = v21;
    [v15 objectAtIndexedSubscript:4];
    v22 = v76 = a2;
    [v22 floatValue];
    v71 = v23;
    [v15 objectAtIndexedSubscript:7];
    v24 = v78 = a7;
    [v24 floatValue];
    v69 = v25;
    [v15 objectAtIndexedSubscript:2];
    v26 = v77 = a6;
    [v26 floatValue];
    v67 = v27;
    v28 = [v15 objectAtIndexedSubscript:5];
    [v28 floatValue];
    v68 = v29;
    [v15 objectAtIndexedSubscript:8];
    v31 = v30 = v14;
    [v31 floatValue];
    v32 = v90;
    v32.n128_u32[1] = v70;
    v32.n128_u32[2] = v67;
    v89 = v32;
    v33 = v86;
    v33.n128_u32[1] = v69;
    v33.n128_u32[2] = v34;
    v85 = v33;
    v35 = v88;
    v35.n128_u32[1] = v71;
    v35.n128_u32[2] = v68;
    v87 = v35;

    v14 = v30;
    a6 = v77;

    a7 = v78;
    a2 = v76;
  }

  Width = CVPixelBufferGetWidth(a4);
  v79 = a7[1].f64[0];
  Height = CVPixelBufferGetHeight(a4);
  v38.i64[0] = Width;
  v38.i64[1] = Height;
  v39.f64[0] = v79;
  v39.f64[1] = a7[1].f64[1];
  v40 = vmulq_f64(v39, vcvtq_f64_f32(vcvt_f32_f64(vcvtq_f64_u64(v38))));
  __asm { FMOV            V1.2D, #0.5 }

  v46 = vcvt_n_u32_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v40, _Q1))), 1uLL);
  if (v46.i32[0] < v46.i32[1])
  {
    v16 = 4294954516;
LABEL_24:
    v65 = *(a1 + 120);
    if (v65)
    {
      CFRelease(v65);
      *(a1 + 120) = 0;
    }

    goto LABEL_26;
  }

  v47 = v46.u32[1] / v46.u32[0];
  v48 = CVPixelBufferGetWidth(*(a1 + 96));
  v50 = (a1 + 120);
  v49 = *(a1 + 120);
  v51 = ((v48 / *(a1 + 128) / a8) & 0xFFFFFFFE) * a8;
  v52 = roundf((v47 * v51) * 0.5);
  v53 = (v52 + v52);
  if (v49)
  {
    if (CVPixelBufferGetWidth(v49) == v51 && CVPixelBufferGetHeight(*v50) == v53)
    {
      goto LABEL_17;
    }

    if (*v50)
    {
      CFRelease(*v50);
      *v50 = 0;
    }
  }

  v54 = CVPixelBufferCreate(kCFAllocatorDefault, v51, v53, 0x32433068u, pixelBufferAttributes, (a1 + 120));
  if (v54)
  {
LABEL_29:
    v16 = v54;
    goto LABEL_24;
  }

LABEL_17:
  v54 = sub_F6FC(a1, a2, *(a1 + 96), a6, v84, v83, v82);
  if (v54)
  {
    goto LABEL_29;
  }

  v54 = sub_F6FC(a1, a4, *(a1 + 104), a7, v89, v87, v85);
  if (v54)
  {
    goto LABEL_29;
  }

  v55 = *(a1 + 96);
  v56 = *(a1 + 72);
  v57 = *(a1 + 80);
  if (espresso_network_bind_direct_cvpixelbuffer() || (v58 = *(a1 + 104), v59 = *(a1 + 72), v60 = *(a1 + 80), espresso_network_bind_direct_cvpixelbuffer()) || (v61 = *(a1 + 112), v62 = *(a1 + 72), v63 = *(a1 + 80), espresso_network_bind_direct_cvpixelbuffer()) || (v64 = *(a1 + 64), espresso_plan_execute_sync()))
  {
    v16 = 4294954514;
    goto LABEL_24;
  }

  v16 = sub_FAC4(a1);
  if (v16)
  {
    goto LABEL_24;
  }

LABEL_26:

LABEL_27:
  return v16;
}

uint64_t sub_E6E0(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int16 a4, unsigned int a5, uint64_t a6, unsigned int a7, void *a8)
{
  v15 = a8;
  v70 = v15;
  if (a1)
  {
    v16 = v15;
    v17 = a5;
    v18 = HIWORD(a5);
    v19 = 0.0;
    if (a5 >= 0x10000)
    {
      v20 = 0;
      v21 = a6;
      do
      {
        if (a5)
        {
          v22 = 0;
          do
          {
            _H0 = fabsl(*(v21 + v22));
            __asm { FCVT            S0, H0 }

            if (v19 < _S0)
            {
              v19 = _S0;
            }

            v22 += 4;
          }

          while (4 * a5 != v22);
        }

        ++v20;
        v21 += a7 & 0xFFFFFFFE;
      }

      while (v20 != v18);
    }

    v29 = [v15 dxPoints];
    v30 = [v16 dyPoints];
    v32 = v30;
    v33 = 4294954516;
    if (v29 && v30)
    {
      v34.f32[0] = a3;
      v34.f32[1] = HIWORD(a3);
      __asm { FMOV            V1.2S, #1.0 }

      v36 = vdiv_f32(_D1, v34);
      v71 = v36;
      if (a5 >= 0x10000)
      {
        v38 = 0;
        v39 = a4;
        v40 = ceilf((v19 * *v36.i32) * v39);
        v41 = a7 >> 1;
        v37 = 0;
        *&v31 = 0;
        do
        {
          if (v17)
          {
            for (i = 0; i != v17; ++i)
            {
              v36.i32[0] = *(a6 + 4 * i);
              v72 = v31;
              v73 = vcvtq_f32_f16(v36).u64[0];
              v43 = [v29 count];
              v44 = 1.0;
              if (v43 < 2)
              {
                v31 = v72;
                v60 = v73;
              }

              else
              {
                v45 = fabsf(v39 * vmul_f32(v71, v73).f32[0]) / v40;
                v46 = (v43 - 2);
                while (1)
                {
                  v47 = [v29 objectAtIndexedSubscript:v46];
                  [v47 floatValue];
                  v49 = v48;

                  v50 = [v29 objectAtIndexedSubscript:v46 + 1];
                  [v50 floatValue];
                  v52 = v51;

                  v53 = [v32 objectAtIndexedSubscript:v46];
                  [v53 floatValue];
                  v55 = v54;

                  v56 = [v32 objectAtIndexedSubscript:v46 + 1];
                  [v56 floatValue];
                  v58 = v57;

                  if (v45 > v49)
                  {
                    break;
                  }

                  if (v46-- < 1)
                  {
                    v31 = v72;
                    v60 = v73;
                    v44 = 1.0;
                    goto LABEL_28;
                  }
                }

                v61 = v45 - v49;
                v62 = v52 - v49;
                v31 = v72;
                if (v55 >= v58)
                {
                  v44 = v55;
                  v60 = v73;
                  if (v55 > v58)
                  {
                    v64 = fminf(fmaxf(v61 / v62, 0.0), 1.0);
                    v44 = v58 + ((v55 - v58) * (1.0 - ((v64 * v64) * ((v64 * -2.0) + 3.0))));
                  }
                }

                else
                {
                  v63 = fminf(fmaxf(v61 / v62, 0.0), 1.0);
                  v44 = v55 + ((v58 - v55) * ((v63 * v63) * ((v63 * -2.0) + 3.0)));
                  v60 = v73;
                }
              }

LABEL_28:
              v37 = vmla_n_f32(v37, v60, v44);
              *&v31 = *&v31 + v44;
            }
          }

          a6 += 2 * v41;
          ++v38;
        }

        while (v38 != v18);
      }

      else
      {
        *&v31 = 0;
        v37 = 0;
      }

      v66 = matrix_identity_float3x3.columns[0];
      v65 = matrix_identity_float3x3.columns[1];
      v67 = matrix_identity_float3x3.columns[0].i32[3];
      if (fabsf(*&v31) > 1.0e-10)
      {
        *&v66.u32[2] = vmul_f32(v71, vdiv_f32(v37, vdup_lane_s32(*&v31, 0)));
        v65.i32[2] = v66.i32[3];
      }

      v33 = 0;
      *(v69 + 8) = v66.i32[2];
      *v69 = v66.i64[0];
      *(v69 + 24) = v65.i32[2];
      *(v69 + 12) = v67;
      *(v69 + 16) = v65.i64[0];
      *(v69 + 28) = *(&matrix_identity_float3x3.columns[1] + 12);
      *(v69 + 44) = matrix_identity_float3x3.columns[2].i32[3];
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

uint64_t sub_EA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 4294954516;
  if (!a2 || !a3 || !a4)
  {
    goto LABEL_53;
  }

  sub_3670();
  v106 = v14;
  if (!v14)
  {
    goto LABEL_50;
  }

  v15 = v12;
  v7 = 0;
  if (!v12 || (v16 = v11, v11 < 0x10000))
  {
LABEL_53:
    sub_3670();
    goto LABEL_50;
  }

  sub_3670();
  v19 = v16;
  if (!v16)
  {
    goto LABEL_50;
  }

  v20 = v18;
  v100 = v17;
  v6 = v106;
  v7 = (16 * v106);
  v4 = malloc_type_malloc(v7, 0x1000040451B5BE8uLL);
  if (v4)
  {
    v5 = malloc_type_malloc(v7, 0x1000040451B5BE8uLL);
    if (v5)
    {
      v23 = 0;
      v24 = 0;
      v25 = HIWORD(v16);
      v26 = a1;
      do
      {
        v27 = v24 * v15;
        v28 = v19;
        do
        {
          v29 = v27;
          v30 = (a3 + 16 * v27);
          v31 = *v30;
          if (COERCE_FLOAT(*(v30 + 1)) >= v20)
          {
            v32 = (a4 + 16 * v27);
            if (*(v32 + 2) >= v20)
            {
              v33 = &v4[16 * v23];
              LODWORD(v34) = *v30;
              HIDWORD(v34) = HIDWORD(*v33);
              *(v33 + 2) = *(v33 + 1);
              *v33 = v34;
              DWORD1(v31) = *(v30 + 1);
              *(v33 + 2) = 1065353216;
              *v33 = v31;
              v35 = *v32;
              v36 = &v5[16 * v23];
              v37 = *v36;
              v38 = *v32;
              DWORD1(v38) = HIDWORD(*v36);
              *(v36 + 2) = *(v36 + 1);
              *v36 = v38;
              DWORD1(v35) = *(v32 + 1);
              *(v36 + 2) = 1065353216;
              *v36 = v35;
              ++v23;
            }
          }

          v27 = v29 + 1;
          --v28;
        }

        while (v28);
        ++v24;
      }

      while (v24 != v25);
      if (v23 == v106)
      {
        v39 = 0;
        v40 = 16 * v106;
        v41 = 0;
        v42 = 0;
        do
        {
          v41 = vadd_f32(v41, *&v4[v39]);
          v42 = vadd_f32(v42, *&v5[v39]);
          v39 += 16;
        }

        while (v40 != v39);
        v43 = 0;
        v44 = xmmword_178B0;
        *v21.i32 = v106;
        v45 = vdup_lane_s32(v21, 0);
        v46 = vdiv_f32(v41, v45);
        v47 = vdiv_f32(v42, v45);
        *&v48 = -v46.f32[0];
        *&v49 = -v46.f32[1];
        v50 = xmmword_178B0;
        DWORD2(v50) = v48;
        v97 = v50;
        v22.i32[0] = 0;
        v22.i32[1] = 1.0;
        __asm { FMOV            V0.4S, #1.0 }

        v56.i64[1] = _Q0.i64[1];
        v56.i64[0] = __PAIR64__(v49, v48);
        v57 = v22;
        v57.i32[2] = v49;
        v96 = v57;
        *(&v44 + 2) = -v47.f32[0];
        v22.i64[1] = COERCE_UNSIGNED_INT(-v47.f32[1]);
        v98 = v22;
        v99 = v44;
        do
        {
          *&v4[v43] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_178B0, COERCE_FLOAT(*&v4[v43])), xmmword_178C0, *&v4[v43], 1), v56, *&v4[v43], 2);
          _Q0.f32[1] = -v47.f32[1];
          _Q0.f32[0] = -v47.f32[0];
          *&v5[v43] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_178B0, COERCE_FLOAT(*&v5[v43])), xmmword_178C0, *&v5[v43], 1), _Q0, *&v5[v43], 2);
          v43 += 16;
        }

        while (v40 != v43);
        v111 = 0;
        v108 = 0;
        v58 = 0;
        v109 = 0;
        *(a1 + 152) = 1;
        v103 = matrix_identity_float3x3.columns[1];
        v104 = matrix_identity_float3x3.columns[0];
        v102 = matrix_identity_float3x3.columns[2];
        memset(v112, 0, sizeof(v112));
        while (1)
        {
          v115 = 0u;
          v116 = 0u;
          v114 = 0u;
          sub_FD24(v26);
          if (*(v26 + 144))
          {
            v6 = malloc_type_malloc(0x48uLL, 0x10000403E1C8BA9uLL);
            if (!v6 || (v59 = malloc_type_malloc(0x48uLL, 0x10000403E1C8BA9uLL)) == 0)
            {
              v8 = 4294954510;
              v7 = v108;
LABEL_49:
              v13 = v111;
              goto LABEL_50;
            }

            v60 = v59;
            v61 = 0;
            v62 = v112;
            do
            {
              v63 = *v62++;
              v64 = &v4[16 * v63];
              v65 = &v6[v61];
              *v65 = *v64;
              *(v65 + 1) = *(v64 + 1);
              *(v65 + 2) = 1065353216;
              v66 = &v5[16 * v63];
              v67 = &v59[v61];
              *v67 = *v66;
              *(v67 + 1) = *(v66 + 1);
              *(v67 + 2) = 1065353216;
              v61 += 12;
            }

            while (v61 != 72);
            v8 = [*(v26 + 144) computeHomography:&v114 referenceKeypoints:v6 nonReferenceKeypoints:v59 keypointsCount:6];
            free(v6);
            free(v60);
            v13 = v111;
            if (v8)
            {
              goto LABEL_54;
            }
          }

          else
          {
            [*(v26 + 8) device];
            v69 = v68 = v26;
            v70 = [v69 newBufferWithLength:96 options:0];

            if (!v70)
            {
              v13 = 0;
              v6 = 0;
              v8 = 4294954510;
              goto LABEL_56;
            }

            v71 = [*(v68 + 8) device];
            v72 = [v71 newBufferWithLength:96 options:0];

            if (!v72)
            {
              v7 = 0;
              v6 = 0;
              v8 = 4294954510;
              v13 = v70;
              goto LABEL_50;
            }

            v73 = [v70 contents];
            v108 = v72;
            v74 = [v72 contents];
            for (i = 0; i != 24; i += 4)
            {
              v76 = *(v112 + i);
              v77 = &v4[16 * v76];
              LODWORD(v78) = *v77;
              *v73 = v78;
              HIDWORD(v78) = *(v77 + 1);
              *v73 = v78;
              v73[2] = 1065353216;
              v79 = &v5[16 * v76];
              v80 = *v79;
              *v74 = *v79;
              DWORD1(v80) = *(v79 + 1);
              *v74 = v80;
              v74[2] = 1065353216;
              v74 += 4;
              v73 += 4;
            }

            v26 = a1;
            v8 = [*(a1 + 136) computeHomography:&v114 referenceKeypoints:v70 nonReferenceKeypoints:v72 keypointsCount:6];
            v13 = v70;
            if (v8)
            {
LABEL_54:
              v6 = 0;
LABEL_56:
              v7 = v108;
              goto LABEL_50;
            }
          }

          v81 = 0;
          v82 = 0;
          v83 = vzip1q_s32(v114, v115);
          v84 = vzip2q_s32(vzip1q_s32(v114, v116), vdupq_lane_s32(*v115.i8, 1));
          v85 = vzip2q_s32(v114, v115);
          v85.i32[2] = v116.i32[2];
          do
          {
            v83.i32[2] = v116.i32[0];
            v86 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, COERCE_FLOAT(*&v4[v81])), v84, *&v4[v81], 1), v85, *&v4[v81], 2);
            v87 = vsubq_f32(vdivq_f32(v86, vdupq_laneq_s32(v86, 2)), *&v5[v81]);
            v88 = vmulq_f32(v87, v87);
            if (sqrtf(v88.f32[2] + vaddv_f32(*v88.f32)) < 0.0067964)
            {
              ++v82;
            }

            v81 += 16;
          }

          while (v40 != v81);
          v111 = v13;
          if (v82 > v109)
          {
            v103 = v115;
            v104 = v114;
            v102 = v116;
            if ((v82 / v106) > 0.95)
            {
              goto LABEL_44;
            }

            v109 = v82;
          }

          if (++v58 == 50)
          {
LABEL_44:
            v89 = 0;
            v113.columns[0] = v104;
            v113.columns[1] = v103;
            v113.columns[2] = v102;
            v114 = 0u;
            v115 = 0u;
            v116 = 0u;
            do
            {
              *(&v114 + v89 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v97, COERCE_FLOAT(*&v113.columns[v89])), v96, *v113.columns[v89].f32, 1), xmmword_178D0, v113.columns[v89], 2);
              ++v89;
            }

            while (v89 != 3);
            v110 = v114;
            v105 = v116;
            v107 = v115;
            v117.columns[2] = xmmword_178D0;
            v117.columns[1] = v98;
            v117.columns[0] = v99;
            v118 = __invert_f3(v117);
            v90 = 0;
            v113 = v118;
            v114 = 0u;
            v115 = 0u;
            v116 = 0u;
            v7 = v108;
            do
            {
              *(&v114 + v90 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v110, COERCE_FLOAT(*&v113.columns[v90])), v107, *v113.columns[v90].f32, 1), v105, v113.columns[v90], 2);
              ++v90;
            }

            while (v90 != 3);
            v6 = 0;
            v8 = 0;
            v91 = vmulq_n_f32(v115, 1.0 / v116.f32[2]);
            v92 = vmulq_n_f32(v116, 1.0 / v116.f32[2]);
            *v100 = vmulq_n_f32(v114, 1.0 / v116.f32[2]);
            v100[1] = v91;
            v100[2] = v92;
            goto LABEL_49;
          }
        }
      }

      sub_3684();
      v8 = 4294954514;
      goto LABEL_50;
    }

    sub_3684();
  }

  else
  {
    sub_3684();
    v5 = 0;
  }

  v8 = 4294954510;
LABEL_50:
  v93 = v4;
  v94 = v13;
  free(v93);
  free(v5);
  free(v6);

  return v8;
}

uint64_t sub_F1A8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 40);
    if (v2)
    {
      CVMetalTextureCacheFlush(v2, 0);
      v3 = *(v1 + 40);
      if (v3)
      {
        CFRelease(v3);
        *(v1 + 40) = 0;
      }
    }

    return sub_F204(v1);
  }

  return result;
}

uint64_t sub_F204(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  [*(result + 8) waitForIdle];
  if (v1[8])
  {
    if (espresso_plan_destroy())
    {
      return 4294954514;
    }

    v1[8] = 0;
  }

  if (v1[7])
  {
    if (!espresso_context_destroy())
    {
      v1[7] = 0;
      goto LABEL_8;
    }

    return 4294954514;
  }

LABEL_8:
  v2 = v1[12];
  if (v2)
  {
    CFRelease(v2);
    v1[12] = 0;
  }

  v3 = v1[13];
  if (v3)
  {
    CFRelease(v3);
    v1[13] = 0;
  }

  v4 = v1[14];
  if (v4)
  {
    CFRelease(v4);
    v1[14] = 0;
  }

  result = v1[15];
  if (result)
  {
    CFRelease(result);
    result = 0;
    v1[15] = 0;
  }

  return result;
}

id sub_F2A8(uint64_t a1, __CVBuffer *a2, uint64_t a3)
{
  if (a1)
  {
    image = 0;
    if (a2)
    {
      v4 = a1;
      v5 = [[NSMutableArray alloc] initWithCapacity:2];
      if (v5)
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
        v8 = PixelFormatType == 843264104 || PixelFormatType == 1111970369 || PixelFormatType == 1278226536;
        v31 = PixelFormatType;
        if (v8 || PixelFormatType == 1278226534)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        v30 = v27;
        if (PixelFormatType == 640823400 || PixelFormatType == 642527336 || PixelFormatType == 641877825)
        {
          v30 = 1;
        }

        v12 = 0;
        v13 = 0;
        v28 = kCVMetalTextureUsage;
        while (1)
        {
          v14 = sub_F550(v4, v31, v12);
          if (!v14)
          {
            break;
          }

          v15 = v14;
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, v12);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, v12);
          v32 = v28;
          [NSNumber numberWithUnsignedInteger:a3];
          v19 = v18 = v4;
          v33 = v19;
          v20 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

          v4 = v18;
          v21 = CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, *(v18 + 40), a2, v20, v15, WidthOfPlane, HeightOfPlane, v12, &image);
          v22 = image;
          if (v21)
          {
            goto LABEL_37;
          }

          v23 = CVMetalTextureGetTexture(image);
          [v5 setObject:v23 atIndexedSubscript:v12];

          v24 = [v5 objectAtIndexedSubscript:v12];

          v22 = image;
          if (!v24)
          {
LABEL_37:
            v13 = v20;
            goto LABEL_39;
          }

          if (image)
          {
            CFRelease(image);
          }

          ++v12;
          v13 = v20;
          if (v30 == v12)
          {
            v25 = v5;
            v5 = v25;
            goto LABEL_33;
          }
        }

        v22 = image;
LABEL_39:
        if (v22)
        {
          CFRelease(v22);
        }

        v25 = 0;
        v20 = v13;
        goto LABEL_33;
      }

      v25 = 0;
    }

    else
    {
      v25 = 0;
      v5 = 0;
    }

    v20 = 0;
LABEL_33:

    goto LABEL_34;
  }

  v25 = 0;
LABEL_34:

  return v25;
}

uint64_t sub_F550(uint64_t result, int a2, int a3)
{
  if (result)
  {
    if (a2 != 640823400)
    {
      if (a2 == 641230384)
      {
        goto LABEL_22;
      }

      result = 80;
      switch(a2)
      {
        case 641877825:
          return result;
        case 642527336:
          return 25;
        case 644376112:
          goto LABEL_26;
        case 645424688:
          goto LABEL_23;
        case 758670896:
          goto LABEL_22;
        case 762865200:
          goto LABEL_23;
        case 792225328:
LABEL_22:
          v3 = a3 == 0;
          v4 = 30;
          v5 = 10;
          goto LABEL_30;
        case 796419632:
          goto LABEL_23;
      }

      if (a2 != 843264104)
      {
        if (a2 != 875704422)
        {
          if (a2 == 1111970369)
          {
            return result;
          }

          if (a2 == 1278226534)
          {
            return 55;
          }

          if (a2 != 1278226536)
          {
            if (a2 != 1751527984)
            {
              if (a2 != 1885745712)
              {
                if (a2 != 2019963440)
                {
                  if (a2 != 2088265264)
                  {
                    if (a2 != 2084070960)
                    {
                      return 0;
                    }

                    goto LABEL_22;
                  }

                  goto LABEL_23;
                }

                v3 = a3 == 0;
                v4 = 60;
                v5 = 20;
LABEL_30:
                if (v3)
                {
                  return v5;
                }

                else
                {
                  return v4;
                }
              }

LABEL_23:
              if (a3)
              {
                return 589;
              }

              else
              {
                return 588;
              }
            }

LABEL_26:
            v3 = a3 == 0;
            v4 = 65;
            v5 = 25;
            goto LABEL_30;
          }

          return 25;
        }

        goto LABEL_22;
      }
    }

    return 65;
  }

  return result;
}

uint64_t sub_F6FC(uint64_t a1, __CVBuffer *a2, __CVBuffer *a3, float64x2_t *a4, __n128 a5, __n128 a6, __n128 a7)
{
  if (!a1)
  {
    return 0;
  }

  v7 = 0;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v8 = 4294954516;
  if (a2)
  {
    v10 = 0;
    v11 = 0;
    if (a3)
    {
      v7 = sub_F2A8(a1, a2, 1);
      if ([v7 count] == &dword_0 + 2)
      {
        v10 = sub_F2A8(a1, a3, 2);
        if ([v10 count] == &dword_0 + 1)
        {
          v14 = [*(a1 + 8) commandQueue];
          v11 = [v14 commandBuffer];

          if (!v11)
          {
            sub_3748();
            sub_3714();
            FigDebugAssert3();
            sub_3748();
            v8 = FigSignalErrorAtGM();
            v11 = 0;
            goto LABEL_15;
          }

          v15 = [v11 computeCommandEncoder];
          if (v15)
          {
            v16 = v15;
            Width = CVPixelBufferGetWidth(*(a1 + 120));
            v18 = (Width * *(a1 + 128));
            LOWORD(v57) = Width * *(a1 + 128);
            Height = CVPixelBufferGetHeight(*(a1 + 120));
            v20 = (Height * *(a1 + 128));
            WORD1(v57) = Height * *(a1 + 128);
            v21 = vcvt_f32_f64(a4[1]);
            *&v56 = vcvt_f32_f64(*a4);
            *(&v56 + 1) = v21;
            v58 = a5;
            v59 = a6;
            v60 = a7;
            PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
            v23 = CVPixelBufferGetPixelFormatType(a3);
            if (PixelFormatType == 1111970369 || v23 == 641877825)
            {
              [v16 setComputePipelineState:*(a1 + 24)];
              [v7 objectAtIndexedSubscript:0];
              objc_claimAutoreleasedReturnValue();
              [sub_274C() setTexture:? atIndex:?];

              [v7 objectAtIndexedSubscript:1];
              objc_claimAutoreleasedReturnValue();
              [sub_274C() setTexture:? atIndex:?];

              [sub_352C() objectAtIndexedSubscript:?];
              objc_claimAutoreleasedReturnValue();
              [sub_274C() setTexture:? atIndex:?];

              sub_3728(v25, v26, v27, v28, v29, v30, v31, v32, v46, v47, a5.n128_i64[0], a5.n128_i64[1], a6.n128_i64[0], a6.n128_i64[1]);
              v42 = [sub_352C() objectAtIndexedSubscript:?];
              v33 = [v42 width];
              v44 = [sub_352C() objectAtIndexedSubscript:?];
              v53 = v33;
              v54 = [v44 height];
            }

            else
            {
              [v16 setComputePipelineState:*(a1 + 16)];
              [v7 objectAtIndexedSubscript:0];
              objc_claimAutoreleasedReturnValue();
              [sub_274C() setTexture:? atIndex:?];

              [v7 objectAtIndexedSubscript:1];
              objc_claimAutoreleasedReturnValue();
              [sub_274C() setTexture:? atIndex:?];

              [sub_352C() objectAtIndexedSubscript:?];
              objc_claimAutoreleasedReturnValue();
              [sub_274C() setTexture:? atIndex:?];

              sub_3728(v34, v35, v36, v37, v38, v39, v40, v41, v46, v47, a5.n128_i64[0], a5.n128_i64[1], a6.n128_i64[0], a6.n128_i64[1]);
              v42 = [sub_352C() objectAtIndexedSubscript:?];
              v43 = [v42 width];
              v44 = [sub_352C() objectAtIndexedSubscript:?];
              v53 = v43;
              v54 = [v44 height] / 3;
            }

            v55 = 1;
            v51 = vdupq_n_s64(0x20uLL);
            v52 = 1;
            [v16 dispatchThreads:&v53 threadsPerThreadgroup:&v51];

            [v16 endEncoding];
            [v11 commit];
            [v11 waitUntilScheduled];

            v8 = 0;
            goto LABEL_15;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = 0;
LABEL_20:
      v8 = 4294954514;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

LABEL_15:

  return v8;
}

uint64_t sub_FAC4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 112);
  if (!v2 || !*(a1 + 120))
  {
    v3 = 0;
    v4 = 0;
    v6 = 0;
    v13 = 4294954516;
    goto LABEL_9;
  }

  v3 = sub_F2A8(a1, v2, 1);
  if ([v3 count] != &dword_0 + 1)
  {
    v4 = 0;
    goto LABEL_13;
  }

  v4 = sub_F2A8(a1, *(a1 + 120), 2);
  if ([v4 count] != &dword_0 + 1)
  {
LABEL_13:
    v6 = 0;
LABEL_14:
    v13 = 4294954514;
    goto LABEL_9;
  }

  v5 = [*(a1 + 8) commandQueue];
  v6 = [v5 commandBuffer];

  if (!v6)
  {
    sub_3748();
    sub_3714();
    FigDebugAssert3();
    sub_3748();
    v13 = FigSignalErrorAtGM();
    v6 = 0;
    goto LABEL_9;
  }

  v7 = [v6 computeCommandEncoder];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  [v7 setComputePipelineState:*(a1 + 32)];
  [v3 objectAtIndexedSubscript:0];
  objc_claimAutoreleasedReturnValue();
  [sub_274C() setTexture:? atIndex:?];

  v9 = [sub_352C() objectAtIndexedSubscript:?];
  [v8 setTexture:v9 atIndex:1];

  v10 = [sub_352C() objectAtIndexedSubscript:?];
  v11 = [v10 width];
  v12 = [sub_352C() objectAtIndexedSubscript:?];
  v17[0] = v11;
  v17[1] = [v12 height];
  v17[2] = 1;
  v15 = vdupq_n_s64(0x20uLL);
  v16 = 1;
  [v8 dispatchThreads:v17 threadsPerThreadgroup:&v15];

  [v8 endEncoding];
  [v6 commit];
  [v6 waitUntilScheduled];

  v13 = 0;
LABEL_9:

  return v13;
}

uint64_t sub_FD24(uint64_t a1)
{
  if (a1)
  {
    do
    {
      v1 = *(a1 + 152);
      a1 = sub_36C8(a1);
      if (v3)
      {
        while (1)
        {
          v5 = 0;
          while (*(v2 + 4 * v5) != v4)
          {
            if (v3 == ++v5)
            {
              goto LABEL_8;
            }
          }

          a1 = sub_36C8(a1);
        }
      }

LABEL_8:
      *(v2 + 4 * v3) = v4;
    }

    while (v3 != 5);
  }

  return 0;
}

uint64_t sub_FEDC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferAssembleResidual" constants:0];
  v3 = *(a1 + 72);
  *(a1 + 72) = v2;

  if (*(a1 + 72))
  {
    v4 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferAssembleSlicesResidual" constants:0];
    v5 = *(a1 + 80);
    *(a1 + 80) = v4;

    if (*(a1 + 80))
    {
      v6 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferReduceLowFreqDiffYUV" constants:0];
      v7 = *(a1 + 88);
      *(a1 + 88) = v6;

      if (*(a1 + 88))
      {
        v8 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferGaussian3RowGatherXY" constants:0];
        v9 = *(a1 + 32);
        *(a1 + 32) = v8;

        if (*(a1 + 32))
        {
          v10 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferGaussian3RowGather" constants:0];
          v11 = *(a1 + 48);
          *(a1 + 48) = v10;

          if (*(a1 + 48))
          {
            v12 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferGaussian3RowGather" constants:0];
            v13 = *(a1 + 48);
            *(a1 + 48) = v12;

            if (*(a1 + 48))
            {
              v14 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferGaussian5RowGather" constants:0];
              v15 = *(a1 + 56);
              *(a1 + 56) = v14;

              if (*(a1 + 56))
              {
                v16 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferGaussian15RowGatherXY" constants:0];
                v17 = *(a1 + 40);
                *(a1 + 40) = v16;

                if (*(a1 + 40))
                {
                  v18 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferGaussian29RowGather" constants:0];
                  v19 = *(a1 + 64);
                  *(a1 + 64) = v18;

                  if (*(a1 + 64))
                  {
                    v20 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferYuv444To420" constants:0];
                    v21 = *(a1 + 16);
                    *(a1 + 16) = v20;

                    if (*(a1 + 16))
                    {
                      v22 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferYuv444SlicesTo420" constants:0];
                      v23 = *(a1 + 24);
                      *(a1 + 24) = v22;

                      if (*(a1 + 24))
                      {
                        v24 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferDownsample" constants:0];
                        v25 = *(a1 + 96);
                        *(a1 + 96) = v24;

                        if (*(a1 + 96))
                        {
                          v26 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferUpsample" constants:0];
                          v27 = *(a1 + 104);
                          *(a1 + 104) = v26;

                          if (*(a1 + 104))
                          {
                            v28 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferComputeLumaBlendingMask" constants:0];
                            v29 = *(a1 + 112);
                            *(a1 + 112) = v28;

                            if (*(a1 + 112))
                            {
                              v30 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferModulateMasks" constants:0];
                              v31 = *(a1 + 120);
                              *(a1 + 120) = v30;

                              if (*(a1 + 120))
                              {
                                v32 = [*(a1 + 8) computePipelineStateFor:@"DeepZoomTransferBlendEnhanced" constants:0];
                                v33 = *(a1 + 128);
                                *(a1 + 128) = v32;

                                if (*(a1 + 128))
                                {
                                  return 0;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_1F20();
  sub_1E7C();
  FigDebugAssert3();
  sub_1F20();
  sub_1EAC();

  return FigSignalErrorAtGM();
}

uint64_t sub_108FC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 4294954516;
  if (a2 && a3)
  {
    if (((a3 | a2) & 0xF) == 0)
    {
      *(a1 + 288) = a2;
      *(a1 + 292) = a3;
      *(a1 + 312) = a2 >> 2;
      *(a1 + 316) = a3 >> 2;
      v9 = objc_alloc_init(MTLTextureDescriptor);
      if (v9)
      {
        v5 = v9;
        [v9 setWidth:a2];
        [sub_29C0() setHeight:?];
        [v5 setPixelFormat:25];
        [v5 setUsage:3];
        v10 = [*(a1 + 8) device];
        v12 = sub_2AA8(v10, v11);
        v13 = *(a1 + 152);
        *(a1 + 152) = v12;

        if (!*(a1 + 152))
        {
          goto LABEL_27;
        }

        v14 = [*(a1 + 8) device];
        v16 = sub_2AA8(v14, v15);
        v17 = *(a1 + 136);
        *(a1 + 136) = v16;

        if (!*(a1 + 136))
        {
          goto LABEL_27;
        }

        v18 = [*(a1 + 8) device];
        v20 = sub_2AA8(v18, v19);
        v21 = *(a1 + 184);
        *(a1 + 184) = v20;

        if (!*(a1 + 184))
        {
          goto LABEL_27;
        }

        v22 = [*(a1 + 8) device];
        v24 = sub_2AA8(v22, v23);
        v25 = *(a1 + 168);
        *(a1 + 168) = v24;

        if (!*(a1 + 168))
        {
          goto LABEL_27;
        }

        v26 = [*(a1 + 8) device];
        v28 = sub_2AA8(v26, v27);
        v29 = *(a1 + 216);
        *(a1 + 216) = v28;

        if (!*(a1 + 216))
        {
          goto LABEL_27;
        }

        v30 = [*(a1 + 8) device];
        v32 = sub_2AA8(v30, v31);
        v33 = *(a1 + 224);
        *(a1 + 224) = v32;

        if (!*(a1 + 224))
        {
          goto LABEL_27;
        }

        [sub_29C0() setWidth:?];
        [v5 setHeight:a2];
        v34 = [*(a1 + 8) device];
        v36 = sub_2A90(v34, v35);
        v37 = *(a1 + 200);
        *(a1 + 200) = v36;

        if (!*(a1 + 200))
        {
          goto LABEL_27;
        }

        [sub_29A8() setWidth:?];
        v38 = (a3 >> 1);
        [sub_29CC() setHeight:?];
        [v5 setPixelFormat:65];
        v39 = [*(a1 + 8) device];
        v41 = sub_2A90(v39, v40);
        v42 = *(a1 + 160);
        *(a1 + 160) = v41;

        if (!*(a1 + 160))
        {
          goto LABEL_27;
        }

        v43 = [*(a1 + 8) device];
        v45 = sub_2A90(v43, v44);
        v46 = *(a1 + 144);
        *(a1 + 144) = v45;

        if (!*(a1 + 144))
        {
          goto LABEL_27;
        }

        v47 = [*(a1 + 8) device];
        v49 = sub_2A90(v47, v48);
        v50 = *(a1 + 192);
        *(a1 + 192) = v49;

        if (!*(a1 + 192))
        {
          goto LABEL_27;
        }

        v51 = [*(a1 + 8) device];
        v53 = sub_2A90(v51, v52);
        v54 = *(a1 + 176);
        *(a1 + 176) = v53;

        if (!*(a1 + 176))
        {
          goto LABEL_27;
        }

        v55 = [*(a1 + 8) device];
        v57 = sub_2A90(v55, v56);
        v58 = *(a1 + 232);
        *(a1 + 232) = v57;

        if (!*(a1 + 232))
        {
          goto LABEL_27;
        }

        [sub_29CC() setWidth:?];
        [sub_29A8() setHeight:?];
        v59 = [*(a1 + 8) device];
        v61 = sub_3A08(v59, v60);
        v62 = *(a1 + 208);
        *(a1 + 208) = v61;

        if (!*(a1 + 208))
        {
          goto LABEL_27;
        }

        [v5 setWidth:*(a1 + 312)];
        [v5 setHeight:*(a1 + 316)];
        [v5 setPixelFormat:25];
        v63 = [*(a1 + 8) device];
        v65 = sub_3A08(v63, v64);
        v66 = *(a1 + 240);
        *(a1 + 240) = v65;

        if (!*(a1 + 240))
        {
          goto LABEL_27;
        }

        v67 = [*(a1 + 8) device];
        v69 = sub_3A08(v67, v68);
        v70 = *(a1 + 248);
        *(a1 + 248) = v69;

        if (!*(a1 + 248))
        {
          goto LABEL_27;
        }

        v71 = [*(a1 + 8) device];
        v73 = sub_3A08(v71, v72);
        v74 = *(a1 + 256);
        *(a1 + 256) = v73;

        if (*(a1 + 256))
        {
          v6 = 0;
        }

        else
        {
LABEL_27:
          sub_20B8();
          sub_28D8();
          FigDebugAssert3();
          sub_20B8();
          sub_1EAC();
          v6 = FigSignalErrorAtGM();
        }

        goto LABEL_23;
      }

      fig_log_get_emitter();
      sub_28D8();
      FigDebugAssert3();
      fig_log_get_emitter();
      sub_1EAC();
      v6 = FigSignalErrorAtGM();
    }

    v5 = 0;
  }

LABEL_23:

  return v6;
}

uint64_t sub_1165C(uint32x2_t *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {
    v10 = *&a1[2];
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = a2;
    [v11 setComputePipelineState:v10];
    [sub_29CC() setTexture:? atIndex:?];

    [sub_29A8() setTexture:? atIndex:?];
    [v11 setTexture:v12 atIndex:2];

    v15 = [v10 threadExecutionWidth];
    v16 = [v10 maxTotalThreadsPerThreadgroup];
    v17 = a1[36];
    v18 = v16 / v15;

    v19 = vshr_n_u32(v17, 1uLL);
    *&v20 = v19.u32[0];
    *(&v20 + 1) = v19.u32[1];
    v23 = v20;
    v24 = 1;
    v22[0] = v15;
    v22[1] = v18;
    v22[2] = 1;
    [v11 dispatchThreads:&v23 threadsPerThreadgroup:v22];
  }

  return 0;
}

uint64_t sub_1177C(uint32x2_t *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {
    v10 = *&a1[3];
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = a2;
    [v11 setComputePipelineState:v10];
    v15 = [v14 objectAtIndexedSubscript:0];
    [sub_29C0() setTexture:? atIndex:?];

    v16 = [v14 objectAtIndexedSubscript:1];
    [sub_29C0() setTexture:? atIndex:?];

    v17 = [v14 objectAtIndexedSubscript:2];

    [sub_29C0() setTexture:? atIndex:?];
    [sub_29A8() setTexture:? atIndex:?];

    [sub_29CC() setTexture:? atIndex:?];
    v18 = [v10 threadExecutionWidth];
    v19 = [v10 maxTotalThreadsPerThreadgroup];
    v20 = a1[36];
    v21 = v19 / v18;

    v22 = vshr_n_u32(v20, 1uLL);
    *&v23 = v22.u32[0];
    *(&v23 + 1) = v22.u32[1];
    v26 = v23;
    v27 = 1;
    v25[0] = v18;
    v25[1] = v21;
    v25[2] = 1;
    [v11 dispatchThreads:&v26 threadsPerThreadgroup:v25];
  }

  return 0;
}

uint64_t sub_118F8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v16 = a4;
  v17 = a5;
  v41 = a6;
  v18 = a7;
  v40 = a8;
  v19 = a9;
  v20 = v19;
  if (a1)
  {
    v45 = 1065353216;
    v21 = sub_127A4(a1, a2, a3, *(a1 + 200), *(a1 + 208), 5uLL, *(a1 + 288), *(a1 + 292), v19);
    if (v21 || (v21 = sub_127A4(a1, *(a1 + 200), *(a1 + 208), v16, v17, 5uLL, *(a1 + 292), *(a1 + 288), v20), v21))
    {
      v38 = v21;
      fig_log_get_emitter();
      sub_3904();
      FigDebugAssert3();
    }

    else
    {
      v22 = v17;
      v23 = v16;
      v24 = v18;
      if ([v41 count] == &dword_0 + 3)
      {
        v25 = *(a1 + 80);
        [v20 setComputePipelineState:v25];
        [v20 setTexture:v23 atIndex:0];
        [v20 setTexture:v22 atIndex:1];
        v26 = [v41 objectAtIndexedSubscript:0];
        v27 = 2;
        [v20 setTexture:v26 atIndex:2];

        v28 = [v41 objectAtIndexedSubscript:1];
        [v20 setTexture:v28 atIndex:3];

        v29 = 6;
        v30 = 5;
        v31 = v41;
        v32 = 4;
      }

      else
      {
        v25 = *(a1 + 72);
        [v20 setComputePipelineState:v25];
        [v20 setTexture:v23 atIndex:0];
        [v20 setTexture:v22 atIndex:1];
        v27 = 0;
        v29 = 4;
        v30 = 3;
        v31 = v41;
        v32 = 2;
      }

      v33 = [v31 objectAtIndexedSubscript:v27];
      [v20 setTexture:v33 atIndex:v32];

      v18 = v24;
      [v20 setTexture:v24 atIndex:v30];
      [v20 setTexture:v40 atIndex:v29];
      [v20 setBytes:&v45 length:4 atIndex:0];
      v34 = [v25 threadExecutionWidth];
      v35 = [v25 maxTotalThreadsPerThreadgroup];
      v36 = *(a1 + 288);
      *&v37 = v36;
      *(&v37 + 1) = HIDWORD(v36);
      v43 = v37;
      v44 = 1;
      v42[0] = v34;
      v42[1] = v35 / v34;
      v42[2] = 1;
      [v20 dispatchThreads:&v43 threadsPerThreadgroup:v42];

      v38 = 0;
      v16 = v23;
      v17 = v22;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

uint64_t sub_11C80(uint32x2_t *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (a1)
  {
    v20 = sub_3928();
    v25 = sub_127A4(v20, a2, a3, v21, v22, 0x1DuLL, v23, v24, v80);
    if (v25)
    {
      goto LABEL_11;
    }

    v26 = a1[25];
    v27 = a1[26];
    v28 = a1[27];
    v29 = a1[29];
    v30 = sub_396C();
    v25 = sub_127A4(v30, v31, v32, v33, v34, 0x1DuLL, v35, v36, v81);
    if (v25)
    {
      goto LABEL_11;
    }

    v37 = sub_3928();
    v25 = sub_127A4(v37, v15, v16, v38, v39, 5uLL, v40, v41, v82);
    if (v25)
    {
      goto LABEL_11;
    }

    v42 = a1[25];
    v43 = a1[26];
    v44 = a1[23];
    v45 = a1[24];
    v46 = sub_396C();
    v25 = sub_127A4(v46, v47, v48, v49, v50, 5uLL, v51, v52, v83);
    if (v25)
    {
      goto LABEL_11;
    }

    v53 = a1[23];
    v54 = a1[24];
    v55 = sub_3928();
    v25 = sub_127A4(v55, v56, v57, v58, v59, 0x1DuLL, v60, v61, v84);
    if (v25 || (v62 = a1[25], v63 = a1[26], v64 = a1[23], v65 = a1[24], v66 = sub_396C(), v25 = sub_127A4(v66, v67, v68, v69, v70, 0x1DuLL, v71, v72, v85), v25))
    {
LABEL_11:
      v78 = v25;
      fig_log_get_emitter();
      sub_38EC();
      FigDebugAssert3();
      goto LABEL_10;
    }

    v73 = *&a1[11];
    [v19 setComputePipelineState:v73];
    [v19 setTexture:*&a1[27] atIndex:0];
    [v19 setTexture:*&a1[23] atIndex:1];
    [v19 setTexture:v15 atIndex:2];
    [v19 setTexture:v17 atIndex:3];
    [v19 setTexture:*&a1[29] atIndex:4];
    [v19 setTexture:*&a1[24] atIndex:5];
    [v19 setTexture:v16 atIndex:6];
    [v19 setTexture:v18 atIndex:7];
    v74 = [v73 threadExecutionWidth];
    v75 = [v73 maxTotalThreadsPerThreadgroup];
    v76 = vshr_n_u32(a1[36], 1uLL);
    *&v77 = v76.u32[0];
    *(&v77 + 1) = v76.u32[1];
    v87 = v77;
    v88 = 1;
    v86[0] = v74;
    v86[1] = v75 / v74;
    v86[2] = 1;
    [v19 dispatchThreads:&v87 threadsPerThreadgroup:v86];
  }

  v78 = 0;
LABEL_10:

  return v78;
}

uint64_t sub_12084(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    *(a1 + 296) = *(a1 + 312);
    v10 = *(a1 + 96);
    sub_3A20();
    v11 = sub_3980();
    sub_200C(v11, v12, *(a1 + 216));
    sub_39A8();
    [v10 threadExecutionWidth];
    sub_3A38();
    *&v13 = sub_3940();
    sub_3950(v14, v15, v13);
    v16 = *(a1 + 96);

    [v9 setComputePipelineState:v16];
    v17 = [sub_399C() setTexture:? atIndex:?];
    sub_200C(v17, v18, *(a1 + 224));
    sub_39A8();
    [v16 threadExecutionWidth];
    [v16 maxTotalThreadsPerThreadgroup];
    *&v19 = sub_3940();
    sub_3950(v20, v21, v19);
    v22 = *(a1 + 112);

    v23 = sub_3A20();
    v25 = sub_20A0(v23, v24, *(a1 + 216));
    sub_200C(v25, v26, *(a1 + 240));
    [v22 threadExecutionWidth];
    sub_3A38();
    *&v27 = sub_3940();
    v30 = sub_3950(v28, v29, v27);
    v32 = sub_39C8(v30, *(a1 + 240), *(a1 + 200), v31, *(a1 + 312), *(a1 + 316));
    if (v32)
    {
      goto LABEL_9;
    }

    v32 = sub_39C8(v32, *(a1 + 200), *(a1 + 240), v33, *(a1 + 316), *(a1 + 312));
    if (v32)
    {
      goto LABEL_9;
    }

    v34 = *(a1 + 112);

    v35 = [v9 setComputePipelineState:v34];
    v37 = sub_20A0(v35, v36, *(a1 + 224));
    sub_200C(v37, v38, *(a1 + 248));
    [v34 threadExecutionWidth];
    [v34 maxTotalThreadsPerThreadgroup];
    *&v39 = sub_3940();
    sub_3950(v40, v41, v39);
    v42 = *(a1 + 120);

    v43 = [v9 setComputePipelineState:v42];
    v45 = sub_20A0(v43, v44, *(a1 + 240));
    sub_200C(v45, v46, *(a1 + 248));
    [v9 setTexture:*(a1 + 256) atIndex:2];
    [v42 threadExecutionWidth];
    [v42 maxTotalThreadsPerThreadgroup];
    *&v47 = sub_3940();
    sub_3950(v48, v49, v47);
    *(a1 + 304) = *(a1 + 288);
    v22 = *(a1 + 104);

    v50 = sub_3A20();
    v52 = sub_20A0(v50, v51, *(a1 + 256));
    sub_200C(v52, v53, *(a1 + 216));
    [v22 threadExecutionWidth];
    v54 = sub_3A38();
    v55 = *(a1 + 288);
    v57 = sub_3950(v54, v56);
    v32 = sub_39E8(v57, *(a1 + 216), *(a1 + 200), v58, *(a1 + 288), *(a1 + 292));
    if (v32 || (v32 = sub_39E8(v32, *(a1 + 200), *(a1 + 216), v59, *(a1 + 292), *(a1 + 288)), v32))
    {
LABEL_9:
      v64 = v32;
      fig_log_get_emitter();
      sub_3918();
      FigDebugAssert3();
    }

    else
    {
      v60 = *(a1 + 128);

      [v9 setComputePipelineState:v60];
      [v9 setImageblockWidth:32 height:32];
      sub_3980();
      [sub_399C() setTexture:? atIndex:?];
      [v9 setTexture:*(a1 + 216) atIndex:2];
      v61 = [sub_399C() setTexture:? atIndex:?];
      v62 = *(a1 + 288);
      sub_3950(v61, v63);
      v64 = 0;
      v22 = v60;
    }
  }

  else
  {
    v64 = 0;
  }

  return v64;
}

void sub_12570(void *a1)
{
  if (a1)
  {
    v2 = a1[17];
    a1[17] = 0;

    v3 = a1[18];
    a1[18] = 0;

    v4 = a1[19];
    a1[19] = 0;

    v5 = a1[20];
    a1[20] = 0;

    v6 = a1[25];
    a1[25] = 0;

    v7 = a1[26];
    a1[26] = 0;

    v8 = a1[27];
    a1[27] = 0;

    v9 = a1[28];
    a1[28] = 0;

    v10 = a1[29];
    a1[29] = 0;

    v11 = a1[23];
    a1[23] = 0;

    v12 = a1[24];
    a1[24] = 0;

    v13 = a1[21];
    a1[21] = 0;

    v14 = a1[22];
    a1[22] = 0;

    v15 = a1[30];
    a1[30] = 0;

    v16 = a1[31];
    a1[31] = 0;

    v17 = a1[32];
    a1[32] = 0;
  }
}

uint64_t sub_12664(uint64_t a1, void *a2, void *a3, unint64_t a4, unsigned int a5, unsigned int a6, int a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a8;
  if (!a1)
  {
    goto LABEL_15;
  }

  if (a7)
  {
    switch(a4)
    {
      case 3:
        v18 = 48;
        goto LABEL_14;
      case 0x1D:
        v18 = 64;
        goto LABEL_14;
      case 5:
        v18 = 56;
LABEL_14:
        v20 = *(a1 + v18);
        sub_3A20();
        sub_3980();
        [sub_399C() setTexture:? atIndex:?];
        [v20 threadExecutionWidth];
        v23[0] = a5 >> 1;
        v23[1] = a6 >> 1;
        v23[2] = 1;
        v22[0] = a4;
        v22[1] = sub_3A38() / a4;
        v22[2] = 1;
        [v17 dispatchThreads:v23 threadsPerThreadgroup:v22];

LABEL_15:
        v19 = 0;
        goto LABEL_16;
    }
  }

  else
  {
    if (a4 == 15)
    {
      v18 = 40;
      goto LABEL_14;
    }

    if (a4 == 3)
    {
      v18 = 32;
      goto LABEL_14;
    }
  }

  v19 = 4294954516;
LABEL_16:

  return v19;
}

uint64_t sub_127A4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unint64_t a6, unsigned int a7, unsigned int a8, void *a9)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a9;
  if (a1)
  {
    v21 = sub_12664(a1, v16, v18, a6, a7, a8, 1, v20);
    if (!v21)
    {
      v21 = sub_12664(a1, v17, v19, (a6 >> 1) + 1, a7 >> 1, a8 >> 1, 0, v20);
    }

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}