@interface TXRDataScaler
+ (id)newImageFromSourceImage:(id)a3 bufferAllocattor:(id)a4 filter:(unint64_t)a5 error:(id *)a6;
+ (id)newImageFromSourceImage:(id)a3 scaledDimensions:(id)a4 bufferAllocattor:(unint64_t)a5 filter:(id *)a6 error:;
@end

@implementation TXRDataScaler

+ (id)newImageFromSourceImage:(id)a3 bufferAllocattor:(id)a4 filter:(unint64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  [v11 dimensions];
  v12.i32[0] = 0;
  v14 = vshrq_n_u32(v13, 1uLL);
  v15.i32[0] = 1;
  v15.i32[1] = v14.i32[1];
  v15.i64[1] = v14.u32[2] | 0x100000000;
  v16 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v14, v12), 0), v15, v14);
  v17.i64[0] = v16.u32[0] | 0x100000000;
  v17.i64[1] = v16.u32[2] | 0x100000000;
  v16.i32[3] = v14.i32[3];
  v18 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(vdupq_lane_s32(*v16.i8, 1), v12), 0), v17, v16);
  v16.i64[1] = 0x100000001;
  v16.i64[0] = v18.i64[0];
  v19 = [a1 newImageFromSourceImage:v11 scaledDimensions:v10 bufferAllocattor:a5 filter:a6 error:{*vbslq_s8(vdupq_lane_s32(*&vceqq_s32(vdupq_laneq_s32(v18, 2), v12), 0), v16, v18).i64}];

  return v19;
}

+ (id)newImageFromSourceImage:(id)a3 scaledDimensions:(id)a4 bufferAllocattor:(unint64_t)a5 filter:(id *)a6 error:
{
  v23 = v6;
  v10 = a3;
  v11 = a4;
  [v10 dimensions];
  v13 = v12;
  v14 = v23;
  if (v13 >= v23.n128_u32[0] && ([v10 dimensions], v16 = v15, v14 = v23, v16 >= v23.n128_u32[1]))
  {
    [v10 dimensions];
    v19 = v18;
    v14 = v23;
    v17 = v19 < v23.n128_u32[2];
  }

  else
  {
    v17 = 1;
  }

  if (a5 == 2 && v17)
  {
    v20 = 0;
  }

  else
  {
    v20 = a5;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      [TXRDataScaler newImageFromSourceImage:v10 scaledDimensions:v11 bufferAllocattor:? filter:? error:?];
    }

    if (a6)
    {
      _newTXRErrorWithCodeAndErrorString(0, @"Unsupported filter");
      *a6 = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = newScaledImageWithLancosFilter(v10, v11, v20, a6, v14);
  }

  return v21;
}

+ (void)newImageFromSourceImage:(void *)a1 scaledDimensions:(void *)a2 bufferAllocattor:filter:error:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  __assert_rtn("newScaledImageWithBoxFilter", "TXRDataScaler.m", 382, "!TODO:Box filter needs implementation");
}

@end