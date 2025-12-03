@interface CalcHomography
- (CalcHomography)initWithMetalToolBox:(id)box;
- (__n128)cascadeHomographyMatricesArray:(void *)array;
- (_homographyData)_ispHomographyFromISPInfoFunc:(id *)func;
- (_homographyData)ispHomographyFromMetaInfo:(id)info;
- (double)_scaleHomography:(simd_float3x3)homography scaleX:(float)x scaleY:(float)y;
- (id)_normalizeHomography:(double)homography width:(double)width height:(double)height;
@end

@implementation CalcHomography

- (CalcHomography)initWithMetalToolBox:(id)box
{
  boxCopy = box;
  v9.receiver = self;
  v9.super_class = CalcHomography;
  v5 = [(CalcHomography *)&v9 init];
  if (v5)
  {
    if (boxCopy)
    {
      v6 = boxCopy;
    }

    else
    {
      v6 = objc_alloc_init(GGMMetalToolBox);
    }

    metalToolbox = v5->_metalToolbox;
    v5->_metalToolbox = v6;
  }

  return v5;
}

- (id)_normalizeHomography:(double)homography width:(double)width height:(double)height
{
  *&height = a8;
  *&a6 = a9;
  return [self _scaleHomography:a2 scaleX:homography scaleY:{width, height, a6}];
}

- (double)_scaleHomography:(simd_float3x3)homography scaleX:(float)x scaleY:(float)y
{
  v3 = homography.columns[1];
  v4 = homography.columns[0];
  v5 = 0;
  homography.columns[0].i32[1] = 0;
  homography.columns[0].i64[1] = 0;
  homography.columns[0].f32[0] = 1.0 / x;
  homography.columns[1].i32[0] = 0;
  homography.columns[1].i64[1] = 0;
  homography.columns[1].f32[1] = 1.0 / y;
  v11.columns[0] = v4;
  v11.columns[1] = v3;
  v11.columns[2] = homography.columns[2];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  do
  {
    *(&v12 + v5 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(homography.columns[0], COERCE_FLOAT(*&v11.columns[v5])), homography.columns[1], *v11.columns[v5].f32, 1), xmmword_2EB00, v11.columns[v5], 2);
    ++v5;
  }

  while (v5 != 3);
  homography.columns[2] = xmmword_2EB00;
  v9 = v13;
  v10 = v12;
  v8 = v14;
  v15 = __invert_f3(homography);
  v6 = 0;
  v11 = v15;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  do
  {
    *(&v12 + v6 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*&v11.columns[v6])), v9, *v11.columns[v6].f32, 1), v8, v11.columns[v6], 2);
    ++v6;
  }

  while (v6 != 3);
  return *v12.i64;
}

