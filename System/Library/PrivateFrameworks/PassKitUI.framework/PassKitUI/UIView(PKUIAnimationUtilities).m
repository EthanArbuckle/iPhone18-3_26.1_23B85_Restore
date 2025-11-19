@interface UIView(PKUIAnimationUtilities)
- (double)pkui_setAlpha:()PKUIAnimationUtilities animated:withCompletion:;
- (double)pkui_setAlpha:()PKUIAnimationUtilities withAnimationFactory:animation:removePriorAnimation:;
- (double)pkui_setAlpha:()PKUIAnimationUtilities withAnimationFactory:completion:;
- (double)pkui_setBounds:()PKUIAnimationUtilities animated:;
- (double)pkui_setBounds:()PKUIAnimationUtilities animated:withCompletion:;
- (double)pkui_setBounds:()PKUIAnimationUtilities withAdditiveAnimationFactory:accumulator:;
- (double)pkui_setBounds:()PKUIAnimationUtilities withAdditiveAnimationFactory:animation:;
- (double)pkui_setBounds:()PKUIAnimationUtilities withAdditiveAnimationFactory:completion:;
- (double)pkui_setCornerRadius:()PKUIAnimationUtilities animated:withCompletion:;
- (double)pkui_setCornerRadius:()PKUIAnimationUtilities withAdditiveAnimationFactory:accumulator:;
- (double)pkui_setCornerRadius:()PKUIAnimationUtilities withAdditiveAnimationFactory:animation:;
- (double)pkui_setCornerRadius:()PKUIAnimationUtilities withAdditiveAnimationFactory:completion:;
- (double)pkui_setFrame:()PKUIAnimationUtilities animated:;
- (double)pkui_setFrame:()PKUIAnimationUtilities animated:withCompletion:;
- (double)pkui_setFrame:()PKUIAnimationUtilities withAdditiveAnimationFactory:accumulator:;
- (double)pkui_setFrame:()PKUIAnimationUtilities withAdditiveAnimationFactory:animation:;
- (double)pkui_setFrame:()PKUIAnimationUtilities withAdditiveAnimationFactory:completion:;
- (double)pkui_setPosition:()PKUIAnimationUtilities animated:withCompletion:;
- (double)pkui_setPosition:()PKUIAnimationUtilities withAdditiveAnimationFactory:accumulator:;
- (double)pkui_setPosition:()PKUIAnimationUtilities withAdditiveAnimationFactory:animation:;
- (double)pkui_setPosition:()PKUIAnimationUtilities withAdditiveAnimationFactory:completion:;
- (double)pkui_setShadowOffset:()PKUIAnimationUtilities animated:withCompletion:;
- (double)pkui_setShadowOffset:()PKUIAnimationUtilities withAdditiveAnimationFactory:accumulator:;
- (double)pkui_setShadowOffset:()PKUIAnimationUtilities withAdditiveAnimationFactory:animation:;
- (double)pkui_setShadowOffset:()PKUIAnimationUtilities withAdditiveAnimationFactory:completion:;
- (double)pkui_setShadowOpacity:()PKUIAnimationUtilities animated:withCompletion:;
- (double)pkui_setShadowOpacity:()PKUIAnimationUtilities withAnimationFactory:animation:;
- (double)pkui_setShadowOpacity:()PKUIAnimationUtilities withAnimationFactory:completion:;
- (double)pkui_setShadowRadius:()PKUIAnimationUtilities animated:withCompletion:;
- (double)pkui_setShadowRadius:()PKUIAnimationUtilities withAdditiveAnimationFactory:accumulator:;
- (double)pkui_setShadowRadius:()PKUIAnimationUtilities withAdditiveAnimationFactory:animation:;
- (double)pkui_setShadowRadius:()PKUIAnimationUtilities withAdditiveAnimationFactory:completion:;
- (uint64_t)pkui_setBackgroundColor:()PKUIAnimationUtilities animated:;
- (uint64_t)pkui_setBackgroundColor:()PKUIAnimationUtilities animated:completion:;
- (uint64_t)pkui_setBackgroundColor:()PKUIAnimationUtilities withAnimationFactory:animation:;
- (uint64_t)pkui_setBackgroundColor:()PKUIAnimationUtilities withAnimationFactory:completion:;
- (void)pkui_setAlpha:()PKUIAnimationUtilities animated:;
- (void)pkui_setCornerRadius:()PKUIAnimationUtilities animated:;
- (void)pkui_setPosition:()PKUIAnimationUtilities animated:;
- (void)pkui_setShadowOffset:()PKUIAnimationUtilities animated:;
- (void)pkui_setShadowOpacity:()PKUIAnimationUtilities animated:;
- (void)pkui_setShadowRadius:()PKUIAnimationUtilities animated:;
- (void)pkui_setTransform:()PKUIAnimationUtilities animated:;
- (void)pkui_setTransform:()PKUIAnimationUtilities animated:withCompletion:;
- (void)pkui_setTransform:()PKUIAnimationUtilities withAdditiveAnimationFactory:accumulator:;
- (void)pkui_setTransform:()PKUIAnimationUtilities withAdditiveAnimationFactory:animation:;
- (void)pkui_setTransform:()PKUIAnimationUtilities withAdditiveAnimationFactory:completion:;
@end

@implementation UIView(PKUIAnimationUtilities)

