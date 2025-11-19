@interface _UIFluidSliderFeedbackConductor
- (_UIFluidSliderFeedbackConductor)initWithDetentCount:(unint64_t)a3 view:(id)a4 indirectFeedbackPlayer:(id)a5;
- (void)_playFeedback:(int64_t)a3 forUpdateType:(int64_t)a4 value:(double)a5 atLocation:(CGPoint)a6;
- (void)moveToValue:(double)a3 snappingTarget:(double)a4 withUpdateType:(int64_t)a5 atLocation:(CGPoint)a6 forced:(BOOL)a7;
@end

@implementation _UIFluidSliderFeedbackConductor

- (_UIFluidSliderFeedbackConductor)initWithDetentCount:(unint64_t)a3 view:(id)a4 indirectFeedbackPlayer:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = _UIFluidSliderFeedbackConductor;
  v10 = [(_UIFluidSliderFeedbackConductor *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(_UIFluidSliderFeedbackConductor *)v10 set_detentCount:a3];
    v12 = [[_UIFluidSliderFeedbackGenerator alloc] initWithView:v8];
    [(_UIFluidSliderFeedbackConductor *)v11 set_directFeedbackPlayer:v12];

    [(_UIFluidSliderFeedbackConductor *)v11 set_indirectFeedbackPlayer:v9];
    [(_UIFluidSliderFeedbackConductor *)v11 setEpsilon:0.0001];
  }

  return v11;
}

- (void)moveToValue:(double)a3 snappingTarget:(double)a4 withUpdateType:(int64_t)a5 atLocation:(CGPoint)a6 forced:(BOOL)a7
{
  v7 = a7;
  y = a6.y;
  x = a6.x;
  if (a7 || ([(_UIFluidSliderFeedbackConductor *)self _lastValue], v15 = vabdd_f64(a3, v14), [(_UIFluidSliderFeedbackConductor *)self epsilon], v15 > v16))
  {
    [(_UIFluidSliderFeedbackConductor *)self _currentRegion];
    [(_UIFluidSliderFeedbackConductor *)self epsilon];
    if (v17 <= a3)
    {
      [(_UIFluidSliderFeedbackConductor *)self epsilon];
      v21 = 1.0 - v20;
      v18 = v21 >= a3;
      if (v21 < a3)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      if (!a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = 0;
      v19 = 1;
      if (!a5)
      {
        goto LABEL_17;
      }
    }

    if (!v7 && [(_UIFluidSliderFeedbackConductor *)self _currentRegion])
    {
      if (v18)
      {
        if (a5 == 1)
        {
          if (a4 <= 0.0)
          {
            goto LABEL_29;
          }

          if (a4 >= 1.0)
          {
            goto LABEL_29;
          }

          [(_UIFluidSliderFeedbackConductor *)self _lastSnappingTarget];
          v28 = vabdd_f64(a4, v27);
          [(_UIFluidSliderFeedbackConductor *)self epsilon];
          if (v28 <= v29)
          {
            goto LABEL_29;
          }

          v23 = 2;
LABEL_19:
          if (v19 == 3)
          {
            [(_UIFluidSliderFeedbackConductor *)self _playFeedback:3 forUpdateType:a5 value:a3 atLocation:x, y];
            v24 = *(__UILogGetCategoryCachedImpl("FluidSliderInteraction", &qword_1ED4A2040) + 8);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v30) = 0;
              v25 = "[FluidSlider Feedback] Max";
              v26 = &v30;
              goto LABEL_27;
            }
          }

          else if (v19 == 2)
          {
            [(_UIFluidSliderFeedbackConductor *)self _playFeedback:v23 forUpdateType:a5 value:a3 atLocation:x, y];
            v24 = *(__UILogGetCategoryCachedImpl("FluidSliderInteraction", &qword_1ED4A2038) + 8);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v31 = 0;
              v25 = "[FluidSlider Feedback] Detent";
              v26 = &v31;
LABEL_27:
              _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, v25, v26, 2u);
            }
          }

          else
          {
            [(_UIFluidSliderFeedbackConductor *)self _playFeedback:0 forUpdateType:a5 value:a3 atLocation:x, y];
            v24 = *(__UILogGetCategoryCachedImpl("FluidSliderInteraction", &_MergedGlobals_1311) + 8);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v25 = "[FluidSlider Feedback] Min";
              v26 = buf;
              goto LABEL_27;
            }
          }

LABEL_29:
          [(_UIFluidSliderFeedbackConductor *)self set_currentRegion:v19, v30];
          [(_UIFluidSliderFeedbackConductor *)self set_lastValue:a3];
          [(_UIFluidSliderFeedbackConductor *)self set_lastSnappingTarget:a4];
          return;
        }

        if (a5 != 3)
        {
          goto LABEL_17;
        }

        [(_UIFluidSliderFeedbackConductor *)self _lastValue];
        if (floor(v22 * [(_UIFluidSliderFeedbackConductor *)self _detentCount]) == floor([(_UIFluidSliderFeedbackConductor *)self _detentCount]* a3))
        {
          goto LABEL_29;
        }
      }

      else if (v19 == [(_UIFluidSliderFeedbackConductor *)self _currentRegion])
      {
        goto LABEL_29;
      }

LABEL_18:
      v23 = 1;
      goto LABEL_19;
    }

LABEL_17:
    if (!v7)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }
}

- (void)_playFeedback:(int64_t)a3 forUpdateType:(int64_t)a4 value:(double)a5 atLocation:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  if (a4 == 1 || (-[_UIFluidSliderFeedbackConductor _indirectFeedbackPlayer](self, "_indirectFeedbackPlayer"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 playFeedback:a3 forValue:a5 atLocation:{x, y}], v11, (v12 & 1) == 0))
  {
    v13 = [(_UIFluidSliderFeedbackConductor *)self _directFeedbackPlayer];
    [v13 playFeedback:a3 forValue:a5 atLocation:{x, y}];
  }
}

@end