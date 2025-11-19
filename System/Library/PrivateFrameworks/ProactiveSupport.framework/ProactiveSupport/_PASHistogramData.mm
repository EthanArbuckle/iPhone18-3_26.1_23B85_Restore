@interface _PASHistogramData
- (_PASHistogramData)init;
- (_PASHistogramData)initWithCoder:(id)a3;
- (float)entropyWhereA:(unsigned __int16)a3 b:(unsigned __int16)a4;
- (float)lookupSmoothedWithBucketCount:(unsigned __int16)a3 distanceScale:(float)a4 weightScale:(float)a5 a:(unsigned __int16)a6 b:(unsigned __int16)a7;
- (float)lookupUnsmoothedA:(unsigned __int16)a3 b:(unsigned __int16)a4;
- (id).cxx_construct;
- (id)aSet;
- (id)bSet;
- (int)countWhereA:(unsigned __int16)a3 b:(unsigned __int16)a4;
- (void)add:(float)a3 a:(unsigned __int16)a4 b:(unsigned __int16)a5;
- (void)clear;
- (void)decayByFactor:(float)a3;
- (void)decayWithHalfLifeInDays:(float)a3;
- (void)deleteWhereA:(unsigned __int16)a3 b:(unsigned __int16)a4;
- (void)encodeWithCoder:(id)a3;
- (void)enumerate:(id)a3;
@end

@implementation _PASHistogramData

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 0;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  [v8 encodeInt32:*(*ptr + 24) forKey:@"count"];
  v5 = *ptr;
  if (*(*ptr + 24))
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:**ptr length:4 * *(*ptr + 24)];
    [v8 encodeObject:v6 forKey:@"scores"];

    v5 = *ptr;
  }

  if (v5[7])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:*(*ptr + 32) length:4 * *(*ptr + 56)];
    [v8 encodeObject:v7 forKey:@"abs"];
  }

  pthread_mutex_unlock((ptr + 8));
}

- (_PASHistogramData)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [(_PASHistogramData *)self init];
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    ptr = v6->_guardedData.__ptr_;
    pthread_mutex_lock((ptr + 1));
    v9 = [v5 decodeInt32ForKey:@"count"];
    if (!v9)
    {
LABEL_15:
      pthread_mutex_unlock((ptr + 1));
      objc_autoreleasePoolPop(v7);
      goto LABEL_16;
    }

    v10 = v9;
    _ZN12_GLOBAL__N_110SimdVectorIDv8_ffE6resizeEm(*ptr, v9);
    _ZN12_GLOBAL__N_110SimdVectorIDv8_ijE6resizeEm((*ptr + 4), v10);
    v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"scores"];
    if ([v11 length] == 4 * v10)
    {
      if (!v11)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:v6 file:@"_PASHistogramData.mm" lineNumber:515 description:{@"Invalid parameter not satisfying: %@", @"data.length == count * sizeof(sp->scores[0])"}];

      if (!v11)
      {
LABEL_6:
        v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"abs"];

        if ([v12 length] == 4 * v10)
        {
          if (!v12)
          {
LABEL_9:
            v13 = (*ptr)[3];
            if (v13)
            {
              v14 = **ptr;
              v15 = 1;
              do
              {
                if ((*v14 & 0x7FFFFFFFu) >= 0x7F800000)
                {
                  *v14 = 0;
                }

                ++v14;
              }

              while (v13 > v15++);
            }

            goto LABEL_15;
          }
        }

        else
        {
          v19 = [MEMORY[0x1E696AAA8] currentHandler];
          [v19 handleFailureInMethod:a2 object:v6 file:@"_PASHistogramData.mm" lineNumber:520 description:{@"Invalid parameter not satisfying: %@", @"data.length == count * sizeof(sp->abs[0])"}];

          if (!v12)
          {
            goto LABEL_9;
          }
        }

        memcpy((*ptr)[4], [v12 bytes], objc_msgSend(v12, "length"));
        goto LABEL_9;
      }
    }

    memcpy(**ptr, [v11 bytes], objc_msgSend(v11, "length"));
    goto LABEL_6;
  }

LABEL_16:

  return v6;
}

