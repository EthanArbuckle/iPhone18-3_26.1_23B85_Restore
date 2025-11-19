@interface PKPGSVSpringAnimationConfiguration
+ (uint64_t)createWithFactory:(double)a3 modalFactory:(double)a4 modalYImpulse:(uint64_t)a5 modalYVelocity:(void *)a6 modalScaleImpulse:(void *)a7 modalScaleVelocity:;
+ (uint64_t)createWithFactory:(uint64_t)a1;
+ (uint64_t)createWithFactory:(void *)a3 modalFactory:;
- (id)_initWithFactory:(void *)a3 modalFactory:;
- (id)createPositionAnimationFromPosition:(int)a3 toPosition:(double)a4 forView:(double)a5 modal:(double)a6;
- (id)createScaleAnimationFromScale:(int)a3 toScale:(CGFloat)a4 forView:(CGFloat)a5 modal:;
@end

@implementation PKPGSVSpringAnimationConfiguration

+ (uint64_t)createWithFactory:(uint64_t)a1
{
  v2 = a2;
  result = objc_opt_self();
  if (v2)
  {
    v4 = [[PKPGSVSpringAnimationConfiguration alloc] _initWithFactory:v2 modalFactory:0];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)_initWithFactory:(void *)a3 modalFactory:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = PKPGSVSpringAnimationConfiguration;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 6, a2);
      objc_storeStrong(a1 + 7, a3);
    }
  }

  return a1;
}

