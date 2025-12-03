@interface SUScriptObject
+ (BOOL)isSelectorExcludedFromWebScript:(SEL)script;
+ (id)webScriptNameForKey:(const char *)key;
+ (void)initialize;
- (BOOL)isVisible;
- (BOOL)scriptObjectIsCheckedIn:(id)in;
- (BOOL)sourceIsTrusted;
- (NSMutableArray)scriptAttributeKeys;
- (OpaqueJSContext)copyJavaScriptContext;
- (SUClientInterface)clientInterface;
- (SUScriptNativeObject)nativeObject;
- (SUScriptObject)init;
- (SUScriptObject)parentScriptObject;
- (WebFrame)webFrame;
- (id)DOMElementWithElement:(id)element;
- (id)_copyListenersForName:(id)name;
- (id)copyObjectForScriptFromPoolWithClass:(Class)class;
- (id)invocationBatch:(BOOL)batch;
- (id)newImageWithURL:(id)l;
- (id)newImageWithURL:(id)l scale:(double)scale;
- (id)parentViewController;
- (id)viewControllerFactory;
- (id)webThreadMainThreadBatchProxy;
- (void)_checkOutAfterVisibilityChange;
- (void)addListenerForEventWithName:(id)name callback:(id)callback useCapture:(BOOL)capture;
- (void)checkInScriptObject:(id)object;
- (void)checkInScriptObjects:(id)objects;
- (void)checkOutBatchTarget:(id)target;
- (void)checkOutScriptObject:(id)object;
- (void)checkOutScriptObjects:(id)objects;
- (void)dealloc;
- (void)didPerformBatchedInvocations;
- (void)dispatchEvent:(id)event forName:(id)name synchronously:(BOOL)synchronously;
- (void)finalizeForWebScript;
- (void)loadImageWithURL:(id)l completionBlock:(id)block;
- (void)removeListenerForEventWithName:(id)name callback:(id)callback useCapture:(BOOL)capture;
- (void)setNativeObject:(id)object;
- (void)setParentScriptObject:(id)object;
- (void)setVisible:(BOOL)visible;
- (void)tearDownUserInterface;
- (void)willPerformBatchedInvocations;
@end

@implementation SUScriptObject

- (SUScriptObject)init
{
  v6.receiver = self;
  v6.super_class = SUScriptObject;
  v2 = [(SUScriptObject *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v2->_lock;
    v2->_lock = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(SUScriptObject *)self checkOutBatchTarget:self];
  [(SUScriptObjectInvocationBatch *)self->_invocationBatch setRootObject:0];
  invocationBatch = self->_invocationBatch;
  self->_invocationBatch = 0;

  lock = self->_lock;
  self->_lock = 0;

  eventListeners = self->_eventListeners;
  self->_eventListeners = 0;

  [(SUScriptNativeObject *)self->_nativeObject setScriptObject:0];
  nativeObject = self->_nativeObject;
  self->_nativeObject = 0;

  [(NSMutableSet *)self->_scriptObjects makeObjectsPerformSelector:sel_setParentScriptObject_ withObject:0];
  scriptObjects = self->_scriptObjects;
  self->_scriptObjects = 0;

  v8.receiver = self;
  v8.super_class = SUScriptObject;
  [(SUScriptObject *)&v8 dealloc];
}

- (void)checkInScriptObject:(id)object
{
  v4 = MEMORY[0x1E695DEC8];
  objectCopy = object;
  v6 = [[v4 alloc] initWithObjects:{objectCopy, 0}];

  [(SUScriptObject *)self checkInScriptObjects:v6];
}

- (void)checkInScriptObjects:(id)objects
{
  objectsCopy = objects;
  [(SUScriptObject *)self lock];
  if (!self->_scriptObjects)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    scriptObjects = self->_scriptObjects;
    self->_scriptObjects = v5;
  }

  [objectsCopy makeObjectsPerformSelector:sel_setParentScriptObject_ withObject:self];
  [(NSMutableSet *)self->_scriptObjects addObjectsFromArray:objectsCopy];

  [(SUScriptObject *)self unlock];
}

