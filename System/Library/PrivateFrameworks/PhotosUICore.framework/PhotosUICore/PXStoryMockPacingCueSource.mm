@interface PXStoryMockPacingCueSource
- (PXStoryMockPacingCueSource)init;
- (PXStoryMockPacingCueSource)initWithCueTimes:(id)a3;
- (void)setCurrentTime:(id *)a3;
@end

@implementation PXStoryMockPacingCueSource

- (void)setCurrentTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_currentTime.epoch = a3->var3;
  *&self->_currentTime.value = v3;
}

- (PXStoryMockPacingCueSource)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryMockPacingCueSource.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXStoryMockPacingCueSource init]"}];

  abort();
}

- (PXStoryMockPacingCueSource)initWithCueTimes:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PXStoryMockPacingCueSource;
  v5 = [(PXStoryMockPacingCueSource *)&v16 init];
  if (v5)
  {
    v6 = [v4 copy];
    cueTimes = v5->_cueTimes;
    v5->_cueTimes = v6;

    v8 = MEMORY[0x1E6960CC0];
    *&v5->_currentTime.value = *MEMORY[0x1E6960CC0];
    v5->_currentTime.epoch = *(v8 + 16);
    v9 = [PXConcreteAudioCueSource alloc];
    v10 = [v4 count];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__PXStoryMockPacingCueSource_initWithCueTimes___block_invoke;
    v14[3] = &unk_1E772EAE0;
    v15 = v4;
    v11 = [(PXConcreteAudioCueSource *)v9 initWithNumberOfCues:v10 configuration:v14];
    audioCueSource = v5->_audioCueSource;
    v5->_audioCueSource = v11;
  }

  return v5;
}

unint64_t __47__PXStoryMockPacingCueSource_initWithCueTimes___block_invoke(uint64_t a1, CMTime *a2)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:i];
      [v6 doubleValue];
      CMTimeMakeWithSeconds(&v8, v7, 600);
      *a2 = v8;

      a2[1].value = 3;
      result = [*(a1 + 32) count];
      a2 = (a2 + 32);
    }
  }

  return result;
}

@end