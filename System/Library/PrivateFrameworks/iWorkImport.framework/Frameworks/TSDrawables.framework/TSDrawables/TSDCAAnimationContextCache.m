@interface TSDCAAnimationContextCache
- (BOOL)shouldUseInitialValueAtAnimationTime:(double)a3;
- (TSDCAAnimationContextCache)initWithAnimation:(id)a3;
- (double)animationPercentFromAnimationTime:(double)a3;
- (double)percentAtTime:(double)a3;
- (double)workingPercentFromAnimationTime:(double)a3;
- (id)valueAtTime:(double)a3 initialValue:(id)a4 groupTimingFactor:(double)a5;
- (id)valueForKeyPath:(id)a3 atTime:(double)a4 animationCache:(id)a5;
@end

@implementation TSDCAAnimationContextCache

- (TSDCAAnimationContextCache)initWithAnimation:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = TSDCAAnimationContextCache;
  v7 = [(TSDCAAnimationContextCache *)&v29 init];
  if (v7)
  {
    v8 = objc_msgSend_timingFunction(v4, v5, v6);
    timingFunction = v7->_timingFunction;
    v7->_timingFunction = v8;

    objc_msgSend_beginTime(v4, v10, v11);
    v7->_beginTime = v12;
    objc_msgSend_timeOffset(v4, v13, v14);
    v7->_timeOffset = v15;
    objc_msgSend_duration(v4, v16, v17);
    v7->_duration = v18;
    v21 = objc_msgSend_fillMode(v4, v19, v20);
    fillMode = v7->_fillMode;
    v7->_fillMode = v21;

    v7->_autoreverses = objc_msgSend_autoreverses(v4, v23, v24);
    objc_msgSend_repeatCount(v4, v25, v26);
    v7->_repeatCount = v27;
  }

  return v7;
}

- (BOOL)shouldUseInitialValueAtAnimationTime:(double)a3
{
  objc_msgSend_animationPercentFromAnimationTime_(self, a2, v3, a3);
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

- (double)animationPercentFromAnimationTime:(double)a3
{
  objc_msgSend_duration(self, a2, v3);
  v9 = v8;
  result = 0.0;
  if (v9 != 0.0)
  {
    objc_msgSend_beginTime(self, v6, v7, 0.0);
    v12 = a3 - v11;
    objc_msgSend_duration(self, v13, v14);
    return v12 / v15;
  }

  return result;
}

- (double)workingPercentFromAnimationTime:(double)a3
{
  objc_msgSend_animationPercentFromAnimationTime_(self, a2, v3, a3);
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

- (id)valueForKeyPath:(id)a3 atTime:(double)a4 animationCache:(id)a5
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDCAAnimationContextCache valueForKeyPath:atTime:animationCache:]", a5, a4);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/CAAnimationAdditions.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 235, 0, "Implement me in subclass!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  return 0;
}

- (id)valueAtTime:(double)a3 initialValue:(id)a4 groupTimingFactor:(double)a5
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDCAAnimationContextCache valueAtTime:initialValue:groupTimingFactor:]", a3, a5);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/CAAnimationAdditions.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 240, 0, "Implement me in subclass!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  return 0;
}

- (double)percentAtTime:(double)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDCAAnimationContextCache percentAtTime:]", a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/CAAnimationAdditions.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 249, 0, "Implement me in subclass!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  return 0.0;
}

@end