- (void)checkOutScriptObject:(id)object
{
  v4 = MEMORY[0x1E695DEC8];
  objectCopy = object;
  v6 = [[v4 alloc] initWithObjects:{objectCopy, 0}];

  [(SUScriptObject *)self checkOutScriptObjects:v6];
}

- (void)checkOutScriptObjects:(id)objects
{
  v16 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  [(SUScriptObject *)self lock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = objectsCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_scriptObjects containsObject:v10, v11])
        {
          [v10 setParentScriptObject:0];
          [(NSMutableSet *)self->_scriptObjects removeObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(SUScriptObject *)self unlock];
}

- (SUClientInterface)clientInterface
{
  parentScriptObject = [(SUScriptObject *)self parentScriptObject];
  clientInterface = [parentScriptObject clientInterface];

  return clientInterface;
}

- (OpaqueJSContext)copyJavaScriptContext
{
  parentScriptObject = [(SUScriptObject *)self parentScriptObject];
  copyJavaScriptContext = [parentScriptObject copyJavaScriptContext];

  return copyJavaScriptContext;
}

- (id)copyObjectForScriptFromPoolWithClass:(Class)class
{
  parentViewController = [(SUScriptObject *)self parentViewController];
  v6 = [parentViewController copyObjectForScriptFromPoolWithClass:class];

  if (!v6)
  {
    v6 = objc_alloc_init(class);
  }

  if (objc_opt_class() == class)
  {
    clientInterface = [(SUScriptObject *)self clientInterface];
    appearance = [clientInterface appearance];
    [appearance styleBarButtonItem:v6];
  }

  return v6;
}

- (void)dispatchEvent:(id)event forName:(id)name synchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  v24 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v9 = [(SUScriptObject *)self _copyListenersForName:name];
  if (synchronouslyCopy && (WebThreadIsCurrent() & 1) == 0)
  {
    WebThreadLock();
  }

  v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{self, eventCopy, 0}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if (synchronouslyCopy)
        {
          callback = [*(*(&v19 + 1) + 8 * i) callback];
          v17 = [callback callWebScriptMethod:@"call" withArguments:v10];
        }

        else
        {
          v18 = v10;
          WebThreadRun();
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }
}

void __54__SUScriptObject_dispatchEvent_forName_synchronously___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) callback];
  v2 = [v3 callWebScriptMethod:@"call" withArguments:*(a1 + 40)];
}

- (id)DOMElementWithElement:(id)element
{
  elementCopy = element;
  parentScriptObject = [(SUScriptObject *)self parentScriptObject];
  v6 = [parentScriptObject DOMElementWithElement:elementCopy];

  return v6;
}

- (BOOL)isVisible
{
  [(SUScriptObject *)self lock];
  v3 = *(self + 56);
  [(SUScriptObject *)self unlock];
  if ((v3 & 2) != 0)
  {
    return 1;
  }

  parentScriptObject = [(SUScriptObject *)self parentScriptObject];
  isVisible = [parentScriptObject isVisible];

  return isVisible;
}

- (void)loadImageWithURL:(id)l completionBlock:(id)block
{
  v32 = *MEMORY[0x1E69E9840];
  lCopy = l;
  blockCopy = block;
  v7 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  v8 = +[(ISDataProvider *)SUImageDataProvider];
  [v7 setDataProvider:v8];

  [v7 setUrlKnownToBeTrusted:1];
  v9 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:lCopy];
  [v9 setAllowedRetryCount:0];
  [v9 setTimeoutInterval:10.0];
  [v7 setRequestProperties:v9];
  v10 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:v7];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __51__SUScriptObject_loadImageWithURL_completionBlock___block_invoke;
  v25 = &unk_1E8164638;
  v11 = v10;
  v26 = v11;
  v12 = blockCopy;
  v27 = v12;
  [v7 setCompletionBlock:&v22];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v15 = shouldLog | 2;
  }

  else
  {
    v15 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v15 &= 2u;
  }

  if (!v15)
  {
    goto LABEL_9;
  }

  v17 = objc_opt_class();
  v28 = 138412546;
  v29 = v17;
  v30 = 2112;
  v31 = lCopy;
  v18 = v17;
  LODWORD(v21) = 22;
  v19 = _os_log_send_and_compose_impl();

  if (v19)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v28, v21, v22, v23, v24, v25, v26}];
    free(v19);
    SSFileLog();
