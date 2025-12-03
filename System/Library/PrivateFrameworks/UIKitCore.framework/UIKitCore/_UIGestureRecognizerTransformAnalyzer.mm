@interface _UIGestureRecognizerTransformAnalyzer
- (_UIGestureRecognizerTransformAnalyzer)init;
- (void)analyzeTouches:(id)touches;
- (void)reset;
@end

@implementation _UIGestureRecognizerTransformAnalyzer

- (_UIGestureRecognizerTransformAnalyzer)init
{
  v8.receiver = self;
  v8.super_class = _UIGestureRecognizerTransformAnalyzer;
  result = [(_UIGestureRecognizerTransformAnalyzer *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *&result->_translationWeight = _Q0;
    result->_rotationWeight = 1.0;
  }

  return result;
}

- (void)reset
{
  self->_lowPassTranslationMagnitudeDelta = 0.0;
  self->_lowPassScaleDelta = 0.0;
  self->_lowPassRotationDelta = 0.0;
}

- (void)analyzeTouches:(id)touches
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = [touches count];
  v6 = v5;
  if (v5 == 1)
  {
    anyObject = [touches anyObject];
    [anyObject _locationInSceneReferenceSpace];
    v9 = v8;
    v11 = v10;
    [anyObject _previousLocationInSceneReferenceSpace];
    v13 = v9 - v12;
    v15 = v11 - v14;

LABEL_12:
    v39 = 0.0;
    v40 = 0.0;
    goto LABEL_15;
  }

  v13 = *MEMORY[0x1E695EFF8];
  v15 = *(MEMORY[0x1E695EFF8] + 8);
  if (v5 < 1)
  {
    goto LABEL_12;
  }

  v16 = _CentroidOfTouches(touches, 0);
  v18 = v17;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  touchesCopy = touches;
  v20 = [touchesCopy countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v55;
    v23 = 0.0;
    v24 = 0.0;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v55 != v22)
        {
          objc_enumerationMutation(touchesCopy);
        }

        v26 = *(*(&v54 + 1) + 8 * i);
        [v26 _locationInSceneReferenceSpace];
        v28 = v27;
        v30 = v29;
        [v26 _previousLocationInSceneReferenceSpace];
        v32 = v28 - v31;
        v34 = v30 - v33;
        v13 = v13 + v32;
        v15 = v15 + v34;
        v35 = (v28 - v16) * (v28 - v16) + (v30 - v18) * (v30 - v18);
        v36 = sqrtf(v35);
        v37 = (v28 - v16) / v36;
        v38 = (v30 - v18) / v36;
        v24 = v24 + v32 * v37 + v34 * v38;
        v23 = v23 + v32 * v38 - v34 * v37;
      }

      v21 = [touchesCopy countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v21);
  }

  else
  {
    v23 = 0.0;
    v24 = 0.0;
  }

  v13 = v13 / v6;
  v40 = v24 / v6 * 0.4;
  v39 = v23 / v6 * 0.4;
  v15 = v15 / v6;
LABEL_15:
  v41 = v15 * v15 + v13 * v13;
  v42.f64[0] = sqrtf(v41) * 0.4;
  v42.f64[1] = v40;
  v43 = vaddq_f64(v42, vmulq_f64(*&self->_lowPassTranslationMagnitudeDelta, vdupq_n_s64(0x3FE3333333333333uLL)));
  *&self->_lowPassTranslationMagnitudeDelta = v43;
  v44 = v39 + self->_lowPassRotationDelta * 0.6;
  self->_lowPassRotationDelta = v44;
  v45 = vmulq_f64(*&self->_translationWeight, vabsq_f64(v43));
  v46 = fabs(v44) * self->_rotationWeight;
  v47 = v45.f64[0] / v45.f64[1];
  if (v45.f64[1] <= 0.0)
  {
    v47 = v45.f64[0];
  }

  if (v45.f64[1] != 0.0 && v47 <= 1.4)
  {
    goto LABEL_23;
  }

  v48 = v45.f64[0] / v46;
  if (v46 <= 0.0)
  {
    v48 = v45.f64[0];
  }

  v49 = 1;
  if (v46 != 0.0 && v48 <= 1.4)
  {
LABEL_23:
    v50 = v45.f64[1] / v45.f64[0];
    if (v45.f64[0] <= 0.0)
    {
      v50 = v45.f64[1];
    }

    if (v45.f64[0] != 0.0 && v50 <= 1.4)
    {
      goto LABEL_31;
    }

    v51 = v45.f64[1] / v46;
    if (v46 <= 0.0)
    {
      v51 = v45.f64[1];
    }

    v49 = 2;
    if (v46 != 0.0 && v51 <= 1.4)
    {
LABEL_31:
      v52 = v45.f64[0] == 0.0;
      if (v45.f64[0] <= 0.0)
      {
        v53 = v46;
      }

      else
      {
        v53 = v46 / v45.f64[0];
      }

      if (!v52 && v53 <= 1.4)
      {
        goto LABEL_40;
      }

      if (v45.f64[1] > 0.0)
      {
        v46 = v46 / v45.f64[1];
      }

      v49 = 3;
      if (v45.f64[1] != 0.0 && v46 <= 1.4)
      {
LABEL_40:
        v49 = 0;
      }
    }
  }

  self->_dominantComponent = v49;
}

@end