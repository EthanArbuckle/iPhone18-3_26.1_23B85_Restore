@interface VFObservable
+ (VFObservable)observableWithBlock:(id)block;
+ (VFObservable)observableWithError:(id)error;
+ (VFObservable)observableWithInitialState:(id)state condition:(id)condition nextState:(id)nextState resultSelector:(id)selector;
+ (VFObservable)observableWithResults:(id)results;
+ (id)combineLatest:(id)latest;
+ (id)concatenate:(id)concatenate;
+ (id)observableObserver;
+ (id)observableOnDefaultNotificationCenterWithName:(id)name object:(id)object;
+ (id)observableOnNotificationCenter:(id)center name:(id)name object:(id)object;
+ (id)observableOnNotifyTokenWithName:(id)name;
- (id)allObjects:(id *)objects;
- (id)distinctUntilChanged;
- (id)doOnCancel:(id)cancel;
- (id)doOnCompletion:(id)completion;
- (id)doOnError:(id)error;
- (id)doOnNext:(id)next;
- (id)doOnSubscribe:(id)subscribe;
- (id)doOnTerminate:(id)terminate;
- (id)filter:(id)filter;
- (id)map:(id)map;
- (id)multicast:(id)multicast;
- (id)observeOnQueue:(const char *)queue qos:(unsigned int)qos;
- (id)publish;
- (id)skip:(unint64_t)skip;
- (id)startWith:(id)with;
- (id)subscribeWithResultBlock:(id)block;
- (id)take:(unint64_t)take;
@end

@implementation VFObservable

+ (VFObservable)observableWithInitialState:(id)state condition:(id)condition nextState:(id)nextState resultSelector:(id)selector
{
  selectorCopy = selector;
  nextStateCopy = nextState;
  conditionCopy = condition;
  stateCopy = state;
  v13 = [[_VFGeneratorObservable alloc] initWithInitialState:stateCopy condition:conditionCopy nextState:nextStateCopy resultSelector:selectorCopy];

  return v13;
}

+ (id)observableObserver
{
  v2 = objc_alloc_init(_VFManualObservable);

  return v2;
}

+ (VFObservable)observableWithBlock:(id)block
{
  blockCopy = block;
  v4 = [[_VFBlockObservable alloc] initWithBlock:blockCopy];

  return v4;
}

+ (VFObservable)observableWithResults:(id)results
{
  resultsCopy = results;
  v5 = [resultsCopy count];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__VFObservable_observableWithResults___block_invoke;
  v11[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
  v11[4] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__VFObservable_observableWithResults___block_invoke_3;
  v9[3] = &unk_279E35D40;
  v6 = resultsCopy;
  v10 = v6;
  v7 = [self observableWithInitialState:&unk_288175710 condition:v11 nextState:&__block_literal_global_26 resultSelector:v9];

  return v7;
}

id __38__VFObservable_observableWithResults___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "unsignedIntegerValue") + 1}];

  return v3;
}

id __38__VFObservable_observableWithResults___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(v3, "unsignedIntegerValue")}];

  return v4;
}

+ (VFObservable)observableWithError:(id)error
{
  errorCopy = error;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__VFObservable_observableWithError___block_invoke;
  v8[3] = &unk_279E35D68;
  v9 = errorCopy;
  v5 = errorCopy;
  v6 = [self observableWithBlock:v8];

  return v6;
}

VFCancelationToken *__36__VFObservable_observableWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 observerDidFailWithError:*(a1 + 32)];
  v4 = objc_alloc_init(VFCancelationToken);

  return v4;
}

+ (id)observableOnNotificationCenter:(id)center name:(id)name object:(id)object
{
  centerCopy = center;
  nameCopy = name;
  objectCopy = object;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__VFObservable_observableOnNotificationCenter_name_object___block_invoke;
  v16[3] = &unk_279E35DB8;
  v17 = centerCopy;
  v18 = nameCopy;
  v19 = objectCopy;
  v11 = objectCopy;
  v12 = nameCopy;
  v13 = centerCopy;
  v14 = [self observableWithBlock:v16];

  return v14;
}

