@interface MaskToRoi
- (MaskToRoi)initWithMetalToolBox:(id)a3;
- (id)convertInternalBBoxes:(int64_t)a3;
- (id)convertInternalBBoxesToROI:(int64_t)a3;
- (id)getBBoxesUsingGraphTraversalFrom:(__CVBuffer *)a3 pixValThreshold:(float)a4 bboxSizeThreshold:(float)a5 scaleFactor:(int)a6 roi:(BOOL)a7 returnAsDetectedROI:;
- (void)convertPackedMaskToRegular:(__CVBuffer *)a3 output:(__CVBuffer *)a4;
- (void)dealloc;
@end

@implementation MaskToRoi

- (MaskToRoi)initWithMetalToolBox:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MaskToRoi;
  v5 = [(MaskToRoi *)&v12 init];
  if (!v5)
  {
    [MaskToRoi initWithMetalToolBox:];
LABEL_12:
    v10 = 0;
    goto LABEL_8;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(GGMMetalToolBox);
  }

  metalToolbox = v5->_metalToolbox;
  v5->_metalToolbox = v6;

  *v5->_neighbors = -1;
  *&v5->_neighbors[8] = 0xFFFFFFFFLL;
  *&v5->_neighbors[16] = 0xFFFFFFFF00000000;
  *&v5->_neighbors[24] = 1;
  *&v5->_neighbors[32] = 0x100000000;
  *&v5->_neighbors[40] = 0x100000001;
  *&v5->_neighbors[48] = 0x1FFFFFFFFLL;
  *&v5->_neighbors[56] = 0xFFFFFFFF00000001;
  *&v5->_width = xmmword_437D0;
  v8 = malloc_type_malloc(0x1CF3400uLL, 0x100004000313F17uLL);
  *v5->_connectedPixelsQueue = v8;
  if (!v8)
  {
    [MaskToRoi initWithMetalToolBox:];
    goto LABEL_12;
  }

  v9 = malloc_type_malloc(0x4000uLL, 0x1000040451B5BE8uLL);
  *v5->_bboxList = v9;
  if (!v9)
  {
    [MaskToRoi initWithMetalToolBox:];
    goto LABEL_12;
  }

  v10 = v5;
LABEL_8:

  return v10;
}

- (void)dealloc
{
  integralSumPixelBuffer = self->_integralSumPixelBuffer;
  if (integralSumPixelBuffer)
  {
    CFRelease(integralSumPixelBuffer);
  }

  free(*self->_connectedPixelsQueue);
  free(*self->_bboxList);
  v4.receiver = self;
  v4.super_class = MaskToRoi;
  [(MaskToRoi *)&v4 dealloc];
}

- (id)getBBoxesUsingGraphTraversalFrom:(__CVBuffer *)a3 pixValThreshold:(float)a4 bboxSizeThreshold:(float)a5 scaleFactor:(int)a6 roi:(BOOL)a7 returnAsDetectedROI:
{
  v54 = v7;
  v14 = [[PixelMemory alloc] initWithCvPixelBuffer:a3 skipClamp:0 readOnly:0];
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v17 = [(PixelMemory *)v14 stride];
  v18 = [(PixelMemory *)v14 bytePerPixel];
  v19 = [(PixelMemory *)v14 pMemory];
  if (v54.i32[0] <= v54.i32[2])
  {
    v21 = 0;
    v22.i64[0] = Width;
    v22.i64[1] = Height;
    *v22.i8 = vcvt_f32_f64(vcvtq_f64_u64(v22));
    __asm { FMOV            V3.2S, #-1.0 }

    v28 = vadd_f32(*v22.i8, _D3);
    v29 = vadd_f32(vmul_n_f32(*v22.i8, a6), _D3);
    v30 = v54.i32[0];
    v31 = vextq_s8(v54, v54, 8uLL).u64[0];
    do
    {
      if (v54.i32[1] <= v54.i32[3])
      {
        v32 = &v19[v30 * v18];
        v33 = v30 - 1;
        v34 = v30++;
        v35 = v33;
        v36 = v54.i32[1];
        do
        {
          v20.i8[0] = v32[v36 * v17];
          *v20.i32 = v20.u32[0];
          if (*v20.i32 <= a4)
          {
            ++v36;
          }

          else
          {
            v37 = 0;
            v38 = v36;
            **self->_connectedPixelsQueue = __PAIR64__(v36, v34);
            v32[v36 * v17] = 0;
            ++v36;
            v39.i32[0] = v35;
            v39.i32[1] = v38 - 1;
            v40 = __PAIR64__(v36, v30);
            v41 = 1;
            do
            {
              v42 = 0;
              v43 = *(*self->_connectedPixelsQueue + 8 * v37);
              v39 = vbsl_s8(vcgt_s32(v43, v39), v39, vadd_s32(v43, -1));
              v44 = vadd_s32(v43, 0x100000001);
              do
              {
                v45 = vadd_s32(*&self->_neighbors[v42], v43);
                *v46.i8 = v45;
                v46.u64[1] = v28;
                v47 = vmovn_s32(vcgtq_s32(vzip1q_s32(v54, v46), vzip2q_s32(vextq_s8(v46, v46, 8uLL), v54)));
                v47.i16[0] = vmaxv_u16(v47);
                if ((v47.i8[0] & 1) == 0)
                {
                  v48 = &v19[v45.i32[0] * v18];
                  v47.i8[0] = v48[v45.i32[1] * v17];
                  if (v47.u32[0] > a4)
                  {
                    *(*self->_connectedPixelsQueue + 8 * v41++) = v45;
                    v48[v45.i32[1] * v17] = 0;
                  }
                }

                v42 += 8;
              }

              while (v42 != 64);
              ++v37;
              v40 = vbsl_s8(vcgt_s32(v40, v43), v40, v44);
            }

            while (v41 > v37);
            *v20.i8 = vcvt_s32_f32(vmul_f32(v29, vdiv_f32(vcvt_f32_s32(vcvt_s32_f32(vadd_f32(vcvt_f32_s32(vmax_s32(*v54.i8, v39)), 0x3F0000003F000000))), v28)));
            v49 = vsub_s32(vcvt_s32_f32(vmul_f32(v29, vdiv_f32(vcvt_f32_s32(vcvt_s32_f32(vadd_f32(vcvt_f32_s32(vmin_s32(v31, v40)), 0x3F0000003F000000))), v28))), *v20.i8);
            v50 = vcvt_f32_s32(v49);
            v51 = v50.f32[0] <= a5 || v50.f32[1] <= a5;
            if (!v51 && v21 <= 1023)
            {
              v20.u64[1] = v49;
              v20 = vcvtq_f32_s32(v20);
              *(*self->_bboxList + 16 * v21++) = v20;
            }
          }
        }

        while (v36 != v54.i32[3] + 1);
      }

      else
      {
        ++v30;
      }
    }

    while (v30 != v54.i32[2] + 1);
  }

  else
  {
    v21 = 0;
  }

  if (a7)
  {
    [(MaskToRoi *)self convertInternalBBoxes:v21];
  }

  else
  {
    [(MaskToRoi *)self convertInternalBBoxesToROI:v21];
  }
  v52 = ;

  return v52;
}

- (id)convertInternalBBoxesToROI:(int64_t)a3
{
  v5 = +[NSMutableArray array];
  if (a3 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [[ROI alloc] initWithBbox:*(*self->_bboxList + 16 * v6)];
      [v5 addObject:v7];

      ++v6;
    }

    while (a3 != v6);
  }

  return v5;
}

