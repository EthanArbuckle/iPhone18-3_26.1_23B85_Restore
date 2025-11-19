@interface SUScriptObject
+ (BOOL)isSelectorExcludedFromWebScript:(SEL)a3;
+ (id)webScriptNameForKey:(const char *)a3;
+ (void)initialize;
- (BOOL)isVisible;
- (BOOL)scriptObjectIsCheckedIn:(id)a3;
- (BOOL)sourceIsTrusted;
- (NSMutableArray)scriptAttributeKeys;
- (OpaqueJSContext)copyJavaScriptContext;
- (SUClientInterface)clientInterface;
- (SUScriptNativeObject)nativeObject;
- (SUScriptObject)init;
- (SUScriptObject)parentScriptObject;
- (WebFrame)webFrame;
- (id)DOMElementWithElement:(id)a3;
- (id)_copyListenersForName:(id)a3;
- (id)copyObjectForScriptFromPoolWithClass:(Class)a3;
- (id)invocationBatch:(BOOL)a3;
- (id)newImageWithURL:(id)a3;
- (id)newImageWithURL:(id)a3 scale:(double)a4;
- (id)parentViewController;
- (id)viewControllerFactory;
- (id)webThreadMainThreadBatchProxy;
- (void)_checkOutAfterVisibilityChange;
- (void)addListenerForEventWithName:(id)a3 callback:(id)a4 useCapture:(BOOL)a5;
- (void)checkInScriptObject:(id)a3;
- (void)checkInScriptObjects:(id)a3;
- (void)checkOutBatchTarget:(id)a3;
- (void)checkOutScriptObject:(id)a3;
- (void)checkOutScriptObjects:(id)a3;
- (void)dealloc;
- (void)didPerformBatchedInvocations;
- (void)dispatchEvent:(id)a3 forName:(id)a4 synchronously:(BOOL)a5;
- (void)finalizeForWebScript;
- (void)loadImageWithURL:(id)a3 completionBlock:(id)a4;
- (void)removeListenerForEventWithName:(id)a3 callback:(id)a4 useCapture:(BOOL)a5;
- (void)setNativeObject:(id)a3;
- (void)setParentScriptObject:(id)a3;
- (void)setVisible:(BOOL)a3;
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

- (void)checkInScriptObject:(id)a3
{
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [[v4 alloc] initWithObjects:{v5, 0}];

  [(SUScriptObject *)self checkInScriptObjects:v6];
}

- (void)checkInScriptObjects:(id)a3
{
  v4 = a3;
  [(SUScriptObject *)self lock];
  if (!self->_scriptObjects)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    scriptObjects = self->_scriptObjects;
    self->_scriptObjects = v5;
  }

  [v4 makeObjectsPerformSelector:sel_setParentScriptObject_ withObject:self];
  [(NSMutableSet *)self->_scriptObjects addObjectsFromArray:v4];

  [(SUScriptObject *)self unlock];
}

- (void)checkOutScriptObject:(id)a3
{
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [[v4 alloc] initWithObjects:{v5, 0}];

  [(SUScriptObject *)self checkOutScriptObjects:v6];
}

- (void)checkOutScriptObjects:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SUScriptObject *)self lock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
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
  v2 = [(SUScriptObject *)self parentScriptObject];
  v3 = [v2 clientInterface];

  return v3;
}

- (OpaqueJSContext)copyJavaScriptContext
{
  v2 = [(SUScriptObject *)self parentScriptObject];
  v3 = [v2 copyJavaScriptContext];

  return v3;
}

- (id)copyObjectForScriptFromPoolWithClass:(Class)a3
{
  v5 = [(SUScriptObject *)self parentViewController];
  v6 = [v5 copyObjectForScriptFromPoolWithClass:a3];

  if (!v6)
  {
    v6 = objc_alloc_init(a3);
  }

  if (objc_opt_class() == a3)
  {
    v7 = [(SUScriptObject *)self clientInterface];
    v8 = [v7 appearance];
    [v8 styleBarButtonItem:v6];
  }

  return v6;
}

