@interface _VFConnectableObservable
- (_VFConnectableObservable)initWithObservable:(id)observable subject:(id)subject;
- (id)connect;
- (void)_disconnect;
@end

@implementation _VFConnectableObservable

- (_VFConnectableObservable)initWithObservable:(id)observable subject:(id)subject
{
  observableCopy = observable;
  subjectCopy = subject;
  v13.receiver = self;
  v13.super_class = _VFConnectableObservable;
  v9 = [(_VFConnectableObservable *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v9->_lock;
    v9->_lock = v10;

    objc_storeStrong(&v9->_observable, observable);
    objc_storeStrong(&v9->_subject, subject);
  }

  return v9;
}

- (id)connect
{
  [(NSLock *)self->_lock lock];
  cancelable = self->_cancelable;
  v4 = cancelable;
  if (!cancelable)
  {
    v5 = objc_alloc_init(VFCancelationToken);
    v6 = self->_cancelable;
    self->_cancelable = v5;

    objc_initWeak(&location, self);
    v7 = self->_cancelable;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __35___VFConnectableObservable_connect__block_invoke;
    v11[3] = &unk_279E346B8;
    objc_copyWeak(&v12, &location);
    [(VFCancelationToken *)v7 addCancelationBlock:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    v4 = self->_cancelable;
  }

  v8 = v4;
  [(NSLock *)self->_lock unlock];
  if (!cancelable)
  {
    v9 = [(VFObservable *)self->_observable subscribe:self->_subject];
    [(VFCancelationToken *)v8 addCancelable:v9];
  }

  return v8;
}

- (void)_disconnect
{
  [(NSLock *)self->_lock lock];
  cancelable = self->_cancelable;
  self->_cancelable = 0;
  v4 = cancelable;

  [(NSLock *)self->_lock unlock];
}

@end