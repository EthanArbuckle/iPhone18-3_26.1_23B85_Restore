@interface SiriSharedUIAnimationUtilities
+ (double)_springDurationForMass:(double)a3 stiffness:(double)a4 damping:(double)a5;
+ (double)animationDurationForStyle:(int64_t)a3 presentationType:(int64_t)a4;
+ (id)_centeringAnimationForInitialScale:(double)a3 width:(double)a4;
+ (id)animationForStyle:(int64_t)a3 expectedWidthForStyle:(id)a4 presentationType:(int64_t)a5;
+ (id)defaultTimingFunction;
+ (void)perfomAnimationBlockWithAnimationBlock:(id)a3 context:(id)a4 completion:(id)a5;
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

+ (double)animationDurationForStyle:(int64_t)a3 presentationType:(int64_t)a4
{
  v4 = 0.0;
  if (a3 <= 2)
  {
    if (a3 >= 2)
    {
      if (a3 == 2)
      {
        v4 = 0.2;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  switch(a3)
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
      if (a4 == 1)
      {
        [a1 _springDurationForInsertAnimation];
        v4 = v5;
      }

      break;
  }

LABEL_12:
  +[SiriSharedUIAnimationUtilities animationCoefficient];
  return v4 * v6;
}

+ (void)perfomAnimationBlockWithAnimationBlock:(id)a3 context:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v8 animationDuration];
  v11 = MEMORY[0x277D75D18];
  if (v10 <= 0.0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__SiriSharedUIAnimationUtilities_perfomAnimationBlockWithAnimationBlock_context_completion___block_invoke_2;
    v15[3] = &unk_278354AB8;
    v14 = &v16;
    v16 = v7;
    [v11 performWithoutAnimation:v15];
    if (v9)
    {
      v9[2](v9, 1);
    }
  }

  else
  {
    v12 = v10;
    v13 = [v8 animationOptions];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __92__SiriSharedUIAnimationUtilities_perfomAnimationBlockWithAnimationBlock_context_completion___block_invoke;
    v17[3] = &unk_278354AB8;
    v14 = &v18;
    v18 = v7;
    [v11 animateWithDuration:v13 delay:v17 options:v9 animations:v12 completion:0.0];
  }
}

