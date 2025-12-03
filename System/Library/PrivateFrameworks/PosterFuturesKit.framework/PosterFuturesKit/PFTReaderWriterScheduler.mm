@interface PFTReaderWriterScheduler
- (BOOL)isSuspended;
- (NSString)description;
- (PFTReaderWriterScheduler)init;
- (PFTReaderWriterScheduler)initWithQueue:(id)queue;
- (id)performReaderBlock:(id)block;
- (id)performWriterBlock:(id)block;
- (void)activateReader:(id)reader;
- (void)activateWriter:(id)writer;
- (void)addReaderWithIdentifier:(id)identifier;
- (void)addWriterWithIdentifier:(id)identifier;
- (void)appendDescriptionToStream:(id)stream;
- (void)performSynchronousReaderBlock:(id)block;
- (void)performSynchronousWriterBlock:(id)block;
- (void)removeReader:(id)reader;
- (void)removeWriter:(id)writer;
- (void)resume;
- (void)setSuspended:(BOOL)suspended;
- (void)suspend;
@end

@implementation PFTReaderWriterScheduler

- (PFTReaderWriterScheduler)initWithQueue:(id)queue
{
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = PFTReaderWriterScheduler;
  v6 = [(PFTReaderWriterScheduler *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
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

- (id)performReaderBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(PFTCancellationToken);
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(PFTReaderWriterScheduler *)self addReaderWithIdentifier:uUID];
  queue = [(PFTReaderWriterScheduler *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__PFTReaderWriterScheduler_performReaderBlock___block_invoke;
  v14[3] = &unk_279A52B38;
  v14[4] = self;
  v15 = uUID;
  v17 = blockCopy;
  v8 = v5;
  v16 = v8;
  v9 = blockCopy;
  v10 = uUID;
  dispatch_async(queue, v14);

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

- (id)performWriterBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(PFTCancellationToken);
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(PFTReaderWriterScheduler *)self addWriterWithIdentifier:uUID];
  queue = [(PFTReaderWriterScheduler *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__PFTReaderWriterScheduler_performWriterBlock___block_invoke;
  v14[3] = &unk_279A52B38;
  v14[4] = self;
  v15 = uUID;
  v17 = blockCopy;
  v8 = v5;
  v16 = v8;
  v9 = blockCopy;
  v10 = uUID;
  dispatch_barrier_async(queue, v14);

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

- (void)performSynchronousReaderBlock:(id)block
{
  blockCopy = block;
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(PFTReaderWriterScheduler *)self addReaderWithIdentifier:uUID];
  queue = [(PFTReaderWriterScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__PFTReaderWriterScheduler_performSynchronousReaderBlock___block_invoke;
  block[3] = &unk_279A52B60;
  block[4] = self;
  v10 = uUID;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = uUID;
  dispatch_sync(queue, block);
}

uint64_t __58__PFTReaderWriterScheduler_performSynchronousReaderBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) activateReader:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 removeReader:v3];
}

- (void)performSynchronousWriterBlock:(id)block
{
  blockCopy = block;
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(PFTReaderWriterScheduler *)self addWriterWithIdentifier:uUID];
  queue = [(PFTReaderWriterScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__PFTReaderWriterScheduler_performSynchronousWriterBlock___block_invoke;
  block[3] = &unk_279A52B60;
  block[4] = self;
  v10 = uUID;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = uUID;
  dispatch_barrier_sync(queue, block);
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
  queue = [(PFTReaderWriterScheduler *)obj queue];
  dispatch_suspend(queue);

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
  queue = [(PFTReaderWriterScheduler *)obj queue];
  dispatch_resume(queue);

  objc_sync_exit(obj);
}

- (BOOL)isSuspended
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_suspendedCount != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setSuspended:(BOOL)suspended
{
  if (suspended)
  {
    [(PFTReaderWriterScheduler *)self suspend];
  }

  else
  {
    [(PFTReaderWriterScheduler *)self resume];
  }
}

- (void)addReaderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingReaders = [(PFTReaderWriterScheduler *)selfCopy pendingReaders];
  [pendingReaders addObject:identifierCopy];

  objc_sync_exit(selfCopy);
}

- (void)activateReader:(id)reader
{
  readerCopy = reader;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingReaders = [(PFTReaderWriterScheduler *)selfCopy pendingReaders];
  [pendingReaders removeObject:readerCopy];

  activeReaders = [(PFTReaderWriterScheduler *)selfCopy activeReaders];
  [activeReaders addObject:readerCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeReader:(id)reader
{
  readerCopy = reader;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingReaders = [(PFTReaderWriterScheduler *)selfCopy pendingReaders];
  [pendingReaders removeObject:readerCopy];

  activeReaders = [(PFTReaderWriterScheduler *)selfCopy activeReaders];
  [activeReaders removeObject:readerCopy];

  objc_sync_exit(selfCopy);
}

- (void)addWriterWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingWriters = [(PFTReaderWriterScheduler *)selfCopy pendingWriters];
  [pendingWriters addObject:identifierCopy];

  objc_sync_exit(selfCopy);
}

- (void)activateWriter:(id)writer
{
  writerCopy = writer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingWriters = [(PFTReaderWriterScheduler *)selfCopy pendingWriters];
  [pendingWriters removeObject:writerCopy];

  activeWriters = [(PFTReaderWriterScheduler *)selfCopy activeWriters];
  [activeWriters addObject:writerCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeWriter:(id)writer
{
  writerCopy = writer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingWriters = [(PFTReaderWriterScheduler *)selfCopy pendingWriters];
  [pendingWriters removeObject:writerCopy];

  activeWriters = [(PFTReaderWriterScheduler *)selfCopy activeWriters];
  [activeWriters removeObject:writerCopy];

  objc_sync_exit(selfCopy);
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C08]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __39__PFTReaderWriterScheduler_description__block_invoke;
  v10 = &unk_279A52B88;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeWriters = [(PFTReaderWriterScheduler *)selfCopy activeWriters];
  v6 = [activeWriters count];

  if (v6)
  {
    v7 = [streamCopy appendUnsignedInteger:v6 withName:@"active writers"];
  }

  pendingWriters = [(PFTReaderWriterScheduler *)selfCopy pendingWriters];
  v9 = [pendingWriters count];

  if (v9)
  {
    v10 = [streamCopy appendUnsignedInteger:v9 withName:@"pending writers"];
  }

  activeReaders = [(PFTReaderWriterScheduler *)selfCopy activeReaders];
  v12 = [activeReaders count];

  if (v12)
  {
    v13 = [streamCopy appendUnsignedInteger:v12 withName:@"active readers"];
  }

  pendingReaders = [(PFTReaderWriterScheduler *)selfCopy pendingReaders];
  v15 = [pendingReaders count];

  if (v15)
  {
    v16 = [streamCopy appendUnsignedInteger:v15 withName:@"pending readers"];
  }

  suspendedCount = selfCopy->_suspendedCount;
  if (suspendedCount)
  {
    v18 = [streamCopy appendUnsignedInteger:suspendedCount withName:@"suspended"];
  }

  objc_sync_exit(selfCopy);
}

@end