VFCancelationToken *__59__VFObservable_observableOnNotificationCenter_name_object___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(VFCancelationToken);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__VFObservable_observableOnNotificationCenter_name_object___block_invoke_2;
  v18[3] = &unk_279E35D90;
  v8 = v3;
  v19 = v8;
  v9 = v4;
  v20 = v9;
  v10 = [v5 addObserverForName:v6 object:v7 queue:0 usingBlock:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__VFObservable_observableOnNotificationCenter_name_object___block_invoke_3;
  v15[3] = &unk_279E34500;
  v16 = *(a1 + 32);
  v17 = v10;
  v11 = v10;
  [(VFCancelationToken *)v9 addCancelationBlock:v15];
  v12 = v17;
  v13 = v9;

  return v9;
}

+ (id)observableOnDefaultNotificationCenterWithName:(id)name object:(id)object
{
  nameCopy = name;
  objectCopy = object;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = [self observableOnNotificationCenter:defaultCenter name:nameCopy object:objectCopy];

  return v9;
}

+ (id)observableOnNotifyTokenWithName:(id)name
{
  nameCopy = name;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__VFObservable_observableOnNotifyTokenWithName___block_invoke;
  v8[3] = &unk_279E35D68;
  v9 = nameCopy;
  v5 = nameCopy;
  v6 = [self observableWithBlock:v8];

  return v6;
}

VFCancelationToken *__48__VFObservable_observableOnNotifyTokenWithName___block_invoke(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(VFCancelationToken);
  out_token = -1;
  v5 = [*(a1 + 32) UTF8String];
  v6 = dispatch_get_global_queue(21, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __48__VFObservable_observableOnNotifyTokenWithName___block_invoke_2;
  handler[3] = &unk_279E35DE0;
  v7 = v3;
  v20 = v7;
  LODWORD(v5) = notify_register_dispatch(v5, &out_token, v6, handler);

  if (v5)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *__error();
    v22 = *MEMORY[0x277CCA450];
    v10 = MEMORY[0x277CCACA8];
    v11 = __error();
    v12 = [v10 stringWithUTF8String:strerror(*v11)];
    v23[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v14 = [v8 errorWithDomain:*MEMORY[0x277CCA5B8] code:v9 userInfo:v13];
    [v7 observerDidFailWithError:v14];
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__VFObservable_observableOnNotifyTokenWithName___block_invoke_3;
    v17[3] = &__block_descriptor_36_e5_v8__0l;
    v18 = out_token;
    [(VFCancelationToken *)v4 addCancelationBlock:v17];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

void __48__VFObservable_observableOnNotifyTokenWithName___block_invoke_2(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  state64 = 0;
  state = notify_get_state(a2, &state64);
  v6 = *(a1 + 32);
  if (state)
  {
    [MEMORY[0x277CBEB68] null];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:state64];
  }
  v7 = ;
  [v6 observerDidReceiveResult:v7];

  objc_autoreleasePoolPop(v4);
}

+ (id)combineLatest:(id)latest
{
  latestCopy = latest;
  if ([latestCopy count])
  {
    v4 = [[_VFCombineLatestObservable alloc] initWithObservables:latestCopy];
  }

  else
  {
    v4 = +[VFObservable emptyObservable];
  }

  v5 = v4;

  return v5;
}

+ (id)concatenate:(id)concatenate
{
  concatenateCopy = concatenate;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__VFObservable_concatenate___block_invoke;
  v8[3] = &unk_279E35D68;
  v9 = concatenateCopy;
  v5 = concatenateCopy;
  v6 = [self observableWithBlock:v8];

  return v6;
}

VFCancelationToken *__28__VFObservable_concatenate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(VFCancelationToken);
  [_VFConcatenatingObservable subscribeObserver:v3 toObservables:*(a1 + 32) unless:v4];

  return v4;
}

VFCancelationToken *__31__VFObservable_neverObservable__block_invoke()
{
  v0 = objc_alloc_init(VFCancelationToken);

  return v0;
}

VFCancelationToken *__31__VFObservable_emptyObservable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 observerDidComplete];
  v3 = objc_alloc_init(VFCancelationToken);

  return v3;
}

