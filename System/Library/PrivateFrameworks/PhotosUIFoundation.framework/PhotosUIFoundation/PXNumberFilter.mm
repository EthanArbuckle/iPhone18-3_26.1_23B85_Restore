@interface PXNumberFilter
- (PXNumberFilter)initWithInput:(double)a3;
- (double)currentTime;
- (double)updatedOutput;
- (void)_setOutput:(double)a3;
- (void)_updateIfNeeded;
- (void)_updateOutputIfNeeded;
- (void)didPerformChanges;
- (void)invalidateOutput;
- (void)performChanges:(id)a3;
- (void)setInput:(double)a3;
- (void)setTime:(double)a3;
@end

@implementation PXNumberFilter

- (void)_updateOutputIfNeeded
{
  if (self->_needsUpdateFlags.output)
  {
    self->_needsUpdateFlags.output = 0;
    [(PXNumberFilter *)self currentTime];
    v5 = v4;
    [(PXNumberFilter *)self updatedOutput];
    [(PXNumberFilter *)self _setOutput:?];

    [(PXNumberFilter *)self _setLastTime:v5];
  }
}

- (void)_updateIfNeeded
{
  if ([(PXNumberFilter *)self _needsUpdate])
  {
    [(PXNumberFilter *)self _updateOutputIfNeeded];
    if ([(PXNumberFilter *)self _needsUpdate])
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PXNumberFilter.m" lineNumber:130 description:@"update still needed after update pass"];
    }
  }
}

- (void)invalidateOutput
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __34__PXNumberFilter_invalidateOutput__block_invoke;
  v2[3] = &unk_1E7BB6378;
  v2[4] = self;
  [(PXNumberFilter *)self performChanges:v2];
}

- (double)currentTime
{
  [(PXNumberFilter *)self time];
  if (result == 0.0)
  {
    v3 = MEMORY[0x1E695DF00];

    [v3 timeIntervalSinceReferenceDate];
  }

  return result;
}

- (void)setTime:(double)a3
{
  if (self->_time != a3)
  {
    self->_time = a3;
    [(PXNumberFilter *)self _invalidateOutput];
  }
}

- (void)setInput:(double)a3
{
  if (self->_input != a3)
  {
    self->_input = a3;
    [(PXObservable *)self signalChange:1];

    [(PXNumberFilter *)self _invalidateOutput];
  }
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXNumberFilter;
  [(PXObservable *)&v3 didPerformChanges];
  [(PXNumberFilter *)self _updateIfNeeded];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXNumberFilter;
  [(PXObservable *)&v3 performChanges:a3];
}

- (void)_setOutput:(double)a3
{
  if (self->_output != a3)
  {
    self->_output = a3;
    [(PXObservable *)self signalChange:2];
  }
}

- (double)updatedOutput
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXNumberFilter.m" lineNumber:43 description:{@"Method %s is a responsibility of subclass %@", "-[PXNumberFilter updatedOutput]", v6}];

  abort();
}

- (PXNumberFilter)initWithInput:(double)a3
{
  v8.receiver = self;
  v8.super_class = PXNumberFilter;
  v4 = [(PXObservable *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_input = a3;
    [(PXNumberFilter *)v4 initialOutputForInput:a3];
    v5->_output = v6;
  }

  return v5;
}

@end