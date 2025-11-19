@interface _VFCombineLatestObservableSubscription
- (_VFCombineLatestObservableSubscription)initWithObservables:(id)a3;
- (id)subscribe:(id)a3;
- (void)_observableAtIndex:(unint64_t)a3 didCompleteForObserver:(id)a4;
- (void)_observableAtIndex:(unint64_t)a3 didFailWithError:(id)a4 observer:(id)a5;
- (void)_observableAtIndex:(unint64_t)a3 receivedResult:(id)a4 observer:(id)a5;
@end

@implementation _VFCombineLatestObservableSubscription

- (_VFCombineLatestObservableSubscription)initWithObservables:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _VFCombineLatestObservableSubscription;
  v5 = [(_VFCombineLatestObservableSubscription *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v5->_lock;
    v5->_lock = v6;

    v8 = [v4 vf_map:&__block_literal_global_21];
    observables = v5->_observables;
    v5->_observables = v8;

    v10 = [v4 vf_map:&__block_literal_global_5];
    v11 = [v10 mutableCopy];
    results = v5->_results;
    v5->_results = v11;

    v13 = [v4 vf_map:&__block_literal_global_8];
    v14 = [v13 mutableCopy];
    tokens = v5->_tokens;
    v5->_tokens = v14;

    v16 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(v4, "count")}];
    activeIndexes = v5->_activeIndexes;
    v5->_activeIndexes = v16;

    v18 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(v4, "count")}];
    silentIndexes = v5->_silentIndexes;
    v5->_silentIndexes = v18;
  }

  return v5;
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(VFCancelationToken);
  v6 = [(_VFCombineLatestObservableSubscription *)self observables];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52___VFCombineLatestObservableSubscription_subscribe___block_invoke;
  v12[3] = &unk_279E35A48;
  v7 = v5;
  v13 = v7;
  v14 = self;
  v15 = v4;
  v8 = v4;
  [v6 enumerateObjectsUsingBlock:v12];

  v9 = v15;
  v10 = v7;

  return v7;
}

- (void)_observableAtIndex:(unint64_t)a3 receivedResult:(id)a4 observer:(id)a5
{
  v11 = a5;
  lock = self->_lock;
  v9 = a4;
  [(NSLock *)lock lock];
  [(NSMutableArray *)self->_results replaceObjectAtIndex:a3 withObject:v9];

  [(NSMutableIndexSet *)self->_silentIndexes removeIndex:a3];
  if ([(NSMutableIndexSet *)self->_silentIndexes count])
  {
    [(NSLock *)self->_lock unlock];
  }

  else
  {
    v10 = [(NSMutableArray *)self->_results copy];
    [(NSLock *)self->_lock unlock];
    if (v10)
    {
      [v11 observerDidReceiveResult:v10];
    }
  }
}

- (void)_observableAtIndex:(unint64_t)a3 didCompleteForObserver:(id)a4
{
  v9 = a4;
  [(NSLock *)self->_lock lock];
  tokens = self->_tokens;
  v7 = [MEMORY[0x277CBEB68] null];
  [(NSMutableArray *)tokens replaceObjectAtIndex:a3 withObject:v7];

  [(NSMutableIndexSet *)self->_activeIndexes removeIndex:a3];
  v8 = [(NSMutableIndexSet *)self->_activeIndexes count];
  [(NSLock *)self->_lock unlock];
  if (!v8)
  {
    [v9 observerDidComplete];
  }
}

- (void)_observableAtIndex:(unint64_t)a3 didFailWithError:(id)a4 observer:(id)a5
{
  lock = self->_lock;
  v9 = a5;
  v10 = a4;
  [(NSLock *)lock lock];
  v12 = [(NSMutableIndexSet *)self->_activeIndexes mutableCopy];
  [v12 removeIndex:a3];
  v11 = [(NSMutableArray *)self->_tokens objectsAtIndexes:v12];
  [v11 makeObjectsPerformSelector:sel_cancel];
  [(NSLock *)self->_lock unlock];
  [v9 observerDidFailWithError:v10];
}

@end