- (id)bSet
{
  v3 = objc_opt_new();
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v5 = *ptr;
  if (*(*ptr + 56))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      [v3 addIndex:*(*(v5 + 32) + 4 * v6)];
      v6 = v7;
      v5 = *ptr;
    }

    while (*(*ptr + 56) > v7++);
  }

  v9 = v3;
  pthread_mutex_unlock((ptr + 8));

  return v9;
}

- (id)aSet
{
  v3 = objc_opt_new();
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v5 = *ptr;
  if (*(*ptr + 56))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      [v3 addIndex:*(*(v5 + 32) + 4 * v6 + 2)];
      v6 = v7;
      v5 = *ptr;
    }

    while (*(*ptr + 56) > v7++);
  }

  v9 = v3;
  pthread_mutex_unlock((ptr + 8));

  return v9;
}

- (void)decayWithHalfLifeInDays:(float)a3
{
  v4 = exp2(-1.0 / a3);
  *&v4 = v4;

  [(_PASHistogramData *)self decayByFactor:v4];
}

- (void)decayByFactor:(float)a3
{
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  if (*(*ptr + 64))
  {
    __break(1u);
  }

  else
  {
    v4 = **ptr;
    if (*(*ptr + 8) != v4)
    {
      v5 = 0;
      do
      {
        v6 = (v4 + 32 * v5);
        v7 = vmulq_n_f32(v6[1], a3);
        *v6 = vmulq_n_f32(*v6, a3);
        v6[1] = v7;
        ++v5;
        v4 = **ptr;
      }

      while (v5 < (*(*ptr + 8) - v4) >> 5);
    }

    pthread_mutex_unlock((ptr + 8));
  }
}

- (void)deleteWhereA:(unsigned __int16)a3 b:(unsigned __int16)a4
{
  if ((a4 & a3) == 0xFFFF)
  {

    [(_PASHistogramData *)self clear];
  }

  else
  {
    v4 = a4;
    v5 = a3;
    ptr = self->_guardedData.__ptr_;
    pthread_mutex_lock((ptr + 8));
    v7 = *ptr;
    if (*(*ptr + 64) == 1)
    {
      __break(1u);
    }

    else
    {
      v8 = v7[3];
      if (v8)
      {
        v9 = 0;
        v10 = 0;
        v11 = v7[4];
        do
        {
          v12 = *(v11 + 4 * v9);
          v14 = v4 == 0xFFFF || v4 == *(v11 + 4 * v9);
          v15 = HIWORD(v12) == v5 || v5 == 0xFFFF;
          if (!v15 || !v14)
          {
            *(v11 + 4 * v10) = v12;
            *(*v7 + 4 * v10++) = *(*v7 + 4 * v9);
          }

          ++v9;
        }

        while (v8 != v9);
        _ZN12_GLOBAL__N_110SimdVectorIDv8_ffE6resizeEm(v7, v10);
        _ZN12_GLOBAL__N_110SimdVectorIDv8_ijE6resizeEm(*ptr + 32, v10);
      }

      pthread_mutex_unlock((ptr + 8));
    }
  }
}

- (int)countWhereA:(unsigned __int16)a3 b:(unsigned __int16)a4
{
  if ((a4 & a3) == 0xFFFF)
  {
    ptr = self->_guardedData.__ptr_;
    pthread_mutex_lock((ptr + 8));
    v5 = *(*ptr + 24);
    pthread_mutex_unlock((ptr + 8));
    return v5;
  }

  if (a3 == 0xFFFF)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __35___PASHistogramData_countWhereA_b___block_invoke;
    v10[3] = &unk_1E77F1C08;
    v11 = a4;
    v10[4] = &v12;
    [(_PASHistogramData *)self enumerate:v10];
LABEL_8:
    v5 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
    return v5;
  }

  if (a4 == 0xFFFF)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35___PASHistogramData_countWhereA_b___block_invoke_2;
    v8[3] = &unk_1E77F1C08;
    v9 = a3;
    v8[4] = &v12;
    [(_PASHistogramData *)self enumerate:v8];
    goto LABEL_8;
  }

  [_PASHistogramData lookupUnsmoothedA:"lookupUnsmoothedA:b:" b:?];
  return v4 > 0.0;
}