+ (uint64_t)createWithFactory:(void *)a3 modalFactory:
{
  v4 = a2;
  v5 = a3;
  result = objc_opt_self();
  if (v4 && v5)
  {
    v7 = [[PKPGSVSpringAnimationConfiguration alloc] _initWithFactory:v4 modalFactory:v5];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (uint64_t)createWithFactory:(double)a3 modalFactory:(double)a4 modalYImpulse:(uint64_t)a5 modalYVelocity:(void *)a6 modalScaleImpulse:(void *)a7 modalScaleVelocity:
{
  v12 = a7;
  v13 = a6;
  objc_opt_self();
  v14 = [PKPGSVSpringAnimationConfiguration createWithFactory:v13 modalFactory:v12];

  if (a1 != 0.0 && a2 != 0.0)
  {
    *(v14 + 8) = a1;
    v15 = [v12 copy];
    v16 = *(v14 + 16);
    *(v14 + 16) = v15;

    [*(v14 + 16) setVelocity:a2 / fabs(a1)];
    v17 = [*(v14 + 16) factoryWithInvertedVelocity];
    v18 = *(v14 + 24);
    *(v14 + 24) = v17;
  }

  if (a3 != 1.0 && a4 != 0.0)
  {
    *(v14 + 32) = a3;
    v19 = [v12 copy];
    v20 = *(v14 + 40);
    *(v14 + 40) = v19;

    if (a3 >= 1.0)
    {
      v21 = a3 + -1.0;
    }

    else
    {
      v21 = 1.0 - a3;
    }

    v22 = -a4;
    if (a3 >= 1.0)
    {
      v22 = a4;
    }

    [*(v14 + 40) setVelocity:v22 / v21];
  }

  return v14;
}

- (id)createPositionAnimationFromPosition:(int)a3 toPosition:(double)a4 forView:(double)a5 modal:(double)a6
{
  result = a2;
  v14 = result;
  if (!a1)
  {
    goto LABEL_21;
  }

  if (result)
  {
    if (a3)
    {
      if (*(a1 + 16))
      {
        v15 = a5 + *(a1 + 8);
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (a6 == a4)
        {
          v21 = 0.0;
        }

        else
        {
          v17 = [*(a1 + 56) highFrameRateSpringAnimationForView:v14 withKeyPath:@"position.x" reason:1];
          [v17 pkui_updateForAdditiveAnimationFromScalar:a4 toScalar:a6];
          [v17 beginTime];
          v19 = v18;
          [v17 duration];
          v21 = fmax(v19 + v20, 0.0);
          [v16 addObject:v17];
        }

        v22 = *(a1 + 16);
        if (a5 <= v15)
        {
          v23 = v22;
        }

        else
        {
          v23 = [v22 factoryWithInvertedVelocity];
        }

        v24 = v23;
        v25 = [v23 highFrameRateSpringAnimationForView:v14 withKeyPath:@"position.y" reason:1];
        [v25 pkui_updateForAdditiveAnimationFromScalar:a5 toScalar:v15];
        [v25 beginTime];
        v27 = v26;
        [v25 duration];
        v29 = fmax(v27 + v28, v21);
        [v16 addObject:v25];
        v30 = *(a1 + 48);

        v31 = [v30 highFrameRateSpringAnimationForView:v14 withKeyPath:@"position.y" reason:1];

        [v31 pkui_updateForAdditiveAnimationFromScalar:v15 toScalar:a7];
        [v31 beginTime];
        v33 = v32;
        [v31 duration];
        v35 = fmax(v33 + v34, v29);
        [v16 addObject:v31];

        a1 = [MEMORY[0x1E6979308] animation];
        [a1 setBeginTimeMode:*MEMORY[0x1E69795C0]];
        [a1 setAnimations:v16];
        [a1 setDuration:v35];

        goto LABEL_21;
      }

      if (a6 == a4 && a7 == a5)
      {
        goto LABEL_12;
      }

      v36 = *(a1 + 56);
      if (v36)
      {
LABEL_20:
        a1 = [v36 highFrameRateSpringAnimationForView:v14 withKeyPath:@"position" reason:1];
        [a1 pkui_updateForAdditiveAnimationFromPoint:a4 toPoint:{a5, a6, a7}];
        goto LABEL_21;
      }
    }

    else if (a6 == a4 && a7 == a5)
    {
LABEL_12:
      a1 = 0;
LABEL_21:

      return a1;
    }

    v36 = *(a1 + 48);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

- (id)createScaleAnimationFromScale:(int)a3 toScale:(CGFloat)a4 forView:(CGFloat)a5 modal:
{
  result = a2;
  v10 = result;
  if (!a1)
  {
    goto LABEL_13;
  }

  if (result)
  {
    if (a3)
    {
      if (*(a1 + 40))
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v12 = *(a1 + 32) * a4;
        memset(&v28, 0, sizeof(v28));
        CATransform3DMakeScale(&v28, v12, v12, 1.0);
        v13 = *(a1 + 40);
        v14 = [v13 highFrameRateSpringAnimationForView:v10 withKeyPath:@"transform" reason:1];
        CATransform3DMakeScale(&v27, a4, a4, 1.0);
        v26 = v28;
        [v14 pkui_updateForAdditiveAnimationFromTransform:&v27 toTransform:&v26];
        [v14 beginTime];
        v16 = v15;
        [v14 duration];
        v18 = fmax(v16 + v17, 0.0);
        [v11 addObject:v14];
        v19 = *(a1 + 48);

        v20 = [v19 highFrameRateSpringAnimationForView:v10 withKeyPath:@"transform" reason:1];

        CATransform3DMakeScale(&v27, a5, a5, 1.0);
        v26 = v28;
        [v20 pkui_updateForAdditiveAnimationFromTransform:&v26 toTransform:&v27];
        [v20 beginTime];
        v22 = v21;
        [v20 duration];
        v24 = fmax(v22 + v23, v18);
        [v11 addObject:v20];

        a1 = [MEMORY[0x1E6979308] animation];
        [a1 setBeginTimeMode:*MEMORY[0x1E69795C0]];
        [a1 setAnimations:v11];
        [a1 setDuration:v24];

LABEL_13:
        return a1;
      }

      if (a4 != a5)
      {
        v25 = *(a1 + 56);
        if (v25)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    else if (a4 != a5)
    {
LABEL_7:
      v25 = *(a1 + 48);
LABEL_8:
      a1 = [v25 highFrameRateSpringAnimationForView:v10 withKeyPath:@"transform" reason:1];
      CATransform3DMakeScale(&v28, a4, a4, 1.0);
      CATransform3DMakeScale(&v27, a5, a5, 1.0);
      [a1 pkui_updateForAdditiveAnimationFromTransform:&v28 toTransform:&v27];
      goto LABEL_13;
    }

    a1 = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

@end