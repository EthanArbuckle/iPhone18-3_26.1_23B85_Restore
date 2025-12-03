@interface _UIKBRTDecayingObject
- (_UIKBRTDecayingObject)initWithTimeoutDuration:(double)duration;
- (void)onResetDo:(id)do;
- (void)reset;
- (void)resetActiveDecayTo:(double)to;
- (void)resetDecayTo:(double)to;
- (void)startDecaying;
- (void)startOrUpdateDecay;
- (void)updateDecay;
@end

@implementation _UIKBRTDecayingObject

- (_UIKBRTDecayingObject)initWithTimeoutDuration:(double)duration
{
  v5.receiver = self;
  v5.super_class = _UIKBRTDecayingObject;
  result = [(_UIKBRTDecayingObject *)&v5 init];
  if (result)
  {
    result->_timeoutDuration = duration;
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

- (void)resetDecayTo:(double)to
{
  if (CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff - to >= self->_timeoutDuration)
  {

    [(_UIKBRTDecayingObject *)self reset];
  }

  else
  {
    self->_lastUpdate = to;
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

- (void)resetActiveDecayTo:(double)to
{
  if (self->_isHolding || self->_isDecaying)
  {
    [(_UIKBRTDecayingObject *)self resetDecayTo:to];
  }
}

- (void)onResetDo:(id)do
{
  doCopy = do;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_resetBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    resetBlocks = selfCopy->_resetBlocks;
    selfCopy->_resetBlocks = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_resetBlocks;
  v8 = [doCopy copy];
  v9 = _Block_copy(v8);
  [(NSMutableArray *)v7 addObject:v9];
}

@end