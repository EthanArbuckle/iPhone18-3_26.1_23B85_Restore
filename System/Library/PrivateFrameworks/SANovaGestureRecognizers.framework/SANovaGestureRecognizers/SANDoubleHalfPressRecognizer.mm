@interface SANDoubleHalfPressRecognizer
- (BOOL)invalidate;
- (BOOL)reset;
- (BOOL)update:(id)update forceStageEvent:(id)event isDoubleHalfPress:(BOOL *)press;
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

- (BOOL)update:(id)update forceStageEvent:(id)event isDoubleHalfPress:(BOOL *)press
{
  updateCopy = update;
  eventCopy = event;
  if (self->_double_half_press_recognizer.__ptr_)
  {
    timestamp = [updateCopy timestamp];
    [updateCopy positionY];
    v29 = v10;
    [updateCopy positionDeltaY];
    v30 = v11;
    [updateCopy majorRadius];
    v31 = v12;
    eventMask = [updateCopy eventMask];
    phase = [updateCopy phase];
    isTouching = [updateCopy isTouching];
    [updateCopy liftoffVelocity];
    v35 = v13;
    timestamp2 = [eventCopy timestamp];
    [eventCopy forceProgress];
    v21 = v14;
    [eventCopy nextThreshold];
    v22 = v15;
    [eventCopy nextThreshold];
    v23 = v16;
    [eventCopy releasedThreshold];
    v24 = v17;
    forceStage = [eventCopy forceStage];
    forceStageTransition = [eventCopy forceStageTransition];
    phase2 = [eventCopy phase];
    v18 = NovaHost::DoubleHalfPressRecognizer::update(self->_double_half_press_recognizer.__ptr_, &timestamp, &timestamp2, press);
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