- (double)pkui_setFrame:()PKUIAnimationUtilities animated:
{
  if (a7)
  {
    v12 = [MEMORY[0x1E69B92B0] sharedDefaultFactory];
    [a1 pkui_setFrame:v12 withAdditiveAnimationFactory:0 completion:{a2, a3, a4, a5}];
    v14 = v13;
  }

  else
  {
    [a1 pkui_setFrame:0 withAdditiveAnimationFactory:0 completion:{a2, a3, a4, a5}];
    return v15;
  }

  return v14;
}

- (double)pkui_setFrame:()PKUIAnimationUtilities animated:withCompletion:
{
  if (a7)
  {
    v13 = MEMORY[0x1E69B92B0];
    v14 = a8;
    v15 = [v13 sharedDefaultFactory];
    [a1 pkui_setFrame:v15 withAdditiveAnimationFactory:v14 completion:{a2, a3, a4, a5}];
    v17 = v16;
  }

  else
  {
    v15 = a8;
    [a1 pkui_setFrame:0 withAdditiveAnimationFactory:v15 completion:{a2, a3, a4, a5}];
    v17 = v18;
  }

  return v17;
}

- (double)pkui_setFrame:()PKUIAnimationUtilities withAdditiveAnimationFactory:completion:
{
  v14 = a8;
  v27 = 0;
  if (a7)
  {
    v15 = &v27;
  }

  else
  {
    v15 = 0;
  }

  [a1 pkui_setFrame:a7 withAdditiveAnimationFactory:v15 animation:{a2, a3, a4, a5}];
  v17 = v16;
  v18 = v27;
  if (v27)
  {
    if (v14)
    {
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __88__UIView_PKUIAnimationUtilities__pkui_setFrame_withAdditiveAnimationFactory_completion___block_invoke;
      v25 = &unk_1E8010AD8;
      v26 = v14;
      [v18 pkui_setCompletionHandler:&v22];
    }

    v19 = [a1 layer];
    v20 = [v19 pkui_addAdditiveAnimation:v27];
  }

  else if (v14)
  {
    (*(v14 + 2))(v14, 1);
  }

  return v17;
}

- (double)pkui_setBounds:()PKUIAnimationUtilities animated:
{
  if (a7)
  {
    v12 = [MEMORY[0x1E69B92B0] sharedDefaultFactory];
    [a1 pkui_setBounds:v12 withAdditiveAnimationFactory:0 completion:{a2, a3, a4, a5}];
    v14 = v13;
  }

  else
  {
    [a1 pkui_setBounds:0 withAdditiveAnimationFactory:0 completion:{a2, a3, a4, a5}];
    return v15;
  }

  return v14;
}

- (double)pkui_setBounds:()PKUIAnimationUtilities animated:withCompletion:
{
  if (a7)
  {
    v13 = MEMORY[0x1E69B92B0];
    v14 = a8;
    v15 = [v13 sharedDefaultFactory];
    [a1 pkui_setBounds:v15 withAdditiveAnimationFactory:v14 completion:{a2, a3, a4, a5}];
    v17 = v16;
  }

  else
  {
    v15 = a8;
    [a1 pkui_setBounds:0 withAdditiveAnimationFactory:v15 completion:{a2, a3, a4, a5}];
    v17 = v18;
  }

  return v17;
}

- (double)pkui_setBounds:()PKUIAnimationUtilities withAdditiveAnimationFactory:completion:
{
  v14 = a8;
  v27 = 0;
  if (a7)
  {
    v15 = &v27;
  }

  else
  {
    v15 = 0;
  }

  [a1 pkui_setBounds:a7 withAdditiveAnimationFactory:v15 animation:{a2, a3, a4, a5}];
  v17 = v16;
  v18 = v27;
  if (v27)
  {
    if (v14)
    {
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __89__UIView_PKUIAnimationUtilities__pkui_setBounds_withAdditiveAnimationFactory_completion___block_invoke;
      v25 = &unk_1E8010AD8;
      v26 = v14;
      [v18 pkui_setCompletionHandler:&v22];
    }

    v19 = [a1 layer];
    v20 = [v19 pkui_addAdditiveAnimation:v27];
  }

  else if (v14)
  {
    (*(v14 + 2))(v14, 1);
  }

  return v17;
}

- (void)pkui_setPosition:()PKUIAnimationUtilities animated:
{
  if (a5)
  {
    v8 = [MEMORY[0x1E69B92B0] sharedDefaultFactory];
    [a1 pkui_setPosition:v8 withAdditiveAnimationFactory:0 completion:{a2, a3}];
  }

  else
  {

    [a1 pkui_setPosition:0 withAdditiveAnimationFactory:0 completion:?];
  }
}

- (double)pkui_setPosition:()PKUIAnimationUtilities animated:withCompletion:
{
  if (a5)
  {
    v9 = MEMORY[0x1E69B92B0];
    v10 = a6;
    v11 = [v9 sharedDefaultFactory];
    [a1 pkui_setPosition:v11 withAdditiveAnimationFactory:v10 completion:{a2, a3}];
    v13 = v12;
  }

  else
  {
    v11 = a6;
    [a1 pkui_setPosition:0 withAdditiveAnimationFactory:v11 completion:{a2, a3}];
    v13 = v14;
  }

  return v13;
}

