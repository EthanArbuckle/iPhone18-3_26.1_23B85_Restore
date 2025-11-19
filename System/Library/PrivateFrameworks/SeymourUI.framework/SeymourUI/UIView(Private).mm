@interface UIView(Private)
+ (uint64_t)smu_isInAnimationBlock;
+ (void)smu_animateUsingSpringWithTension:()Private friction:animations:completion:;
@end

@implementation UIView(Private)

+ (uint64_t)smu_isInAnimationBlock
{
  v0 = objc_opt_class();

  return [v0 _isInAnimationBlock];
}

+ (void)smu_animateUsingSpringWithTension:()Private friction:animations:completion:
{
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__UIView_Private__smu_animateUsingSpringWithTension_friction_animations_completion___block_invoke;
  v12[3] = &unk_277D97D38;
  v13 = v10;
  v11 = v10;
  [a1 _animateUsingSpringWithTension:0 friction:a5 interactive:v12 animations:a2 completion:a3];
}

@end