+ (id)animationForStyle:(int64_t)a3 expectedWidthForStyle:(id)a4 presentationType:(int64_t)a5
{
  v43[1] = *MEMORY[0x277D85DE8];
  v8 = SiriSharedUIReducedMotionEnabled();
  if (a3 > 2)
  {
    if ((a3 - 3) < 2)
    {
      v5 = [MEMORY[0x277CD9E00] animation];
      [SiriSharedUIAnimationUtilities animationDurationForStyle:a3 presentationType:a5];
      [v5 setDuration:?];
      [SiriSharedUIAnimationUtilities animationBeginTimeForStyle:a3 presentationType:a5];
      [v5 setBeginTime:?];
      [v5 setFillMode:*MEMORY[0x277CDA228]];
      v12 = +[SiriSharedUIAnimationUtilities defaultTimingFunction];
      [v5 setTimingFunction:v12];

      [v5 setRemovedOnCompletion:0];
      v10 = [MEMORY[0x277CD9FA0] animation];
      [v10 setKeyPath:@"opacity"];
      [v10 setFromValue:&unk_282F91078];
      [v10 setToValue:&unk_282F91088];
      [v10 setMass:3.0];
      [v10 setStiffness:1000.0];
      [v10 setDamping:500.0];
      v11 = [MEMORY[0x277CD9FA0] animation];
      [v11 setKeyPath:@"transform.translation.y"];
      [v11 setFromValue:&unk_282F910C8];
      [v11 setToValue:&unk_282F91078];
      [v11 setMass:3.0];
      [v11 setStiffness:1000.0];
      [v11 setDamping:500.0];
      v13 = [MEMORY[0x277CD9FA0] animation];
      [v13 setKeyPath:@"transform.scale.xy"];
      [v13 setFromValue:&unk_282F91098];
      [v13 setToValue:&unk_282F910D8];
      [v13 setMass:3.0];
      [v13 setStiffness:1000.0];
      [v13 setDamping:500.0];
      v14 = [MEMORY[0x277CD9FA0] animation];
      [v14 setKeyPath:@"filters.gaussianBlur.inputRadius"];
      [v14 setFromValue:&unk_282F910A8];
      [v14 setToValue:&unk_282F91078];
      [v14 setMass:3.0];
      [v14 setStiffness:1000.0];
      [v14 setDamping:500.0];
      if (a3 == 4 || v8)
      {
        v39 = v10;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
      }

      else
      {
        v28 = MEMORY[0x277CBEB18];
        v38[0] = v11;
        v38[1] = v10;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
        v15 = [v28 arrayWithArray:v29];

        if (a5 == 1)
        {
          v30 = v14;
        }

        else
        {
          v30 = v13;
        }

        [v15 addObject:v30];
      }

      [v5 setAnimations:v15];

      goto LABEL_38;
    }

    if (a3 != 5)
    {
      goto LABEL_39;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v5 = [MEMORY[0x277CD9E00] animation];
      [SiriSharedUIAnimationUtilities animationDurationForStyle:1 presentationType:a5];
      [v5 setDuration:?];
      [v5 setBeginTime:CACurrentMediaTime()];
      [v5 setFillMode:*MEMORY[0x277CDA228]];
      v31 = +[SiriSharedUIAnimationUtilities defaultTimingFunction];
      [v5 setTimingFunction:v31];

      v10 = [MEMORY[0x277CD9FA0] animation];
      [v10 setKeyPath:@"transform.translation.y"];
      [v10 setFromValue:&unk_282F91078];
      [v10 setToValue:&unk_282F910B8];
      [v10 setMass:3.0];
      [v10 setStiffness:1000.0];
      [v10 setDamping:500.0];
      v11 = [MEMORY[0x277CD9FA0] animation];
      [v11 setKeyPath:@"opacity"];
      [v11 setFromValue:&unk_282F91088];
      [v11 setToValue:&unk_282F91078];
      [v11 setMass:3.0];
      [v11 setStiffness:1000.0];
      [v11 setDamping:500.0];
      if (v8)
      {
        v41 = v11;
        v32 = MEMORY[0x277CBEA60];
        v33 = &v41;
        v34 = 1;
      }

      else
      {
        v40[0] = v10;
        v40[1] = v11;
        v32 = MEMORY[0x277CBEA60];
        v33 = v40;
        v34 = 2;
      }

      v35 = [v32 arrayWithObjects:v33 count:v34];
      [v5 setAnimations:v35];
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_39;
      }

      v5 = [MEMORY[0x277CD9E00] animation];
      [SiriSharedUIAnimationUtilities animationDurationForStyle:2 presentationType:a5];
      [v5 setDuration:?];
      v9 = +[SiriSharedUIAnimationUtilities defaultTimingFunction];
      [v5 setTimingFunction:v9];

      [v5 setRemovedOnCompletion:0];
      v10 = [MEMORY[0x277CD9FA0] animation];
      [v10 setKeyPath:@"opacity"];
      [v10 setFromValue:&unk_282F91088];
      [v10 setToValue:&unk_282F91078];
      [v10 setMass:3.0];
      [v10 setStiffness:1000.0];
      [v10 setDamping:500.0];
      v37 = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      [v5 setAnimations:v11];
    }

    goto LABEL_38;
  }

  v5 = [MEMORY[0x277CD9E00] animation];
  [SiriSharedUIAnimationUtilities animationDurationForStyle:a3 presentationType:a5];
  [v5 setDuration:?];
  [SiriSharedUIAnimationUtilities animationBeginTimeForStyle:a3 presentationType:a5];
  [v5 setBeginTime:?];
  [v5 setFillMode:*MEMORY[0x277CDA228]];
  v16 = +[SiriSharedUIAnimationUtilities defaultTimingFunction];
  [v5 setTimingFunction:v16];

  v10 = [MEMORY[0x277CD9FA0] animation];
  [v10 setKeyPath:@"transform.translation.y"];
  [v10 setFromValue:&unk_282F91068];
  [v10 setToValue:&unk_282F91078];
  v17 = 2.5;
  if (a5 == 1)
  {
    v18 = 200.0;
  }

  else
  {
    v17 = 3.0;
    v18 = 1000.0;
  }

  if (a5 == 1)
  {
    v19 = 300.0;
  }

  else
  {
    v19 = 1000.0;
  }

  if (a5 == 1)
  {
    v20 = 50.0;
  }

  else
  {
    v20 = 500.0;
  }

  if (a5 == 1)
  {
    v21 = 2.0;
  }

  else
  {
    v21 = 3.0;
  }

  [v10 setMass:v17];
  [v10 setStiffness:v18];
  [v10 setDamping:dbl_21E4E4D20[a5 == 1]];
  v11 = [MEMORY[0x277CD9FA0] animation];
  [v11 setKeyPath:@"opacity"];
  [v11 setFromValue:&unk_282F91078];
  [v11 setToValue:&unk_282F91088];
  [v11 setMass:3.0];
  [v11 setStiffness:v19];
  [v11 setDamping:v20];
  v22 = [MEMORY[0x277CD9FA0] animation];
  [v22 setKeyPath:@"transform.scale"];
  [v22 setFromValue:&unk_282F91098];
  [v22 setToValue:&unk_282F91088];
  [v22 setMass:v21];
  [v22 setStiffness:v19];
  [v22 setDamping:v20];
  v23 = [MEMORY[0x277CD9FA0] animation];
  [v23 setKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v23 setFromValue:&unk_282F910A8];
  [v23 setToValue:&unk_282F91078];
  [v23 setMass:2.0];
  [v23 setStiffness:300.0];
  [v23 setDamping:50.0];
  if (v8)
  {
    v43[0] = v11;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
  }

  else
  {
    v25 = MEMORY[0x277CBEB18];
    v42[0] = v10;
    v42[1] = v11;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v24 = [v25 arrayWithArray:v26];

    if (a5 == 1)
    {
      v27 = v23;
    }

    else
    {
      v27 = v22;
    }

    [v24 addObject:v27];
  }

  [v5 setAnimations:v24];

LABEL_38:
LABEL_39:

  return v5;
}

+ (id)_centeringAnimationForInitialScale:(double)a3 width:(double)a4
{
  v6 = [MEMORY[0x277CD9FA0] animation];
  [v6 setKeyPath:@"transform.translation.x"];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:(1.0 - a3) * (a4 * 0.5)];
  [v6 setFromValue:v7];

  [v6 setToValue:&unk_282F91078];

  return v6;
}

+ (double)_springDurationForMass:(double)a3 stiffness:(double)a4 damping:(double)a5
{
  v8 = objc_alloc_init(MEMORY[0x277CD9FA0]);
  [v8 setMass:a3];
  [v8 setStiffness:a4];
  [v8 setDamping:a5];
  [v8 settlingDuration];
  v10 = v9;

  return v10;
}

@end