@interface PFTReaderWriterScheduler
- (BOOL)isSuspended;
- (NSString)description;
- (PFTReaderWriterScheduler)init;
- (PFTReaderWriterScheduler)initWithQueue:(id)a3;
- (id)performReaderBlock:(id)a3;
- (id)performWriterBlock:(id)a3;
- (void)activateReader:(id)a3;
- (void)activateWriter:(id)a3;
- (void)addReaderWithIdentifier:(id)a3;
- (void)addWriterWithIdentifier:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)performSynchronousReaderBlock:(id)a3;
- (void)performSynchronousWriterBlock:(id)a3;
- (void)removeReader:(id)a3;
- (void)removeWriter:(id)a3;
- (void)resume;
- (void)setSuspended:(BOOL)a3;
- (void)suspend;
@end

@implementation PFTReaderWriterScheduler

- (PFTReaderWriterScheduler)initWithQueue:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = PFTReaderWriterScheduler;
  v6 = [(PFTReaderWriterScheduler *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeReaders = v7->_activeReaders;
    v7->_activeReaders = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingReaders = v7->_pendingReaders;
    v7->_pendingReaders = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeWriters = v7->_activeWriters;
    v7->_activeWriters = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingWriters = v7->_pendingWriters;
    v7->_pendingWriters = v14;

    v16 = v7;
  }

  return v7;
}

- (PFTReaderWriterScheduler)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);
  v5 = dispatch_queue_create("com.apple.PosterFuturesKit.schedulers.serial-reader-writer", v4);

  v6 = [(PFTReaderWriterScheduler *)self initWithQueue:v5];
  return v6;
}

- (id)performReaderBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PFTCancellationToken);
  v6 = [MEMORY[0x277CCAD78] UUID];
  [(PFTReaderWriterScheduler *)self addReaderWithIdentifier:v6];
  v7 = [(PFTReaderWriterScheduler *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__PFTReaderWriterScheduler_performReaderBlock___block_invoke;
  v14[3] = &unk_279A52B38;
  v14[4] = self;
  v15 = v6;
  v17 = v4;
  v8 = v5;
  v16 = v8;
  v9 = v4;
  v10 = v6;
  dispatch_async(v7, v14);

  v11 = v16;
  v12 = v8;

  return v8;
}

uint64_t __47__PFTReaderWriterScheduler_performReaderBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) activateReader:*(a1 + 40)];
  v2 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 removeReader:v4];
}

- (id)performWriterBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PFTCancellationToken);
  v6 = [MEMORY[0x277CCAD78] UUID];
  [(PFTReaderWriterScheduler *)self addWriterWithIdentifier:v6];
  v7 = [(PFTReaderWriterScheduler *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__PFTReaderWriterScheduler_performWriterBlock___block_invoke;
  v14[3] = &unk_279A52B38;
  v14[4] = self;
  v15 = v6;
  v17 = v4;
  v8 = v5;
  v16 = v8;
  v9 = v4;
  v10 = v6;
  dispatch_barrier_async(v7, v14);

  v11 = v16;
  v12 = v8;

  return v8;
}

uint64_t __47__PFTReaderWriterScheduler_performWriterBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) activateWriter:*(a1 + 40)];
  v2 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 removeWriter:v4];
}

- (void)performSynchronousReaderBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAD78] UUID];
  [(PFTReaderWriterScheduler *)self addReaderWithIdentifier:v5];
  v6 = [(PFTReaderWriterScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__PFTReaderWriterScheduler_performSynchronousReaderBlock___block_invoke;
  block[3] = &unk_279A52B60;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_sync(v6, block);
}

uint64_t __58__PFTReaderWriterScheduler_performSynchronousReaderBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) activateReader:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 removeReader:v3];
}

- (void)performSynchronousWriterBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAD78] UUID];
  [(PFTReaderWriterScheduler *)self addWriterWithIdentifier:v5];
  v6 = [(PFTReaderWriterScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__PFTReaderWriterScheduler_performSynchronousWriterBlock___block_invoke;
  block[3] = &unk_279A52B60;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_barrier_sync(v6, block);
}

uint64_t __58__PFTReaderWriterScheduler_performSynchronousWriterBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) activateWriter:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 removeWriter:v3];
}

- (void)suspend
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_suspendedCount;
  v2 = [(PFTReaderWriterScheduler *)obj queue];
  dispatch_suspend(v2);

  objc_sync_exit(obj);
}

- (void)resume
{
  obj = self;
  objc_sync_enter(obj);
  suspendedCount = obj->_suspendedCount;
  if (!suspendedCount)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"resuming a non-suspended scheduler" userInfo:0];
    objc_exception_throw(v4);
  }

  obj->_suspendedCount = suspendedCount - 1;
  v3 = [(PFTReaderWriterScheduler *)obj queue];
  dispatch_resume(v3);

  objc_sync_exit(obj);
}

- (BOOL)isSuspended
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_suspendedCount != 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)setSuspended:(BOOL)a3
{
  if (a3)
  {
    [(PFTReaderWriterScheduler *)self suspend];
  }

  else
  {
    [(PFTReaderWriterScheduler *)self resume];
  }
}

- (void)addReaderWithIdentifier:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PFTReaderWriterScheduler *)v4 pendingReaders];
  [v5 addObject:v6];

  objc_sync_exit(v4);
}

- (void)activateReader:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PFTReaderWriterScheduler *)v4 pendingReaders];
  [v5 removeObject:v7];

  v6 = [(PFTReaderWriterScheduler *)v4 activeReaders];
  [v6 addObject:v7];

  objc_sync_exit(v4);
}

- (void)removeReader:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PFTReaderWriterScheduler *)v4 pendingReaders];
  [v5 removeObject:v7];

  v6 = [(PFTReaderWriterScheduler *)v4 activeReaders];
  [v6 removeObject:v7];

  objc_sync_exit(v4);
}

- (void)addWriterWithIdentifier:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PFTReaderWriterScheduler *)v4 pendingWriters];
  [v5 addObject:v6];

  objc_sync_exit(v4);
}

- (void)activateWriter:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PFTReaderWriterScheduler *)v4 pendingWriters];
  [v5 removeObject:v7];

  v6 = [(PFTReaderWriterScheduler *)v4 activeWriters];
  [v6 addObject:v7];

  objc_sync_exit(v4);
}

- (void)removeWriter:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PFTReaderWriterScheduler *)v4 pendingWriters];
  [v5 removeObject:v7];

  v6 = [(PFTReaderWriterScheduler *)v4 activeWriters];
  [v6 removeObject:v7];

  objc_sync_exit(v4);
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C08]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __39__PFTReaderWriterScheduler_description__block_invoke;
  v10 = &unk_279A52B88;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v19 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PFTReaderWriterScheduler *)v4 activeWriters];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v19 appendUnsignedInteger:v6 withName:@"active writers"];
  }

  v8 = [(PFTReaderWriterScheduler *)v4 pendingWriters];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v19 appendUnsignedInteger:v9 withName:@"pending writers"];
  }

  v11 = [(PFTReaderWriterScheduler *)v4 activeReaders];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [v19 appendUnsignedInteger:v12 withName:@"active readers"];
  }

  v14 = [(PFTReaderWriterScheduler *)v4 pendingReaders];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [v19 appendUnsignedInteger:v15 withName:@"pending readers"];
  }

  suspendedCount = v4->_suspendedCount;
  if (suspendedCount)
  {
    v18 = [v19 appendUnsignedInteger:suspendedCount withName:@"suspended"];
  }

  objc_sync_exit(v4);
}

@end