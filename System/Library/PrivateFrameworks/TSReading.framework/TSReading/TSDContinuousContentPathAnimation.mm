@interface TSDContinuousContentPathAnimation
- (void)dealloc;
- (void)i_applyToLayer:(id)layer withTransformBlock:(id)block completionBlock:(id)completionBlock;
@end

@implementation TSDContinuousContentPathAnimation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDContinuousContentPathAnimation;
  [(TSDContinuousContentPathAnimation *)&v3 dealloc];
}

- (void)i_applyToLayer:(id)layer withTransformBlock:(id)block completionBlock:(id)completionBlock
{
  tick = self->_tick;
  if (tick)
  {
    if (self->_isFinished)
    {
      v10 = tick[2](tick, a2, 0.0, 0.0);
      (*(block + 2))(v22, block, v10);
      v19 = v22[5];
      v20 = v22[6];
      v21 = v22[7];
      v14 = v22[0];
      v15 = v22[1];
      v16 = v22[2];
      v17 = v22[3];
      v18 = v22[4];
      [layer setTransform:&v14];
      v11 = objc_alloc_init(TSDDisplayLink);
      *&v14 = 0;
      *(&v14 + 1) = &v14;
      *&v15 = 0x3052000000;
      *(&v15 + 1) = __Block_byref_object_copy__16;
      *&v16 = __Block_byref_object_dispose__16;
      *(&v16 + 1) = 0;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __87__TSDContinuousContentPathAnimation_i_applyToLayer_withTransformBlock_completionBlock___block_invoke;
      v13[3] = &unk_279D492A0;
      v13[4] = self;
      v13[5] = layer;
      v13[6] = block;
      v13[7] = &v14;
      [(TSDDisplayLink *)v11 setTickBlock:v13];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __87__TSDContinuousContentPathAnimation_i_applyToLayer_withTransformBlock_completionBlock___block_invoke_2;
      v12[3] = &unk_279D48418;
      v12[4] = layer;
      v12[5] = completionBlock;
      v12[6] = &v14;
      [(TSDDisplayLink *)v11 setCompletionBlock:v12];
      [(TSDDisplayLink *)v11 start];
      _Block_object_dispose(&v14, 8);
    }
  }
}

uint64_t __87__TSDContinuousContentPathAnimation_i_applyToLayer_withTransformBlock_completionBlock___block_invoke(void *a1, double a2)
{
  v4 = (*(*(a1[4] + 8) + 16))();
  (*(a1[6] + 16))(v9);
  v5 = a1[5];
  v8[4] = v9[4];
  v8[5] = v9[5];
  v8[6] = v9[6];
  v8[7] = v9[7];
  v8[0] = v9[0];
  v8[1] = v9[1];
  v8[2] = v9[2];
  v8[3] = v9[3];
  [v5 setTransform:v8];
  v6 = (*(*(a1[4] + 16) + 16))(a2);
  if (v6)
  {
    *(*(a1[7] + 8) + 40) = v4;
  }

  return v6;
}

void __87__TSDContinuousContentPathAnimation_i_applyToLayer_withTransformBlock_completionBlock___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(MEMORY[0x277CD9DE8] + 80);
  v7[4] = *(MEMORY[0x277CD9DE8] + 64);
  v7[5] = v3;
  v4 = *(MEMORY[0x277CD9DE8] + 112);
  v7[6] = *(MEMORY[0x277CD9DE8] + 96);
  v7[7] = v4;
  v5 = *(MEMORY[0x277CD9DE8] + 16);
  v7[0] = *MEMORY[0x277CD9DE8];
  v7[1] = v5;
  v6 = *(MEMORY[0x277CD9DE8] + 48);
  v7[2] = *(MEMORY[0x277CD9DE8] + 32);
  v7[3] = v6;
  [v2 setTransform:v7];
  (*(a1[5] + 16))();
}

@end