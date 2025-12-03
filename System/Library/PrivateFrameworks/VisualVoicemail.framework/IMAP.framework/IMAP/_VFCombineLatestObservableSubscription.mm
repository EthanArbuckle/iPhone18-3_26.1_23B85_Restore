@interface _VFCombineLatestObservableSubscription
- (_VFCombineLatestObservableSubscription)initWithObservables:(id)observables;
- (id)subscribe:(id)subscribe;
- (void)_observableAtIndex:(unint64_t)index didCompleteForObserver:(id)observer;
- (void)_observableAtIndex:(unint64_t)index didFailWithError:(id)error observer:(id)observer;
- (void)_observableAtIndex:(unint64_t)index receivedResult:(id)result observer:(id)observer;
@end

@implementation _VFCombineLatestObservableSubscription

- (_VFCombineLatestObservableSubscription)initWithObservables:(id)observables
{
  observablesCopy = observables;
  v21.receiver = self;
  v21.super_class = _VFCombineLatestObservableSubscription;
  v5 = [(_VFCombineLatestObservableSubscription *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v5->_lock;
    v5->_lock = v6;

    v8 = [observablesCopy vf_map:&__block_literal_global_21];
    observables = v5->_observables;
    v5->_observables = v8;

    v10 = [observablesCopy vf_map:&__block_literal_global_5];
    v11 = [v10 mutableCopy];
    results = v5->_results;
    v5->_results = v11;

    v13 = [observablesCopy vf_map:&__block_literal_global_8];
    v14 = [v13 mutableCopy];
    tokens = v5->_tokens;
    v5->_tokens = v14;

    v16 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(observablesCopy, "count")}];
    activeIndexes = v5->_activeIndexes;
    v5->_activeIndexes = v16;

    v18 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(observablesCopy, "count")}];
    silentIndexes = v5->_silentIndexes;
    v5->_silentIndexes = v18;
  }

  return v5;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = objc_alloc_init(VFCancelationToken);
  observables = [(_VFCombineLatestObservableSubscription *)self observables];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52___VFCombineLatestObservableSubscription_subscribe___block_invoke;
  v12[3] = &unk_279E35A48;
  v7 = v5;
  v13 = v7;
  selfCopy = self;
  v15 = subscribeCopy;
  v8 = subscribeCopy;
  [observables enumerateObjectsUsingBlock:v12];

  v9 = v15;
  v10 = v7;

  return v7;
}

- (void)_observableAtIndex:(unint64_t)index receivedResult:(id)result observer:(id)observer
{
  observerCopy = observer;
  lock = self->_lock;
  resultCopy = result;
  [(NSLock *)lock lock];
  [(NSMutableArray *)self->_results replaceObjectAtIndex:index withObject:resultCopy];

  [(NSMutableIndexSet *)self->_silentIndexes removeIndex:index];
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
      [observerCopy observerDidReceiveResult:v10];
    }
  }
}

- (void)_observableAtIndex:(unint64_t)index didCompleteForObserver:(id)observer
{
  observerCopy = observer;
  [(NSLock *)self->_lock lock];
  tokens = self->_tokens;
  null = [MEMORY[0x277CBEB68] null];
  [(NSMutableArray *)tokens replaceObjectAtIndex:index withObject:null];

  [(NSMutableIndexSet *)self->_activeIndexes removeIndex:index];
  v8 = [(NSMutableIndexSet *)self->_activeIndexes count];
  [(NSLock *)self->_lock unlock];
  if (!v8)
  {
    [observerCopy observerDidComplete];
  }
}

- (void)_observableAtIndex:(unint64_t)index didFailWithError:(id)error observer:(id)observer
{
  lock = self->_lock;
  observerCopy = observer;
  errorCopy = error;
  [(NSLock *)lock lock];
  v12 = [(NSMutableIndexSet *)self->_activeIndexes mutableCopy];
  [v12 removeIndex:index];
  v11 = [(NSMutableArray *)self->_tokens objectsAtIndexes:v12];
  [v11 makeObjectsPerformSelector:sel_cancel];
  [(NSLock *)self->_lock unlock];
  [observerCopy observerDidFailWithError:errorCopy];
}

@end