LABEL_9:
  }

  mainQueue = [MEMORY[0x1E69E4798] mainQueue];
  [mainQueue addOperation:v7];
}

void __51__SUScriptObject_loadImageWithURL_completionBlock___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) object];
  if ([v6 success])
  {
    v2 = [v6 dataProvider];
    v3 = [v2 output];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  v5 = [v6 error];
  (*(v4 + 16))(v4, v3, v5);
}

- (SUScriptNativeObject)nativeObject
{
  [(SUScriptObject *)self lock];
  v3 = self->_nativeObject;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (id)newImageWithURL:(id)l
{
  v4 = MEMORY[0x1E69DCEB0];
  lCopy = l;
  mainScreen = [v4 mainScreen];
  [mainScreen scale];
  v7 = [(SUScriptObject *)self newImageWithURL:lCopy scale:?];

  return v7;
}

- (id)newImageWithURL:(id)l scale:(double)scale
{
  lCopy = l;
  v7 = lCopy;
  if (lCopy)
  {
    scheme = [lCopy scheme];
    v9 = [scheme caseInsensitiveCompare:@"data"];

    if (v9)
    {
      host = [v7 host];

      if (!host)
      {
        data = 0;
        goto LABEL_11;
      }

      webFrame = [(SUScriptObject *)self webFrame];
      dataSource = [webFrame dataSource];

      v13 = [dataSource subresourceForURL:v7];
      data = [v13 data];

      if (!data)
      {
        goto LABEL_7;
      }

LABEL_9:
      host = [objc_alloc(MEMORY[0x1E69DCAB8]) _initWithData:data scale:scale];
      objc_setAssociatedObject(host, "com.apple.iTunesStoreUI.SUScriptObject.imageURL", v7, 0x303);
      goto LABEL_11;
    }

    data = SUGetDataForDataURL(v7, 0);
    if (data)
    {
      goto LABEL_9;
    }
  }

  else
  {
    data = 0;
  }

LABEL_7:
  host = 0;
LABEL_11:

  return host;
}

- (SUScriptObject)parentScriptObject
{
  [(SUScriptObject *)self lock];
  v3 = self->_parentScriptObject;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (id)parentViewController
{
  parentScriptObject = [(SUScriptObject *)self parentScriptObject];
  parentViewController = [parentScriptObject parentViewController];

  return parentViewController;
}

- (BOOL)scriptObjectIsCheckedIn:(id)in
{
  inCopy = in;
  [(SUScriptObject *)self lock];
  v5 = [(NSMutableSet *)self->_scriptObjects containsObject:inCopy];
  [(SUScriptObject *)self unlock];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    parentScriptObject = [(SUScriptObject *)self parentScriptObject];
    v6 = [parentScriptObject scriptObjectIsCheckedIn:inCopy];
  }

  return v6;
}

- (void)setNativeObject:(id)object
{
  objectCopy = object;
  [(SUScriptObject *)self lock];
  nativeObject = self->_nativeObject;
  if (nativeObject != objectCopy)
  {
    [(SUScriptNativeObject *)nativeObject setScriptObject:0];
    objc_storeStrong(&self->_nativeObject, object);
    [(SUScriptNativeObject *)self->_nativeObject setScriptObject:self];
  }

  [(SUScriptObject *)self unlock];
}

- (void)setParentScriptObject:(id)object
{
  objectCopy = object;
  [(SUScriptObject *)self lock];
  parentScriptObject = self->_parentScriptObject;
  self->_parentScriptObject = objectCopy;

  [(SUScriptObject *)self unlock];
}

- (void)setVisible:(BOOL)visible
{
  visibleCopy = visible;
  [(SUScriptObject *)self lock];
  v5 = *(self + 56);
  if ((((v5 & 2) == 0) ^ visibleCopy))
  {

    [(SUScriptObject *)self unlock];
  }

  else
  {
    if (visibleCopy)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *(self + 56) = v5 & 0xFD | v6;
    [(SUScriptObject *)self unlock];
    if (!visibleCopy)
    {

      [(SUScriptObject *)self _checkOutAfterVisibilityChange];
    }
  }
}

- (BOOL)sourceIsTrusted
{
  webFrame = [(SUScriptObject *)self webFrame];
  dataSource = [webFrame dataSource];
  mainResource = [dataSource mainResource];
  v5 = [mainResource URL];
  scheme = [v5 scheme];
  v7 = [scheme isEqualToString:@"https"];

  return v7;
}

- (void)tearDownUserInterface
{
  [(SUScriptObject *)self lock];
  v4 = [(NSMutableSet *)self->_scriptObjects copy];
  [(SUScriptObject *)self unlock];
  [v4 makeObjectsPerformSelector:a2];
}

- (id)viewControllerFactory
{
  parentViewController = [(SUScriptObject *)self parentViewController];
  viewControllerFactory = [parentViewController viewControllerFactory];

  if (!viewControllerFactory)
  {
    clientInterface = [(SUScriptObject *)self clientInterface];
    viewControllerFactory = [clientInterface viewControllerFactory];
  }

  return viewControllerFactory;
}

- (WebFrame)webFrame
{
  parentScriptObject = [(SUScriptObject *)self parentScriptObject];
  webFrame = [parentScriptObject webFrame];

  return webFrame;
}

- (void)addListenerForEventWithName:(id)name callback:(id)callback useCapture:(BOOL)capture
{
  captureCopy = capture;
  nameCopy = name;
  callbackCopy = callback;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = MEMORY[0x1E69E2F88];
  if ((isKindOfClass & 1) == 0)
  {
    v15 = @"Invalid event name";
LABEL_8:
    [v10 throwException:v15];
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x1E69E2F88];
    v15 = @"Invalid event callback";
    goto LABEL_8;
  }

  v11 = objc_alloc_init(SUScriptEventListener);
  [(SUScriptEventListener *)v11 setCallback:callbackCopy];
  [(SUScriptEventListener *)v11 setName:nameCopy];
  [(SUScriptEventListener *)v11 setShouldUseCapture:captureCopy];
  [(SUScriptObject *)self lock];
  eventListeners = self->_eventListeners;
  if (!eventListeners)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = self->_eventListeners;
    self->_eventListeners = v13;

    eventListeners = self->_eventListeners;
  }

  [(NSMutableArray *)eventListeners addObject:v11];
  [(SUScriptObject *)self unlock];

