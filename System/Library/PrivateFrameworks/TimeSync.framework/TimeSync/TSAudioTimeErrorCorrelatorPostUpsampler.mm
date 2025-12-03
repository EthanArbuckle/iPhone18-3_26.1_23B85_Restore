@interface TSAudioTimeErrorCorrelatorPostUpsampler
- (TSAudioTimeErrorCorrelatorPostUpsampler)initWithMaxCorrelationLength:(int64_t)length andUpscaleFactor:(int64_t)factor forSamplingRate:(double)rate;
- (void)_makeBlock;
- (void)dealloc;
@end

@implementation TSAudioTimeErrorCorrelatorPostUpsampler

- (TSAudioTimeErrorCorrelatorPostUpsampler)initWithMaxCorrelationLength:(int64_t)length andUpscaleFactor:(int64_t)factor forSamplingRate:(double)rate
{
  v9.receiver = self;
  v9.super_class = TSAudioTimeErrorCorrelatorPostUpsampler;
  v5 = [(TSAudioTimeErrorCorrelator *)&v9 initWithMaxCorrelationLength:length andUpscaleFactor:factor forSamplingRate:rate];
  v6 = v5;
  if (v5)
  {
    [(TSAudioTimeErrorCorrelator *)v5 _calculateUpsamplerCoefficients:&v5->_upsamplerFilterCoefficientsBuffer length:&v5->_upsamplerFilterCoefficientsLength];
    v6->_channelABuffer = malloc_type_calloc(2 * v6->super._maxCorrelationLength, 4uLL, 0x100004052888210uLL);
    v6->_scratch1Buffer = malloc_type_calloc(v6->super._maxCorrelationLength, 4uLL, 0x100004052888210uLL);
    v6->_scratch2Buffer = malloc_type_calloc(v6->_upsamplerFilterCoefficientsLength + v6->super._maxCorrelationLength * v6->super._upscaleFactor, 4uLL, 0x100004052888210uLL);
    v7 = malloc_type_calloc(v6->super._maxCorrelationLength * v6->super._upscaleFactor, 4uLL, 0x100004052888210uLL);
    v6->_correlationBuffer = v7;
    if (v6->_scratch1Buffer && v6->_scratch2Buffer && v6->_channelABuffer && v7 && v6->_upsamplerFilterCoefficientsBuffer)
    {
      bzero(v6->_channelABuffer, 8 * v6->super._maxCorrelationLength);
      bzero(v6->_scratch1Buffer, 4 * v6->super._maxCorrelationLength);
      bzero(v6->_scratch2Buffer, 4 * (v6->_upsamplerFilterCoefficientsLength + v6->super._maxCorrelationLength * v6->super._upscaleFactor));
      bzero(v6->_correlationBuffer, 4 * v6->super._upscaleFactor * v6->super._maxCorrelationLength);
      [(TSAudioTimeErrorCorrelatorPostUpsampler *)v6 _makeBlock];
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)_makeBlock
{
  scratch1Buffer = self->_scratch1Buffer;
  scratch2Buffer = self->_scratch2Buffer;
  channelABuffer = self->_channelABuffer;
  correlationBuffer = self->_correlationBuffer;
  upsamplerFilterCoefficientsBuffer = self->_upsamplerFilterCoefficientsBuffer;
  upsamplerFilterCoefficientsLength = self->_upsamplerFilterCoefficientsLength;
  samplingRate = self->super._samplingRate;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__TSAudioTimeErrorCorrelatorPostUpsampler__makeBlock__block_invoke;
  v9[3] = &__block_descriptor_112_e18_d32__0r_f8r_f16q24l;
  v10 = *&self->super._maxCorrelationLength;
  v11 = channelABuffer;
  v12 = scratch1Buffer;
  v13 = scratch2Buffer;
  v14 = upsamplerFilterCoefficientsLength;
  v15 = correlationBuffer;
  v16 = upsamplerFilterCoefficientsLength / 2;
  v17 = upsamplerFilterCoefficientsBuffer;
  v18 = samplingRate;
  [(TSAudioTimeErrorCorrelator *)self setCorrelationBlock:v9];
}

void __53__TSAudioTimeErrorCorrelatorPostUpsampler__makeBlock__block_invoke(uint64_t a1, const float *__A, const float *a3, int64_t __N)
{
  if (*(a1 + 32) < __N)
  {
    __53__TSAudioTimeErrorCorrelatorPostUpsampler__makeBlock__block_invoke_cold_1();
  }

  if (__A && a3)
  {
    v6 = __N;
    __C = 0.0;
    __I = 0;
    v8 = *(a1 + 40);
    vDSP_vabs(__A, 1, *(a1 + 48), 1, __N);
    vDSP_maxvi(__A, 1, &__C, &__I, v6);
    if (__C <= 0.05)
    {
      printf("insufficient channel A signal level %f\n");
    }

    else
    {
      vDSP_vabs(a3, 1, *(a1 + 48), 1, v6);
      vDSP_maxvi(a3, 1, &__C, &__I, v6);
      if (__C <= 0.05)
      {
        printf("insufficient channel B signal level %f\n");
      }

      else
      {
        v9 = v8 * v6;
        bzero(*(a1 + 48), 8 * *(a1 + 32));
        bzero(*(a1 + 56), 4 * *(a1 + 32));
        bzero(*(a1 + 64), 4 * (*(a1 + 72) + *(a1 + 32) * *(a1 + 40)));
        bzero(*(a1 + 80), 4 * *(a1 + 40) * *(a1 + 32));
        memcpy((*(a1 + 48) + 4 * ((v6 + (v6 >> 63)) >> 1)), __A, 4 * v6);
        vDSP_conv(*(a1 + 48), 1, a3, 1, *(a1 + 56), 1, v6, v6);
        v10 = *(a1 + 64);
        if (v6 >= 1)
        {
          v11 = *(a1 + 56);
          v12 = &v10[*(a1 + 88)];
          v13 = 4 * *(a1 + 40);
          do
          {
            v14 = *v11++;
            *v12 = v14;
            v12 = (v12 + v13);
            --v6;
          }

          while (v6);
        }

        vDSP_conv(v10, 1, (*(a1 + 96) + 4 * *(a1 + 72) - 4), -1, *(a1 + 80), 1, v9, *(a1 + 72));
        vDSP_maxvi(*(a1 + 80), 1, &__C, &__I, v9);
        if (__I)
        {
          v16 = 0.0;
          vDSP_vabs(*(a1 + 80), 1, *(a1 + 80), 1, v9);
          vDSP_meanv(*(a1 + 80), 1, &v16, v9);
          if ((__C / v16) >= 2.0)
          {
            v15 = (__I - v9 / 2) / (*(a1 + 104) * *(a1 + 40));
          }

          else
          {
            printf("insufficient correlation maxValue/meanValue %f/%f %f index %ld\n");
          }
        }
      }
    }
  }
}

- (void)dealloc
{
  free(self->_scratch1Buffer);
  free(self->_scratch2Buffer);
  free(self->_channelABuffer);
  free(self->_correlationBuffer);
  free(self->_upsamplerFilterCoefficientsBuffer);
  v3.receiver = self;
  v3.super_class = TSAudioTimeErrorCorrelatorPostUpsampler;
  [(TSAudioTimeErrorCorrelatorPostUpsampler *)&v3 dealloc];
}

@end