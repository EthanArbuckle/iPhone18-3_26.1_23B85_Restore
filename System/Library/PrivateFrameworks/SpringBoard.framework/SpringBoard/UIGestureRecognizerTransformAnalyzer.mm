@interface UIGestureRecognizerTransformAnalyzer
- (UIGestureRecognizerTransformAnalyzer)init;
- (id)analyzeTouches:(id)touches;
@end

@implementation UIGestureRecognizerTransformAnalyzer

- (UIGestureRecognizerTransformAnalyzer)init
{
  v12.receiver = self;
  v12.super_class = UIGestureRecognizerTransformAnalyzer;
  v2 = [(UIGestureRecognizerTransformAnalyzer *)&v12 init];
  v3 = v2;
  if (v2)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *&v2->_translationWeight = _Q0;
    v2->_rotationWeight = 1.0;
    v9 = objc_alloc_init(UIGestureRecognizerTransformAnalyzerInfo);
    smoothedInfo = v3->_smoothedInfo;
    v3->_smoothedInfo = v9;
  }

  return v3;
}

- (id)analyzeTouches:(id)touches
{
  v78 = *MEMORY[0x277D85DE8];
  touchesCopy = touches;
  v5 = [touchesCopy count];
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  v8 = 0.0;
  if (v5)
  {
    v9 = v5;
    if (v5 == 1)
    {
      anyObject = [touchesCopy anyObject];
      [anyObject _locationInSceneReferenceSpace];
      v12 = v11;
      v14 = v13;
      [anyObject _previousLocationInSceneReferenceSpace];
      v16 = v12 - v15;
      v18 = v14 - v17;
      v6 = vabdd_f64(v12, v15);
      v7 = vabdd_f64(v14, v17);

      v19 = 0.0;
    }

    else
    {
      v20 = _CentroidOfTouches(touchesCopy, 0);
      v71 = v21;
      v72 = v20;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v22 = touchesCopy;
      v23 = [v22 countByEnumeratingWithState:&v73 objects:v77 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v74;
        v26 = 0.0;
        v27 = v7;
        v28 = v6;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v74 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v30 = *(*(&v73 + 1) + 8 * i);
            [v30 _locationInSceneReferenceSpace];
            v32 = v31;
            v34 = v33;
            [v30 _previousLocationInSceneReferenceSpace];
            v36 = v32 - v35;
            v38 = v34 - v37;
            v28 = v28 + v32 - v35;
            v27 = v27 + v34 - v37;
            v6 = v6 + vabdd_f64(v32, v35);
            v7 = v7 + vabdd_f64(v34, v37);
            v39 = (v34 - v71) * (v34 - v71) + (v32 - v72) * (v32 - v72);
            v40 = sqrtf(v39);
            v41 = (v32 - v72) / v40;
            v42 = (v34 - v71) / v40;
            v8 = v8 + v38 * v42 + v36 * v41;
            v26 = v26 + v36 * v42 - v38 * v41;
          }

          v24 = [v22 countByEnumeratingWithState:&v73 objects:v77 count:16];
        }

        while (v24);
      }

      else
      {
        v26 = 0.0;
        v27 = v7;
        v28 = v6;
      }

      v16 = v28 / v9;
      v18 = v27 / v9;
      v6 = v6 / v9;
      v7 = v7 / v9;
      v19 = v8 / v9;
      v8 = v26 / v9;
    }
  }

  else
  {
    v19 = 0.0;
    v18 = *(MEMORY[0x277CBF348] + 8);
    v16 = *MEMORY[0x277CBF348];
  }

  v43 = v18 * v18 + v16 * v16;
  v44 = sqrtf(v43);
  v45 = objc_alloc_init(UIGestureRecognizerTransformAnalyzerInfo);
  [(UIGestureRecognizerTransformAnalyzerInfo *)v45 _setTranslation:v16, v18];
  [(UIGestureRecognizerTransformAnalyzerInfo *)v45 _setTranslationMagnitude:v44];
  [(UIGestureRecognizerTransformAnalyzerInfo *)v45 _setAbsoluteTranslation:v6, v7];
  [(UIGestureRecognizerTransformAnalyzerInfo *)v45 _setScale:v19];
  [(UIGestureRecognizerTransformAnalyzerInfo *)v45 _setRotation:v8];
  smoothedInfo = self->_smoothedInfo;
  [(UIGestureRecognizerTransformAnalyzerInfo *)smoothedInfo translationMagnitude];
  [(UIGestureRecognizerTransformAnalyzerInfo *)smoothedInfo _setTranslationMagnitude:v47 * 0.6 + v44 * 0.4];
  v48 = self->_smoothedInfo;
  [(UIGestureRecognizerTransformAnalyzerInfo *)v48 scale];
  [(UIGestureRecognizerTransformAnalyzerInfo *)v48 _setScale:v49 * 0.6 + v19 * 0.4];
  v50 = self->_smoothedInfo;
  [(UIGestureRecognizerTransformAnalyzerInfo *)v50 rotation];
  [(UIGestureRecognizerTransformAnalyzerInfo *)v50 _setRotation:v51 * 0.6 + v8 * 0.4];
  [(UIGestureRecognizerTransformAnalyzerInfo *)self->_smoothedInfo translation];
  v53 = v52 * 0.6 + v16 * 0.4;
  [(UIGestureRecognizerTransformAnalyzerInfo *)self->_smoothedInfo translation];
  [(UIGestureRecognizerTransformAnalyzerInfo *)self->_smoothedInfo _setTranslation:v53, v54 * 0.6 + v18 * 0.4];
  [(UIGestureRecognizerTransformAnalyzerInfo *)self->_smoothedInfo absoluteTranslation];
  v56 = v55 * 0.6 + v6 * 0.4;
  [(UIGestureRecognizerTransformAnalyzerInfo *)self->_smoothedInfo absoluteTranslation];
  [(UIGestureRecognizerTransformAnalyzerInfo *)self->_smoothedInfo _setAbsoluteTranslation:v56, v57 * 0.6 + v7 * 0.4];
  [(UIGestureRecognizerTransformAnalyzerInfo *)self->_smoothedInfo translationMagnitude];
  v59 = fabs(v58) * self->_translationWeight;
  [(UIGestureRecognizerTransformAnalyzerInfo *)self->_smoothedInfo scale];
  v61 = fabs(v60) * self->_pinchingWeight;
  [(UIGestureRecognizerTransformAnalyzerInfo *)self->_smoothedInfo rotation];
  v63 = fabs(v62) * self->_rotationWeight;
  if (v61 <= 0.0)
  {
    v64 = v59;
  }

  else
  {
    v64 = v59 / v61;
  }

  if (v63 <= 0.0)
  {
    v65 = v59;
  }

  else
  {
    v65 = v59 / v63;
  }

  if (v64 > 1.4 && v65 > 1.4)
  {
    v66 = 1;
LABEL_39:
    self->_dominantComponent = v66;
    goto LABEL_40;
  }

  if (v59 <= 0.0)
  {
    v67 = v61;
  }

  else
  {
    v67 = v61 / v59;
  }

  v68 = v61 / v63;
  if (v63 <= 0.0)
  {
    v68 = v61;
  }

  if (v67 > 1.4 && v68 > 1.4)
  {
    v66 = 2;
    goto LABEL_39;
  }

  v69 = v63 / v59;
  if (v59 <= 0.0)
  {
    v69 = v63;
  }

  if (v61 > 0.0)
  {
    v63 = v63 / v61;
  }

  if (v69 > 1.4 && v63 > 1.4)
  {
    v66 = 3;
    goto LABEL_39;
  }

  self->_dominantComponent = 0;
LABEL_40:

  return v45;
}

@end