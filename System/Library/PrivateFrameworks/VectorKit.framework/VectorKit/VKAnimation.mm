@interface VKAnimation
- (VKAnimation)initWithName:(id)name;
- (VKAnimation)initWithPriority:(int64_t)priority;
- (VKAnimation)initWithPriority:(int64_t)priority name:(id)name;
- (id)description;
- (void)onTimerFired:(double)fired;
- (void)resume;
- (void)startWithRunner:(id)runner;
- (void)stopAnimation:(BOOL)animation;
@end

@implementation VKAnimation

- (void)onTimerFired:(double)fired
{
  if (self->_state == 3)
  {
    [(VKAnimation *)self stopAnimation:1, fired];
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

- (void)stopAnimation:(BOOL)animation
{
  state = self->_state;
  if (state)
  {
    animationCopy = animation;
  }

  else
  {
    animationCopy = 0;
  }

  if (state != 4)
  {
    self->_state = 4;
    v6 = *(self + 1);
    if (v6)
    {
      (*(v6 + 16))(v6, animationCopy);
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

- (void)startWithRunner:(id)runner
{
  if (self->_state != 4)
  {
    objc_storeWeak(&self->_runner, runner);
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

- (VKAnimation)initWithPriority:(int64_t)priority
{
  result = [(VKAnimation *)self init];
  if (result)
  {
    result->_priority = priority;
  }

  return result;
}

- (VKAnimation)initWithPriority:(int64_t)priority name:(id)name
{
  result = [(VKAnimation *)self initWithName:name];
  if (result)
  {
    result->_priority = priority;
  }

  return result;
}

- (VKAnimation)initWithName:(id)name
{
  nameCopy = name;
  v5 = [(VKAnimation *)self init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

@end