LABEL_9:
}

- (void)removeListenerForEventWithName:(id)name callback:(id)callback useCapture:(BOOL)capture
{
  captureCopy = capture;
  nameCopy = name;
  callbackCopy = callback;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = MEMORY[0x1E69E2F88];
  if ((isKindOfClass & 1) == 0)
  {
    v17 = @"Invalid event name";
LABEL_15:
    [v10 throwException:v17];
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x1E69E2F88];
    v17 = @"Invalid event callback";
    goto LABEL_15;
  }

  [(SUScriptObject *)self lock];
  v11 = [(NSMutableArray *)self->_eventListeners count];
  if (v11 >= 1)
  {
    for (i = v11 + 1; i > 1; --i)
    {
      v13 = [(NSMutableArray *)self->_eventListeners objectAtIndex:i - 2];
      name = [v13 name];
      if ([name isEqualToString:nameCopy])
      {
        callback = [v13 callback];
        if ([callback isEqual:callbackCopy])
        {
          shouldUseCapture = [v13 shouldUseCapture];

          if (shouldUseCapture == captureCopy)
          {
            [v13 setCallback:0];
            [(NSMutableArray *)self->_eventListeners removeObjectAtIndex:i - 2];
          }

          goto LABEL_11;
        }
      }

LABEL_11:
    }
  }

  [(SUScriptObject *)self unlock];
LABEL_16:
}

- (void)_checkOutAfterVisibilityChange
{
  if ([(SUScriptObject *)self isVisible])
  {
    [0 makeObjectsPerformSelector:a2];
    v4 = 0;
  }

  else
  {
    [(SUScriptObject *)self lock];
    v5 = *(self + 56);
    *(self + 56) = v5 & 0xFE;
    v7 = [(NSMutableSet *)self->_scriptObjects copy];
    [(SUScriptObject *)self unlock];
    [v7 makeObjectsPerformSelector:a2];
    if (v5)
    {
      parentScriptObject = [(SUScriptObject *)self parentScriptObject];
      [parentScriptObject checkOutScriptObject:self];
    }

    v4 = v7;
  }
}