- (id)subscribeWithResultBlock:(id)block
{
  v4 = [VFObserver observerWithResultBlock:block];
  v5 = [(VFObservable *)self subscribe:v4];

  return v5;
}

- (id)observeOnQueue:(const char *)queue qos:(unsigned int)qos
{
  v6 = dispatch_queue_attr_make_with_qos_class(0, qos, 0);
  v7 = dispatch_queue_create(queue, v6);

  v8 = objc_opt_class();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = __35__VFObservable_observeOnQueue_qos___block_invoke;
  v13[3] = &unk_288158F40;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v10 = [v8 observableWithBlock:v13];
  v11 = v14;
  v14 = 0;

  return v10;
}

VFCancelationToken *__35__VFObservable_observeOnQueue_qos___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(VFCancelationToken);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3321888768;
  v23[2] = __35__VFObservable_observeOnQueue_qos___block_invoke_2;
  v23[3] = &unk_288158E98;
  v5 = *(a1 + 32);
  v26 = *(a1 + 40);
  v24 = v4;
  v25 = v3;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3321888768;
  v19[2] = __35__VFObservable_observeOnQueue_qos___block_invoke_35;
  v19[3] = &unk_288158ED0;
  v22 = *(a1 + 40);
  v20 = v24;
  v21 = v25;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3321888768;
  v15[2] = __35__VFObservable_observeOnQueue_qos___block_invoke_39;
  v15[3] = &unk_288158F08;
  v18 = *(a1 + 40);
  v6 = v20;
  v16 = v6;
  v7 = v21;
  v17 = v7;
  v8 = [VFObserver observerWithResultBlock:v23 completionBlock:v19 failureBlock:v15];
  v9 = [v5 subscribe:v8];

  [(VFCancelationToken *)v6 addCancelable:v9];
  v10 = v6;

  v11 = v18;
  v18 = 0;

  v12 = v22;
  v22 = 0;

  v13 = v26;
  v26 = 0;

  return v6;
}

void __35__VFObservable_observeOnQueue_qos___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = ctu::OsLogLogger::getOsLogHandle(a1 + 6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__VFObservable_observeOnQueue_qos___block_invoke_3;
  block[3] = &unk_279E35E28;
  v7 = a1[4];
  v8 = a1[5];
  v9 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __35__VFObservable_observeOnQueue_qos___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 observerDidReceiveResult:v4];
  }

  return result;
}

void __35__VFObservable_observeOnQueue_qos___block_invoke_35(id *a1)
{
  v2 = ctu::OsLogLogger::getOsLogHandle(a1 + 6);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__VFObservable_observeOnQueue_qos___block_invoke_2_36;
  v3[3] = &unk_279E34500;
  v4 = a1[4];
  v5 = a1[5];
  dispatch_async(v2, v3);
}

uint64_t __35__VFObservable_observeOnQueue_qos___block_invoke_2_36(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);

    return [v3 observerDidComplete];
  }

  return result;
}

void __35__VFObservable_observeOnQueue_qos___block_invoke_39(id *a1, void *a2)
{
  v3 = a2;
  v4 = ctu::OsLogLogger::getOsLogHandle(a1 + 6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__VFObservable_observeOnQueue_qos___block_invoke_2_40;
  block[3] = &unk_279E35E28;
  v7 = a1[4];
  v8 = a1[5];
  v9 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __35__VFObservable_observeOnQueue_qos___block_invoke_2_40(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 observerDidFailWithError:v4];
  }

  return result;
}

- (id)allObjects:(id *)objects
{
  v5 = +[VFPromise promise];
  completionHandlerAdapter = [v5 completionHandlerAdapter];
  v7 = [VFObserver observerWithCompletionHandler:completionHandlerAdapter];
  v8 = [(VFObservable *)self subscribe:v7];

  future = [v5 future];
  v10 = [future result:objects];

  return v10;
}

