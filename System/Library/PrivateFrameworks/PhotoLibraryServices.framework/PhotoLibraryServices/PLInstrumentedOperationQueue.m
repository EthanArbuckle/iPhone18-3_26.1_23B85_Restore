@interface PLInstrumentedOperationQueue
- (PLInstrumentedOperationQueue)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation PLInstrumentedOperationQueue

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &sOperationCountContext)
  {
    v7 = [a5 objectForKey:{*MEMORY[0x1E696A4F0], a4}];
    v8 = [v7 unsignedIntegerValue];

    v9 = [(PLInstrumentedOperationQueue *)self pl_operationCountChangedBlock];
    if (v9)
    {
      v10 = v9;
      v9[2](v9, v8);
      v9 = v10;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PLInstrumentedOperationQueue;
    [(PLInstrumentedOperationQueue *)&v11 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
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