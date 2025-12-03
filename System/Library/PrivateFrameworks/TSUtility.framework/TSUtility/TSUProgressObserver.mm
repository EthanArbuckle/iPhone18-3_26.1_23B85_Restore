@interface TSUProgressObserver
- (TSUProgressObserver)initWithValueInterval:(double)interval queue:(id)queue handler:(id)handler;
- (void)dealloc;
- (void)handleValue:(double)value maxValue:(double)maxValue isIndeterminate:(BOOL)indeterminate;
@end

@implementation TSUProgressObserver

- (TSUProgressObserver)initWithValueInterval:(double)interval queue:(id)queue handler:(id)handler
{
  v11.receiver = self;
  v11.super_class = TSUProgressObserver;
  v8 = [(TSUProgressObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    if (queue && handler)
    {
      v8->mValueInterval = interval;
      dispatch_retain(queue);
      v9->mQueue = queue;
      v9->mHandler = [handler copy];
      v9->mLastHandledValue = 0.0;
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  mQueue = self->mQueue;
  if (mQueue)
  {
    dispatch_release(mQueue);
  }

  v4.receiver = self;
  v4.super_class = TSUProgressObserver;
  [(TSUProgressObserver *)&v4 dealloc];
}

- (void)handleValue:(double)value maxValue:(double)maxValue isIndeterminate:(BOOL)indeterminate
{
  if (self->mLastHandledIndeterminate != indeterminate || (v9 = vabdd_f64(value, self->mLastHandledValue), [(TSUProgressObserver *)self valueInterval], v9 >= v10) || value >= maxValue && self->mLastHandledValue < maxValue)
  {
    self->mLastHandledIndeterminate = indeterminate;
    self->mLastHandledValue = value;
    mQueue = self->mQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__TSUProgressObserver_handleValue_maxValue_isIndeterminate___block_invoke;
    block[3] = &unk_279D65CF0;
    block[4] = self;
    dispatch_async(mQueue, block);
  }
}

uint64_t __60__TSUProgressObserver_handleValue_maxValue_isIndeterminate___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  (*(*(*(a1 + 32) + 24) + 16))();

  return [v2 drain];
}

@end