- (id)doOnSubscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__VFObservable_doOnSubscribe___block_invoke;
  v9[3] = &unk_279E35E50;
  v6 = subscribeCopy;
  v9[4] = self;
  v10 = v6;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __30__VFObservable_doOnSubscribe___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  v4 = [*(a1 + 32) subscribe:v3];

  return v4;
}

- (id)doOnNext:(id)next
{
  nextCopy = next;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __25__VFObservable_doOnNext___block_invoke;
  v9[3] = &unk_279E35EA0;
  v9[4] = self;
  v6 = nextCopy;
  v10 = v6;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __25__VFObservable_doOnNext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __25__VFObservable_doOnNext___block_invoke_2;
  v16[3] = &unk_279E35E78;
  v4 = *(a1 + 32);
  v18 = *(a1 + 40);
  v17 = v3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __25__VFObservable_doOnNext___block_invoke_3;
  v14[3] = &unk_279E34528;
  v15 = v17;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __25__VFObservable_doOnNext___block_invoke_4;
  v12 = &unk_279E33AF8;
  v5 = v15;
  v13 = v5;
  v6 = [VFObserver observerWithResultBlock:v16 completionBlock:v14 failureBlock:&v9];
  v7 = [v4 subscribe:{v6, v9, v10, v11, v12}];

  return v7;
}

void __25__VFObservable_doOnNext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) observerDidReceiveResult:v3];
}

- (id)doOnCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__VFObservable_doOnCompletion___block_invoke;
  v9[3] = &unk_279E35EA0;
  v9[4] = self;
  v6 = completionCopy;
  v10 = v6;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __31__VFObservable_doOnCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __31__VFObservable_doOnCompletion___block_invoke_2;
  v17[3] = &unk_279E35EC8;
  v18 = v3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __31__VFObservable_doOnCompletion___block_invoke_3;
  v14[3] = &unk_279E35EF0;
  v15 = v18;
  v16 = *(a1 + 40);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __31__VFObservable_doOnCompletion___block_invoke_4;
  v12 = &unk_279E33AF8;
  v5 = v15;
  v13 = v5;
  v6 = [VFObserver observerWithResultBlock:v17 completionBlock:v14 failureBlock:&v9];
  v7 = [v4 subscribe:{v6, v9, v10, v11, v12}];

  return v7;
}

uint64_t __31__VFObservable_doOnCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) observerDidComplete];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)doOnError:(id)error
{
  errorCopy = error;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __26__VFObservable_doOnError___block_invoke;
  v9[3] = &unk_279E35EA0;
  v9[4] = self;
  v6 = errorCopy;
  v10 = v6;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __26__VFObservable_doOnError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __26__VFObservable_doOnError___block_invoke_2;
  v17[3] = &unk_279E35EC8;
  v18 = v3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __26__VFObservable_doOnError___block_invoke_3;
  v15[3] = &unk_279E34528;
  v16 = v18;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __26__VFObservable_doOnError___block_invoke_4;
  v12 = &unk_279E35F18;
  v5 = v16;
  v13 = v5;
  v14 = *(a1 + 40);
  v6 = [VFObserver observerWithResultBlock:v17 completionBlock:v15 failureBlock:&v9];
  v7 = [v4 subscribe:{v6, v9, v10, v11, v12}];

  return v7;
}

void __26__VFObservable_doOnError___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) observerDidFailWithError:?];
  (*(*(a1 + 40) + 16))();
}

