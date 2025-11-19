@interface SPRInstallRelay
- (SPRInstallRelay)initWithBase:(id)a3 queue:(id)a4;
- (void)onFailureWithError:(id)a3;
- (void)onSuccessWithInstallData:(id)a3;
- (void)onUpdateWithEvent:(int64_t)a3;
- (void)onUpdateWithEvent:(int64_t)a3 progress:(int64_t)a4;
@end

@implementation SPRInstallRelay

- (SPRInstallRelay)initWithBase:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  base = self->_base;
  self->_base = v6;
  v9 = v6;

  queue = self->_queue;
  self->_queue = v7;

  return self;
}

- (void)onUpdateWithEvent:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_26A94D464;
  v4[3] = &unk_279CA5F48;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)onUpdateWithEvent:(int64_t)a3 progress:(int64_t)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26A94D4E8;
  block[3] = &unk_279CA5F70;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)onSuccessWithInstallData:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26A94D594;
  v7[3] = &unk_279CA5830;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)onFailureWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26A94D638;
  v7[3] = &unk_279CA5830;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

@end