@interface VISISPStripGeneratorV2
- (VISISPStripGeneratorV2)init;
- (__n128)gridSize;
- (__n128)inputSize;
- (__n128)outputSize;
- (int)_configureISPStripTileCount;
- (int)_generateMultipleStripsWithTransforms:(VISISPStripGeneratorV2 *)self transforms3x3:(SEL)transforms3x3 validBufferRect:(float *)(a3;
- (int)_generateSingleStripWithTransforms:(VISISPStripGeneratorV2 *)self transforms3x3:(SEL)transforms3x3 validBufferRect:(float *)(a3;
- (int)_limitMultipleStripsTransforms:(CGRect)transforms transforms3x3:(float *)(a4;
- (int)generateStripsWithTransforms:(VISISPStripGeneratorV2 *)self transforms3x3:(SEL)transforms3x3 validBufferRect:(float *)(a3;
- (int)setup;
- (void)dealloc;
@end

@implementation VISISPStripGeneratorV2

- (void)dealloc
{
  free(self->_ispStripParams);
  v3.receiver = self;
  v3.super_class = VISISPStripGeneratorV2;
  [(VISISPStripGeneratorV2 *)&v3 dealloc];
}

- (int)generateStripsWithTransforms:(VISISPStripGeneratorV2 *)self transforms3x3:(SEL)transforms3x3 validBufferRect:(float *)(a3
{
  if (self->_type == 1)
  {
    return [(VISISPStripGeneratorV2 *)self _generateSingleStripWithTransforms:a3 transforms3x3:a4.origin.x validBufferRect:a4.origin.y, a4.size.width, a4.size.height];
  }

  else
  {
    return [(VISISPStripGeneratorV2 *)self _generateMultipleStripsWithTransforms:a3 transforms3x3:a4.origin.x validBufferRect:a4.origin.y, a4.size.width, a4.size.height];
  }
}

- (int)_configureISPStripTileCount
{
  *self->_tileCount = 0x100000001;
  if (self->_type != 2)
  {
    return 0;
  }

  v3 = *self->_inputSize;
  v4 = *&self->_inputSize[2];
  v5 = *self->_outputSize;
  isUsing1kLineBuffers = self->_isUsing1kLineBuffers;
  v7 = sqrt((v4 * v4 + v3 * v3));
  v8 = v4;
  v9 = dbl_43990[v5 < 0x781];
  v10 = asin(v9 * v4 / v7);
  v11 = asin(v8 / v7);
  v12 = sin(v10 - v11);
  v13 = 0;
  v14 = v3 / v9 * v12;
  v15 = 42.0;
  if (!isUsing1kLineBuffers)
  {
    v15 = 21.0;
  }

  v16 = v14 / v15;
  v17 = 2048.0;
  if (isUsing1kLineBuffers)
  {
    v17 = 1024.0;
  }

  v18 = vcvtpd_s64_f64(fmax(v3 * 1.8 / v17, v16));
  LODWORD(v16) = 0;
  *self->_tileCount = 0x100000000;
  while (1)
  {
    v19 = dword_439C4[v13];
    if (v19 >= v18 && !((v5 % v19) | (v5 / v19) & 0xF))
    {
      break;
    }

    if (++v13 == 5)
    {
      goto LABEL_13;
    }
  }

  *self->_tileCount = v19;
  v16 = *self->_tileCount;
LABEL_13:
  if (LODWORD(v16))
  {
    return 0;
  }

  else
  {
    return -12782;
  }
}

- (int)_limitMultipleStripsTransforms:(CGRect)transforms transforms3x3:(float *)(a4
{
  ispStripParams = self->_ispStripParams;
  var0 = ispStripParams->var0;
  if (ispStripParams->var0)
  {
    v7 = 0;
    result = 0;
    p_var0 = &ispStripParams->var3[0].var0;
    y = transforms.origin.y;
    v11 = transforms.origin.y + transforms.size.height + -1.0;
    v12 = &(*a4)[4];
    v13 = 21.0;
    while (1)
    {
      v14 = *&self->_ispStripOffset[7];
      v15 = HIDWORD(v14) + p_var0[5];
      v16 = *&self->_overscanSize[4];
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      v19 = (v18 < 0) ^ v17 | (v18 == 0) ? 0 : v18 / p_var0[9];
      if (p_var0[8])
      {
        break;
      }

LABEL_42:
      p_var0 += 10;
      if (++v7 >= var0)
      {
        return result;
      }
    }

    v20 = 0;
    v21 = v14 + p_var0[4];
    v22 = p_var0[6] + v21 - 1;
    v23 = v21;
    v24 = v22;
    v25 = vcvts_n_f32_s32(v22 + v21, 1uLL);
    v26 = &v12[9 * v19];
    while (1)
    {
      if (y >= v11)
      {
        [VISISPStripGeneratorV2 _limitMultipleStripsTransforms:transforms3x3:];
LABEL_40:
        v13 = 21.0;
        result = -12780;
        goto LABEL_36;
      }

      if (v21 >= v22)
      {
        [VISISPStripGeneratorV2 _limitMultipleStripsTransforms:transforms3x3:];
        goto LABEL_40;
      }

      if (self->_isUsing1kLineBuffers)
      {
        v27 = 42.0;
      }

      else
      {
        v27 = v13;
      }

      v28 = v15;
      v29 = v26[2];
      v30 = v26[4] + (v26[3] * v15);
      v31 = v30 + (v29 * v23);
      v32 = v30 + (v29 * v24);
      v33 = fabsf(v32);
      if (fabsf(v31) <= 0.00000011921 || v33 <= 0.00000011921)
      {
        [VISISPStripGeneratorV2 _limitMultipleStripsTransforms:transforms3x3:];
LABEL_34:
        v13 = 21.0;
LABEL_35:
        result = 0;
        goto LABEL_36;
      }

      v35 = *v26;
      v36 = v26[1];
      v37 = *(v26 - 1);
      v38 = v36 + (*v26 * v28);
      v39 = (v38 + (v37 * v23)) / v31;
      v40 = (v38 + (v37 * v24)) / v32;
      if (vabds_f32(v40, v39) <= v27)
      {
        goto LABEL_35;
      }

      v41 = (v31 * (v22 - v25)) - (v32 * (v21 - v25));
      if (fabsf(v41) <= 0.00000011921)
      {
        [VISISPStripGeneratorV2 _limitMultipleStripsTransforms:transforms3x3:];
        goto LABEL_34;
      }

      v42 = v27 + -0.001;
      if (v40 <= v39)
      {
        v42 = -v42;
      }

      v43 = ((v31 * (v32 * v42)) + ((v38 + (v37 * v25)) * (v32 - v31))) / v41;
      *(v26 - 1) = v43;
      v44 = v36 + ((v37 - v43) * v25);
      v26[1] = v44;
      v45 = v44 + (v35 * v28);
      v46 = (v45 + (v43 * v23)) / v31;
      v47 = (v45 + (v43 * v24)) / v32;
      if (v46 >= v47)
      {
        if (v47 >= y)
        {
          if (v46 <= v11)
          {
            goto LABEL_35;
          }

          result = 0;
          v48 = -(v43 * v23);
          v49 = v11 + -0.5;
          goto LABEL_31;
        }

        result = 0;
        v50 = -(v43 * v24);
        v51 = y + 0.5;
      }

      else
      {
        if (v46 < y)
        {
          result = 0;
          v48 = -(v43 * v23);
          v49 = y + 0.5;
LABEL_31:
          v52 = v48 + (v49 * v31);
          goto LABEL_32;
        }

        if (v47 <= v11)
        {
          goto LABEL_35;
        }

        result = 0;
        v50 = -(v43 * v24);
        v51 = v11 + -0.5;
      }

      v52 = v50 + (v51 * v32);
LABEL_32:
      v26[1] = v52 - (v35 * v28);
LABEL_36:
      v15 += p_var0[9];
      ++v20;
      v26 += 9;
      if (v20 >= p_var0[8])
      {
        var0 = self->_ispStripParams->var0;
        goto LABEL_42;
      }
    }
  }

  return 0;
}

- (__n128)inputSize
{
  LOWORD(v1) = *(self + 56);
  WORD2(v1) = *(self + 58);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (__n128)outputSize
{
  LOWORD(v1) = *(self + 60);
  WORD2(v1) = *(self + 62);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (__n128)gridSize
{
  LOWORD(v1) = *(self + 64);
  WORD2(v1) = *(self + 66);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (VISISPStripGeneratorV2)init
{
  v3.receiver = self;
  v3.super_class = VISISPStripGeneratorV2;
  result = [(VISISPStripGeneratorV2 *)&v3 init];
  if (result)
  {
    result->_isUsing1kLineBuffers = 1;
  }

  return result;
}

- (int)setup
{
  v2 = *self->_inputSize;
  if (v2 <= *self->_outputSize)
  {
    return -12780;
  }

  v4 = *&self->_inputSize[2];
  if (v4 <= *&self->_outputSize[2] || !*&self->_gridSize[2])
  {
    return -12780;
  }

  LODWORD(v5) = (v2 - *self->_outputSize) / 2;
  HIDWORD(v5) = (v4 - *&self->_outputSize[2]) / 2;
  *self->_overscanSize = v5;
  *&self->_ispStripOffset[7] = v5;
  result = [(VISISPStripGeneratorV2 *)self _configureISPStripTileCount];
  if (result)
  {
    return result;
  }

  v7 = *self->_tileCount;
  v8 = HIDWORD(*self->_tileCount);
  if (v7 < 1)
  {
    return -12780;
  }

  v9 = &__src[2];
  v27 = *self->_tileCount;
  bzero(&__src[2], 0x1FCuLL);
  v10 = v27;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = ((v7 + *self->_outputSize - 1) / v7) & 0xFFFFFFFE;
  v15 = (v8 + *&self->_outputSize[2] - 1) / v8;
  while (1)
  {
    v16 = v15;
    if (v11 >= v8 - 1)
    {
      v16 = self->_extendedOutputRowsToFill - v15 * (v8 - 1) + *&self->_outputSize[2];
    }

    v17 = *&self->_gridSize[2];
    v18 = (v16 + v17 - 1) / v17;
    if (v18 > 48)
    {
      break;
    }

    if (v10.i32[0])
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v9[4] = v20;
        v9[5] = v13;
        v9[7] = v16;
        v9[9] = v17;
        v9[8] = v18;
        v21 = *self->_tileCount - 1;
        v22 = v14;
        if (v19 >= v21)
        {
          v22 = *self->_outputSize - v21 * v14;
        }

        v12 += v18;
        v9[6] = v22;
        v9 += 10;
        v20 += v14;
        ++v19;
        v10 = *self->_tileCount;
      }

      while (v19 < v10.i32[0]);
    }

    v8 = v10.i32[1];
    v13 += v15;
    if (++v11 >= v10.i32[1])
    {
      __src[0] = vmul_lane_s32(v10, v10, 1).u16[0];
      v23 = (36 * v12 + 644);
      __src[1] = 0;
      self->_ispStripParamsSize = v23;
      v24 = malloc_type_malloc(v23, 0x84E4F449uLL);
      self->_ispStripParams = v24;
      if (!v24)
      {
        return -12786;
      }

      memcpy(v24, __src, sizeof($8A3E7D8EF1F699152D7DD6CAB8793FE0));
      v25 = [NSData dataWithBytesNoCopy:self->_ispStripParams length:self->_ispStripParamsSize freeWhenDone:0];
      ISPStripParams = self->_ISPStripParams;
      self->_ISPStripParams = v25;

      return 0;
    }
  }

  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

- (int)_generateSingleStripWithTransforms:(VISISPStripGeneratorV2 *)self transforms3x3:(SEL)transforms3x3 validBufferRect:(float *)(a3
{
  ispStripParams = self->_ispStripParams;
  if (!ispStripParams || ispStripParams->var0 != 1)
  {
    return -12780;
  }

  *&ispStripParams->var3[0].var0 = 0;
  *&ispStripParams->var3[0].var2 = *self->_inputSize;
  if (ispStripParams->var3[0].var8)
  {
    v7 = 0;
    v8 = 644;
    do
    {
      _mapTransform2TileCoordinates(a3, ispStripParams->var3[0].var0, ispStripParams->var3[0].var1, (*&self->_ispStripOffset[7] + ispStripParams->var3[0].var4), (HIDWORD(*&self->_ispStripOffset[7]) + ispStripParams->var3[0].var5), self->_ispStripParams + v8);
      ++v7;
      ++a3;
      v8 += 36;
    }

    while (v7 < ispStripParams->var3[0].var8);
  }

  return 0;
}

- (int)_generateMultipleStripsWithTransforms:(VISISPStripGeneratorV2 *)self transforms3x3:(SEL)transforms3x3 validBufferRect:(float *)(a3
{
  v5 = 0;
  if (a3)
  {
    y = a4.origin.y;
    v7 = vceqz_s32(*&a4.origin.x);
    if ((vorr_s8(v7, vdup_lane_s32(v7, 1)).u8[0] & 1) == 0)
    {
      v8 = v4;
      height = a4.size.height;
      width = a4.size.width;
      ispStripParams = self->_ispStripParams;
      if (LOBYTE(ispStripParams->var0))
      {
        v13 = 0;
        v14 = 0;
        var3 = ispStripParams->var3;
        while (1)
        {
          v40 = v13;
          var5 = var3->var5;
          var9 = var3->var9;
          v39 = ispStripParams;
          if (var3->var5)
          {
            v18 = var5 / var9;
          }

          else
          {
            v18 = 0;
          }

          v19 = &(*a3)[9 * v18];
          v20 = *&self->_ispStripOffset[7];
          v41 = *self->_inputSize;
          v42 = *&self->_inputSize[2];
          if (self->_isUsing1kLineBuffers)
          {
            v21 = 1024;
          }

          else
          {
            v21 = 2048;
          }

          v43 = v21;
          v44 = 0x80007FFF80007FFFLL;
          v45[0] = var3->var4 + v20;
          v22 = WORD2(v20) + var5;
          v46 = v22;
          v45[1] = v45[0] + var3->var6 - 1;
          v23 = v22 - 1;
          v24 = var9 + v22 - 1;
          v47 = var9 + v22 - 1;
          var8 = var3->var8;
          v26 = var8 - 1;
          if (var8 != 1)
          {
            v27 = v19;
            do
            {
              _updateTileBoundingBox(v27, v45, &v44);
              v46 = v24 + 1;
              v24 += var9;
              v47 = v24;
              v27 += 9;
              --v26;
            }

            while (v26);
          }

          v47 = var3->var7 + v23;
          _updateTileBoundingBox(v19 + 9 * var8 - 9, v45, &v44);
          v28 = v41 - 1;
          if (v41 > (WORD1(v44) + 5))
          {
            v28 = WORD1(v44) + 5;
          }

          v29 = (WORD2(v44) - 5) & ~((WORD2(v44) - 5) >> 15);
          v30 = v42 - 1;
          if (v42 > (HIWORD(v44) + 5))
          {
            v30 = HIWORD(v44) + 5;
          }

          v31 = (v44 - 5) & ~((v44 - 5) >> 15) & 0x7FE0;
          var3->var0 = v31;
          v32 = v29 & 0x7FFE;
          var3->var1 = v32;
          v33 = (v28 - v31 + 31) & 0xFFE0;
          var3->var2 = v33;
          var3->var3 = (v30 - v32 + 1) & 0xFFFE;
          if (v43 < v33)
          {
            break;
          }

          if (var3->var8)
          {
            v34 = 0;
            v35 = 36 * v14 + 644;
            do
            {
              _mapTransform2TileCoordinates(v19, var3->var0, var3->var1, (*&self->_ispStripOffset[7] + var3->var4), (HIDWORD(*&self->_ispStripOffset[7]) + var3->var5), self->_ispStripParams + v35);
              ++v34;
              v35 += 36;
              ++v14;
              v19 = (v19 + 36);
            }

            while (v34 < var3->var8);
            ispStripParams = self->_ispStripParams;
            v36 = v40;
          }

          else
          {
            v36 = v40;
            ispStripParams = v39;
          }

          ++var3;
          v13 = v36 + 1;
          if (v36 + 1 >= LOBYTE(ispStripParams->var0))
          {
            goto LABEL_25;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_0();
        v5 = -12782;
        goto LABEL_28;
      }

LABEL_25:
      v5 = [(VISISPStripGeneratorV2 *)self _limitMultipleStripsTransforms:a3 transforms3x3:y, width, height, v8];
      if (v5)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_0();
LABEL_28:
        FigDebugAssert3();
      }
    }
  }

  return v5;
}

- (uint64_t)_limitMultipleStripsTransforms:transforms3x3:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_limitMultipleStripsTransforms:transforms3x3:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_limitMultipleStripsTransforms:transforms3x3:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_limitMultipleStripsTransforms:transforms3x3:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end