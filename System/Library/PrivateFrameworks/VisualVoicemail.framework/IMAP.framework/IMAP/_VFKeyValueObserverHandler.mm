@interface _VFKeyValueObserverHandler
- (_VFKeyValueObserverHandler)initWithObject:(id)object keyPath:(id)path usingBlock:(id)block;
- (void)cancel;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _VFKeyValueObserverHandler

- (_VFKeyValueObserverHandler)initWithObject:(id)object keyPath:(id)path usingBlock:(id)block
{
  objectCopy = object;
  pathCopy = path;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = _VFKeyValueObserverHandler;
  v11 = [(_VFKeyValueObserverHandler *)&v19 init];
  v12 = v11;
  if (v11)
  {
    v11->_object = objectCopy;
    v13 = [pathCopy copy];
    keyPath = v12->_keyPath;
    v12->_keyPath = v13;

    v15 = [blockCopy copy];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (sHandlerContext == context)
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
    [(_VFKeyValueObserverHandler *)&v9 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end