- (double)pkui_setPosition:()PKUIAnimationUtilities withAdditiveAnimationFactory:completion:
{
  v10 = a6;
  v23 = 0;
  if (a5)
  {
    v11 = &v23;
  }

  else
  {
    v11 = 0;
  }

  [a1 pkui_setPosition:a5 withAdditiveAnimationFactory:v11 animation:{a2, a3}];
  v13 = v12;
  v14 = v23;
  if (v23)
  {
    if (v10)
    {
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __91__UIView_PKUIAnimationUtilities__pkui_setPosition_withAdditiveAnimationFactory_completion___block_invoke;
      v21 = &unk_1E8010AD8;
      v22 = v10;
      [v14 pkui_setCompletionHandler:&v18];
    }

    v15 = [a1 layer];
    v16 = [v15 pkui_addAdditiveAnimation:v23];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 1);
  }

  return v13;
}

- (void)pkui_setTransform:()PKUIAnimationUtilities animated:
{
  if (a4)
  {
    v6 = [MEMORY[0x1E69B92B0] sharedDefaultFactory];
    v7 = a3[5];
    v19 = a3[4];
    v20 = v7;
    v8 = a3[7];
    v21 = a3[6];
    v22 = v8;
    v9 = a3[1];
    v15 = *a3;
    v16 = v9;
    v10 = a3[3];
    v17 = a3[2];
    v18 = v10;
    [a1 pkui_setTransform:&v15 withAdditiveAnimationFactory:v6 completion:0];
  }

  else
  {
    v11 = a3[5];
    v19 = a3[4];
    v20 = v11;
    v12 = a3[7];
    v21 = a3[6];
    v22 = v12;
    v13 = a3[1];
    v15 = *a3;
    v16 = v13;
    v14 = a3[3];
    v17 = a3[2];
    v18 = v14;
    [a1 pkui_setTransform:&v15 withAdditiveAnimationFactory:0 completion:0];
  }
}

- (void)pkui_setTransform:()PKUIAnimationUtilities animated:withCompletion:
{
  if (a4)
  {
    v7 = MEMORY[0x1E69B92B0];
    v8 = a5;
    v9 = [v7 sharedDefaultFactory];
    v10 = a3[5];
    v23 = a3[4];
    v24 = v10;
    v11 = a3[7];
    v25 = a3[6];
    v26 = v11;
    v12 = a3[1];
    v19 = *a3;
    v20 = v12;
    v13 = a3[3];
    v21 = a3[2];
    v22 = v13;
    [a1 pkui_setTransform:&v19 withAdditiveAnimationFactory:v9 completion:v8];
  }

  else
  {
    v14 = a3[5];
    v23 = a3[4];
    v24 = v14;
    v15 = a3[7];
    v25 = a3[6];
    v26 = v15;
    v16 = a3[1];
    v19 = *a3;
    v20 = v16;
    v17 = a3[3];
    v21 = a3[2];
    v22 = v17;
    v18 = a5;
    [a1 pkui_setTransform:&v19 withAdditiveAnimationFactory:0 completion:v18];
  }
}

- (void)pkui_setTransform:()PKUIAnimationUtilities withAdditiveAnimationFactory:completion:
{
  v9 = a4;
  v21 = 0;
  *a5 = 0u;
  a5[1] = 0u;
  a5[2] = 0u;
  a5[3] = 0u;
  a5[4] = 0u;
  a5[5] = 0u;
  a5[6] = 0u;
  a5[7] = 0u;
  if (a3)
  {
    v10 = &v21;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2[5];
  v20[4] = a2[4];
  v20[5] = v11;
  v12 = a2[7];
  v20[6] = a2[6];
  v20[7] = v12;
  v13 = a2[1];
  v20[0] = *a2;
  v20[1] = v13;
  v14 = a2[3];
  v20[2] = a2[2];
  v20[3] = v14;
  [a1 pkui_setTransform:v20 withAdditiveAnimationFactory:a3 animation:v10];
  v15 = v21;
  if (v21)
  {
    if (v9)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __92__UIView_PKUIAnimationUtilities__pkui_setTransform_withAdditiveAnimationFactory_completion___block_invoke;
      v18[3] = &unk_1E8010AD8;
      v19 = v9;
      [v15 pkui_setCompletionHandler:v18];
    }

    v16 = [a1 layer];
    v17 = [v16 pkui_addAdditiveAnimation:v21];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 1);
  }
}

- (void)pkui_setAlpha:()PKUIAnimationUtilities animated:
{
  if (a4)
  {
    v6 = [MEMORY[0x1E69B92B0] sharedDefaultFactory];
    [a1 pkui_setAlpha:v6 withAnimationFactory:0 completion:a2];
  }

  else
  {

    [a1 pkui_setAlpha:0 withAnimationFactory:0 completion:?];
  }
}

- (double)pkui_setAlpha:()PKUIAnimationUtilities animated:withCompletion:
{
  if (a4)
  {
    v7 = MEMORY[0x1E69B92B0];
    v8 = a5;
    v9 = [v7 sharedDefaultFactory];
    [a1 pkui_setAlpha:v9 withAnimationFactory:v8 completion:a2];
    v11 = v10;
  }

  else
  {
    v9 = a5;
    [a1 pkui_setAlpha:0 withAnimationFactory:v9 completion:a2];
    v11 = v12;
  }

  return v11;
}

