@interface UIView
@end

@implementation UIView

uint64_t __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

void __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_3(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_5(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_7(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_2_20(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_4_22(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_6_24(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __158__UIView_PUDisplayVelocity__pu_animateView_toCenter_bounds_transform_usingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_completion___block_invoke(uint64_t a1, void *a2, void *a3, double a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69DD250];
  v12 = *(a1 + 32);
  v8 = MEMORY[0x1E695DEC8];
  v9 = a3;
  v10 = a2;
  v11 = [v8 arrayWithObjects:&v12 count:1];
  [v7 pu_animateViews:v11 usingSpringWithDuration:*(a1 + 56) delay:v10 options:v9 mass:*(a1 + 40) stiffness:*(a1 + 48) damping:*(a1 + 64) initialVelocity:*(a1 + 72) animations:*(a1 + 80) completion:{a4, v12, v13}];
}

void __139__UIView_PUDisplayVelocity__pu_animateView_toCenter_bounds_transform_usingDefaultDampedSpringWithDelay_initialVelocity_options_completion___block_invoke(uint64_t a1, void *a2, void *a3, double a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69DD250];
  v12 = *(a1 + 32);
  v8 = MEMORY[0x1E695DEC8];
  v9 = a3;
  v10 = a2;
  v11 = [v8 arrayWithObjects:&v12 count:1];
  [v7 pu_animateViews:v11 usingDefaultDampedSpringWithDelay:*(a1 + 48) initialSpringVelocity:v10 options:v9 animations:*(a1 + 40) completion:{a4, v12, v13}];
}

void __147__UIView_PUDisplayVelocity__pu_animateView_toCenter_bounds_transform_withDuration_delay_usingSpringWithDamping_initialVelocity_options_completion___block_invoke(uint64_t a1, void *a2, void *a3, double a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69DD250];
  v12 = *(a1 + 32);
  v8 = MEMORY[0x1E695DEC8];
  v9 = a3;
  v10 = a2;
  v11 = [v8 arrayWithObjects:&v12 count:1];
  [v7 pu_animateViews:v11 withDuration:*(a1 + 64) delay:v10 usingSpringWithDamping:v9 initialSpringVelocity:*(a1 + 40) options:*(a1 + 48) animations:*(a1 + 56) completion:{a4, v12, v13}];
}

@end