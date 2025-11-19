@interface VKAnimation
- (VKAnimation)initWithName:(id)a3;
- (VKAnimation)initWithPriority:(int64_t)a3;
- (VKAnimation)initWithPriority:(int64_t)a3 name:(id)a4;
- (id)description;
- (void)onTimerFired:(double)a3;
- (void)resume;
- (void)startWithRunner:(id)a3;
- (void)stopAnimation:(BOOL)a3;
@end

@implementation VKAnimation

- (void)onTimerFired:(double)a3
{
  if (self->_state == 3)
  {
    [(VKAnimation *)self stopAnimation:1, a3];
  }
}

- (void)resume
{
  WeakRetained = objc_loadWeakRetained(&self->_runner);

  if (WeakRetained)
  {
    self->_state = 1;
    v4 = objc_loadWeakRetained(&self->_runner);
    [v4 animationDidResume:self];
  }
}

- (void)stopAnimation:(BOOL)a3
{
  state = self->_state;
  if (state)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  if (state != 4)
  {
    self->_state = 4;
    v6 = *(self + 1);
    if (v6)
    {
      (*(v6 + 16))(v6, v4);
      completionHandler = self->_completionHandler;
    }

    else
    {
      completionHandler = 0;
    }

    self->_completionHandler = 0;

    self->_state = 0;
    WeakRetained = objc_loadWeakRetained(&self->_runner);
    [WeakRetained animationDidStop:self];

    objc_storeWeak(&self->_runner, 0);
  }
}

- (void)startWithRunner:(id)a3
{
  if (self->_state != 4)
  {
    objc_storeWeak(&self->_runner, a3);
    self->_state = 1;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = VKAnimation;
  v4 = [(VKAnimation *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ state: %ld, name: %@", v4, self->_state, self->_name];

  return v5;
}

- (VKAnimation)initWithPriority:(int64_t)a3
{
  result = [(VKAnimation *)self init];
  if (result)
  {
    result->_priority = a3;
  }

  return result;
}

- (VKAnimation)initWithPriority:(int64_t)a3 name:(id)a4
{
  result = [(VKAnimation *)self initWithName:a4];
  if (result)
  {
    result->_priority = a3;
  }

  return result;
}

- (VKAnimation)initWithName:(id)a3
{
  v4 = a3;
  v5 = [(VKAnimation *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

@end