- (double)pkui_setAlpha:()PKUIAnimationUtilities withAnimationFactory:completion:
{
  v8 = a5;
  v19 = 0;
  v18 = 0;
  if (a4)
  {
    v9 = &v19;
  }

  else
  {
    v9 = 0;
  }

  [a1 pkui_setAlpha:a4 withAnimationFactory:v9 animation:&v18 removePriorAnimation:a2];
  v11 = v10;
  v12 = [a1 layer];
  v13 = v12;
  if (v18 == 1)
  {
    [v12 removeAnimationForKey:@"opacity"];
  }

  v14 = v19;
  if (v19)
  {
    if (v8)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __80__UIView_PKUIAnimationUtilities__pkui_setAlpha_withAnimationFactory_completion___block_invoke;
      v16[3] = &unk_1E8010AD8;
      v17 = v8;
      [v14 pkui_setCompletionHandler:v16];

      v14 = v19;
    }

    [v13 addAnimation:v14 forKey:@"opacity"];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 1);
  }

  return v11;
}

- (uint64_t)pkui_setBackgroundColor:()PKUIAnimationUtilities animated:
{
  if (a4)
  {
    v5 = MEMORY[0x1E69B92B0];
    v6 = a3;
    v7 = [v5 sharedDefaultFactory];
    v8 = [a1 pkui_setBackgroundColor:v6 withAnimationFactory:v7 completion:0];
  }

  else
  {
    v7 = a3;
    v8 = [a1 pkui_setBackgroundColor:v7 withAnimationFactory:0 completion:0];
  }

  return v8;
}

- (uint64_t)pkui_setBackgroundColor:()PKUIAnimationUtilities animated:completion:
{
  if (a4)
  {
    v7 = MEMORY[0x1E69B92B0];
    v8 = a5;
    v9 = a3;
    v10 = [v7 sharedDefaultFactory];
    v11 = [a1 pkui_setBackgroundColor:v9 withAnimationFactory:v10 completion:v8];
  }

  else
  {
    v9 = a5;
    v10 = a3;
    v11 = [a1 pkui_setBackgroundColor:v10 withAnimationFactory:0 completion:v9];
  }

  return v11;
}

- (uint64_t)pkui_setBackgroundColor:()PKUIAnimationUtilities withAnimationFactory:completion:
{
  v8 = a5;
  v19 = 0;
  if (a4)
  {
    v9 = &v19;
  }

  else
  {
    v9 = 0;
  }

  v10 = [a1 pkui_setBackgroundColor:a3 withAnimationFactory:a4 animation:v9];
  v11 = v19;
  if (v19)
  {
    if (v8)
    {
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __90__UIView_PKUIAnimationUtilities__pkui_setBackgroundColor_withAnimationFactory_completion___block_invoke;
      v17 = &unk_1E8010AD8;
      v18 = v8;
      [v11 pkui_setCompletionHandler:&v14];
    }

    v12 = [a1 layer];
    [v12 removeAnimationForKey:@"backgroundColor"];
    [v12 addAnimation:v19 forKey:@"backgroundColor"];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 1);
  }

  return v10;
}

- (void)pkui_setCornerRadius:()PKUIAnimationUtilities animated:
{
  if (a4)
  {
    v6 = [MEMORY[0x1E69B92B0] sharedDefaultFactory];
    [a1 pkui_setCornerRadius:v6 withAdditiveAnimationFactory:0 completion:a2];
  }

  else
  {

    [a1 pkui_setCornerRadius:0 withAdditiveAnimationFactory:0 completion:?];
  }
}

- (double)pkui_setCornerRadius:()PKUIAnimationUtilities animated:withCompletion:
{
  if (a4)
  {
    v7 = MEMORY[0x1E69B92B0];
    v8 = a5;
    v9 = [v7 sharedDefaultFactory];
    [a1 pkui_setCornerRadius:v9 withAdditiveAnimationFactory:v8 completion:a2];
    v11 = v10;
  }

  else
  {
    v9 = a5;
    [a1 pkui_setCornerRadius:0 withAdditiveAnimationFactory:v9 completion:a2];
    v11 = v12;
  }

  return v11;
}

- (double)pkui_setCornerRadius:()PKUIAnimationUtilities withAdditiveAnimationFactory:completion:
{
  v8 = a5;
  v21 = 0;
  if (a4)
  {
    v9 = &v21;
  }

  else
  {
    v9 = 0;
  }

  [a1 pkui_setCornerRadius:a4 withAdditiveAnimationFactory:v9 animation:a2];
  v11 = v10;
  v12 = v21;
  if (v21)
  {
    if (v8)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __95__UIView_PKUIAnimationUtilities__pkui_setCornerRadius_withAdditiveAnimationFactory_completion___block_invoke;
      v19 = &unk_1E8010AD8;
      v20 = v8;
      [v12 pkui_setCompletionHandler:&v16];
    }

    v13 = [a1 layer];
    v14 = [v13 pkui_addAdditiveAnimation:v21];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 1);
  }

  return v11;
}

- (void)pkui_setShadowOpacity:()PKUIAnimationUtilities animated:
{
  if (a4)
  {
    v6 = [MEMORY[0x1E69B92B0] sharedDefaultFactory];
    [a1 pkui_setShadowOpacity:v6 withAnimationFactory:0 completion:a2];
  }

  else
  {

    [a1 pkui_setShadowOpacity:0 withAnimationFactory:0 completion:?];
  }
}

