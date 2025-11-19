@interface _VFKeyValueObserverHandler
- (_VFKeyValueObserverHandler)initWithObject:(id)a3 keyPath:(id)a4 usingBlock:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation _VFKeyValueObserverHandler

- (_VFKeyValueObserverHandler)initWithObject:(id)a3 keyPath:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _VFKeyValueObserverHandler;
  v11 = [(_VFKeyValueObserverHandler *)&v19 init];
  v12 = v11;
  if (v11)
  {
    v11->_object = v8;
    v13 = [v9 copy];
    keyPath = v12->_keyPath;
    v12->_keyPath = v13;

    v15 = [v10 copy];
    block = v12->_block;
    v12->_block = v15;

    v17 = v12;
  }

  return v12;
}

- (void)dealloc
{
  [(_VFKeyValueObserverHandler *)self cancel];
  v3.receiver = self;
  v3.super_class = _VFKeyValueObserverHandler;
  [(_VFKeyValueObserverHandler *)&v3 dealloc];
}

- (void)cancel
{
  if (self->_observing)
  {
    [self->_object removeObserver:self forKeyPath:self->_keyPath context:sHandlerContext];
    self->_observing = 0;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (sHandlerContext == a6)
  {
    v8 = *(self->_block + 2);

    v8();
  }

  else
  {
    v10 = v6;
    v11 = v7;
    v9.receiver = self;
    v9.super_class = _VFKeyValueObserverHandler;
    [(_VFKeyValueObserverHandler *)&v9 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end