- (void)enumerate:(id)a3
{
  v11 = a3;
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v5 = *ptr;
  v6 = *(*ptr + 64);
  *(v5 + 64) = 1;
  if (*(v5 + 56))
  {
    v7 = 0;
    v8 = 1;
    do
    {
      if (*(*v5 + 4 * v7) > 0.0)
      {
        v9 = *(*(v5 + 32) + 4 * v7);
        (*(v11 + 2))(v11, HIWORD(v9), v9);
        v5 = *ptr;
      }

      v7 = v8;
    }

    while (*(v5 + 56) > v8++);
  }

  *(v5 + 64) = v6;
  pthread_mutex_unlock((ptr + 8));
}

- (float)entropyWhereA:(unsigned __int16)a3 b:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  ptr = self->_guardedData.__ptr_;
  v10 = ptr;
  pthread_mutex_lock((ptr + 8));
  entropy(&v10, v5, v4);
  v8 = v7;
  pthread_mutex_unlock((ptr + 8));
  return v8;
}

- (float)lookupSmoothedWithBucketCount:(unsigned __int16)a3 distanceScale:(float)a4 weightScale:(float)a5 a:(unsigned __int16)a6 b:(unsigned __int16)a7
{
  v7 = a7;
  v8 = a6;
  v10 = a3;
  if (a7 == 0xFFFF)
  {
    v50 = [MEMORY[0x1E696AAA8] currentHandler];
    [v50 handleFailureInMethod:a2 object:self file:@"_PASHistogramData.mm" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"b != SUMALL"}];
  }

  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v13 = **ptr;
  v14 = *(*ptr + 8);
  v15 = v14 - v13;
  if (v14 == v13)
  {
    v22 = 0uLL;
    v32 = 0uLL;
  }

  else
  {
    v16 = 0;
    v17 = v15 >> 5;
    v18 = vdupq_n_s32((v8 << 16) | 0xFFFFu);
    v19 = vdupq_n_s32(v7);
    v20 = vdupq_n_s32(v10);
    v21 = 1.0 / a5;
    v22 = 0uLL;
    v23.i64[0] = -1;
    v23.i64[1] = -1;
    v24 = vceqq_s16(v18, v23);
    v25 = vmovn_s16(v24);
    v26.i64[0] = 0xFF000000FFLL;
    v26.i64[1] = 0xFF000000FFLL;
    __asm { FMOV            V7.4S, #1.0 }

    v32 = 0uLL;
    do
    {
      v33 = *(*ptr + 32) + 32 * v16;
      v35 = *v33;
      v34 = *(v33 + 16);
      v36 = vceqq_s16(*v33, v18);
      v37 = vorrq_s8(vceqq_s16(v34, v18), v24);
      v38 = (v13 + 32 * v16);
      v39 = vabdq_s32(vandq_s8(v35, v26), v19);
      v40 = vabdq_s32(vandq_s8(v34, v26), v19);
      v41 = vmulq_n_f32(vcvtq_f32_s32(vminq_s32(vsubq_s32(v20, v40), v40)), a4);
      v42 = vmulq_n_f32(vcvtq_f32_s32(vminq_s32(vsubq_s32(v20, v39), v39)), a4);
      v43 = vmulq_n_f32(vmlaq_f32(_Q7, v41, v41), v21);
      v44 = vmulq_n_f32(vmlaq_f32(_Q7, v42, v42), v21);
      v45 = vrecpeq_f32(v44);
      v46 = vrecpeq_f32(v43);
      v32 = vaddq_f32(v32, vmulq_f32(vmulq_f32(v46, vrecpsq_f32(v43, v46)), vandq_s8(vandq_s8(v38[1], v37), vrev32q_s16(v37))));
      v22 = vaddq_f32(v22, vmulq_f32(vmulq_f32(v45, vrecpsq_f32(v44, v45)), vandq_s8(vandq_s8(*v38, vorrq_s8(v36, v24)), vrev32q_s16(vcltzq_s16(vshlq_n_s16(vmovl_u8(vorr_s8(vmovn_s16(v36), v25)), 0xFuLL))))));
      ++v16;
    }

    while (v17 > v16);
  }

  v51 = v32;
  v53 = v22;
  pthread_mutex_unlock((ptr + 8));
  v47 = vaddq_f32(v53, v51);
  result = vaddv_f32(vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)));
  if ((LODWORD(result) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    return 0.0;
  }

  return result;
}

