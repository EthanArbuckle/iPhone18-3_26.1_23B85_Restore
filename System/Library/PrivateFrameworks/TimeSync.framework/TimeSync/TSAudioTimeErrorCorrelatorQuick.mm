@interface TSAudioTimeErrorCorrelatorQuick
- (TSAudioTimeErrorCorrelatorQuick)initWithMaxCorrelationLength:(int64_t)a3 andUpscaleFactor:(int64_t)a4 forSamplingRate:(double)a5;
- (void)_makeBlock;
- (void)dealloc;
@end

@implementation TSAudioTimeErrorCorrelatorQuick

- (TSAudioTimeErrorCorrelatorQuick)initWithMaxCorrelationLength:(int64_t)a3 andUpscaleFactor:(int64_t)a4 forSamplingRate:(double)a5
{
  v21.receiver = self;
  v21.super_class = TSAudioTimeErrorCorrelatorQuick;
  v7 = [TSAudioTimeErrorCorrelator initWithMaxCorrelationLength:sel_initWithMaxCorrelationLength_andUpscaleFactor_forSamplingRate_ andUpscaleFactor:a5 forSamplingRate:?];
  v8 = v7;
  if (v7)
  {
    v7->_channelABuffer = malloc_type_calloc(2 * v7->super._maxCorrelationLength, 4uLL, 0x100004052888210uLL);
    v8->_scratchBuffer = malloc_type_calloc(2 * v8->super._maxCorrelationLength, 4uLL, 0x100004052888210uLL);
    v8->_correlationBuffer = malloc_type_calloc(v8->super._maxCorrelationLength * v8->super._upscaleFactor, 4uLL, 0x100004052888210uLL);
    v9 = malloc_type_calloc(v8->super._maxCorrelationLength * v8->super._upscaleFactor, 4uLL, 0x100004052888210uLL);
    v8->_interpollationIndiciesBuffer = v9;
    channelABuffer = v8->_channelABuffer;
    if (channelABuffer && v8->_scratchBuffer && (v8->_correlationBuffer ? (v11 = v9 == 0) : (v11 = 1), !v11))
    {
      bzero(channelABuffer, 8 * v8->super._maxCorrelationLength);
      bzero(v8->_scratchBuffer, 8 * v8->super._maxCorrelationLength);
      bzero(v8->_correlationBuffer, 4 * v8->super._upscaleFactor * v8->super._maxCorrelationLength);
      if (a4 * a3 >= 1)
      {
        v14 = 0;
        *v13.i32 = a4;
        v15 = vdupq_n_s64(a4 * a3 - 1);
        v16 = v8->_interpollationIndiciesBuffer + 2;
        v17 = xmmword_26F0DFB70;
        v18 = xmmword_26F0DFB80;
        v19 = vdupq_n_s64(4uLL);
        do
        {
          v20 = vmovn_s64(vcgeq_u64(v15, v18));
          if (vuzp1_s16(v20, v13).u8[0])
          {
            *(v16 - 2) = v14 / *v13.i32;
          }

          if (vuzp1_s16(v20, v13).i8[2])
          {
            *(v16 - 1) = (v14 + 1) / *v13.i32;
          }

          if (vuzp1_s16(v13, vmovn_s64(vcgeq_u64(v15, *&v17))).i32[1])
          {
            *v16 = (v14 + 2) / *v13.i32;
            v16[1] = (v14 + 3) / *v13.i32;
          }

          v14 += 4;
          v17 = vaddq_s64(v17, v19);
          v18 = vaddq_s64(v18, v19);
          v16 += 4;
        }

        while (((a4 * a3 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v14);
      }

      [(TSAudioTimeErrorCorrelatorQuick *)v8 _makeBlock];
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

- (void)_makeBlock
{
  channelABuffer = self->_channelABuffer;
  scratchBuffer = self->_scratchBuffer;
  correlationBuffer = self->_correlationBuffer;
  interpollationIndiciesBuffer = self->_interpollationIndiciesBuffer;
  samplingRate = self->super._samplingRate;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__TSAudioTimeErrorCorrelatorQuick__makeBlock__block_invoke;
  v7[3] = &__block_descriptor_88_e18_d32__0r_f8r_f16q24l;
  v8 = *&self->super._maxCorrelationLength;
  v9 = channelABuffer;
  v10 = scratchBuffer;
  v11 = correlationBuffer;
  v12 = interpollationIndiciesBuffer;
  v13 = samplingRate;
  [(TSAudioTimeErrorCorrelator *)self setCorrelationBlock:v7];
}

void __45__TSAudioTimeErrorCorrelatorQuick__makeBlock__block_invoke(uint64_t a1, const float *__A, const float *a3, int64_t __N)
{
  if (*(a1 + 32) < __N)
  {
    __45__TSAudioTimeErrorCorrelatorQuick__makeBlock__block_invoke_cold_1();
  }

  if (__A && a3)
  {
    __C = 0.0;
    __I = 0;
    v8 = *(a1 + 40);
    vDSP_vabs(__A, 1, *(a1 + 48), 1, __N);
    vDSP_maxvi(__A, 1, &__C, &__I, __N);
    if (__C <= 0.05)
    {
      printf("insufficient channel A signal level %f\n", __C);
    }

    else
    {
      vDSP_vabs(a3, 1, *(a1 + 48), 1, __N);
      vDSP_maxvi(a3, 1, &__C, &__I, __N);
      if (__C <= 0.05)
      {
        printf("insufficient channel B signal level %f\n", __C);
      }

      else
      {
        v9 = v8 * __N;
        bzero(*(a1 + 48), 8 * *(a1 + 32));
        bzero(*(a1 + 56), 8 * *(a1 + 32));
        bzero(*(a1 + 64), 4 * *(a1 + 40) * *(a1 + 32));
        memcpy((*(a1 + 48) + 4 * ((__N + (__N >> 63)) >> 1)), __A, 4 * __N);
        vDSP_conv(*(a1 + 48), 1, a3, 1, *(a1 + 56), 1, __N, __N);
        vDSP_vqint(*(a1 + 56), *(a1 + 72), 1, *(a1 + 64), 1, v9, __N);
        vDSP_maxvi(*(a1 + 64), 1, &__C, &__I, v9);
        if (__I)
        {
          v10 = (__I - v9 / 2) / (*(a1 + 80) * *(a1 + 40));
        }
      }
    }
  }
}

- (void)dealloc
{
  free(self->_channelABuffer);
  free(self->_scratchBuffer);
  free(self->_correlationBuffer);
  free(self->_interpollationIndiciesBuffer);
  v3.receiver = self;
  v3.super_class = TSAudioTimeErrorCorrelatorQuick;
  [(TSAudioTimeErrorCorrelatorQuick *)&v3 dealloc];
}

@end