- (void)dispatchEvent:(id)a3 forName:(id)a4 synchronously:(BOOL)a5
{
  v5 = a5;
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(SUScriptObject *)self _copyListenersForName:a4];
  if (v5 && (WebThreadIsCurrent() & 1) == 0)
  {
    WebThreadLock();
  }

  v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{self, v8, 0}];
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

        if (v5)
        {
          v16 = [*(*(&v19 + 1) + 8 * i) callback];
          v17 = [v16 callWebScriptMethod:@"call" withArguments:v10];
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

- (id)DOMElementWithElement:(id)a3
{
  v4 = a3;
  v5 = [(SUScriptObject *)self parentScriptObject];
  v6 = [v5 DOMElementWithElement:v4];

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

  v4 = [(SUScriptObject *)self parentScriptObject];
  v5 = [v4 isVisible];

  return v5;
}

- (void)loadImageWithURL:(id)a3 completionBlock:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  v8 = +[(ISDataProvider *)SUImageDataProvider];
  [v7 setDataProvider:v8];

  [v7 setUrlKnownToBeTrusted:1];
  v9 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:v5];
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
  v12 = v6;
  v27 = v12;
  [v7 setCompletionBlock:&v22];
  v13 = [MEMORY[0x1E69D4938] sharedConfig];
  v14 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v15 = v14 | 2;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v13 OSLogObject];
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
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
  v31 = v5;
  v18 = v17;
  LODWORD(v21) = 22;
  v19 = _os_log_send_and_compose_impl();

  if (v19)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v28, v21, v22, v23, v24, v25, v26}];
    free(v19);
    SSFileLog();
LABEL_9:
  }

  v20 = [MEMORY[0x1E69E4798] mainQueue];
  [v20 addOperation:v7];
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

- (id)newImageWithURL:(id)a3
{
  v4 = MEMORY[0x1E69DCEB0];
  v5 = a3;
  v6 = [v4 mainScreen];
  [v6 scale];
  v7 = [(SUScriptObject *)self newImageWithURL:v5 scale:?];

  return v7;
}

- (id)newImageWithURL:(id)a3 scale:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 scheme];
    v9 = [v8 caseInsensitiveCompare:@"data"];

    if (v9)
    {
      v10 = [v7 host];

      if (!v10)
      {
        v14 = 0;
        goto LABEL_11;
      }

      v11 = [(SUScriptObject *)self webFrame];
      v12 = [v11 dataSource];

      v13 = [v12 subresourceForURL:v7];
      v14 = [v13 data];

      if (!v14)
      {
        goto LABEL_7;
      }

LABEL_9:
      v10 = [objc_alloc(MEMORY[0x1E69DCAB8]) _initWithData:v14 scale:a4];
      objc_setAssociatedObject(v10, "com.apple.iTunesStoreUI.SUScriptObject.imageURL", v7, 0x303);
      goto LABEL_11;
    }

    v14 = SUGetDataForDataURL(v7, 0);
    if (v14)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_7:
  v10 = 0;
LABEL_11:

  return v10;
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
  v2 = [(SUScriptObject *)self parentScriptObject];
  v3 = [v2 parentViewController];

  return v3;
}

- (BOOL)scriptObjectIsCheckedIn:(id)a3
{
  v4 = a3;
  [(SUScriptObject *)self lock];
  v5 = [(NSMutableSet *)self->_scriptObjects containsObject:v4];
  [(SUScriptObject *)self unlock];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(SUScriptObject *)self parentScriptObject];
    v6 = [v7 scriptObjectIsCheckedIn:v4];
  }

  return v6;
}

- (void)setNativeObject:(id)a3
{
  v6 = a3;
  [(SUScriptObject *)self lock];
  nativeObject = self->_nativeObject;
  if (nativeObject != v6)
  {
    [(SUScriptNativeObject *)nativeObject setScriptObject:0];
    objc_storeStrong(&self->_nativeObject, a3);
    [(SUScriptNativeObject *)self->_nativeObject setScriptObject:self];
  }

  [(SUScriptObject *)self unlock];
}

