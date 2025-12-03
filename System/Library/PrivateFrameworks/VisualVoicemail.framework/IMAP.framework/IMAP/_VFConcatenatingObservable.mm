@interface _VFConcatenatingObservable
+ (void)subscribeObserver:(id)observer toObservables:(id)observables unless:(id)unless;
@end

@implementation _VFConcatenatingObservable

+ (void)subscribeObserver:(id)observer toObservables:(id)observables unless:(id)unless
{
  observerCopy = observer;
  observablesCopy = observables;
  unlessCopy = unless;
  firstObject = [observablesCopy firstObject];
  if (firstObject)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __69___VFConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke;
    v26[3] = &unk_279E33BE0;
    v27 = unlessCopy;
    v28 = observerCopy;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69___VFConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke_2;
    v21[3] = &unk_279E34390;
    v22 = v27;
    v23 = observablesCopy;
    selfCopy = self;
    v24 = v28;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __69___VFConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke_3;
    v18 = &unk_279E343B8;
    v12 = v22;
    v19 = v12;
    v20 = v24;
    v13 = [VFObserver observerWithResultBlock:v26 completionBlock:v21 failureBlock:&v15];
    v14 = [firstObject subscribe:{v13, v15, v16, v17, v18}];
    [v12 addCancelable:v14];
  }

  else if (([unlessCopy isCanceled] & 1) == 0)
  {
    [observerCopy observerDidComplete];
  }
}

@end