- (double)pkui_setShadowOpacity:()PKUIAnimationUtilities animated:withCompletion:
{
  if (a4)
  {
    v7 = MEMORY[0x1E69B92B0];
    v8 = a5;
    v9 = [v7 sharedDefaultFactory];
    [a1 pkui_setShadowOpacity:v9 withAnimationFactory:v8 completion:a2];
    v11 = v10;
  }

  else
  {
    v9 = a5;
    [a1 pkui_setShadowOpacity:0 withAnimationFactory:v9 completion:a2];
    v11 = v12;
  }

  return v11;
}

- (double)pkui_setShadowOpacity:()PKUIAnimationUtilities withAnimationFactory:completion:
{
  v8 = a5;
  v20 = 0;
  if (a4)
  {
    v9 = &v20;
  }

  else
  {
    v9 = 0;
  }

  [a1 pkui_setShadowOpacity:a4 withAnimationFactory:v9 animation:a2];
  v11 = v10;
  v12 = v20;
  if (v20)
  {
    if (v8)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __88__UIView_PKUIAnimationUtilities__pkui_setShadowOpacity_withAnimationFactory_completion___block_invoke;
      v18 = &unk_1E8010AD8;
      v19 = v8;
      [v12 pkui_setCompletionHandler:&v15];
    }

    v13 = [a1 layer];
    [v13 removeAnimationForKey:@"shadowOpacity"];
    [v13 addAnimation:v20 forKey:@"shadowOpacity"];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 1);
  }

  return v11;
}

- (void)pkui_setShadowOffset:()PKUIAnimationUtilities animated:
{
  if (a5)
  {
    v8 = [MEMORY[0x1E69B92B0] sharedDefaultFactory];
    [a1 pkui_setShadowOffset:v8 withAdditiveAnimationFactory:0 completion:{a2, a3}];
  }

  else
  {

    [a1 pkui_setShadowOffset:0 withAdditiveAnimationFactory:0 completion:?];
  }
}

- (double)pkui_setShadowOffset:()PKUIAnimationUtilities animated:withCompletion:
{
  if (a5)
  {
    v9 = MEMORY[0x1E69B92B0];
    v10 = a6;
    v11 = [v9 sharedDefaultFactory];
    [a1 pkui_setShadowOffset:v11 withAdditiveAnimationFactory:v10 completion:{a2, a3}];
    v13 = v12;
  }

  else
  {
    v11 = a6;
    [a1 pkui_setShadowOffset:0 withAdditiveAnimationFactory:v11 completion:{a2, a3}];
    v13 = v14;
  }

  return v13;
}

- (double)pkui_setShadowOffset:()PKUIAnimationUtilities withAdditiveAnimationFactory:completion:
{
  v10 = a6;
  v23 = 0;
  if (a5)
  {
    v11 = &v23;
  }

  else
  {
    v11 = 0;
  }

  [a1 pkui_setShadowOffset:a5 withAdditiveAnimationFactory:v11 animation:{a2, a3}];
  v13 = v12;
  v14 = v23;
  if (v23)
  {
    if (v10)
    {
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __95__UIView_PKUIAnimationUtilities__pkui_setShadowOffset_withAdditiveAnimationFactory_completion___block_invoke;
      v21 = &unk_1E8010AD8;
      v22 = v10;
      [v14 pkui_setCompletionHandler:&v18];
    }

    v15 = [a1 layer];
    v16 = [v15 pkui_addAdditiveAnimation:v23];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 1);
  }

  return v13;
}

- (void)pkui_setShadowRadius:()PKUIAnimationUtilities animated:
{
  if (a4)
  {
    v6 = [MEMORY[0x1E69B92B0] sharedDefaultFactory];
    [a1 pkui_setShadowRadius:v6 withAdditiveAnimationFactory:0 completion:a2];
  }

  else
  {

    [a1 pkui_setShadowRadius:0 withAdditiveAnimationFactory:0 completion:?];
  }
}

- (double)pkui_setShadowRadius:()PKUIAnimationUtilities animated:withCompletion:
{
  if (a4)
  {
    v7 = MEMORY[0x1E69B92B0];
    v8 = a5;
    v9 = [v7 sharedDefaultFactory];
    [a1 pkui_setShadowRadius:v9 withAdditiveAnimationFactory:v8 completion:a2];
    v11 = v10;
  }

  else
  {
    v9 = a5;
    [a1 pkui_setShadowRadius:0 withAdditiveAnimationFactory:v9 completion:a2];
    v11 = v12;
  }

  return v11;
}

- (double)pkui_setShadowRadius:()PKUIAnimationUtilities withAdditiveAnimationFactory:completion:
{
  v8 = a5;
  v21 = 0;
  if (a4)
  {
    v9 = &v21;
  }

  else
  {
    v9 = 0;
  }

  [a1 pkui_setShadowRadius:a4 withAdditiveAnimationFactory:v9 animation:a2];
  v11 = v10;
  v12 = v21;
  if (v21)
  {
    if (v8)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __95__UIView_PKUIAnimationUtilities__pkui_setShadowRadius_withAdditiveAnimationFactory_completion___block_invoke;
      v19 = &unk_1E8010AD8;
      v20 = v8;
      [v12 pkui_setCompletionHandler:&v16];
    }

    v13 = [a1 layer];
    v14 = [v13 pkui_addAdditiveAnimation:v21];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 1);
  }

  return v11;
}

