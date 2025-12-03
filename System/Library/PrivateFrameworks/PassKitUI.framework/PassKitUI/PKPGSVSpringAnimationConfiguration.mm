@interface PKPGSVSpringAnimationConfiguration
+ (uint64_t)createWithFactory:(double)factory modalFactory:(double)modalFactory modalYImpulse:(uint64_t)impulse modalYVelocity:(void *)velocity modalScaleImpulse:(void *)scaleImpulse modalScaleVelocity:;
+ (uint64_t)createWithFactory:(uint64_t)factory;
+ (uint64_t)createWithFactory:(void *)factory modalFactory:;
- (id)_initWithFactory:(void *)factory modalFactory:;
- (id)createPositionAnimationFromPosition:(int)position toPosition:(double)toPosition forView:(double)view modal:(double)modal;
- (id)createScaleAnimationFromScale:(int)scale toScale:(CGFloat)toScale forView:(CGFloat)view modal:;
@end

@implementation PKPGSVSpringAnimationConfiguration

+ (uint64_t)createWithFactory:(uint64_t)factory
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

- (id)_initWithFactory:(void *)factory modalFactory:
{
  v6 = a2;
  factoryCopy = factory;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = PKPGSVSpringAnimationConfiguration;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 6, a2);
      objc_storeStrong(self + 7, factory);
    }
  }

  return self;
}

