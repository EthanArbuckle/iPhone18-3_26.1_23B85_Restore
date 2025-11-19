@interface UIViewDeferredAnimation
@end

@implementation UIViewDeferredAnimation

void __95___UIViewDeferredAnimation_calculateFrameValues_frameTimes_withFrameInterval_valueTransformer___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v9 = a2;
  v10 = *(a1 + 48);
  v18 = v9;
  if (v10)
  {
    v11 = (*(v10 + 16))();
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;
  if (v11)
  {
    v13 = a3 + a4 >= a5 ? a5 : a3 + a4;
    [*(a1 + 32) addObject:v11];
    v14 = *(a1 + 40);
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    [v14 addObject:v15];

    if (a5 - v13 - *(a1 + 56) > 0.00000011920929)
    {
      [*(a1 + 32) addObject:v12];
      v16 = *(a1 + 40);
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
      [v16 addObject:v17];
    }
  }
}

@end