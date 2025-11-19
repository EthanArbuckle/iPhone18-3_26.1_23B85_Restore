@interface TSAudioTimeErrorCorrelatorResampler
- (TSAudioTimeErrorCorrelatorResampler)initWithMaxCorrelationLength:(int64_t)a3 andUpscaleFactor:(int64_t)a4 forSamplingRate:(double)a5;
- (void)_makeBlock;
- (void)dealloc;
@end

@implementation TSAudioTimeErrorCorrelatorResampler

- (TSAudioTimeErrorCorrelatorResampler)initWithMaxCorrelationLength:(int64_t)a3 andUpscaleFactor:(int64_t)a4 forSamplingRate:(double)a5
{
  v10.receiver = self;
  v10.super_class = TSAudioTimeErrorCorrelatorResampler;
  v5 = [(TSAudioTimeErrorCorrelator *)&v10 initWithMaxCorrelationLength:a3 andUpscaleFactor:a4 forSamplingRate:a5];
  v6 = v5;
  if (v5)
  {
    [(TSAudioTimeErrorCorrelator *)v5 _calculateUpsamplerCoefficients:&v5->_upsamplerFilterCoefficientsBuffer length:&v5->_upsamplerFilterCoefficientsLength];
    v6->_scratchBuffer = malloc_type_calloc(v6->_upsamplerFilterCoefficientsLength + v6->super._maxCorrelationLength * v6->super._upscaleFactor, 4uLL, 0x100004052888210uLL);
    v6->_channelABuffer = malloc_type_calloc(2 * v6->super._upscaleFactor * v6->super._maxCorrelationLength, 4uLL, 0x100004052888210uLL);
    v6->_channelBBuffer = malloc_type_calloc(v6->super._maxCorrelationLength * v6->super._upscaleFactor, 4uLL, 0x100004052888210uLL);
    v7 = malloc_type_calloc(v6->super._maxCorrelationLength * v6->super._upscaleFactor, 4uLL, 0x100004052888210uLL);
    v6->_correlationBuffer = v7;
    scratchBuffer = v6->_scratchBuffer;
    if (scratchBuffer && v6->_channelABuffer && v6->_channelBBuffer && v7 && v6->_upsamplerFilterCoefficientsBuffer)
    {
      bzero(scratchBuffer, v6->_upsamplerFilterCoefficientsLength + 4 * v6->super._upscaleFactor * v6->super._maxCorrelationLength);
      bzero(v6->_channelABuffer, 8 * v6->super._upscaleFactor * v6->super._maxCorrelationLength);
      bzero(v6->_channelBBuffer, 4 * v6->super._upscaleFactor * v6->super._maxCorrelationLength);
      bzero(v6->_correlationBuffer, 4 * v6->super._upscaleFactor * v6->super._maxCorrelationLength);
      [(TSAudioTimeErrorCorrelatorResampler *)v6 _makeBlock];
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
  scratchBuffer = self->_scratchBuffer;
  channelABuffer = self->_channelABuffer;
  channelBBuffer = self->_channelBBuffer;
  correlationBuffer = self->_correlationBuffer;
  upsamplerFilterCoefficientsBuffer = self->_upsamplerFilterCoefficientsBuffer;
  upsamplerFilterCoefficientsLength = self->_upsamplerFilterCoefficientsLength;
  samplingRate = self->super._samplingRate;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__TSAudioTimeErrorCorrelatorResampler__makeBlock__block_invoke;
  v9[3] = &__block_descriptor_112_e18_d32__0r_f8r_f16q24l;
  v10 = *&self->super._maxCorrelationLength;
  v11 = channelABuffer;
  v12 = scratchBuffer;
  v13 = upsamplerFilterCoefficientsLength;
  v14 = channelBBuffer;
  v15 = correlationBuffer;
  v16 = upsamplerFilterCoefficientsLength / 2;
  v17 = upsamplerFilterCoefficientsBuffer;
  v18 = samplingRate;
  [(TSAudioTimeErrorCorrelator *)self setCorrelationBlock:v9];
}

void __49__TSAudioTimeErrorCorrelatorResampler__makeBlock__block_invoke(uint64_t a1, const float *__A, const float *a3, int64_t __N)
{
  if (*(a1 + 32) < __N)
  {
    __49__TSAudioTimeErrorCorrelatorResampler__makeBlock__block_invoke_cold_1();
  }

  v4 = __A;
  if (__A)
  {
    v5 = a3;
    if (a3)
    {
      v6 = __N;
      __C = 0.0;
      __I = 0;
      v8 = *(a1 + 40);
      vDSP_vabs(__A, 1, *(a1 + 48), 1, __N);
      vDSP_maxvi(v4, 1, &__C, &__I, v6);
      if (__C <= 0.05)
      {
        printf("insufficient channel A signal level %f\n", __C);
      }

      else
      {
        vDSP_vabs(v5, 1, *(a1 + 48), 1, v6);
        vDSP_maxvi(v5, 1, &__C, &__I, v6);
        if (__C <= 0.05)
        {
          printf("insufficient channel B signal level %f\n", __C);
        }

        else
        {
          v9 = v8 * v6;
          bzero(*(a1 + 56), *(a1 + 64) + 4 * *(a1 + 40) * *(a1 + 32));
          bzero(*(a1 + 48), 8 * *(a1 + 40) * *(a1 + 32));
          bzero(*(a1 + 72), 4 * *(a1 + 40) * *(a1 + 32));
          bzero(*(a1 + 80), 4 * *(a1 + 40) * *(a1 + 32));
          v10 = *(a1 + 56);
          if (v6 >= 1)
          {
            v11 = &v10[*(a1 + 88)];
            v12 = 4 * *(a1 + 40);
            v13 = v6;
            do
            {
              v14 = *v4++;
              *v11 = v14;
              v11 = (v11 + v12);
              --v13;
            }

            while (v13);
          }

          vDSP_conv(v10, 1, (*(a1 + 96) + 4 * *(a1 + 64) - 4), -1, (*(a1 + 48) + 4 * (v9 / 2)), 1, v9, *(a1 + 64));
          v15 = *(a1 + 56);
          if (v6 >= 1)
          {
            v16 = &v15[*(a1 + 88)];
            v17 = 4 * *(a1 + 40);
            do
            {
              v18 = *v5++;
              *v16 = v18;
              v16 = (v16 + v17);
              --v6;
            }

            while (v6);
          }

          vDSP_conv(v15, 1, (*(a1 + 96) + 4 * *(a1 + 64) - 4), -1, *(a1 + 72), 1, v9, *(a1 + 64));
          vDSP_conv(*(a1 + 48), 1, *(a1 + 72), 1, *(a1 + 80), 1, v9, v9);
          vDSP_maxvi(*(a1 + 80), 1, &__C, &__I, v9);
          if (__I)
          {
            v19 = (__I - v9 / 2) / (*(a1 + 104) * *(a1 + 40));
          }
        }
      }
    }
  }
}

- (void)dealloc
{
  free(self->_scratchBuffer);
  free(self->_channelABuffer);
  free(self->_channelBBuffer);
  free(self->_correlationBuffer);
  free(self->_upsamplerFilterCoefficientsBuffer);
  v3.receiver = self;
  v3.super_class = TSAudioTimeErrorCorrelatorResampler;
  [(TSAudioTimeErrorCorrelatorResampler *)&v3 dealloc];
}

@end