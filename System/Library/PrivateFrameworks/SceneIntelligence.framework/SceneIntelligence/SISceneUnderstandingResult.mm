@interface SISceneUnderstandingResult
+ (CGSize)outputDimensions;
- (CGSize)resolution;
- (SISceneUnderstandingResult)initWithModel:(id)model;
- (_SITensorDim)labelTensorDimensions;
- (_SITensorDim)normalTensorDimensions;
- (_SITensorDim)probabilitiesTensorDimensions;
- (int64_t)writeLabels:(__CVBuffer *)labels;
- (int64_t)writeNormals:(__CVBuffer *)normals orientation:(int64_t)orientation;
- (int64_t)writeProbabilities:(__CVBuffer *)probabilities;
- (void)dealloc;
@end

@implementation SISceneUnderstandingResult

+ (CGSize)outputDimensions
{
  v2 = 256.0;
  v3 = 192.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (SISceneUnderstandingResult)initWithModel:(id)model
{
  v22 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = SISceneUnderstandingResult;
  v5 = [(SISceneUnderstandingResult *)&v15 init];
  if (v5)
  {
    v6 = 0uLL;
    v7 = 0uLL;
    if (modelCopy)
    {
      [modelCopy labelTensorDimensions];
      v7 = 0u;
      v6 = 0u;
    }

    v20 = vextq_s8(v6, v6, 8uLL);
    v21 = vextq_s8(v7, v7, 8uLL);
    espresso_buffer_pack_tensor_shape();
    v5->_labelsTensor.data = malloc_type_malloc(0, 0x100004052888210uLL);
    v5->_labelsTensor.storage_type = 65568;
    v8 = 0uLL;
    v9 = 0uLL;
    if (modelCopy)
    {
      [modelCopy normalTensorDimensions];
      v9 = 0u;
      v8 = 0u;
    }

    v18 = vextq_s8(v8, v8, 8uLL);
    v19 = vextq_s8(v9, v9, 8uLL);
    espresso_buffer_pack_tensor_shape();
    v5->_normalsTensor.data = malloc_type_malloc(0, 0x100004052888210uLL);
    v5->_normalsTensor.storage_type = 65568;
    v10 = 0uLL;
    v11 = 0uLL;
    if (modelCopy)
    {
      [modelCopy probabilitiesTensorDimensions];
      v11 = 0u;
      v10 = 0u;
    }

    v16 = vextq_s8(v10, v10, 8uLL);
    v17 = vextq_s8(v11, v11, 8uLL);
    espresso_buffer_pack_tensor_shape();
    v5->_probabilitiesTensor.data = malloc_type_malloc(0, 0x100004052888210uLL);
    v5->_probabilitiesTensor.storage_type = 65568;
    v5->_resolution = vcvtq_f64_u64(0);
    v12 = v5;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  free(self->_labelsTensor.data);
  free(self->_normalsTensor.data);
  free(self->_probabilitiesTensor.data);
  v3.receiver = self;
  v3.super_class = SISceneUnderstandingResult;
  [(SISceneUnderstandingResult *)&v3 dealloc];
}

- (int64_t)writeNormals:(__CVBuffer *)normals orientation:(int64_t)orientation
{
  v37 = *MEMORY[0x277D85DE8];
  width = self->_normalsTensor.width;
  height = self->_normalsTensor.height;
  stride_channels = self->_normalsTensor.stride_channels;
  kdebug_trace();
  IOSurface = CVPixelBufferGetIOSurface(normals);
  IOSurfaceLock(IOSurface, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(IOSurface);
  buffer = IOSurface;
  BytesPerRow = IOSurfaceGetBytesPerRow(IOSurface);
  v30 = height;
  if (height)
  {
    v14 = 0;
    data = self->_normalsTensor.data;
    v16 = &data[4 * stride_channels];
    v17 = &data[8 * stride_channels];
    v18 = BaseAddress + 8;
    v28 = 4 * (BytesPerRow >> 2);
    v29 = 4 * width;
    while (1)
    {
      v31 = v14;
      if (width)
      {
        break;
      }

LABEL_18:
      v14 = v31 + 1;
      data += v29;
      v16 += v29;
      v17 += v29;
      v18 = (v18 + v28);
      if (v31 + 1 == v30)
      {
        goto LABEL_19;
      }
    }

    v19 = 0;
    v20 = v18;
    while (1)
    {
      v13.i32[0] = *&data[4 * v19];
      v13.i32[1] = *&v16[4 * v19];
      v13.i32[2] = *&v17[4 * v19];
      v21 = vnegq_f32(v13);
      v13 = vmulq_f32(v13, v13);
      *&v22 = v13.f32[2] + vaddv_f32(*v13.f32);
      *v13.f32 = vrsqrte_f32(v22);
      *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v22, vmul_f32(*v13.f32, *v13.f32)));
      *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v22, vmul_f32(*v13.f32, *v13.f32)));
      v23 = vmulq_n_f32(v21, v13.f32[0]);
      if (orientation > 1)
      {
        break;
      }

      if (orientation)
      {
        if (orientation != 1)
        {
          goto LABEL_12;
        }

        v13 = vdupq_lane_s32(*v23.f32, 1);
        v13.f32[1] = -v23.f32[0];
LABEL_16:
        v13.i32[2] = v23.i32[2];
        v23 = v13;
      }

LABEL_17:
      *(v20 - 1) = v23.i64[0];
      *v20 = v23.i32[2];
      v20[1] = 1065353216;
      ++v19;
      v20 += 4;
      if (width == v19)
      {
        goto LABEL_18;
      }
    }

    if (orientation == 2)
    {
      v13.f32[0] = -v23.f32[1];
      v13 = vzip1q_s32(v13, v23);
    }

    else
    {
      if (orientation != 3)
      {
LABEL_12:
        v32 = v23;
        v24 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136380931;
          v34 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
          v35 = 1025;
          v36 = 191;
          _os_log_impl(&dword_21DE0D000, v24, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unknown orientation! ***", buf, 0x12u);
        }

        v23 = v32;
        goto LABEL_17;
      }

      v13 = vnegq_f32(v23);
    }

    goto LABEL_16;
  }

