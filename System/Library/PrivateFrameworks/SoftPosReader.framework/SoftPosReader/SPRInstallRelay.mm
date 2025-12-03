@interface SPRInstallRelay
- (SPRInstallRelay)initWithBase:(id)base queue:(id)queue;
- (void)onFailureWithError:(id)error;
- (void)onSuccessWithInstallData:(id)data;
- (void)onUpdateWithEvent:(int64_t)event;
- (void)onUpdateWithEvent:(int64_t)event progress:(int64_t)progress;
@end

@implementation SPRInstallRelay

- (SPRInstallRelay)initWithBase:(id)base queue:(id)queue
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

- (void)onUpdateWithEvent:(int64_t)event
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_26A94D464;
  v4[3] = &unk_279CA5F48;
  v4[4] = self;
  v4[5] = event;
  dispatch_async(queue, v4);
}

- (void)onUpdateWithEvent:(int64_t)event progress:(int64_t)progress
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26A94D4E8;
  block[3] = &unk_279CA5F70;
  block[4] = self;
  block[5] = event;
  block[6] = progress;
  dispatch_async(queue, block);
}

- (void)onSuccessWithInstallData:(id)data
{
  dataCopy = data;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26A94D594;
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
  v7[2] = sub_26A94D638;
  v7[3] = &unk_279CA5830;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

@end