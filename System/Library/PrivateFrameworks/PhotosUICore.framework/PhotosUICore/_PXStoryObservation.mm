@interface _PXStoryObservation
- (PXObservable)observable;
- (_PXStoryObservation)initWithObservable:(id)observable changeHandler:(id)handler;
- (void)cancel;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation _PXStoryObservation

- (PXObservable)observable
{
  WeakRetained = objc_loadWeakRetained(&self->_observable);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  changeHandler = [(_PXStoryObservation *)self changeHandler];

  if (changeHandler)
  {
    changeHandler2 = [(_PXStoryObservation *)self changeHandler];
    (changeHandler2)[2](changeHandler2, observableCopy, change);
  }
}

- (void)cancel
{
  observable = [(_PXStoryObservation *)self observable];
  [observable unregisterChangeObserver:self context:0];

  [(_PXStoryObservation *)self setChangeHandler:0];
}

- (_PXStoryObservation)initWithObservable:(id)observable changeHandler:(id)handler
{
  observableCopy = observable;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = _PXStoryObservation;
  v8 = [(_PXStoryObservation *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observable, observableCopy);
    v10 = [handlerCopy copy];
    changeHandler = v9->_changeHandler;
    v9->_changeHandler = v10;

    WeakRetained = objc_loadWeakRetained(&v9->_observable);
    [WeakRetained registerChangeObserver:v9 context:0];
  }

  return v9;
}

@end