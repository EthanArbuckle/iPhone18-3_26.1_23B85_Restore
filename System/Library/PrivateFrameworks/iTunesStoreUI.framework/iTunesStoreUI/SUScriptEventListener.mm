@interface SUScriptEventListener
- (BOOL)shouldUseCapture;
- (NSString)name;
- (SUScriptEventListener)init;
- (WebScriptObject)callback;
- (void)setCallback:(id)callback;
- (void)setName:(id)name;
- (void)setShouldUseCapture:(BOOL)capture;
@end

@implementation SUScriptEventListener

- (SUScriptEventListener)init
{
  v6.receiver = self;
  v6.super_class = SUScriptEventListener;
  v2 = [(SUScriptEventListener *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v2->_lock;
    v2->_lock = v3;

    [(NSLock *)v2->_lock setName:@"SUScriptEventListener"];
  }

  return v2;
}

- (WebScriptObject)callback
{
  [(NSLock *)self->_lock lock];
  v3 = self->_callback;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (NSString)name
{
  [(NSLock *)self->_lock lock];
  v3 = self->_name;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)setCallback:(id)callback
{
  callbackCopy = callback;
  [(NSLock *)self->_lock lock];
  if (self->_callback != callbackCopy)
  {
    objc_storeStrong(&self->_callback, callback);
  }

  [(NSLock *)self->_lock unlock];
}

- (void)setName:(id)name
{
  nameCopy = name;
  [(NSLock *)self->_lock lock];
  if (self->_name != nameCopy)
  {
    v4 = [(NSString *)nameCopy copy];
    name = self->_name;
    self->_name = v4;
  }

  [(NSLock *)self->_lock unlock];
}

- (void)setShouldUseCapture:(BOOL)capture
{
  [(NSLock *)self->_lock lock];
  self->_useCapture = capture;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (BOOL)shouldUseCapture
{
  [(NSLock *)self->_lock lock];
  useCapture = self->_useCapture;
  [(NSLock *)self->_lock unlock];
  return useCapture;
}

@end