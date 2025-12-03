@interface TSDCAAnimationContextCache
- (BOOL)shouldUseInitialValueAtAnimationTime:(double)time;
- (TSDCAAnimationContextCache)initWithAnimation:(id)animation;
- (double)animationPercentFromAnimationTime:(double)time;
- (double)percentAtTime:(double)time;
- (double)workingPercentFromAnimationTime:(double)time;
- (id)valueAtTime:(double)time initialValue:(id)value groupTimingFactor:(double)factor;
- (id)valueForKeyPath:(id)path atTime:(double)time animationCache:(id)cache;
@end

@implementation TSDCAAnimationContextCache

- (TSDCAAnimationContextCache)initWithAnimation:(id)animation
{
  animationCopy = animation;
  v29.receiver = self;
  v29.super_class = TSDCAAnimationContextCache;
  v7 = [(TSDCAAnimationContextCache *)&v29 init];
  if (v7)
  {
    v8 = objc_msgSend_timingFunction(animationCopy, v5, v6);
    timingFunction = v7->_timingFunction;
    v7->_timingFunction = v8;

    objc_msgSend_beginTime(animationCopy, v10, v11);
    v7->_beginTime = v12;
    objc_msgSend_timeOffset(animationCopy, v13, v14);
    v7->_timeOffset = v15;
    objc_msgSend_duration(animationCopy, v16, v17);
    v7->_duration = v18;
    v21 = objc_msgSend_fillMode(animationCopy, v19, v20);
    fillMode = v7->_fillMode;
    v7->_fillMode = v21;

    v7->_autoreverses = objc_msgSend_autoreverses(animationCopy, v23, v24);
    objc_msgSend_repeatCount(animationCopy, v25, v26);
    v7->_repeatCount = v27;
  }

  return v7;
}

- (BOOL)shouldUseInitialValueAtAnimationTime:(double)time
{
  objc_msgSend_animationPercentFromAnimationTime_(self, a2, v3, time);
  v8 = v7;
  if (v7 < 0.0)
  {
    v9 = objc_msgSend_fillMode(self, v5, v6);
    if (objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x277CDA228]))
    {
    }

    else
    {
      v13 = objc_msgSend_fillMode(self, v11, v12);
      isEqualToString = objc_msgSend_isEqualToString_(v13, v14, *MEMORY[0x277CDA230]);

      if (!isEqualToString)
      {
        LOBYTE(v28) = 1;
        return v28;
      }
    }
  }

  v18 = 1.0;
  if (objc_msgSend_autoreverses(self, v5, v6))
  {
    v19 = 2.0;
  }

  else
  {
    v19 = 1.0;
  }

  objc_msgSend_repeatCount(self, v16, v17);
  if (v22 != 0.0)
  {
    objc_msgSend_repeatCount(self, v20, v21);
    v18 = v23;
  }

  if (v8 <= v19 * v18)
  {
    LOBYTE(v28) = 0;
  }

  else
  {
    v24 = objc_msgSend_fillMode(self, v20, v21);
    if (objc_msgSend_isEqualToString_(v24, v25, *MEMORY[0x277CDA238]))
    {
      LOBYTE(v28) = 0;
    }

    else
    {
      v29 = objc_msgSend_fillMode(self, v26, v27);
      v28 = objc_msgSend_isEqualToString_(v29, v30, *MEMORY[0x277CDA230]) ^ 1;
    }
  }

  return v28;
}

- (double)animationPercentFromAnimationTime:(double)time
{
  objc_msgSend_duration(self, a2, v3);
  v9 = v8;
  result = 0.0;
  if (v9 != 0.0)
  {
    objc_msgSend_beginTime(self, v6, v7, 0.0);
    v12 = time - v11;
    objc_msgSend_duration(self, v13, v14);
    return v12 / v15;
  }

  return result;
}

- (double)workingPercentFromAnimationTime:(double)time
{
  objc_msgSend_animationPercentFromAnimationTime_(self, a2, v3, time);
  v8 = 0.0;
  if (v7 >= 0.0)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0.0;
  }

  objc_msgSend_duration(self, v5, v6);
  if (v12 != 0.0)
  {
    objc_msgSend_timeOffset(self, v10, v11);
    v14 = v13;
    objc_msgSend_duration(self, v15, v16);
    v8 = v14 / v17;
  }

  objc_msgSend_repeatCount(self, v10, v11, v9 + v8);
  if (v20 > 0.0)
  {
    if (objc_msgSend_autoreverses(self, v18, v19))
    {
      v24 = 2.0;
    }

    else
    {
      v24 = 1.0;
    }

    objc_msgSend_repeatCount(self, v22, v23);
    v21 = v27;
    if (v27 <= v8 + v24 * v25)
    {
      v20 = fmod(v27, v24);
    }

    else if (v8 == 0.0)
    {
      v20 = v24;
    }

    else
    {
      v20 = v8;
    }

    v27 = v20;
  }

  objc_msgSend_autoreverses(self, v18, v19, v20, v21, *&v27);

  TSUClamp();
  return result;
}

- (id)valueForKeyPath:(id)path atTime:(double)time animationCache:(id)cache
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDCAAnimationContextCache valueForKeyPath:atTime:animationCache:]", cache, time);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/CAAnimationAdditions.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 235, 0, "Implement me in subclass!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  return 0;
}

- (id)valueAtTime:(double)time initialValue:(id)value groupTimingFactor:(double)factor
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDCAAnimationContextCache valueAtTime:initialValue:groupTimingFactor:]", time, factor);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/CAAnimationAdditions.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 240, 0, "Implement me in subclass!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  return 0;
}

- (double)percentAtTime:(double)time
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDCAAnimationContextCache percentAtTime:]", time);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/CAAnimationAdditions.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 249, 0, "Implement me in subclass!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  return 0.0;
}

@end