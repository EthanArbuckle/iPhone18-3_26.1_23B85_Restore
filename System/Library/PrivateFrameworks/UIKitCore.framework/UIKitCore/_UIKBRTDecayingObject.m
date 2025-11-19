@interface _UIKBRTDecayingObject
- (_UIKBRTDecayingObject)initWithTimeoutDuration:(double)a3;
- (void)onResetDo:(id)a3;
- (void)reset;
- (void)resetActiveDecayTo:(double)a3;
- (void)resetDecayTo:(double)a3;
- (void)startDecaying;
- (void)startOrUpdateDecay;
- (void)updateDecay;
@end

@implementation _UIKBRTDecayingObject

- (_UIKBRTDecayingObject)initWithTimeoutDuration:(double)a3
{
  v5.receiver = self;
  v5.super_class = _UIKBRTDecayingObject;
  result = [(_UIKBRTDecayingObject *)&v5 init];
  if (result)
  {
    result->_timeoutDuration = a3;
  }

  return result;
}

- (void)startDecaying
{
  isHolding = self->_isHolding;
  if (isHolding)
  {
    *&self->_isDecaying = isHolding;
    self->_lastUpdate = CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff;
  }
}

- (void)resetDecayTo:(double)a3
{
  if (CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff - a3 >= self->_timeoutDuration)
  {

    [(_UIKBRTDecayingObject *)self reset];
  }

  else
  {
    self->_lastUpdate = a3;
    *&self->_isDecaying = 256;
  }
}

- (void)reset
{
  *&self->_isDecaying = 0;
  self->_lastUpdate = 0.0;
  [(NSMutableArray *)self->_resetBlocks enumerateObjectsUsingBlock:&__block_literal_global_256_0];
}

- (void)updateDecay
{
  if (self->_isDecaying && CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff - self->_lastUpdate >= self->_timeoutDuration)
  {

    [(_UIKBRTDecayingObject *)self reset];
  }
}

- (void)startOrUpdateDecay
{
  if (self->_isHolding)
  {
    [(_UIKBRTDecayingObject *)self startDecaying];
  }

  else if (self->_isDecaying)
  {
    [(_UIKBRTDecayingObject *)self updateDecay];
  }
}

- (void)resetActiveDecayTo:(double)a3
{
  if (self->_isHolding || self->_isDecaying)
  {
    [(_UIKBRTDecayingObject *)self resetDecayTo:a3];
  }
}

- (void)onResetDo:(id)a3
{
  v10 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (!v4->_resetBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    resetBlocks = v4->_resetBlocks;
    v4->_resetBlocks = v5;
  }

  objc_sync_exit(v4);

  v7 = v4->_resetBlocks;
  v8 = [v10 copy];
  v9 = _Block_copy(v8);
  [(NSMutableArray *)v7 addObject:v9];
}

@end