- (float)lookupUnsmoothedA:(unsigned __int16)a3 b:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v7 = **ptr;
  v8 = *(*ptr + 8) - v7;
  if (v8)
  {
    v9 = v8 >> 5;
    v10 = *(*ptr + 32);
    v11 = vdupq_n_s32(v4 | (v5 << 16));
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v12 = 0uLL;
    v13.i64[0] = -1;
    v13.i64[1] = -1;
    v14 = vceqq_s16(v11, v13);
    v15 = vmovn_s16(v14);
    v16 = 0uLL;
    do
    {
      v18 = *v10;
      v17 = v10[1];
      v10 += 2;
      v19 = vceqq_s16(v18, v11);
      v20 = vorrq_s8(vceqq_s16(v17, v11), v14);
      v22 = *v7;
      v21 = v7[1];
      v7 += 2;
      v16 = vaddq_f32(v16, vandq_s8(vandq_s8(v21, v20), vrev32q_s16(v20)));
      v12 = vaddq_f32(v12, vandq_s8(vandq_s8(v22, vorrq_s8(v19, v14)), vrev32q_s16(vcltzq_s16(vshlq_n_s16(vmovl_u8(vorr_s8(vmovn_s16(v19), v15)), 0xFuLL)))));
      --v9;
    }

    while (v9);
  }

  else
  {
    v12 = 0uLL;
    v16 = 0uLL;
  }

  v25 = v16;
  v26 = v12;
  pthread_mutex_unlock((ptr + 8));
  v23 = vaddq_f32(v26, v25);
  result = vaddv_f32(vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL)));
  if ((LODWORD(result) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    return 0.0;
  }

  return result;
}

- (void)add:(float)a3 a:(unsigned __int16)a4 b:(unsigned __int16)a5
{
  if ((LODWORD(a3) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v6 = a5;
    v7 = a4;
    ptr = self->_guardedData.__ptr_;
    pthread_mutex_lock((ptr + 8));
    v9 = *ptr;
    if (*(*ptr + 64))
    {
      __break(1u);
    }

    else
    {
      v10 = v9[7];
      if (v10)
      {
        v11 = 0;
        while (*(v9[4] + 4 * v11) != (v6 | (v7 << 16)))
        {
          if (v10 == ++v11)
          {
            goto LABEL_7;
          }
        }

        *(*v9 + 4 * v11) = fmaxf(*(*v9 + 4 * v11) + a3, 0.0);
      }

      else
      {
LABEL_7:
        if (a3 >= 0.0)
        {
          v12 = v9[3];
          _ZN12_GLOBAL__N_110SimdVectorIDv8_ffE6resizeEm(*ptr, v12 + 1);
          *(*v9 + 4 * v12) = fmaxf(a3, 0.0);
          v13 = *ptr;
          v14 = *(*ptr + 56);
          _ZN12_GLOBAL__N_110SimdVectorIDv8_ijE6resizeEm(*ptr + 32, v14 + 1);
          *(*(v13 + 32) + 4 * v14) = v6 | (v7 << 16);
        }
      }

      pthread_mutex_unlock((ptr + 8));
    }
  }
}

- (void)clear
{
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  if (*(*ptr + 64) == 1)
  {
    __break(1u);
  }

  else
  {
    _ZN12_GLOBAL__N_110SimdVectorIDv8_ffE6resizeEm(*ptr, 0);
    _ZN12_GLOBAL__N_110SimdVectorIDv8_ijE6resizeEm(*ptr + 32, 0);
    pthread_mutex_unlock((ptr + 8));
  }
}

- (_PASHistogramData)init
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _PASHistogramData;
  v2 = [(_PASHistogramData *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v5 = v2 + 8;
    v4 = *(v2 + 1);
    if (v4)
    {
      *(v3 + 2) = v4;
      free(v4);
      *v5 = 0;
      *(v3 + 2) = 0;
      *(v3 + 3) = 0;
    }

    v7 = v3 + 40;
    v6 = *(v3 + 5);
    v8 = 0uLL;
    *v5 = 0u;
    *(v3 + 24) = 0u;
    if (v6)
    {
      *(v3 + 6) = v6;
      free(v6);
      v8 = 0uLL;
      *v7 = 0;
      *(v3 + 6) = 0;
      *(v3 + 7) = 0;
    }

    v3[72] = 0;
    *v7 = v8;
    *(v3 + 56) = v8;
    operator new();
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

@end