LABEL_19:
  IOSurfaceUnlock(buffer, 0, 0);
  kdebug_trace();
  v25 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int64_t)writeProbabilities:(__CVBuffer *)probabilities
{
  width = self->_probabilitiesTensor.width;
  height = self->_probabilitiesTensor.height;
  kdebug_trace();
  IOSurface = CVPixelBufferGetIOSurface(probabilities);
  IOSurfaceLock(IOSurface, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(IOSurface);
  BytesPerRow = IOSurfaceGetBytesPerRow(IOSurface);
  if (height)
  {
    v11 = 0;
    data = self->_probabilitiesTensor.data;
    v13 = self->_labelsTensor.data;
    v14 = 4 * self->_probabilitiesTensor.stride_channels;
    channels_low = LOBYTE(self->_probabilitiesTensor.channels);
    v16 = 4 * width;
    v17 = 4 * (BytesPerRow >> 2);
    do
    {
      v18 = BaseAddress;
      v19 = v13;
      v20 = data;
      for (i = width; i; --i)
      {
        v22 = *v19++;
        LODWORD(v10) = llroundf(v22);
        if (channels_low <= v10)
        {
          v10 = 0;
        }

        v10 *= v14;
        *v18++ = *&v20[v10];
        v20 += 4;
      }

      ++v11;
      data += v16;
      v13 = (v13 + v16);
      BaseAddress += v17;
    }

    while (v11 != height);
  }

  IOSurfaceUnlock(IOSurface, 0, 0);
  kdebug_trace();
  return 0;
}

- (int64_t)writeLabels:(__CVBuffer *)labels
{
  width = self->_labelsTensor.width;
  height = self->_labelsTensor.height;
  kdebug_trace();
  IOSurface = CVPixelBufferGetIOSurface(labels);
  IOSurfaceLock(IOSurface, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(IOSurface);
  BytesPerRow = IOSurfaceGetBytesPerRow(IOSurface);
  if (height)
  {
    v10 = 0;
    data = self->_labelsTensor.data;
    do
    {
      v12 = BaseAddress;
      v13 = data;
      for (i = width; i; --i)
      {
        v15 = *v13++;
        *v12++ = llroundf(v15);
      }

      ++v10;
      data += width;
      BaseAddress += BytesPerRow;
    }

    while (v10 != height);
  }

  IOSurfaceUnlock(IOSurface, 0, 0);
  kdebug_trace();
  return 0;
}

- (CGSize)resolution
{
  width = self->_resolution.width;
  height = self->_resolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_SITensorDim)labelTensorDimensions
{
  v3 = *self[17].value;
  *retstr->value = *&self[16].value[2];
  *&retstr->value[2] = v3;
  return self;
}

- (_SITensorDim)normalTensorDimensions
{
  v3 = *self[18].value;
  *retstr->value = *&self[17].value[2];
  *&retstr->value[2] = v3;
  return self;
}

- (_SITensorDim)probabilitiesTensorDimensions
{
  v3 = *self[19].value;
  *retstr->value = *&self[18].value[2];
  *&retstr->value[2] = v3;
  return self;
}

@end