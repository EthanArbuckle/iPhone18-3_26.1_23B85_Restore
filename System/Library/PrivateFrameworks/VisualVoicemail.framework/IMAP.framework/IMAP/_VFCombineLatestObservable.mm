@interface _VFCombineLatestObservable
- (_VFCombineLatestObservable)initWithObservables:(id)observables;
- (id)subscribe:(id)subscribe;
@end

@implementation _VFCombineLatestObservable

- (_VFCombineLatestObservable)initWithObservables:(id)observables
{
  observablesCopy = observables;
  v9.receiver = self;
  v9.super_class = _VFCombineLatestObservable;
  v5 = [(_VFCombineLatestObservable *)&v9 init];
  if (v5)
  {
    v6 = [observablesCopy copy];
    observables = v5->_observables;
    v5->_observables = v6;
  }

  return v5;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = [_VFCombineLatestObservableSubscription alloc];
  observables = [(_VFCombineLatestObservable *)self observables];
  v7 = [(_VFCombineLatestObservableSubscription *)v5 initWithObservables:observables];
  v8 = [(_VFCombineLatestObservableSubscription *)v7 subscribe:subscribeCopy];

  return v8;
}

@end