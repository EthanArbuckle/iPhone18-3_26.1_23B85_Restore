@interface TSDContentAnimation
+ (id)animation;
- (void)i_applyToLayer:(id)a3 withTransformBlock:(id)a4 completionBlock:(id)a5;
@end

@implementation TSDContentAnimation

+ (id)animation
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)i_applyToLayer:(id)a3 withTransformBlock:(id)a4 completionBlock:(id)a5
{
  if ([(TSDContentAnimation *)self i_canProduceAnimation])
  {
    [MEMORY[0x277CD9FF0] begin];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__TSDContentAnimation_i_applyToLayer_withTransformBlock_completionBlock___block_invoke;
    v10[3] = &unk_279D49278;
    v10[5] = self;
    v10[6] = a5;
    v10[4] = a3;
    [MEMORY[0x277CD9FF0] setCompletionBlock:v10];
    v9 = [(TSDContentAnimation *)self i_animationWithTransformBlock:a4];
    [v9 setRemovedOnCompletion:0];
    [v9 setFillMode:*MEMORY[0x277CDA238]];
    [a3 addAnimation:v9 forKey:@"contentAnimation"];
    [MEMORY[0x277CD9FF0] commit];
  }
}

uint64_t __73__TSDContentAnimation_i_applyToLayer_withTransformBlock_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeAnimationForKey:@"contentAnimation"];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) i_endLocation];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

@end