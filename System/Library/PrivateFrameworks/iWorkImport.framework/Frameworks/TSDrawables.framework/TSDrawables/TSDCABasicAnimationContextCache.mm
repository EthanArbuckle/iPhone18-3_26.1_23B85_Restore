@interface TSDCABasicAnimationContextCache
- (TSDCABasicAnimationContextCache)initWithAnimation:(id)animation;
- (double)percentAtTime:(double)time;
- (id)valueAtTime:(double)time initialValue:(id)value groupTimingFactor:(double)factor;
@end

@implementation TSDCABasicAnimationContextCache

- (TSDCABasicAnimationContextCache)initWithAnimation:(id)animation
{
  animationCopy = animation;
  v45.receiver = self;
  v45.super_class = TSDCABasicAnimationContextCache;
  v5 = [(TSDCAPropertyAnimationContextCache *)&v45 initWithAnimation:animationCopy];
  v7 = v5;
  if (v5)
  {
    fromValue = v5->_fromValue;
    if (fromValue)
    {
      v9 = CFGetTypeID(fromValue);
      v10 = v9 == CGColorGetTypeID();
    }

    else
    {
      v10 = 0;
    }

    objc_msgSend_setIsObjectTypeCGColor_(v7, v6, v10);
    v13 = objc_msgSend_keyPath(animationCopy, v11, v12);
    isEqualToString = objc_msgSend_isEqualToString_(v13, v14, @"contents");
    objc_msgSend_setIsContentsAnimation_(v7, v16, isEqualToString);

    if (objc_msgSend_isContentsAnimation(v7, v17, v18))
    {
      objc_opt_class();
      v23 = objc_msgSend_fromValue(animationCopy, v21, v22);
      v24 = TSUDynamicCast();

      objc_opt_class();
      v27 = objc_msgSend_toValue(animationCopy, v25, v26);
      v28 = TSUDynamicCast();

      v42 = v24;
      v43 = v28;
      v44 = 0;
      v30 = objc_msgSend_valueWithContentBlend_(MEMORY[0x277CCAE60], v29, &v42);
      objc_msgSend_setFromValue_(animationCopy, v31, v30);

      v42 = v24;
      v43 = v28;
      v44 = 0x3FF0000000000000;
      v33 = objc_msgSend_valueWithContentBlend_(MEMORY[0x277CCAE60], v32, &v42);
      objc_msgSend_setToValue_(animationCopy, v34, v33);
    }

    v35 = objc_msgSend_fromValue(animationCopy, v19, v20);
    v36 = v7->_fromValue;
    v7->_fromValue = v35;

    v39 = objc_msgSend_toValue(animationCopy, v37, v38);
    toValue = v7->_toValue;
    v7->_toValue = v39;
  }

  return v7;
}

- (id)valueAtTime:(double)time initialValue:(id)value groupTimingFactor:(double)factor
{
  valueCopy = value;
  if (objc_msgSend_shouldUseInitialValueAtAnimationTime_(self, v8, v9, time))
  {
    v12 = valueCopy;
    objc_msgSend_adjustedResultWithValue_(self, v13, v12);
  }

  else
  {
    objc_msgSend_workingPercentFromAnimationTime_(self, v10, v11, time);
    v15 = v14;
    v20 = objc_msgSend_timingFunction(self, v16, v17);
    if (v20)
    {
      v21 = objc_msgSend_timingFunction(self, v18, v19);
      objc_msgSend_TSD_valueAtPercent_(v21, v22, v23, v15);
    }

    TSUClamp();
    v25 = v24;
    v28 = objc_msgSend_fromValue(self, v26, v27);
    v31 = objc_msgSend_toValue(self, v29, v30);
    v12 = objc_msgSend_interpolatedValueFrom_to_percent_(self, v32, v28, v31, v25);

    objc_msgSend_adjustedResultWithValue_(self, v33, v12);
  }
  v34 = ;

  return v34;
}

- (double)percentAtTime:(double)time
{
  objc_msgSend_animationPercentFromAnimationTime_(self, a2, v3, time);
  v8 = v7;
  if (v7 >= 0.0)
  {
    goto LABEL_4;
  }

  v9 = objc_msgSend_fillMode(self, v5, v6);
  v13 = 0.0;
  if (objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x277CDA228]))
  {
    goto LABEL_8;
  }

  v14 = objc_msgSend_fillMode(self, v11, v12);
  isEqualToString = objc_msgSend_isEqualToString_(v14, v15, *MEMORY[0x277CDA230]);

  if ((isEqualToString & 1) == 0)
  {
LABEL_4:
    v13 = 1.0;
    if (v8 < 1.0)
    {
LABEL_5:
      v17 = objc_msgSend_timingFunction(self, v5, v6);

      if (!v17)
      {
        return v8;
      }

      v9 = objc_msgSend_timingFunction(self, v18, v19);
      objc_msgSend_TSD_valueAtPercent_(v9, v20, v21, v8);
      v13 = v22;
      goto LABEL_8;
    }

    v9 = objc_msgSend_fillMode(self, v5, v6);
    if ((objc_msgSend_isEqualToString_(v9, v23, *MEMORY[0x277CDA238]) & 1) == 0)
    {
      v27 = objc_msgSend_fillMode(self, v24, v25);
      v29 = objc_msgSend_isEqualToString_(v27, v28, *MEMORY[0x277CDA230]);

      if (v29)
      {
        return v13;
      }

      goto LABEL_5;
    }

LABEL_8:
  }

  return v13;
}

@end