- (double)pkui_setFrame:()PKUIAnimationUtilities withAdditiveAnimationFactory:animation:
{
  v14 = a7;
  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v15 = 0;
  }

  [a1 pkui_setFrame:v14 withAdditiveAnimationFactory:v15 accumulator:{a2, a3, a4, a5}];
  v17 = v16;
  v18 = PKGroupAnimations(v15);
  if (a8)
  {
    objc_storeStrong(a8, v18);
  }

  return v17;
}

- (double)pkui_setFrame:()PKUIAnimationUtilities withAdditiveAnimationFactory:accumulator:
{
  v14 = a7;
  v15 = a8;
  [a1 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  v38 = CGRectStandardize(v37);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v38.origin.x = v17;
  v38.origin.y = v19;
  v38.size.width = v21;
  v38.size.height = v23;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  if (!CGRectEqualToRect(v38, v39))
  {
    [a1 bounds];
    v35 = v29;
    v36 = v28;
    [a1 anchorPoint];
    v31 = x + v30 * width;
    v33 = y + v32 * height;
    [a1 pkui_setBounds:v14 withAdditiveAnimationFactory:v15 accumulator:{v36, v35, width, height}];
    [a1 pkui_setPosition:v14 withAdditiveAnimationFactory:v15 accumulator:{v31, v33}];
  }

  return v17;
}

- (double)pkui_setBounds:()PKUIAnimationUtilities withAdditiveAnimationFactory:animation:
{
  v14 = a7;
  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v15 = 0;
  }

  [a1 pkui_setBounds:v14 withAdditiveAnimationFactory:v15 accumulator:{a2, a3, a4, a5}];
  v17 = v16;
  v18 = PKGroupAnimations(v15);
  if (a8)
  {
    objc_storeStrong(a8, v18);
  }

  return v17;
}

- (double)pkui_setBounds:()PKUIAnimationUtilities withAdditiveAnimationFactory:accumulator:
{
  v14 = a7;
  v15 = a8;
  [a1 bounds];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  if (!CGRectEqualToRect(v24, v25))
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __90__UIView_PKUIAnimationUtilities__pkui_setBounds_withAdditiveAnimationFactory_accumulator___block_invoke;
    v23[3] = &unk_1E8012160;
    v23[4] = a1;
    *&v23[5] = a2;
    *&v23[6] = a3;
    *&v23[7] = a4;
    *&v23[8] = a5;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v23];
    if (v14)
    {
      if (x != a2 || y != a3)
      {
        v20 = [v14 springAnimationWithKeyPath:@"bounds.origin"];
        [v20 pkui_updateForAdditiveAnimationFromPoint:x toPoint:{y, a2, a3}];
        [v15 addObject:v20];
      }

      if (width != a4 || height != a5)
      {
        v21 = [v14 springAnimationWithKeyPath:@"bounds.size"];
        [v21 pkui_updateForAdditiveAnimationFromSize:width toSize:{height, a4, a5}];
        [v15 addObject:v21];
      }
    }
  }

  return x;
}

- (double)pkui_setPosition:()PKUIAnimationUtilities withAdditiveAnimationFactory:animation:
{
  v10 = a5;
  [a1 center];
  v13 = v12;
  v14 = v11;
  if (v12 != a2 || v11 != a3)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __90__UIView_PKUIAnimationUtilities__pkui_setPosition_withAdditiveAnimationFactory_animation___block_invoke;
    v18[3] = &unk_1E8012188;
    v18[4] = a1;
    *&v18[5] = a2;
    *&v18[6] = a3;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v18];
    if (v10)
    {
      v16 = [v10 springAnimationWithKeyPath:@"position"];
      [v16 pkui_updateForAdditiveAnimationFromPoint:v13 toPoint:{v14, a2, a3}];
      if (!a6)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v16 = 0;
  if (a6)
  {
LABEL_9:
    objc_storeStrong(a6, v16);
  }

LABEL_10:

  return v13;
}

- (double)pkui_setPosition:()PKUIAnimationUtilities withAdditiveAnimationFactory:accumulator:
{
  v10 = a6;
  v15 = 0;
  if (a5)
  {
    v11 = &v15;
  }

  else
  {
    v11 = 0;
  }

  [a1 pkui_setPosition:a5 withAdditiveAnimationFactory:v11 animation:{a2, a3}];
  v13 = v12;
  if (v15)
  {
    [v10 addObject:?];
  }

  return v13;
}

