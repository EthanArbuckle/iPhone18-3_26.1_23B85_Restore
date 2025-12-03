@interface PXManualDisplayLink
- (NSString)description;
- (PXManualDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector queue:(id)queue;
- (UIScreen)screen;
- (id)target;
- (void)incrementTargetTimeWithInterval:(double)interval;
@end

@implementation PXManualDisplayLink

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->screen);

  return WeakRetained;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)incrementTargetTimeWithInterval:(double)interval
{
  self->_targetTimestamp = self->_targetTimestamp + interval;
  if (!self->_paused)
  {
    target = [(PXManualDisplayLink *)self target];
    if (target)
    {
      v7 = target;
      WeakRetained = objc_loadWeakRetained(&self->_target);
      [WeakRetained performSelector:-[PXManualDisplayLink selector](self withObject:{"selector"), self}];

      target = v7;
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  paused = [(PXManualDisplayLink *)self paused];
  v7 = @"NO";
  if (paused)
  {
    v7 = @"YES";
  }

  v8 = v7;
  [(PXManualDisplayLink *)self targetTimestamp];
  v10 = [v3 stringWithFormat:@"<%@: %p paused = %@; targetTimestamp = %.3f>", v5, self, v8, v9];;

  return v10;
}

- (PXManualDisplayLink)initWithWeakTarget:(id)target selector:(SEL)selector queue:(id)queue
{
  targetCopy = target;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = PXManualDisplayLink;
  v10 = [(PXManualDisplayLink *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_target, targetCopy);
    v11->_selector = selector;
    objc_storeStrong(&v11->_queue, queue);
    v11->_preferredFramesPerSecond = 30;
  }

  return v11;
}

@end