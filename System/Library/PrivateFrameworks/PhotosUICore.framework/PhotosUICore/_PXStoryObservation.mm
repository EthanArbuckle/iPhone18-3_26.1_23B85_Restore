@interface _PXStoryObservation
- (PXObservable)observable;
- (_PXStoryObservation)initWithObservable:(id)a3 changeHandler:(id)a4;
- (void)cancel;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation _PXStoryObservation

- (PXObservable)observable
{
  WeakRetained = objc_loadWeakRetained(&self->_observable);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  v7 = [(_PXStoryObservation *)self changeHandler];

  if (v7)
  {
    v8 = [(_PXStoryObservation *)self changeHandler];
    (v8)[2](v8, v9, a4);
  }
}

- (void)cancel
{
  v3 = [(_PXStoryObservation *)self observable];
  [v3 unregisterChangeObserver:self context:0];

  [(_PXStoryObservation *)self setChangeHandler:0];
}

- (_PXStoryObservation)initWithObservable:(id)a3 changeHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _PXStoryObservation;
  v8 = [(_PXStoryObservation *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observable, v6);
    v10 = [v7 copy];
    changeHandler = v9->_changeHandler;
    v9->_changeHandler = v10;

    WeakRetained = objc_loadWeakRetained(&v9->_observable);
    [WeakRetained registerChangeObserver:v9 context:0];
  }

  return v9;
}

@end