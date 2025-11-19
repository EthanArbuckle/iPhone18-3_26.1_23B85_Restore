@interface LTSpeechCompressor
@end

@implementation LTSpeechCompressor

uint64_t __42___LTSpeechCompressor_addAudioSampleData___block_invoke(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained[3] length] - *(WeakRetained + 10);
    *(a3 + 8) = 1;
    if (*a2 <= v7 >> 1)
    {
      v9 = [v6[3] mutableBytes];
      v8 = 0;
      v10 = v6[5];
      *(a3 + 16) = &v10[v9];
      v11 = 2 * *a2;
      *(a3 + 12) = v11;
      v6[5] = &v10[v11];
    }

    else
    {
      *a2 = 0;
      *(a3 + 16) = 0;
      v8 = 1836086393;
      *(a3 + 12) = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end