- (id)convertInternalBBoxes:(int64_t)a3
{
  v5 = +[NSMutableArray array];
  if (a3 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [[DetectedROI alloc] initWithTrackId:0 trackedCnt:10 andRoi:COERCE_FLOAT(*(*self->_bboxList + 16 * v6)), COERCE_FLOAT(HIDWORD(*(*self->_bboxList + 16 * v6))), COERCE_FLOAT(*(*self->_bboxList + 16 * v6 + 8)), COERCE_FLOAT(HIDWORD(*(*self->_bboxList + 16 * v6)))];
      [v5 addObject:v7];

      ++v6;
    }

    while (a3 != v6);
  }

  return v5;
}

- (void)convertPackedMaskToRegular:(__CVBuffer *)a3 output:(__CVBuffer *)a4
{
  v22 = [[PixelMemory alloc] initWithCvPixelBuffer:a3 skipClamp:0 readOnly:1];
  v5 = [[PixelMemory alloc] initWithCvPixelBuffer:a4];
  v6 = [(PixelMemory *)v5 pMemory];
  v7 = [(PixelMemory *)v22 pMemory];
  v8 = [(PixelMemory *)v5 width];
  v9 = [(PixelMemory *)v5 width];
  if ([(PixelMemory *)v5 height]>= 1)
  {
    v10 = 0;
    v11 = v8 >> 3;
    v21 = v9 & 7;
    do
    {
      v12 = [(PixelMemory *)v5 stride]* v10;
      if (v11 < 1)
      {
        v18 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = [(PixelMemory *)v22 stride];
          v16 = v14 + 8;
          v17 = vdupq_n_s32(v7[v13 + v10 * v15]);
          *&v6[v12 + v14] = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v17, xmmword_437E0)), vceqzq_s32(vandq_s8(v17, xmmword_437F0)))));
          ++v13;
          v14 += 8;
        }

        while (v11 != v13);
        v18 = v16;
      }

      if (v21)
      {
        v19 = 0;
        v20 = &v6[v18 + v12];
        do
        {
          v20[v19] = v7[v11] >> v19 << 31 >> 31;
          ++v19;
        }

        while (v21 != v19);
      }

      ++v10;
    }

    while (v10 < [(PixelMemory *)v5 height]);
  }
}

- (uint64_t)initWithMetalToolBox:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)initWithMetalToolBox:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)initWithMetalToolBox:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)getLSBBoxesUsingGraphTraversalFrom:roi:pixValThreshold:bboxSizeThreshold:scaleFactorInv:validWidth:validHeight:lightSourceBBox:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)extractRoiByGraphTraversalInput:bboxSizeThreshold:scaleFactorInv:validWidth:validHeight:lightSourceBBox:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)extractRoiByGraphTraversalInput:bboxSizeThreshold:scaleFactorInv:validWidth:validHeight:lightSourceBBox:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end