- (void)pkui_setTransform:()PKUIAnimationUtilities withAdditiveAnimationFactory:animation:
{
  v9 = a3;
  *a5 = 0u;
  a5[1] = 0u;
  a5[2] = 0u;
  a5[3] = 0u;
  a5[4] = 0u;
  a5[5] = 0u;
  a5[6] = 0u;
  a5[7] = 0u;
  [a1 transform3D];
  v10 = a5[5];
  *&a.m31 = a5[4];
  *&a.m33 = v10;
  v11 = a5[7];
  *&a.m41 = a5[6];
  *&a.m43 = v11;
  v12 = a5[1];
  *&a.m11 = *a5;
  *&a.m13 = v12;
  v13 = a5[3];
  *&a.m21 = a5[2];
  *&a.m23 = v13;
  v14 = a2[5];
  *&b.m31 = a2[4];
  *&b.m33 = v14;
  v15 = a2[7];
  *&b.m41 = a2[6];
  *&b.m43 = v15;
  v16 = a2[1];
  *&b.m11 = *a2;
  *&b.m13 = v16;
  v17 = a2[3];
  *&b.m21 = a2[2];
  *&b.m23 = v17;
  if (!CATransform3DEqualToTransform(&a, &b))
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v18 = a2[5];
    v36 = a2[4];
    v37 = v18;
    v19 = a2[7];
    v38 = a2[6];
    v39 = v19;
    v20 = a2[1];
    v32 = *a2;
    v33 = v20;
    v21 = a2[3];
    v34 = a2[2];
    v35 = v21;
    v31[2] = __91__UIView_PKUIAnimationUtilities__pkui_setTransform_withAdditiveAnimationFactory_animation___block_invoke;
    v31[3] = &unk_1E80121B0;
    v31[4] = a1;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v31];
    if (v9)
    {
      v22 = [v9 springAnimationWithKeyPath:@"transform"];
      v23 = a5[5];
      *&a.m31 = a5[4];
      *&a.m33 = v23;
      v24 = a5[7];
      *&a.m41 = a5[6];
      *&a.m43 = v24;
      v25 = a5[1];
      *&a.m11 = *a5;
      *&a.m13 = v25;
      v26 = a5[3];
      *&a.m21 = a5[2];
      *&a.m23 = v26;
      v27 = a2[5];
      *&b.m31 = a2[4];
      *&b.m33 = v27;
      v28 = a2[7];
      *&b.m41 = a2[6];
      *&b.m43 = v28;
      v29 = a2[1];
      *&b.m11 = *a2;
      *&b.m13 = v29;
      v30 = a2[3];
      *&b.m21 = a2[2];
      *&b.m23 = v30;
      [v22 pkui_updateForAdditiveAnimationFromTransform:&a toTransform:&b];
      if (!a4)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v22 = 0;
  if (a4)
  {
LABEL_6:
    objc_storeStrong(a4, v22);
  }

LABEL_7:
}

- (void)pkui_setTransform:()PKUIAnimationUtilities withAdditiveAnimationFactory:accumulator:
{
  v9 = a4;
  v16 = 0;
  *a5 = 0u;
  a5[1] = 0u;
  a5[2] = 0u;
  a5[3] = 0u;
  a5[4] = 0u;
  a5[5] = 0u;
  a5[6] = 0u;
  a5[7] = 0u;
  if (a3)
  {
    v10 = &v16;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2[5];
  v15[4] = a2[4];
  v15[5] = v11;
  v12 = a2[7];
  v15[6] = a2[6];
  v15[7] = v12;
  v13 = a2[1];
  v15[0] = *a2;
  v15[1] = v13;
  v14 = a2[3];
  v15[2] = a2[2];
  v15[3] = v14;
  [a1 pkui_setTransform:v15 withAdditiveAnimationFactory:a3 animation:v10];
  if (v16)
  {
    [v9 addObject:?];
  }
}

- (double)pkui_setAlpha:()PKUIAnimationUtilities withAnimationFactory:animation:removePriorAnimation:
{
  v10 = a4;
  [a1 alpha];
  v12 = v11;
  if (v11 == a2)
  {
    v15 = 0;
    v13 = 0;
    if (a5)
    {
LABEL_8:
      objc_storeStrong(a5, v13);
    }
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __100__UIView_PKUIAnimationUtilities__pkui_setAlpha_withAnimationFactory_animation_removePriorAnimation___block_invoke;
    v25[3] = &unk_1E80119C8;
    v25[4] = a1;
    *&v25[5] = a2;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v25];
    v13 = 0;
    v14 = vabdd_f64(v12, a2);
    v15 = v14 >= 0.00001;
    if (v10 && v14 >= 0.00001)
    {
      v13 = [v10 springAnimationWithKeyPath:@"opacity"];
      [v13 setAdditive:0];
      v16 = [a1 layer];
      v17 = [v16 presentationLayer];
      v18 = v17;
      v19 = MEMORY[0x1E696AD98];
      v20 = v12;
      if (v17)
      {
        [v17 opacity];
        v20 = v21;
      }

      v22 = [v19 numberWithDouble:v20];
      [v13 setFromValue:v22];

      v23 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
      [v13 setToValue:v23];
    }

    if (a5)
    {
      goto LABEL_8;
    }
  }

  if (a6)
  {
    *a6 = v15;
  }

  return v12;
}