- (id)doOnCancel:(id)cancel
{
  cancelCopy = cancel;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__VFObservable_doOnCancel___block_invoke;
  v9[3] = &unk_279E35EA0;
  v9[4] = self;
  v6 = cancelCopy;
  v10 = v6;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __27__VFObservable_doOnCancel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 1;
  v4 = *(a1 + 32);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __27__VFObservable_doOnCancel___block_invoke_2;
  v17[3] = &unk_279E34BF8;
  v17[4] = v18;
  v5 = [v4 doOnCompletion:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __27__VFObservable_doOnCancel___block_invoke_3;
  v16[3] = &unk_279E35F40;
  v16[4] = v18;
  v6 = [v5 doOnError:v16];
  v7 = [v6 subscribe:v3];

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __27__VFObservable_doOnCancel___block_invoke_4;
  v13 = &unk_279E35F68;
  v15 = v18;
  v14 = *(a1 + 40);
  v8 = [VFCancelationToken tokenWithCancelationBlock:&v10];
  [v8 addCancelable:{v7, v10, v11, v12, v13}];

  _Block_object_dispose(v18, 8);

  return v8;
}

uint64_t __27__VFObservable_doOnCancel___block_invoke_4(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (id)doOnTerminate:(id)terminate
{
  terminateCopy = terminate;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__VFObservable_doOnTerminate___block_invoke;
  v9[3] = &unk_279E35EA0;
  v9[4] = self;
  v6 = terminateCopy;
  v10 = v6;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __30__VFObservable_doOnTerminate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __30__VFObservable_doOnTerminate___block_invoke_2;
  v15[3] = &unk_279E35EC8;
  v16 = v3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __30__VFObservable_doOnTerminate___block_invoke_3;
  v12[3] = &unk_279E35EF0;
  v13 = v16;
  v14 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__VFObservable_doOnTerminate___block_invoke_4;
  v9[3] = &unk_279E35F18;
  v5 = v13;
  v10 = v5;
  v11 = *(a1 + 40);
  v6 = [VFObserver observerWithResultBlock:v15 completionBlock:v12 failureBlock:v9];
  v7 = [v4 subscribe:v6];

  return v7;
}

uint64_t __30__VFObservable_doOnTerminate___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) observerDidComplete];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __30__VFObservable_doOnTerminate___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) observerDidFailWithError:?];
  (*(*(a1 + 40) + 16))();
}

- (id)distinctUntilChanged
{
  v2 = [[_VFDistinctUntilChangedObservable alloc] initWithObservable:self];

  return v2;
}

- (id)take:(unint64_t)take
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = take;
  v4 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __21__VFObservable_take___block_invoke;
  v7[3] = &unk_279E35FB8;
  v7[4] = self;
  v7[5] = v8;
  v5 = [v4 observableWithBlock:v7];
  _Block_object_dispose(v8, 8);

  return v5;
}

VFCancelationToken *__21__VFObservable_take___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(VFCancelationToken);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __21__VFObservable_take___block_invoke_2;
  v17[3] = &unk_279E35F90;
  v5 = *(a1 + 32);
  v20 = *(a1 + 40);
  v18 = v3;
  v6 = v4;
  v19 = v6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __21__VFObservable_take___block_invoke_3;
  v15[3] = &unk_279E34528;
  v16 = v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __21__VFObservable_take___block_invoke_4;
  v13[3] = &unk_279E33AF8;
  v7 = v16;
  v14 = v7;
  v8 = [VFObserver observerWithResultBlock:v17 completionBlock:v15 failureBlock:v13];
  v9 = [v5 subscribe:v8];
  [(VFCancelationToken *)v6 addCancelable:v9];

  v10 = v14;
  v11 = v6;

  return v6;
}

void __21__VFObservable_take___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(*(a1 + 48) + 8) + 24) || ([*(a1 + 32) observerDidReceiveResult:v3], --*(*(*(a1 + 48) + 8) + 24), !*(*(*(a1 + 48) + 8) + 24)))
  {
    [*(a1 + 32) observerDidComplete];
    [*(a1 + 40) cancel];
  }
}

- (id)skip:(unint64_t)skip
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = skip;
  v4 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __21__VFObservable_skip___block_invoke;
  v7[3] = &unk_279E35FB8;
  v7[4] = self;
  v7[5] = v8;
  v5 = [v4 observableWithBlock:v7];
  _Block_object_dispose(v8, 8);

  return v5;
}

