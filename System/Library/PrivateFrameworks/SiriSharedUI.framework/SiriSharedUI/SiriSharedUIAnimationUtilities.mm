@interface SiriSharedUIAnimationUtilities
+ (double)_springDurationForMass:(double)mass stiffness:(double)stiffness damping:(double)damping;
+ (double)animationDurationForStyle:(int64_t)style presentationType:(int64_t)type;
+ (id)_centeringAnimationForInitialScale:(double)scale width:(double)width;
+ (id)animationForStyle:(int64_t)style expectedWidthForStyle:(id)forStyle presentationType:(int64_t)type;
+ (id)defaultTimingFunction;
+ (void)perfomAnimationBlockWithAnimationBlock:(id)block context:(id)context completion:(id)completion;
@end

@implementation SiriSharedUIAnimationUtilities

+ (id)defaultTimingFunction
{
  LODWORD(v2) = 1044401829;
  LODWORD(v3) = 991345561;
  LODWORD(v4) = 1057634019;
  LODWORD(v5) = 1064732459;
  return [MEMORY[0x277CD9EF8] functionWithControlPoints:v2 :v3 :v4 :v5];
}

+ (double)animationDurationForStyle:(int64_t)style presentationType:(int64_t)type
{
  v4 = 0.0;
  if (style <= 2)
  {
    if (style >= 2)
    {
      if (style == 2)
      {
        v4 = 0.2;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  switch(style)
  {
    case 3:
      v4 = 0.5;
      break;
    case 4:
      v4 = 0.1;
      break;
    case 5:
LABEL_8:
      v4 = 0.5;
      if (type == 1)
      {
        [self _springDurationForInsertAnimation];
        v4 = v5;
      }

      break;
  }

LABEL_12:
  +[SiriSharedUIAnimationUtilities animationCoefficient];
  return v4 * v6;
}

+ (void)perfomAnimationBlockWithAnimationBlock:(id)block context:(id)context completion:(id)completion
{
  blockCopy = block;
  contextCopy = context;
  completionCopy = completion;
  [contextCopy animationDuration];
  v11 = MEMORY[0x277D75D18];
  if (v10 <= 0.0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__SiriSharedUIAnimationUtilities_perfomAnimationBlockWithAnimationBlock_context_completion___block_invoke_2;
    v15[3] = &unk_278354AB8;
    v14 = &v16;
    v16 = blockCopy;
    [v11 performWithoutAnimation:v15];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    v12 = v10;
    animationOptions = [contextCopy animationOptions];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __92__SiriSharedUIAnimationUtilities_perfomAnimationBlockWithAnimationBlock_context_completion___block_invoke;
    v17[3] = &unk_278354AB8;
    v14 = &v18;
    v18 = blockCopy;
    [v11 animateWithDuration:animationOptions delay:v17 options:completionCopy animations:v12 completion:0.0];
  }
}

+ (id)animationForStyle:(int64_t)style expectedWidthForStyle:(id)forStyle presentationType:(int64_t)type
{
  v43[1] = *MEMORY[0x277D85DE8];
  v8 = SiriSharedUIReducedMotionEnabled();
  if (style > 2)
  {
    if ((style - 3) < 2)
    {
      animation = [MEMORY[0x277CD9E00] animation];
      [SiriSharedUIAnimationUtilities animationDurationForStyle:style presentationType:type];
      [animation setDuration:?];
      [SiriSharedUIAnimationUtilities animationBeginTimeForStyle:style presentationType:type];
      [animation setBeginTime:?];
      [animation setFillMode:*MEMORY[0x277CDA228]];
      v12 = +[SiriSharedUIAnimationUtilities defaultTimingFunction];
      [animation setTimingFunction:v12];

      [animation setRemovedOnCompletion:0];
      animation2 = [MEMORY[0x277CD9FA0] animation];
      [animation2 setKeyPath:@"opacity"];
      [animation2 setFromValue:&unk_282F91078];
      [animation2 setToValue:&unk_282F91088];
      [animation2 setMass:3.0];
      [animation2 setStiffness:1000.0];
      [animation2 setDamping:500.0];
      animation3 = [MEMORY[0x277CD9FA0] animation];
      [animation3 setKeyPath:@"transform.translation.y"];
      [animation3 setFromValue:&unk_282F910C8];
      [animation3 setToValue:&unk_282F91078];
      [animation3 setMass:3.0];
      [animation3 setStiffness:1000.0];
      [animation3 setDamping:500.0];
      animation4 = [MEMORY[0x277CD9FA0] animation];
      [animation4 setKeyPath:@"transform.scale.xy"];
      [animation4 setFromValue:&unk_282F91098];
      [animation4 setToValue:&unk_282F910D8];
      [animation4 setMass:3.0];
      [animation4 setStiffness:1000.0];
      [animation4 setDamping:500.0];
      animation5 = [MEMORY[0x277CD9FA0] animation];
      [animation5 setKeyPath:@"filters.gaussianBlur.inputRadius"];
      [animation5 setFromValue:&unk_282F910A8];
      [animation5 setToValue:&unk_282F91078];
      [animation5 setMass:3.0];
      [animation5 setStiffness:1000.0];
      [animation5 setDamping:500.0];
      if (style == 4 || v8)
      {
        v39 = animation2;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
      }

      else
      {
        v28 = MEMORY[0x277CBEB18];
        v38[0] = animation3;
        v38[1] = animation2;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
        v15 = [v28 arrayWithArray:v29];

        if (type == 1)
        {
          v30 = animation5;
        }

        else
        {
          v30 = animation4;
        }

        [v15 addObject:v30];
      }

      [animation setAnimations:v15];

      goto LABEL_38;
    }

    if (style != 5)
    {
      goto LABEL_39;
    }
  }

  else if (style)
  {
    if (style == 1)
    {
      animation = [MEMORY[0x277CD9E00] animation];
      [SiriSharedUIAnimationUtilities animationDurationForStyle:1 presentationType:type];
      [animation setDuration:?];
      [animation setBeginTime:CACurrentMediaTime()];
      [animation setFillMode:*MEMORY[0x277CDA228]];
      v31 = +[SiriSharedUIAnimationUtilities defaultTimingFunction];
      [animation setTimingFunction:v31];

      animation2 = [MEMORY[0x277CD9FA0] animation];
      [animation2 setKeyPath:@"transform.translation.y"];
      [animation2 setFromValue:&unk_282F91078];
      [animation2 setToValue:&unk_282F910B8];
      [animation2 setMass:3.0];
      [animation2 setStiffness:1000.0];
      [animation2 setDamping:500.0];
      animation3 = [MEMORY[0x277CD9FA0] animation];
      [animation3 setKeyPath:@"opacity"];
      [animation3 setFromValue:&unk_282F91088];
      [animation3 setToValue:&unk_282F91078];
      [animation3 setMass:3.0];
      [animation3 setStiffness:1000.0];
      [animation3 setDamping:500.0];
      if (v8)
      {
        v41 = animation3;
        v32 = MEMORY[0x277CBEA60];
        v33 = &v41;
        v34 = 1;
      }

      else
      {
        v40[0] = animation2;
        v40[1] = animation3;
        v32 = MEMORY[0x277CBEA60];
        v33 = v40;
        v34 = 2;
      }

      v35 = [v32 arrayWithObjects:v33 count:v34];
      [animation setAnimations:v35];
    }

    else
    {
      if (style != 2)
      {
        goto LABEL_39;
      }

      animation = [MEMORY[0x277CD9E00] animation];
      [SiriSharedUIAnimationUtilities animationDurationForStyle:2 presentationType:type];
      [animation setDuration:?];
      v9 = +[SiriSharedUIAnimationUtilities defaultTimingFunction];
      [animation setTimingFunction:v9];

      [animation setRemovedOnCompletion:0];
      animation2 = [MEMORY[0x277CD9FA0] animation];
      [animation2 setKeyPath:@"opacity"];
      [animation2 setFromValue:&unk_282F91088];
      [animation2 setToValue:&unk_282F91078];
      [animation2 setMass:3.0];
      [animation2 setStiffness:1000.0];
      [animation2 setDamping:500.0];
      v37 = animation2;
      animation3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      [animation setAnimations:animation3];
    }

    goto LABEL_38;
  }

  animation = [MEMORY[0x277CD9E00] animation];
  [SiriSharedUIAnimationUtilities animationDurationForStyle:style presentationType:type];
  [animation setDuration:?];
  [SiriSharedUIAnimationUtilities animationBeginTimeForStyle:style presentationType:type];
  [animation setBeginTime:?];
  [animation setFillMode:*MEMORY[0x277CDA228]];
  v16 = +[SiriSharedUIAnimationUtilities defaultTimingFunction];
  [animation setTimingFunction:v16];

  animation2 = [MEMORY[0x277CD9FA0] animation];
  [animation2 setKeyPath:@"transform.translation.y"];
  [animation2 setFromValue:&unk_282F91068];
  [animation2 setToValue:&unk_282F91078];
  v17 = 2.5;
  if (type == 1)
  {
    v18 = 200.0;
  }

  else
  {
    v17 = 3.0;
    v18 = 1000.0;
  }

  if (type == 1)
  {
    v19 = 300.0;
  }

  else
  {
    v19 = 1000.0;
  }

  if (type == 1)
  {
    v20 = 50.0;
  }

  else
  {
    v20 = 500.0;
  }

  if (type == 1)
  {
    v21 = 2.0;
  }

  else
  {
    v21 = 3.0;
  }

  [animation2 setMass:v17];
  [animation2 setStiffness:v18];
  [animation2 setDamping:dbl_21E4E4D20[type == 1]];
  animation3 = [MEMORY[0x277CD9FA0] animation];
  [animation3 setKeyPath:@"opacity"];
  [animation3 setFromValue:&unk_282F91078];
  [animation3 setToValue:&unk_282F91088];
  [animation3 setMass:3.0];
  [animation3 setStiffness:v19];
  [animation3 setDamping:v20];
  animation6 = [MEMORY[0x277CD9FA0] animation];
  [animation6 setKeyPath:@"transform.scale"];
  [animation6 setFromValue:&unk_282F91098];
  [animation6 setToValue:&unk_282F91088];
  [animation6 setMass:v21];
  [animation6 setStiffness:v19];
  [animation6 setDamping:v20];
  animation7 = [MEMORY[0x277CD9FA0] animation];
  [animation7 setKeyPath:@"filters.gaussianBlur.inputRadius"];
  [animation7 setFromValue:&unk_282F910A8];
  [animation7 setToValue:&unk_282F91078];
  [animation7 setMass:2.0];
  [animation7 setStiffness:300.0];
  [animation7 setDamping:50.0];
  if (v8)
  {
    v43[0] = animation3;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
  }

  else
  {
    v25 = MEMORY[0x277CBEB18];
    v42[0] = animation2;
    v42[1] = animation3;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v24 = [v25 arrayWithArray:v26];

    if (type == 1)
    {
      v27 = animation7;
    }

    else
    {
      v27 = animation6;
    }

    [v24 addObject:v27];
  }

  [animation setAnimations:v24];

LABEL_38:
LABEL_39:

  return animation;
}

+ (id)_centeringAnimationForInitialScale:(double)scale width:(double)width
{
  animation = [MEMORY[0x277CD9FA0] animation];
  [animation setKeyPath:@"transform.translation.x"];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:(1.0 - scale) * (width * 0.5)];
  [animation setFromValue:v7];

  [animation setToValue:&unk_282F91078];

  return animation;
}

+ (double)_springDurationForMass:(double)mass stiffness:(double)stiffness damping:(double)damping
{
  v8 = objc_alloc_init(MEMORY[0x277CD9FA0]);
  [v8 setMass:mass];
  [v8 setStiffness:stiffness];
  [v8 setDamping:damping];
  [v8 settlingDuration];
  v10 = v9;

  return v10;
}

@end