- (id)_copyListenersForName:(id)name
{
  v20 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(SUScriptObject *)self lock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_eventListeners;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        name = [v11 name];
        v13 = [name isEqualToString:nameCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(SUScriptObject *)self unlock];
  return v5;
}

+ (BOOL)isSelectorExcludedFromWebScript:(SEL)script
{
  v5 = [self webScriptNameForSelector:?];

  if (v5)
  {
    return 0;
  }

  v7 = NSStringFromSelector(script);
  if ([v7 hasSuffix:@":"])
  {
    v6 = 1;
  }

  else
  {
    v8 = [self webScriptNameForKeyName:v7];
    v6 = v8 == 0;
  }

  return v6;
}

+ (id)webScriptNameForKey:(const char *)key
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:key];
  v5 = [self webScriptNameForKeyName:v4];

  return v5;
}

- (NSMutableArray)scriptAttributeKeys
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  allKeys = [__KeyMapping_8 allKeys];
  [v2 addObjectsFromArray:allKeys];

  return v2;
}

- (void)finalizeForWebScript
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SUScriptObject_finalizeForWebScript__block_invoke;
  block[3] = &unk_1E81645E8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __38__SUScriptObject_finalizeForWebScript__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isVisible];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  if (v2)
  {
    *(v3 + 56) = v4 | 1;
  }

  else
  {
    *(v3 + 56) = v4 & 0xFE;
    v5 = [*(a1 + 32) parentScriptObject];
    [v5 checkOutScriptObject:*(a1 + 32)];
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_6 = sel_addListenerForEventWithName_callback_useCapture_;
    unk_1EBF3A8A0 = @"addEventListener";
    qword_1EBF3A8A8 = sel_equals_;
    unk_1EBF3A8B0 = @"equals";
    qword_1EBF3A8B8 = sel_removeListenerForEventWithName_callback_useCapture_;
    unk_1EBF3A8C0 = @"removeEventListener";
    qword_1EBF3A8C8 = sel_stringRepresentation;
    unk_1EBF3A8D0 = @"toString";
    __KeyMapping_8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"className", @"_className", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)checkOutBatchTarget:(id)target
{
  targetCopy = target;
  v5 = [(SUScriptObject *)self invocationBatch:0];
  [v5 checkOutBatchTarget:targetCopy];
}

- (void)didPerformBatchedInvocations
{
  [(SUScriptObject *)self lock];
  v4 = [(NSMutableSet *)self->_scriptObjects copy];
  [(SUScriptObject *)self unlock];
  [v4 makeObjectsPerformSelector:a2];
}

- (id)invocationBatch:(BOOL)batch
{
  batchCopy = batch;
  parentScriptObject = [(SUScriptObject *)self parentScriptObject];
  v6 = [parentScriptObject invocationBatch:batchCopy];

  if (!v6)
  {
    [(SUScriptObject *)self lock];
    invocationBatch = self->_invocationBatch;
    if (invocationBatch)
    {
      v8 = 1;
    }

    else
    {
      v8 = !batchCopy;
    }

    if (!v8)
    {
      v9 = objc_alloc_init(SUScriptObjectInvocationBatch);
      v10 = self->_invocationBatch;
      self->_invocationBatch = v9;

      [(SUScriptObjectInvocationBatch *)self->_invocationBatch setRootObject:self];
      invocationBatch = self->_invocationBatch;
    }

    v6 = invocationBatch;
    [(SUScriptObject *)self unlock];
  }

  return v6;
}

- (id)webThreadMainThreadBatchProxy
{
  v3 = [(SUScriptObject *)self invocationBatch:1];
  v4 = [v3 batchProxyForObject:self];

  return v4;
}

- (void)willPerformBatchedInvocations
{
  [(SUScriptObject *)self lock];
  v4 = [(NSMutableSet *)self->_scriptObjects copy];
  [(SUScriptObject *)self unlock];
  [v4 makeObjectsPerformSelector:a2];
}

@end