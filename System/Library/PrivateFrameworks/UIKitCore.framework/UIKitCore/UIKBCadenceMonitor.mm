@interface UIKBCadenceMonitor
- (UIKBCadenceMonitor)init;
- (id)recognizer:(id)recognizer confidenceWhenPendingTouchInfo:(id)info;
- (void)addTypingTouchTime:(double)time;
- (void)logUserTyping:(id)typing;
- (void)reset;
- (void)typingCadence:(double)cadence;
- (void)updateConfidenceWithGap:(double)gap;
@end

@implementation UIKBCadenceMonitor

- (id)recognizer:(id)recognizer confidenceWhenPendingTouchInfo:(id)info
{
  if ([(UIKBCadenceMonitor *)self touchCount:recognizer]>= 10)
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

- (void)updateConfidenceWithGap:(double)gap
{
  [(UIKBCadenceMonitor *)self gapAvg];
  *&gap = v5 - gap;
  [(UIKBCadenceMonitor *)self gapAvg];
  v6.f64[0] = *&gap;
  v6.f64[1] = v7;
  v8 = vmulq_f64(v6, v6);
  *&v6.f64[0] = vdup_n_s32(*&gap > 0.0);
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

- (void)typingCadence:(double)cadence
{
  if ([(UIKBCadenceMonitor *)self touchCount]< 1)
  {
    v6 = 30.0;
  }

  else
  {
    [(UIKBCadenceMonitor *)self prevTouchDown];
    v6 = cadence - v5;
    v7 = 60.0 / (cadence - v5);
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
  touchLogTimer = [(UIKBCadenceMonitor *)self touchLogTimer];

  if (touchLogTimer)
  {
    [(UIKBCadenceMonitor *)self gapAvg];
    v15 = v14 * 1.5;
    touchLogTimer2 = [(UIKBCadenceMonitor *)self touchLogTimer];
    if (v6 <= v15)
    {
      v18 = 1.0;
    }

    else
    {
      [(UIKBCadenceMonitor *)self gapAvg];
      v18 = v17 * 1.5;
    }

    [touchLogTimer2 touchWithDelay:v18];
  }

  else
  {
    v19 = [UIDelayedAction alloc];
    touchLogTimer2 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v20 = [(UIDelayedAction *)v19 initWithTarget:self action:sel_logUserTyping_ userInfo:touchLogTimer2 delay:*MEMORY[0x1E695D918] mode:3.0];
    [(UIKBCadenceMonitor *)self setTouchLogTimer:v20];
  }

  [(UIKBCadenceMonitor *)self setIsUserTyping:touchLogTimer != 0];
  [(UIKBCadenceMonitor *)self setPrevTouchDown:cadence];
  v21 = [(UIKBCadenceMonitor *)self touchCount]+ 1;

  [(UIKBCadenceMonitor *)self setTouchCount:v21];
}

- (void)logUserTyping:(id)typing
{
  -[UIKBCadenceMonitor setIsUserTyping:](self, "setIsUserTyping:", [typing BOOLValue]);
  touchLogTimer = [(UIKBCadenceMonitor *)self touchLogTimer];
  [touchLogTimer cancel];

  [(UIKBCadenceMonitor *)self setTouchLogTimer:0];
}

- (void)addTypingTouchTime:(double)time
{
  [(UIKBCadenceMonitor *)self prevTouchDown];
  if (v5 <= time)
  {

    [(UIKBCadenceMonitor *)self typingCadence:time];
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