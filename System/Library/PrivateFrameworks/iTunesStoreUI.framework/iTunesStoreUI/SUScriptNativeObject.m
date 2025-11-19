@interface SUScriptNativeObject
+ (SUScriptNativeObject)objectWithNativeObject:(id)a3 weak:(BOOL)a4;
- (SUScriptNativeObject)init;
- (SUScriptObject)scriptObject;
- (id)object;
- (id)strongObject;
- (id)weakObject;
- (void)destroyNativeObject;
- (void)lock;
- (void)setObject:(id)a3;
- (void)setScriptObject:(id)a3;
- (void)setStrongObject:(id)a3;
- (void)setWeakObject:(id)a3;
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
  v3 = [(SUScriptNativeObject *)self weakObject];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SUScriptNativeObject *)self strongObject];
  }

  v6 = v5;

  return v6;
}

- (SUScriptObject)scriptObject
{
  [(SUScriptNativeObject *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->_scriptObject);
  [(SUScriptNativeObject *)self unlock];

  return WeakRetained;
}

- (void)setObject:(id)a3
{
  v8 = a3;
  v4 = [(SUScriptNativeObject *)self object];

  if (v4)
  {
    [(SUScriptNativeObject *)self destroyNativeObject];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && ([v8 clearsWeakScriptReferences])
  {
    [(SUScriptNativeObject *)self lock];
    strongObject = self->_strongObject;
    self->_strongObject = 0;
    v6 = v8;
  }

  else
  {
    [(SUScriptNativeObject *)self lock];
    v7 = v8;
    v6 = 0;
    strongObject = self->_strongObject;
    self->_strongObject = v7;
  }

  objc_storeWeak(&self->_weakObject, v6);
  [(SUScriptNativeObject *)self unlock];
  [(SUScriptNativeObject *)self setupNativeObject];
}

- (void)setScriptObject:(id)a3
{
  v4 = a3;
  [(SUScriptNativeObject *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->_scriptObject);

  objc_storeWeak(&self->_scriptObject, v4);
  [(SUScriptNativeObject *)self unlock];
  if (!v4 && WeakRetained)
  {
    v6 = [(SUScriptNativeObject *)self mainThreadProxy];
    [v6 destroyNativeObject];
  }
}

- (void)setStrongObject:(id)a3
{
  v4 = a3;
  v5 = [(SUScriptNativeObject *)self object];

  if (v5)
  {
    [(SUScriptNativeObject *)self destroyNativeObject];
  }

  [(SUScriptNativeObject *)self lock];
  strongObject = self->_strongObject;
  self->_strongObject = v4;

  if (v4)
  {
    objc_storeWeak(&self->_weakObject, 0);
  }

  [(SUScriptNativeObject *)self unlock];

  [(SUScriptNativeObject *)self setupNativeObject];
}

- (void)setWeakObject:(id)a3
{
  v4 = a3;
  v5 = [(SUScriptNativeObject *)self object];

  if (v5)
  {
    [(SUScriptNativeObject *)self destroyNativeObject];
  }

  [(SUScriptNativeObject *)self lock];
  objc_storeWeak(&self->_weakObject, v4);

  if (v4)
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
  v2 = [(SUScriptNativeObject *)self internalLock];
  [v2 lock];
}

+ (SUScriptNativeObject)objectWithNativeObject:(id)a3 weak:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(a1);
  v8 = v7;
  if (v4)
  {
    [v7 setWeakObject:v6];
  }

  else
  {
    [v7 setStrongObject:v6];
  }

  return v8;
}

- (void)unlock
{
  v2 = [(SUScriptNativeObject *)self internalLock];
  [v2 unlock];
}

@end