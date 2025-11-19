@interface TSUProgressObserver
- (TSUProgressObserver)initWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5;
- (void)handleValue:(double)a3 maxValue:(double)a4 isIndeterminate:(BOOL)a5;
@end

@implementation TSUProgressObserver

- (TSUProgressObserver)initWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = TSUProgressObserver;
  v11 = [(TSUProgressObserver *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_valueInterval = a3;
    objc_storeStrong(&v11->_queue, a4);
    v13 = [v10 copy];
    handler = v12->_handler;
    v12->_handler = v13;

    v12->_lastHandledValue = 0.0;
  }

  return v12;
}

- (void)handleValue:(double)a3 maxValue:(double)a4 isIndeterminate:(BOOL)a5
{
  if (self->_lastHandledIndeterminate != a5 || (v9 = vabdd_f64(a3, self->_lastHandledValue), [(TSUProgressObserver *)self valueInterval], v9 >= v10) || a3 >= a4 && self->_lastHandledValue < a4)
  {
    self->_lastHandledIndeterminate = a5;
    self->_lastHandledValue = a3;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2770944D8;
    block[3] = &unk_27A7023D8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

@end