- (void)setParentScriptObject:(id)a3
{
  v4 = a3;
  [(SUScriptObject *)self lock];
  parentScriptObject = self->_parentScriptObject;
  self->_parentScriptObject = v4;

  [(SUScriptObject *)self unlock];
}

- (void)setVisible:(BOOL)a3
{
  v3 = a3;
  [(SUScriptObject *)self lock];
  v5 = *(self + 56);
  if ((((v5 & 2) == 0) ^ v3))
  {

    [(SUScriptObject *)self unlock];
  }

  else
  {
    if (v3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *(self + 56) = v5 & 0xFD | v6;
    [(SUScriptObject *)self unlock];
    if (!v3)
    {

      [(SUScriptObject *)self _checkOutAfterVisibilityChange];
    }
  }
}

- (BOOL)sourceIsTrusted
{
  v2 = [(SUScriptObject *)self webFrame];
  v3 = [v2 dataSource];
  v4 = [v3 mainResource];
  v5 = [v4 URL];
  v6 = [v5 scheme];
  v7 = [v6 isEqualToString:@"https"];

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
  v3 = [(SUScriptObject *)self parentViewController];
  v4 = [v3 viewControllerFactory];

  if (!v4)
  {
    v5 = [(SUScriptObject *)self clientInterface];
    v4 = [v5 viewControllerFactory];
  }

  return v4;
}

- (WebFrame)webFrame
{
  v2 = [(SUScriptObject *)self parentScriptObject];
  v3 = [v2 webFrame];

  return v3;
}

- (void)addListenerForEventWithName:(id)a3 callback:(id)a4 useCapture:(BOOL)a5
{
  v5 = a5;
  v16 = a3;
  v8 = a4;
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
  [(SUScriptEventListener *)v11 setCallback:v8];
  [(SUScriptEventListener *)v11 setName:v16];
  [(SUScriptEventListener *)v11 setShouldUseCapture:v5];
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

- (void)removeListenerForEventWithName:(id)a3 callback:(id)a4 useCapture:(BOOL)a5
{
  v5 = a5;
  v18 = a3;
  v8 = a4;
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
      v14 = [v13 name];
      if ([v14 isEqualToString:v18])
      {
        v15 = [v13 callback];
        if ([v15 isEqual:v8])
        {
          v16 = [v13 shouldUseCapture];

          if (v16 == v5)
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
      v6 = [(SUScriptObject *)self parentScriptObject];
      [v6 checkOutScriptObject:self];
    }

    v4 = v7;
  }
}

- (id)_copyListenersForName:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v12 = [v11 name];
        v13 = [v12 isEqualToString:v4];

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

+ (BOOL)isSelectorExcludedFromWebScript:(SEL)a3
{
  v5 = [a1 webScriptNameForSelector:?];

  if (v5)
  {
    return 0;
  }

  v7 = NSStringFromSelector(a3);
  if ([v7 hasSuffix:@":"])
  {
    v6 = 1;
  }

  else
  {
    v8 = [a1 webScriptNameForKeyName:v7];
    v6 = v8 == 0;
  }

  return v6;
}

+ (id)webScriptNameForKey:(const char *)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3];
  v5 = [a1 webScriptNameForKeyName:v4];

  return v5;
}

- (NSMutableArray)scriptAttributeKeys
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [__KeyMapping_8 allKeys];
  [v2 addObjectsFromArray:v3];

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
  if (objc_opt_class() == a1)
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

- (void)checkOutBatchTarget:(id)a3
{
  v4 = a3;
  v5 = [(SUScriptObject *)self invocationBatch:0];
  [v5 checkOutBatchTarget:v4];
}

- (void)didPerformBatchedInvocations
{
  [(SUScriptObject *)self lock];
  v4 = [(NSMutableSet *)self->_scriptObjects copy];
  [(SUScriptObject *)self unlock];
  [v4 makeObjectsPerformSelector:a2];
}

- (id)invocationBatch:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUScriptObject *)self parentScriptObject];
  v6 = [v5 invocationBatch:v3];

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
      v8 = !v3;
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