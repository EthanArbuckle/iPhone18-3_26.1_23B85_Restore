@interface UIView
@end

@implementation UIView

void __59__UIView_PhotosUIFoundation__px_convertTransform_fromView___block_invoke(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v6 = v5;
  v7 = MEMORY[0x1E695EFD0];
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  *a3 = *MEMORY[0x1E695EFD0];
  *(a3 + 16) = v8;
  *(a3 + 32) = *(v7 + 32);
  if (*(a1 + 32) == v5)
  {
    v10 = v5;
  }

  else
  {
    do
    {
      if (v6)
      {
        [v6 transform];
      }

      else
      {
        memset(&t1, 0, sizeof(t1));
      }

      v9 = *(a3 + 16);
      *&v11.a = *a3;
      *&v11.c = v9;
      *&v11.tx = *(a3 + 32);
      CGAffineTransformConcat(a3, &t1, &v11);
      v10 = [v6 superview];

      v6 = v10;
    }

    while (v10 != *(a1 + 32));
  }
}

void __61__UIView_PhotosUIFoundation__px_convertTransform3D_fromView___block_invoke(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v6 = v5;
  v7 = MEMORY[0x1E69792E8];
  v8 = *(MEMORY[0x1E69792E8] + 80);
  *(a3 + 64) = *(MEMORY[0x1E69792E8] + 64);
  *(a3 + 80) = v8;
  v9 = v7[7];
  *(a3 + 96) = v7[6];
  *(a3 + 112) = v9;
  v10 = v7[1];
  *a3 = *v7;
  *(a3 + 16) = v10;
  v11 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v11;
  if (*(a1 + 32) == v5)
  {
    v16 = v5;
  }

  else
  {
    do
    {
      if (v6)
      {
        [v6 transform3D];
      }

      else
      {
        memset(&a, 0, sizeof(a));
      }

      v12 = *(a3 + 80);
      *&v17.m31 = *(a3 + 64);
      *&v17.m33 = v12;
      v13 = *(a3 + 112);
      *&v17.m41 = *(a3 + 96);
      *&v17.m43 = v13;
      v14 = *(a3 + 16);
      *&v17.m11 = *a3;
      *&v17.m13 = v14;
      v15 = *(a3 + 48);
      *&v17.m21 = *(a3 + 32);
      *&v17.m23 = v15;
      CATransform3DConcat(a3, &a, &v17);
      v16 = [v6 superview];

      v6 = v16;
    }

    while (v16 != *(a1 + 32));
  }
}

BOOL __41__UIView_PhotosUIFoundation__px_rootView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 superview];
  v3 = v2 == 0;

  return v3;
}

uint64_t __83__UIView_PhotosUIFoundation__px_enumerateDescendantSubviewsPassingTest_usingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __106__UIView_PhotosUIFoundation__px_animateUsingDefaultDampedEaseInEaseOutWithDuration_animations_completion___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E69DC908]) initWithControlPoint1:0.330000013 controlPoint2:{0.0, 0.200000003, 1.0}];
  v1 = px_animateUsingDefaultDampedEaseInEaseOutWithDuration_animations_completion__timingParameters;
  px_animateUsingDefaultDampedEaseInEaseOutWithDuration_animations_completion__timingParameters = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

void __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_3(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_5(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_7(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_24(double *a1)
{
  v1 = *(a1 + 4);
  v2 = a1[7];
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[5];
  v6 = a1[6];
  memset(v8, 0, sizeof(v8));
  return [v1 setTransform:{v8, PXAffineTransformMakeWithTranslationScaleRotationTransform(MEMORY[0x1E695EFD0], v8, v5, v6, v2, v3, v4)}];
}

void __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_2_25(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_3_26(double *a1)
{
  v1 = *(a1 + 4);
  v2 = a1[7];
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[5];
  v6 = a1[6];
  memset(v8, 0, sizeof(v8));
  return [v1 setTransform:{v8, PXAffineTransformMakeWithTranslationScaleRotationTransform(MEMORY[0x1E695EFD0], v8, v5, v6, v2, v3, v4)}];
}

void __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_4_27(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_5_28(double *a1)
{
  v1 = *(a1 + 4);
  v2 = a1[7];
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[5];
  v6 = a1[6];
  memset(v8, 0, sizeof(v8));
  return [v1 setTransform:{v8, PXAffineTransformMakeWithTranslationScaleRotationTransform(MEMORY[0x1E695EFD0], v8, v5, v6, v2, v3, v4)}];
}

void __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_6_29(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

@end