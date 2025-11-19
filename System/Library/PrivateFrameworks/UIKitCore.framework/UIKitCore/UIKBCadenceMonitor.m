@interface UIKBCadenceMonitor
- (UIKBCadenceMonitor)init;
- (id)recognizer:(id)a3 confidenceWhenPendingTouchInfo:(id)a4;
- (void)addTypingTouchTime:(double)a3;
- (void)logUserTyping:(id)a3;
- (void)reset;
- (void)typingCadence:(double)a3;
- (void)updateConfidenceWithGap:(double)a3;
@end

@implementation UIKBCadenceMonitor

- (id)recognizer:(id)a3 confidenceWhenPendingTouchInfo:(id)a4
{
  if ([(UIKBCadenceMonitor *)self touchCount:a3]>= 10)
  {
    v5 = objc_alloc_init(_UIKBRTPendingConfidenceLevels);
    [(UIKBCadenceMonitor *)self confidence];
    [(_UIKBRTConfidenceLevels *)v5 setTouchConfidence:?];
    [(_UIKBRTConfidenceLevels *)v5 setRestConfidence:0.0];
    [(_UIKBRTPendingConfidenceLevels *)v5 setConfidenceCheckTimeout:0.0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateConfidenceWithGap:(double)a3
{
  [(UIKBCadenceMonitor *)self gapAvg];
  *&a3 = v5 - a3;
  [(UIKBCadenceMonitor *)self gapAvg];
  v6.f64[0] = *&a3;
  v6.f64[1] = v7;
  v8 = vmulq_f64(v6, v6);
  *&v6.f64[0] = vdup_n_s32(*&a3 > 0.0);
  v9.i64[0] = LODWORD(v6.f64[0]);
  v9.i64[1] = HIDWORD(v6.f64[0]);
  v10 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(v8, vbslq_s8(vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL)), xmmword_18A680550, xmmword_18A680540))));
  if (*&v10 > *(&v10 + 1))
  {
    *&v10 = *(&v10 + 1);
  }

  *&v10 = ((*(&v10 + 1) - *&v10) / *(&v10 + 1)) * 100.0;

  [(UIKBCadenceMonitor *)self setConfidence:v10];
}

- (void)typingCadence:(double)a3
{
  if ([(UIKBCadenceMonitor *)self touchCount]< 1)
  {
    v6 = 30.0;
  }

  else
  {
    [(UIKBCadenceMonitor *)self prevTouchDown];
    v6 = a3 - v5;
    v7 = 60.0 / (a3 - v5);
    [(UIKBCadenceMonitor *)self typingAvg];
    if (v8 == 0.0)
    {
      [(UIKBCadenceMonitor *)self gapAvg];
      if (v9 == 0.0)
      {
        *&v9 = v7;
        [(UIKBCadenceMonitor *)self setTypingAvg:v9];
        [(UIKBCadenceMonitor *)self setGapAvg:v6];
      }
    }

    [(UIKBCadenceMonitor *)self typingAvg];
    *&v11 = (v10 + v7) * 0.5;
    [(UIKBCadenceMonitor *)self setTypingAvg:v11];
    [(UIKBCadenceMonitor *)self gapAvg];
    [(UIKBCadenceMonitor *)self setGapAvg:(v6 + v12) * 0.5];
  }

  [(UIKBCadenceMonitor *)self typingAvg];
  [(UIKBCadenceMonitor *)self setCadence:?];
  [(UIKBCadenceMonitor *)self updateConfidenceWithGap:v6];
  v13 = [(UIKBCadenceMonitor *)self touchLogTimer];

  if (v13)
  {
    [(UIKBCadenceMonitor *)self gapAvg];
    v15 = v14 * 1.5;
    v16 = [(UIKBCadenceMonitor *)self touchLogTimer];
    if (v6 <= v15)
    {
      v18 = 1.0;
    }

    else
    {
      [(UIKBCadenceMonitor *)self gapAvg];
      v18 = v17 * 1.5;
    }

    [v16 touchWithDelay:v18];
  }

  else
  {
    v19 = [UIDelayedAction alloc];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v20 = [(UIDelayedAction *)v19 initWithTarget:self action:sel_logUserTyping_ userInfo:v16 delay:*MEMORY[0x1E695D918] mode:3.0];
    [(UIKBCadenceMonitor *)self setTouchLogTimer:v20];
  }

  [(UIKBCadenceMonitor *)self setIsUserTyping:v13 != 0];
  [(UIKBCadenceMonitor *)self setPrevTouchDown:a3];
  v21 = [(UIKBCadenceMonitor *)self touchCount]+ 1;

  [(UIKBCadenceMonitor *)self setTouchCount:v21];
}

- (void)logUserTyping:(id)a3
{
  -[UIKBCadenceMonitor setIsUserTyping:](self, "setIsUserTyping:", [a3 BOOLValue]);
  v4 = [(UIKBCadenceMonitor *)self touchLogTimer];
  [v4 cancel];

  [(UIKBCadenceMonitor *)self setTouchLogTimer:0];
}

- (void)addTypingTouchTime:(double)a3
{
  [(UIKBCadenceMonitor *)self prevTouchDown];
  if (v5 <= a3)
  {

    [(UIKBCadenceMonitor *)self typingCadence:a3];
  }
}

- (void)reset
{
  [(UIKBCadenceMonitor *)self setIsUserTyping:0];
  [(UIKBCadenceMonitor *)self setCadence:0.0];
  [(UIKBCadenceMonitor *)self setConfidence:0.0];
  [(UIKBCadenceMonitor *)self setTypingAvg:0.0];
  [(UIKBCadenceMonitor *)self setGapAvg:0.0];
  [(UIKBCadenceMonitor *)self setPrevTouchDown:0.0];

  [(UIKBCadenceMonitor *)self setTouchCount:0];
}

- (UIKBCadenceMonitor)init
{
  v5.receiver = self;
  v5.super_class = UIKBCadenceMonitor;
  v2 = [(UIKBCadenceMonitor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIKBCadenceMonitor *)v2 reset];
  }

  return v3;
}

@end