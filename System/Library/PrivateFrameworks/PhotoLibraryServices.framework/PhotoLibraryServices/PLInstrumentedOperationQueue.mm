@interface PLInstrumentedOperationQueue
- (PLInstrumentedOperationQueue)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation PLInstrumentedOperationQueue

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &sOperationCountContext)
  {
    v7 = [change objectForKey:{*MEMORY[0x1E696A4F0], object}];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    pl_operationCountChangedBlock = [(PLInstrumentedOperationQueue *)self pl_operationCountChangedBlock];
    if (pl_operationCountChangedBlock)
    {
      v10 = pl_operationCountChangedBlock;
      pl_operationCountChangedBlock[2](pl_operationCountChangedBlock, unsignedIntegerValue);
      pl_operationCountChangedBlock = v10;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PLInstrumentedOperationQueue;
    [(PLInstrumentedOperationQueue *)&v11 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)dealloc
{
  [(PLInstrumentedOperationQueue *)self removeObserver:self forKeyPath:@"operationCount"];
  v3.receiver = self;
  v3.super_class = PLInstrumentedOperationQueue;
  [(PLInstrumentedOperationQueue *)&v3 dealloc];
}

- (PLInstrumentedOperationQueue)init
{
  v6.receiver = self;
  v6.super_class = PLInstrumentedOperationQueue;
  v2 = [(PLInstrumentedOperationQueue *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(PLInstrumentedOperationQueue *)v2 addObserver:v2 forKeyPath:@"operationCount" options:1 context:&sOperationCountContext];
    v4 = v3;
  }

  return v3;
}

@end