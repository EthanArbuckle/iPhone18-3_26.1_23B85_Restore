@interface TSDFreehandDrawingAnimationPlaybackTiming
- (BOOL)shouldParameterizeStrokesWithDuration:(double)a3 framesPerSecond:(double)a4;
- (TSDFreehandDrawingAnimationPlaybackTiming)initWithFreehandDrawingInfo:(id)a3;
- (double)visibilityOfChild:(id)a3 atPercent:(double)a4;
- (id)p_fillTimingCurve;
@end

@implementation TSDFreehandDrawingAnimationPlaybackTiming

- (TSDFreehandDrawingAnimationPlaybackTiming)initWithFreehandDrawingInfo:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v32.receiver = self;
  v32.super_class = TSDFreehandDrawingAnimationPlaybackTiming;
  v6 = [(TSDFreehandDrawingAnimationPlaybackTiming *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_freehandDrawingInfo, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = objc_msgSend_childInfos(v7->_freehandDrawingInfo, v10, v11, 0, 0);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v28, v33, 16);
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        v17 = 0;
        do
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v12);
          }

          objc_opt_class();
          v18 = TSUCheckedDynamicCast();
          v21 = v18;
          if (v18)
          {
            if (objc_msgSend_isTreatedAsFillForFreehandDrawing(v18, v19, v20))
            {
              objc_msgSend_addObject_(v8, v22, v21);
            }

            else
            {
              objc_msgSend_addObject_(v9, v22, v21);
            }
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v23, &v28, v33, 16);
      }

      while (v15);
    }

    fillShapes = v7->_fillShapes;
    v7->_fillShapes = v8;
    v25 = v8;

    strokeShapes = v7->_strokeShapes;
    v7->_strokeShapes = v9;
  }

  return v7;
}

- (BOOL)shouldParameterizeStrokesWithDuration:(double)a3 framesPerSecond:(double)a4
{
  v8 = objc_msgSend_count(self->_strokeShapes, a2, v4);
  if (v8)
  {
    LOBYTE(v8) = a3 / objc_msgSend_count(self->_strokeShapes, v9, v10) > 4.0 / a4;
  }

  return v8;
}

- (double)visibilityOfChild:(id)a3 atPercent:(double)a4
{
  v6 = a3;
  isTreatedAsFillForFreehandDrawing = objc_msgSend_isTreatedAsFillForFreehandDrawing(v6, v7, v8);
  v12 = objc_msgSend_count(self->_strokeShapes, v10, v11);
  if (isTreatedAsFillForFreehandDrawing)
  {
    v15 = 0.5;
    if (!v12)
    {
      v15 = 1.0;
    }

    v16 = (a4 - (1.0 - v15)) / v15;
    v17 = objc_msgSend_count(self->_fillShapes, v13, v14);
    v18 = 0.0;
    if (v16 > 0.0)
    {
      v19 = v17;
      TSUMix();
      v22 = vcvtmd_u64_f64(v21);
      if (v19 - 1 >= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v19 - 1;
      }

      v24 = objc_msgSend_indexOfObjectIdenticalTo_(self->_fillShapes, v20, v6);
      if (v24 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSDFreehandDrawingAnimationPlaybackTiming visibilityOfChild:atPercent:]");
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingAnimationPlaybackTiming.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 81, 0, "expected inequality between %{public}s and %{public}s", "childFillIndex", "NSNotFound");
LABEL_12:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
        v18 = 1.0;
        goto LABEL_19;
      }

      v18 = 1.0;
      if (v24 >= v23)
      {
        v18 = 0.0;
        if (v24 == v23)
        {
          TSUClamp();
          v44 = v43;
          v47 = objc_msgSend_p_fillTimingCurve(self, v45, v46);
          objc_msgSend_yValueFromXValue_(v47, v48, v49, v44);
          v18 = v50;
        }
      }
    }
  }

  else
  {
    TSUMix();
    v32 = v31;
    v34 = objc_msgSend_indexOfObjectIdenticalTo_(self->_strokeShapes, v33, v6);
    if (v34 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v36 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSDFreehandDrawingAnimationPlaybackTiming visibilityOfChild:atPercent:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingAnimationPlaybackTiming.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v38, v27, v29, 103, 0, "expected inequality between %{public}s and %{public}s", "childStrokeIndex", "NSNotFound");
      goto LABEL_12;
    }

    v41 = vcvtmd_u64_f64(v32);
    v18 = 1.0;
    if (v34 >= v41)
    {
      v18 = 0.0;
      if (v34 == v41)
      {
        TSUClamp();
        v18 = v42;
      }
    }
  }

LABEL_19:

  return v18;
}

- (id)p_fillTimingCurve
{
  v3 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, v2);
  objc_msgSend_moveToPoint_(v3, v4, v5, 0.0, 0.0);
  objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v3, v6, v7, 1.0, 1.0, 0.201748177, 0.0, 0.749977589, 1.0);

  return v3;
}

@end