+ (uint64_t)createWithFactory:(void *)factory modalFactory:
{
  v4 = a2;
  factoryCopy = factory;
  result = objc_opt_self();
  if (v4 && factoryCopy)
  {
    v7 = [[PKPGSVSpringAnimationConfiguration alloc] _initWithFactory:v4 modalFactory:factoryCopy];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (uint64_t)createWithFactory:(double)factory modalFactory:(double)modalFactory modalYImpulse:(uint64_t)impulse modalYVelocity:(void *)velocity modalScaleImpulse:(void *)scaleImpulse modalScaleVelocity:
{
  scaleImpulseCopy = scaleImpulse;
  velocityCopy = velocity;
  objc_opt_self();
  v14 = [PKPGSVSpringAnimationConfiguration createWithFactory:velocityCopy modalFactory:scaleImpulseCopy];

  if (self != 0.0 && a2 != 0.0)
  {
    *(v14 + 8) = self;
    v15 = [scaleImpulseCopy copy];
    v16 = *(v14 + 16);
    *(v14 + 16) = v15;

    [*(v14 + 16) setVelocity:a2 / fabs(self)];
    factoryWithInvertedVelocity = [*(v14 + 16) factoryWithInvertedVelocity];
    v18 = *(v14 + 24);
    *(v14 + 24) = factoryWithInvertedVelocity;
  }

  if (factory != 1.0 && modalFactory != 0.0)
  {
    *(v14 + 32) = factory;
    v19 = [scaleImpulseCopy copy];
    v20 = *(v14 + 40);
    *(v14 + 40) = v19;

    if (factory >= 1.0)
    {
      v21 = factory + -1.0;
    }

    else
    {
      v21 = 1.0 - factory;
    }

    modalFactoryCopy = -modalFactory;
    if (factory >= 1.0)
    {
      modalFactoryCopy = modalFactory;
    }

    [*(v14 + 40) setVelocity:modalFactoryCopy / v21];
  }

  return v14;
}

- (id)createPositionAnimationFromPosition:(int)position toPosition:(double)toPosition forView:(double)view modal:(double)modal
{
  result = a2;
  v14 = result;
  if (!self)
  {
    goto LABEL_21;
  }

  if (result)
  {
    if (position)
    {
      if (*(self + 16))
      {
        v15 = view + *(self + 8);
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (modal == toPosition)
        {
          v21 = 0.0;
        }

        else
        {
          v17 = [*(self + 56) highFrameRateSpringAnimationForView:v14 withKeyPath:@"position.x" reason:1];
          [v17 pkui_updateForAdditiveAnimationFromScalar:toPosition toScalar:modal];
          [v17 beginTime];
          v19 = v18;
          [v17 duration];
          v21 = fmax(v19 + v20, 0.0);
          [v16 addObject:v17];
        }

        v22 = *(self + 16);
        if (view <= v15)
        {
          factoryWithInvertedVelocity = v22;
        }

        else
        {
          factoryWithInvertedVelocity = [v22 factoryWithInvertedVelocity];
        }

        v24 = factoryWithInvertedVelocity;
        v25 = [factoryWithInvertedVelocity highFrameRateSpringAnimationForView:v14 withKeyPath:@"position.y" reason:1];
        [v25 pkui_updateForAdditiveAnimationFromScalar:view toScalar:v15];
        [v25 beginTime];
        v27 = v26;
        [v25 duration];
        v29 = fmax(v27 + v28, v21);
        [v16 addObject:v25];
        v30 = *(self + 48);

        v31 = [v30 highFrameRateSpringAnimationForView:v14 withKeyPath:@"position.y" reason:1];

        [v31 pkui_updateForAdditiveAnimationFromScalar:v15 toScalar:a7];
        [v31 beginTime];
        v33 = v32;
        [v31 duration];
        v35 = fmax(v33 + v34, v29);
        [v16 addObject:v31];

        self = [MEMORY[0x1E6979308] animation];
        [self setBeginTimeMode:*MEMORY[0x1E69795C0]];
        [self setAnimations:v16];
        [self setDuration:v35];

        goto LABEL_21;
      }

      if (modal == toPosition && a7 == view)
      {
        goto LABEL_12;
      }

      v36 = *(self + 56);
      if (v36)
      {
LABEL_20:
        self = [v36 highFrameRateSpringAnimationForView:v14 withKeyPath:@"position" reason:1];
        [self pkui_updateForAdditiveAnimationFromPoint:toPosition toPoint:{view, modal, a7}];
        goto LABEL_21;
      }
    }

    else if (modal == toPosition && a7 == view)
    {
LABEL_12:
      self = 0;
LABEL_21:

      return self;
    }

    v36 = *(self + 48);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

- (id)createScaleAnimationFromScale:(int)scale toScale:(CGFloat)toScale forView:(CGFloat)view modal:
{
  result = a2;
  v10 = result;
  if (!self)
  {
    goto LABEL_13;
  }

  if (result)
  {
    if (scale)
    {
      if (*(self + 40))
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v12 = *(self + 32) * toScale;
        memset(&v28, 0, sizeof(v28));
        CATransform3DMakeScale(&v28, v12, v12, 1.0);
        v13 = *(self + 40);
        v14 = [v13 highFrameRateSpringAnimationForView:v10 withKeyPath:@"transform" reason:1];
        CATransform3DMakeScale(&v27, toScale, toScale, 1.0);
        v26 = v28;
        [v14 pkui_updateForAdditiveAnimationFromTransform:&v27 toTransform:&v26];
        [v14 beginTime];
        v16 = v15;
        [v14 duration];
        v18 = fmax(v16 + v17, 0.0);
        [v11 addObject:v14];
        v19 = *(self + 48);

        v20 = [v19 highFrameRateSpringAnimationForView:v10 withKeyPath:@"transform" reason:1];

        CATransform3DMakeScale(&v27, view, view, 1.0);
        v26 = v28;
        [v20 pkui_updateForAdditiveAnimationFromTransform:&v26 toTransform:&v27];
        [v20 beginTime];
        v22 = v21;
        [v20 duration];
        v24 = fmax(v22 + v23, v18);
        [v11 addObject:v20];

        self = [MEMORY[0x1E6979308] animation];
        [self setBeginTimeMode:*MEMORY[0x1E69795C0]];
        [self setAnimations:v11];
        [self setDuration:v24];

LABEL_13:
        return self;
      }

      if (toScale != view)
      {
        v25 = *(self + 56);
        if (v25)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    else if (toScale != view)
    {
LABEL_7:
      v25 = *(self + 48);
LABEL_8:
      self = [v25 highFrameRateSpringAnimationForView:v10 withKeyPath:@"transform" reason:1];
      CATransform3DMakeScale(&v28, toScale, toScale, 1.0);
      CATransform3DMakeScale(&v27, view, view, 1.0);
      [self pkui_updateForAdditiveAnimationFromTransform:&v28 toTransform:&v27];
      goto LABEL_13;
    }

    self = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

@end