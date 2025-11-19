@interface PXManualDisplayLink
- (NSString)description;
- (PXManualDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 queue:(id)a5;
- (UIScreen)screen;
- (id)target;
- (void)incrementTargetTimeWithInterval:(double)a3;
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

- (void)incrementTargetTimeWithInterval:(double)a3
{
  self->_targetTimestamp = self->_targetTimestamp + a3;
  if (!self->_paused)
  {
    v5 = [(PXManualDisplayLink *)self target];
    if (v5)
    {
      v7 = v5;
      WeakRetained = objc_loadWeakRetained(&self->_target);
      [WeakRetained performSelector:-[PXManualDisplayLink selector](self withObject:{"selector"), self}];

      v5 = v7;
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXManualDisplayLink *)self paused];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = v7;
  [(PXManualDisplayLink *)self targetTimestamp];
  v10 = [v3 stringWithFormat:@"<%@: %p paused = %@; targetTimestamp = %.3f>", v5, self, v8, v9];;

  return v10;
}

- (PXManualDisplayLink)initWithWeakTarget:(id)a3 selector:(SEL)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PXManualDisplayLink;
  v10 = [(PXManualDisplayLink *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_target, v8);
    v11->_selector = a4;
    objc_storeStrong(&v11->_queue, a5);
    v11->_preferredFramesPerSecond = 30;
  }

  return v11;
}

@end