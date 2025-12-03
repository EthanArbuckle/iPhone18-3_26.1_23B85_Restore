@interface SUScriptNativeObject
+ (SUScriptNativeObject)objectWithNativeObject:(id)object weak:(BOOL)weak;
- (SUScriptNativeObject)init;
- (SUScriptObject)scriptObject;
- (id)object;
- (id)strongObject;
- (id)weakObject;
- (void)destroyNativeObject;
- (void)lock;
- (void)setObject:(id)object;
- (void)setScriptObject:(id)object;
- (void)setStrongObject:(id)object;
- (void)setWeakObject:(id)object;
- (void)unlock;
@end

@implementation SUScriptNativeObject

- (SUScriptNativeObject)init
{
  v6.receiver = self;
  v6.super_class = SUScriptNativeObject;
  v2 = [(SUScriptNativeObject *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    internalLock = v2->_internalLock;
    v2->_internalLock = v3;
  }

  return v2;
}

- (id)object
{
  weakObject = [(SUScriptNativeObject *)self weakObject];
  v4 = weakObject;
  if (weakObject)
  {
    strongObject = weakObject;
  }

  else
  {
    strongObject = [(SUScriptNativeObject *)self strongObject];
  }

  v6 = strongObject;

  return v6;
}

- (SUScriptObject)scriptObject
{
  [(SUScriptNativeObject *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->_scriptObject);
  [(SUScriptNativeObject *)self unlock];

  return WeakRetained;
}

- (void)setObject:(id)object
{
  objectCopy = object;
  object = [(SUScriptNativeObject *)self object];

  if (object)
  {
    [(SUScriptNativeObject *)self destroyNativeObject];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && ([objectCopy clearsWeakScriptReferences])
  {
    [(SUScriptNativeObject *)self lock];
    strongObject = self->_strongObject;
    self->_strongObject = 0;
    v6 = objectCopy;
  }

  else
  {
    [(SUScriptNativeObject *)self lock];
    v7 = objectCopy;
    v6 = 0;
    strongObject = self->_strongObject;
    self->_strongObject = v7;
  }

  objc_storeWeak(&self->_weakObject, v6);
  [(SUScriptNativeObject *)self unlock];
  [(SUScriptNativeObject *)self setupNativeObject];
}

- (void)setScriptObject:(id)object
{
  objectCopy = object;
  [(SUScriptNativeObject *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->_scriptObject);

  objc_storeWeak(&self->_scriptObject, objectCopy);
  [(SUScriptNativeObject *)self unlock];
  if (!objectCopy && WeakRetained)
  {
    mainThreadProxy = [(SUScriptNativeObject *)self mainThreadProxy];
    [mainThreadProxy destroyNativeObject];
  }
}

- (void)setStrongObject:(id)object
{
  objectCopy = object;
  object = [(SUScriptNativeObject *)self object];

  if (object)
  {
    [(SUScriptNativeObject *)self destroyNativeObject];
  }

  [(SUScriptNativeObject *)self lock];
  strongObject = self->_strongObject;
  self->_strongObject = objectCopy;

  if (objectCopy)
  {
    objc_storeWeak(&self->_weakObject, 0);
  }

  [(SUScriptNativeObject *)self unlock];

  [(SUScriptNativeObject *)self setupNativeObject];
}

- (void)setWeakObject:(id)object
{
  objectCopy = object;
  object = [(SUScriptNativeObject *)self object];

  if (object)
  {
    [(SUScriptNativeObject *)self destroyNativeObject];
  }

  [(SUScriptNativeObject *)self lock];
  objc_storeWeak(&self->_weakObject, objectCopy);

  if (objectCopy)
  {
    strongObject = self->_strongObject;
    self->_strongObject = 0;
  }

  [(SUScriptNativeObject *)self unlock];

  [(SUScriptNativeObject *)self setupNativeObject];
}

- (id)strongObject
{
  [(SUScriptNativeObject *)self lock];
  v3 = self->_strongObject;
  [(SUScriptNativeObject *)self unlock];

  return v3;
}

- (id)weakObject
{
  [(SUScriptNativeObject *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);
  [(SUScriptNativeObject *)self unlock];

  return WeakRetained;
}

- (void)destroyNativeObject
{
  [(SUScriptNativeObject *)self lock];
  objc_storeWeak(&self->_weakObject, 0);
  strongObject = self->_strongObject;
  self->_strongObject = 0;

  [(SUScriptNativeObject *)self unlock];
}

- (void)lock
{
  internalLock = [(SUScriptNativeObject *)self internalLock];
  [internalLock lock];
}

+ (SUScriptNativeObject)objectWithNativeObject:(id)object weak:(BOOL)weak
{
  weakCopy = weak;
  objectCopy = object;
  v7 = objc_alloc_init(self);
  v8 = v7;
  if (weakCopy)
  {
    [v7 setWeakObject:objectCopy];
  }

  else
  {
    [v7 setStrongObject:objectCopy];
  }

  return v8;
}

- (void)unlock
{
  internalLock = [(SUScriptNativeObject *)self internalLock];
  [internalLock unlock];
}

@end