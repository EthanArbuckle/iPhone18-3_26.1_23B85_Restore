@interface TITypingAssertion
+ (id)sharedTypingAssertion;
- (TITypingAssertion)init;
- (void)dealloc;
- (void)restResetTouches;
- (void)restTouchEndWithPathIndex:(int64_t)index;
- (void)restTouchStartWithPathIndex:(int64_t)index;
- (void)setActive:(BOOL)active;
- (void)timerFired:(id)fired;
- (void)touchWithDuration:(double)duration reason:(int64_t)reason;
@end

@implementation TITypingAssertion

+ (id)sharedTypingAssertion
{
  if (sharedTypingAssertion_onceToken != -1)
  {
    dispatch_once(&sharedTypingAssertion_onceToken, &__block_literal_global_19059);
  }

  v3 = sharedTypingAssertion___sharedInstance;

  return v3;
}

- (void)touchWithDuration:(double)duration reason:(int64_t)reason
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (reason == 1 && !self->_active)
    {
      pointerClientController = [(TITypingAssertion *)self pointerClientController];
      [pointerClientController autohidePointerForReason:1];
    }

    [(TITypingAssertion *)self setActive:1];
    timer = [(TITypingAssertion *)self timer];
    isValid = [timer isValid];

    if (isValid)
    {
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:duration];
      timer2 = [(TITypingAssertion *)self timer];
      fireDate = [timer2 fireDate];
      v12 = [fireDate laterDate:v14];

      if (v12 == v14)
      {
        timer3 = [(TITypingAssertion *)self timer];
        [timer3 setFireDate:v14];
      }
    }

    else
    {
      v14 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_timerFired_ selector:0 userInfo:0 repeats:duration];
      [(TITypingAssertion *)self setTimer:v14];
    }
  }

  else
  {
    TIDispatchAsync();
  }
}

- (void)timerFired:(id)fired
{
  [(TITypingAssertion *)self setActive:0];
  timer = [(TITypingAssertion *)self timer];
  [timer invalidate];

  [(TITypingAssertion *)self setTimer:0];
}

- (void)restTouchEndWithPathIndex:(int64_t)index
{
  if (self->_restingPathIndices)
  {
    isActive = [(TITypingAssertion *)self isActive];
    restingPathIndices = self->_restingPathIndices;
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    [(NSMutableSet *)restingPathIndices removeObject:v7];

    isActive2 = [(TITypingAssertion *)self isActive];
    if (isActive != isActive2)
    {

      [(TITypingAssertion *)self _sbsSetTypingActive:isActive2];
    }
  }
}

- (void)restTouchStartWithPathIndex:(int64_t)index
{
  if (!self->_restingPathIndices)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    restingPathIndices = self->_restingPathIndices;
    self->_restingPathIndices = v5;
  }

  isActive = [(TITypingAssertion *)self isActive];
  v8 = self->_restingPathIndices;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  [(NSMutableSet *)v8 addObject:v9];

  isActive2 = [(TITypingAssertion *)self isActive];
  if (isActive != isActive2)
  {

    [(TITypingAssertion *)self _sbsSetTypingActive:isActive2];
  }
}

- (void)restResetTouches
{
  if (self->_restingPathIndices)
  {
    isActive = [(TITypingAssertion *)self isActive];
    restingPathIndices = self->_restingPathIndices;
    self->_restingPathIndices = 0;

    isActive2 = [(TITypingAssertion *)self isActive];
    if (isActive != isActive2)
    {

      [(TITypingAssertion *)self _sbsSetTypingActive:isActive2];
    }
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    isActive = [(TITypingAssertion *)self isActive];
    self->_active = active;
    isActive2 = [(TITypingAssertion *)self isActive];
    if (isActive != isActive2)
    {

      [(TITypingAssertion *)self _sbsSetTypingActive:isActive2];
    }
  }
}

- (TITypingAssertion)init
{
  v8.receiver = self;
  v8.super_class = TITypingAssertion;
  v2 = [(TITypingAssertion *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(TITypingAssertion *)v2 _sbsSetTypingActive:0];
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getPSPointerClientControllerClass_softClass;
    v13 = getPSPointerClientControllerClass_softClass;
    if (!getPSPointerClientControllerClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getPSPointerClientControllerClass_block_invoke;
      v9[3] = &unk_278733760;
      v9[4] = &v10;
      __getPSPointerClientControllerClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    [(TITypingAssertion *)v3 setPointerClientController:v6];
  }

  return v3;
}

- (void)dealloc
{
  [(NSTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = TITypingAssertion;
  [(TITypingAssertion *)&v3 dealloc];
}

uint64_t __42__TITypingAssertion_sharedTypingAssertion__block_invoke()
{
  v0 = objc_alloc_init(TITypingAssertion);
  v1 = sharedTypingAssertion___sharedInstance;
  sharedTypingAssertion___sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end