- (uint64_t)pkui_setBackgroundColor:()PKUIAnimationUtilities withAnimationFactory:animation:
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 backgroundColor];
  if (v10 != v8)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __89__UIView_PKUIAnimationUtilities__pkui_setBackgroundColor_withAnimationFactory_animation___block_invoke;
    v23[3] = &unk_1E8010A10;
    v23[4] = a1;
    v23[5] = v8;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v23];
    if (v9)
    {
      v11 = [v9 springAnimationWithKeyPath:@"backgroundColor"];
      [v11 setAdditive:0];
      v12 = [a1 layer];
      v13 = [v12 presentationLayer];
      v14 = [a1 traitCollection];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __89__UIView_PKUIAnimationUtilities__pkui_setBackgroundColor_withAnimationFactory_animation___block_invoke_2;
      v18[3] = &unk_1E8011C98;
      v15 = v11;
      v19 = v15;
      v20 = v13;
      v21 = v10;
      v22 = v8;
      v16 = v13;
      PKUIPerformWithEffectiveTraitCollection(v14, v18);

      if (!a5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v15 = 0;
  if (a5)
  {
LABEL_6:
    objc_storeStrong(a5, v15);
  }

LABEL_7:

  return v10;
}

- (double)pkui_setCornerRadius:()PKUIAnimationUtilities withAdditiveAnimationFactory:animation:
{
  v8 = a4;
  v9 = [a1 layer];
  [v9 cornerRadius];
  v11 = v10;
  if (v10 != a2)
  {
    [v9 setCornerRadius:a2];
    if (v8)
    {
      v12 = [v8 springAnimationWithKeyPath:@"cornerRadius"];
      [v12 pkui_updateForAdditiveAnimationFromScalar:v11 toScalar:a2];
      if (!a5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v12 = 0;
  if (a5)
  {
LABEL_6:
    objc_storeStrong(a5, v12);
  }

LABEL_7:

  return v11;
}

- (double)pkui_setCornerRadius:()PKUIAnimationUtilities withAdditiveAnimationFactory:accumulator:
{
  v8 = a5;
  v13 = 0;
  if (a4)
  {
    v9 = &v13;
  }

  else
  {
    v9 = 0;
  }

  [a1 pkui_setCornerRadius:a4 withAdditiveAnimationFactory:v9 animation:a2];
  v11 = v10;
  if (v13)
  {
    [v8 addObject:?];
  }

  return v11;
}

- (double)pkui_setShadowOpacity:()PKUIAnimationUtilities withAnimationFactory:animation:
{
  v8 = a4;
  v9 = [a1 layer];
  [v9 shadowOpacity];
  v11 = *&v10;
  if (*&v10 == a2 || (*&v10 = a2, [v9 setShadowOpacity:v10], !v8))
  {
    v12 = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

LABEL_8:
    objc_storeStrong(a5, v12);
    goto LABEL_9;
  }

  v12 = [v8 springAnimationWithKeyPath:@"shadowOpacity"];
  [v12 setAdditive:0];
  v13 = [a1 layer];
  v14 = [v13 presentationLayer];
  v15 = v14;
  v16 = MEMORY[0x1E696AD98];
  v17 = v11;
  if (v14)
  {
    [v14 shadowOpacity];
    v17 = v18;
  }

  v19 = [v16 numberWithDouble:v17];
  [v12 setFromValue:v19];

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [v12 setToValue:v20];

  if (a5)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v11;
}

- (double)pkui_setShadowOffset:()PKUIAnimationUtilities withAdditiveAnimationFactory:animation:
{
  v10 = a5;
  v11 = [a1 layer];
  [v11 shadowOffset];
  v14 = v13;
  v15 = v12;
  if (v13 != a2 || v12 != a3)
  {
    [v11 setShadowOffset:{a2, a3}];
    if (v10)
    {
      v17 = [v10 springAnimationWithKeyPath:@"shadowOffset"];
      [v17 pkui_updateForAdditiveAnimationFromSize:v14 toSize:{v15, a2, a3}];
      if (!a6)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v17 = 0;
  if (a6)
  {
LABEL_9:
    objc_storeStrong(a6, v17);
  }

LABEL_10:

  return v14;
}

- (double)pkui_setShadowOffset:()PKUIAnimationUtilities withAdditiveAnimationFactory:accumulator:
{
  v10 = a6;
  v15 = 0;
  if (a5)
  {
    v11 = &v15;
  }

  else
  {
    v11 = 0;
  }

  [a1 pkui_setShadowOffset:a5 withAdditiveAnimationFactory:v11 animation:{a2, a3}];
  v13 = v12;
  if (v15)
  {
    [v10 addObject:?];
  }

  return v13;
}

- (double)pkui_setShadowRadius:()PKUIAnimationUtilities withAdditiveAnimationFactory:animation:
{
  v8 = a4;
  v9 = [a1 layer];
  [v9 shadowRadius];
  v11 = v10;
  if (v10 != a2)
  {
    [v9 setShadowRadius:a2];
    if (v8)
    {
      v12 = [v8 springAnimationWithKeyPath:@"shadowRadius"];
      [v12 pkui_updateForAdditiveAnimationFromScalar:v11 toScalar:a2];
      if (!a5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v12 = 0;
  if (a5)
  {
LABEL_6:
    objc_storeStrong(a5, v12);
  }

LABEL_7:

  return v11;
}

- (double)pkui_setShadowRadius:()PKUIAnimationUtilities withAdditiveAnimationFactory:accumulator:
{
  v8 = a5;
  v13 = 0;
  if (a4)
  {
    v9 = &v13;
  }

  else
  {
    v9 = 0;
  }

  [a1 pkui_setShadowRadius:a4 withAdditiveAnimationFactory:v9 animation:a2];
  v11 = v10;
  if (v13)
  {
    [v8 addObject:?];
  }

  return v11;
}

@end