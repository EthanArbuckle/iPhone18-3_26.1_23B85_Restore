@interface TXRDataScaler
+ (id)newImageFromSourceImage:(id)image bufferAllocattor:(id)allocattor filter:(unint64_t)filter error:(id *)error;
+ (id)newImageFromSourceImage:(id)image scaledDimensions:(id)dimensions bufferAllocattor:(unint64_t)allocattor filter:(id *)filter error:;
@end

@implementation TXRDataScaler

+ (id)newImageFromSourceImage:(id)image bufferAllocattor:(id)allocattor filter:(unint64_t)filter error:(id *)error
{
  allocattorCopy = allocattor;
  imageCopy = image;
  [imageCopy dimensions];
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
  v19 = [self newImageFromSourceImage:imageCopy scaledDimensions:allocattorCopy bufferAllocattor:filter filter:error error:{*vbslq_s8(vdupq_lane_s32(*&vceqq_s32(vdupq_laneq_s32(v18, 2), v12), 0), v16, v18).i64}];

  return v19;
}

+ (id)newImageFromSourceImage:(id)image scaledDimensions:(id)dimensions bufferAllocattor:(unint64_t)allocattor filter:(id *)filter error:
{
  v23 = v6;
  imageCopy = image;
  dimensionsCopy = dimensions;
  [imageCopy dimensions];
  v13 = v12;
  v14 = v23;
  if (v13 >= v23.n128_u32[0] && ([imageCopy dimensions], v16 = v15, v14 = v23, v16 >= v23.n128_u32[1]))
  {
    [imageCopy dimensions];
    v19 = v18;
    v14 = v23;
    v17 = v19 < v23.n128_u32[2];
  }

  else
  {
    v17 = 1;
  }

  if (allocattor == 2 && v17)
  {
    allocattorCopy = 0;
  }

  else
  {
    allocattorCopy = allocattor;
  }

  if (allocattorCopy > 1)
  {
    if (allocattorCopy == 2)
    {
      [TXRDataScaler newImageFromSourceImage:imageCopy scaledDimensions:dimensionsCopy bufferAllocattor:? filter:? error:?];
    }

    if (filter)
    {
      _newTXRErrorWithCodeAndErrorString(0, @"Unsupported filter");
      *filter = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = newScaledImageWithLancosFilter(imageCopy, dimensionsCopy, allocattorCopy, filter, v14);
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