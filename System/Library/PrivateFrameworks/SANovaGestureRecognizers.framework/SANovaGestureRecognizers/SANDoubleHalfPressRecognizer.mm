@interface SANDoubleHalfPressRecognizer
- (BOOL)invalidate;
- (BOOL)reset;
- (BOOL)update:(id)a3 forceStageEvent:(id)a4 isDoubleHalfPress:(BOOL *)a5;
- (SANDoubleHalfPressRecognizer)init;
@end

@implementation SANDoubleHalfPressRecognizer

- (SANDoubleHalfPressRecognizer)init
{
  v3.receiver = self;
  v3.super_class = SANDoubleHalfPressRecognizer;
  if ([(SANDoubleHalfPressRecognizer *)&v3 init])
  {
    _ZNSt3__111make_uniqueB8ne200100IN8NovaHost25DoubleHalfPressRecognizerEJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS4_EEEEDpOT0_();
  }

  return 0;
}

- (BOOL)update:(id)a3 forceStageEvent:(id)a4 isDoubleHalfPress:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  if (self->_double_half_press_recognizer.__ptr_)
  {
    v28 = [v8 timestamp];
    [v8 positionY];
    v29 = v10;
    [v8 positionDeltaY];
    v30 = v11;
    [v8 majorRadius];
    v31 = v12;
    v32 = [v8 eventMask];
    v33 = [v8 phase];
    v34 = [v8 isTouching];
    [v8 liftoffVelocity];
    v35 = v13;
    v20 = [v9 timestamp];
    [v9 forceProgress];
    v21 = v14;
    [v9 nextThreshold];
    v22 = v15;
    [v9 nextThreshold];
    v23 = v16;
    [v9 releasedThreshold];
    v24 = v17;
    v25 = [v9 forceStage];
    v26 = [v9 forceStageTransition];
    v27 = [v9 phase];
    v18 = NovaHost::DoubleHalfPressRecognizer::update(self->_double_half_press_recognizer.__ptr_, &v28, &v20, a5);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)reset
{
  ptr = self->_double_half_press_recognizer.__ptr_;
  if (ptr)
  {
    LOBYTE(ptr) = NovaHost::DoubleHalfPressRecognizer::reset(ptr);
  }

  return ptr;
}

- (BOOL)invalidate
{
  ptr = self->_double_half_press_recognizer.__ptr_;
  if (ptr)
  {
    LOBYTE(ptr) = NovaHost::DoubleHalfPressRecognizer::invalidate(ptr);
  }

  return ptr;
}

@end