VFCancelationToken *__21__VFObservable_skip___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(VFCancelationToken);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __21__VFObservable_skip___block_invoke_2;
  v17[3] = &unk_279E35FE0;
  v5 = *(a1 + 32);
  v19 = *(a1 + 40);
  v18 = v3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __21__VFObservable_skip___block_invoke_3;
  v15[3] = &unk_279E34528;
  v16 = v18;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __21__VFObservable_skip___block_invoke_4;
  v13 = &unk_279E33AF8;
  v6 = v16;
  v14 = v6;
  v7 = [VFObserver observerWithResultBlock:v17 completionBlock:v15 failureBlock:&v10];
  v8 = [v5 subscribe:{v7, v10, v11, v12, v13}];
  [(VFCancelationToken *)v4 addCancelable:v8];

  return v4;
}

void __21__VFObservable_skip___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 24);
  v6 = v3;
  if (v5)
  {
    *(v4 + 24) = v5 - 1;
  }

  else
  {
    [*(a1 + 32) observerDidReceiveResult:v3];
  }
}

- (id)filter:(id)filter
{
  filterCopy = filter;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __23__VFObservable_filter___block_invoke;
  v9[3] = &unk_279E35EA0;
  v9[4] = self;
  v6 = filterCopy;
  v10 = v6;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __23__VFObservable_filter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __23__VFObservable_filter___block_invoke_2;
  v16[3] = &unk_279E35E78;
  v4 = *(a1 + 32);
  v18 = *(a1 + 40);
  v17 = v3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __23__VFObservable_filter___block_invoke_3;
  v14[3] = &unk_279E34528;
  v15 = v17;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __23__VFObservable_filter___block_invoke_4;
  v12 = &unk_279E33AF8;
  v5 = v15;
  v13 = v5;
  v6 = [VFObserver observerWithResultBlock:v16 completionBlock:v14 failureBlock:&v9];
  v7 = [v4 subscribe:{v6, v9, v10, v11, v12}];

  return v7;
}

void __23__VFObservable_filter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) observerDidReceiveResult:v3];
  }
}

- (id)map:(id)map
{
  mapCopy = map;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __20__VFObservable_map___block_invoke;
  v9[3] = &unk_279E35EA0;
  v9[4] = self;
  v6 = mapCopy;
  v10 = v6;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __20__VFObservable_map___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __20__VFObservable_map___block_invoke_2;
  v16[3] = &unk_279E36008;
  v17 = v3;
  v18 = *(a1 + 40);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __20__VFObservable_map___block_invoke_3;
  v14[3] = &unk_279E34528;
  v15 = v17;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __20__VFObservable_map___block_invoke_4;
  v12 = &unk_279E33AF8;
  v5 = v15;
  v13 = v5;
  v6 = [VFObserver observerWithResultBlock:v16 completionBlock:v14 failureBlock:&v9];
  v7 = [v4 subscribe:{v6, v9, v10, v11, v12}];

  return v7;
}

void __20__VFObservable_map___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  v4 = v2;
  if (!v2)
  {
    v2 = [MEMORY[0x277CBEB68] null];
  }

  [v1 observerDidReceiveResult:v2];
  v3 = v4;
  if (!v4)
  {

    v3 = 0;
  }
}

- (id)multicast:(id)multicast
{
  multicastCopy = multicast;
  v5 = [[_VFConnectableObservable alloc] initWithObservable:self subject:multicastCopy];

  return v5;
}

- (id)publish
{
  v3 = +[VFObservable observableObserver];
  v4 = [(VFObservable *)self multicast:v3];

  return v4;
}

- (id)startWith:(id)with
{
  v11[2] = *MEMORY[0x277D85DE8];
  withCopy = with;
  v5 = objc_opt_class();
  v6 = [objc_opt_class() observableWithResults:withCopy];
  v11[0] = v6;
  v11[1] = self;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v5 concatenate:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end