- (_homographyData)_ispHomographyFromISPInfoFunc:(id *)func
{
  v6 = v3;
  v7 = 0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  do
  {
    v8 = v7 / 3u;
    if (v8 >= 2)
    {
      v8 = 2;
    }

    *((&v33 + v7 % 3u) | (4 * v8)) = func->var0.var0[v7];
    ++v7;
  }

  while (v7 != 9);
  v9 = 0;
  v10.i32[0] = 0;
  v10.i32[3] = 0;
  *(v10.i64 + 4) = LODWORD(func->var3.var3[4]);
  var2 = func->var0.var2;
  __asm { FMOV            V3.4S, #1.0 }

  v17.i64[1] = _Q3.i64[1];
  v17.i32[0] = LODWORD(func->var3.var3[2]);
  v4.i32[0] = LODWORD(func->var3.var3[0]);
  v17.i32[1] = LODWORD(func->var3.var3[5]);
  v5.i32[0] = LODWORD(func->var3.var1[0]);
  v18.i32[0] = 0;
  v18.i32[3] = 0;
  *(v18.i64 + 4) = LODWORD(func->var3.var1[4]);
  _Q3.i32[0] = LODWORD(func->var3.var1[2]);
  _Q3.i32[1] = LODWORD(func->var3.var1[5]);
  v36.columns[0] = v5;
  v36.columns[1] = v18;
  v36.columns[2] = _Q3;
  memset(&v37, 0, sizeof(v37));
  do
  {
    v37.columns[v9] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*&v36.columns[v9])), v10, *v36.columns[v9].f32, 1), v17, v36.columns[v9], 2);
    ++v9;
  }

  while (v9 != 3);
  v31 = v37.columns[1];
  v32 = v37.columns[0];
  v30 = v37.columns[2];
  v39 = __invert_f3(v37);
  v19 = 0;
  v39.columns[0].i32[3] = 0;
  v39.columns[1].i32[3] = 0;
  v39.columns[2].i32[3] = 0;
  v20 = v33;
  v21 = v34;
  v22 = v35;
  v36 = v39;
  memset(&v37, 0, sizeof(v37));
  do
  {
    v37.columns[v19] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(*&v36.columns[v19])), v21, *v36.columns[v19].f32, 1), v22, v36.columns[v19], 2);
    ++v19;
  }

  while (v19 != 3);
  v23 = 0;
  v24 = v37.columns[0];
  v25 = v37.columns[1];
  v24.i32[3] = 0;
  v25.i32[3] = 0;
  v26 = v37.columns[2];
  v26.i32[3] = 0;
  v36.columns[0] = v24;
  v36.columns[1] = v25;
  v36.columns[2] = v26;
  memset(&v37, 0, sizeof(v37));
  do
  {
    v37.columns[v23] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*&v36.columns[v23])), v31, *v36.columns[v23].f32, 1), v30, v36.columns[v23], 2);
    ++v23;
  }

  while (v23 != 3);
  v40 = v37;
  *(v6 + 48) = var2;
  v41 = __invert_f3(v40);
  v27 = vdupq_laneq_s32(v41.columns[0], 2);
  v28 = vzip1q_s32(v41.columns[0], v41.columns[1]).u64[0];
  v29 = vtrn2q_s32(v41.columns[0], v41.columns[1]).u64[0];
  *(v6 + 8) = v41.columns[2].i32[0];
  *(v6 + 24) = v41.columns[2].i32[1];
  *v6 = v28;
  *(v6 + 16) = v29;
  *(v6 + 40) = v41.columns[2].i32[2];
  *(v6 + 32) = vzip1q_s32(v27, vdupq_laneq_s32(v41.columns[1], 2)).u64[0];
  return v29;
}

- (_homographyData)ispHomographyFromMetaInfo:(id)info
{
  v5 = v3;
  infoCopy = info;
  v5[3].i64[0] = 0;
  v5[3].i64[1] = 0;
  v7 = matrix_identity_float3x3.columns[1];
  *v5 = matrix_identity_float3x3.columns[0];
  v5[1] = v7;
  v5[2] = matrix_identity_float3x3.columns[2];
  memset(v14, 0, 512);
  v13 = 0;
  v8 = [infoCopy objectForKeyedSubscript:{@"IspScalerInfo", 0}];
  if (v8)
  {
    v9 = v8;
    if ([v8 length] == &stru_1F8.reserved2)
    {
      [v9 getBytes:v14 length:576];
      v10 = [infoCopy objectForKeyedSubscript:@"MetaConfig"];

      if (v10)
      {
        [v10 getBytes:&v12 length:16];
        if (v13)
        {
          [(CalcHomography *)self _ispHomographyFromISPInfoFunc:v14];
        }

        else
        {
          sub_253A0(v10);
        }
      }

      else
      {
        sub_25420();
      }
    }

    else
    {
      sub_25310(v9);
    }
  }

  else
  {
    sub_25498();
  }

  return v11;
}

- (__n128)cascadeHomographyMatricesArray:(void *)array
{
  arrayCopy = array;
  v9 = matrix_identity_float3x3.columns[1];
  v10 = matrix_identity_float3x3.columns[0];
  v8 = matrix_identity_float3x3.columns[2];
  v11 = matrix_identity_float3x3.columns[0];
  v12 = v9;
  v13 = matrix_identity_float3x3.columns[2];
  if ([arrayCopy count])
  {
    if ([arrayCopy count])
    {
      v4 = 0;
      do
      {
        v5 = [arrayCopy objectAtIndexedSubscript:v4];
        [v5 getBytes:&v11 length:48];

        v6 = 0;
        v14[0] = v11;
        v14[1] = v12;
        v14[2] = v13;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        do
        {
          *(&v15 + v6 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v14[v6])), v9, *&v14[v6], 1), v8, v14[v6], 2);
          ++v6;
        }

        while (v6 != 3);
        v9 = v16;
        v10 = v15;
        ++v4;
        v8 = v17;
      }

      while ([arrayCopy count] > v4);
    }
  }

  else
  {
    sub_25510();
  }

  return v10;
}

@end