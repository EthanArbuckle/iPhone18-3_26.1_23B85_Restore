@interface TSUProgress
- (BOOL)protected_hasProgressObservers;
- (double)protected_minProgressObserverValueInterval;
- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5;
- (id)initForSubclass;
- (void)protected_progressDidChange;
- (void)removeProgressObserver:(id)a3;
@end

@implementation TSUProgress

- (id)initForSubclass
{
  v12.receiver = self;
  v12.super_class = TSUProgress;
  v2 = [(TSUProgress *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    progressObservers = v2->_progressObservers;
    v2->_progressObservers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.tangier.TSUProgressObservers", v5);
    progressObserversQueue = v2->_progressObserversQueue;
    v2->_progressObserversQueue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.tangier.TSUProgressObserverValue", v8);
    progressObserversValueQueue = v2->_progressObserversValueQueue;
    v2->_progressObserversValueQueue = v9;
  }

  return v2;
}

- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5
{
  v5 = 0;
  if (a4 && a5)
  {
    v9 = a5;
    v10 = a4;
    v11 = [[TSUProgressObserver alloc] initWithValueInterval:v10 queue:v9 handler:a3];

    progressObserversQueue = self->_progressObserversQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_277091E0C;
    v14[3] = &unk_27A702450;
    v14[4] = self;
    v5 = v11;
    v15 = v5;
    dispatch_async(progressObserversQueue, v14);
  }

  return v5;
}

- (void)removeProgressObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    progressObserversQueue = self->_progressObserversQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_277091EC0;
    v7[3] = &unk_27A702450;
    v7[4] = self;
    v8 = v4;
    dispatch_async(progressObserversQueue, v7);
  }
}

- (void)protected_progressDidChange
{
  progressObserversValueQueue = self->_progressObserversValueQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_277091F40;
  block[3] = &unk_27A7023D8;
  block[4] = self;
  dispatch_async(progressObserversValueQueue, block);
}

- (BOOL)protected_hasProgressObservers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  progressObserversQueue = self->_progressObserversQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770921C4;
  v5[3] = &unk_27A702428;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(progressObserversQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)protected_minProgressObserverValueInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FF0000000000000;
  progressObserversQueue = self->_progressObserversQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770922B4;
  v5[3] = &unk_27A702560;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(progressObserversQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end