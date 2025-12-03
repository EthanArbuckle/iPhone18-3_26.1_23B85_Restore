@interface SPRReadRelay
- (SPRReadRelay)initWithBase:(id)base queue:(id)queue;
- (void)onFailureWithError:(id)error;
- (void)onSuccessWithTransactionData:(id)data;
- (void)onUpdateWithEvent:(int64_t)event mode:(int64_t)mode;
@end

@implementation SPRReadRelay

- (SPRReadRelay)initWithBase:(id)base queue:(id)queue
{
  baseCopy = base;
  queueCopy = queue;
  base = self->_base;
  self->_base = baseCopy;
  v9 = baseCopy;

  queue = self->_queue;
  self->_queue = queueCopy;

  return self;
}

- (void)onUpdateWithEvent:(int64_t)event mode:(int64_t)mode
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26A94D77C;
  block[3] = &unk_279CA5F70;
  block[4] = self;
  block[5] = event;
  block[6] = mode;
  dispatch_async(queue, block);
}

- (void)onSuccessWithTransactionData:(id)data
{
  dataCopy = data;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26A94D828;
  v7[3] = &unk_279CA5830;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(queue, v7);
}

- (void)onFailureWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26A94D8CC;
  v7[3] = &unk_279CA5830;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

@end