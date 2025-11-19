@interface TITypingAssertion
+ (id)sharedTypingAssertion;
- (TITypingAssertion)init;
- (void)dealloc;
- (void)restResetTouches;
- (void)restTouchEndWithPathIndex:(int64_t)a3;
- (void)restTouchStartWithPathIndex:(int64_t)a3;
- (void)setActive:(BOOL)a3;
- (void)timerFired:(id)a3;
- (void)touchWithDuration:(double)a3 reason:(int64_t)a4;
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

- (void)touchWithDuration:(double)a3 reason:(int64_t)a4
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (a4 == 1 && !self->_active)
    {
      v7 = [(TITypingAssertion *)self pointerClientController];
      [v7 autohidePointerForReason:1];
    }

    [(TITypingAssertion *)self setActive:1];
    v8 = [(TITypingAssertion *)self timer];
    v9 = [v8 isValid];

    if (v9)
    {
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
      v10 = [(TITypingAssertion *)self timer];
      v11 = [v10 fireDate];
      v12 = [v11 laterDate:v14];

      if (v12 == v14)
      {
        v13 = [(TITypingAssertion *)self timer];
        [v13 setFireDate:v14];
      }
    }

    else
    {
      v14 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_timerFired_ selector:0 userInfo:0 repeats:a3];
      [(TITypingAssertion *)self setTimer:v14];
    }
  }

  else
  {
    TIDispatchAsync();
  }
}

- (void)timerFired:(id)a3
{
  [(TITypingAssertion *)self setActive:0];
  v4 = [(TITypingAssertion *)self timer];
  [v4 invalidate];

  [(TITypingAssertion *)self setTimer:0];
}

- (void)restTouchEndWithPathIndex:(int64_t)a3
{
  if (self->_restingPathIndices)
  {
    v5 = [(TITypingAssertion *)self isActive];
    restingPathIndices = self->_restingPathIndices;
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableSet *)restingPathIndices removeObject:v7];

    v8 = [(TITypingAssertion *)self isActive];
    if (v5 != v8)
    {

      [(TITypingAssertion *)self _sbsSetTypingActive:v8];
    }
  }
}

- (void)restTouchStartWithPathIndex:(int64_t)a3
{
  if (!self->_restingPathIndices)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    restingPathIndices = self->_restingPathIndices;
    self->_restingPathIndices = v5;
  }

  v7 = [(TITypingAssertion *)self isActive];
  v8 = self->_restingPathIndices;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableSet *)v8 addObject:v9];

  v10 = [(TITypingAssertion *)self isActive];
  if (v7 != v10)
  {

    [(TITypingAssertion *)self _sbsSetTypingActive:v10];
  }
}

- (void)restResetTouches
{
  if (self->_restingPathIndices)
  {
    v3 = [(TITypingAssertion *)self isActive];
    restingPathIndices = self->_restingPathIndices;
    self->_restingPathIndices = 0;

    v5 = [(TITypingAssertion *)self isActive];
    if (v3 != v5)
    {

      [(TITypingAssertion *)self _sbsSetTypingActive:v5];
    }
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v5 = [(TITypingAssertion *)self isActive];
    self->_active = a3;
    v6 = [(TITypingAssertion *)self isActive];
    if (v5 != v6)
    {

      [(TITypingAssertion *)self _sbsSetTypingActive:v6];
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