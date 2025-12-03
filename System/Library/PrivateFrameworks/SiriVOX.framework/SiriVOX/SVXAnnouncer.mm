@interface SVXAnnouncer
+ (id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (SVXAnnouncer)init;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_accessListenersUsingBlock:(id)block;
- (void)addListener:(id)listener;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)removeAllListeners;
- (void)removeListener:(id)listener;
@end

@implementation SVXAnnouncer

- (void)_accessListenersUsingBlock:(id)block
{
  if (block)
  {
    listeners = self->_listeners;
    blockCopy = block;
    setRepresentation = [(NSHashTable *)listeners setRepresentation];
    (*(block + 2))(blockCopy, setRepresentation);
  }
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  selector = [invocationCopy selector];
  if (CFDictionaryContainsKey(self->_protocolRequiredInstanceMethodSignaturesBySelector, selector))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__SVXAnnouncer_forwardInvocation___block_invoke;
    v10[3] = &unk_279C66928;
    v12 = selector;
    v11 = invocationCopy;
    [(SVXAnnouncer *)self _accessListenersUsingBlock:v10];
    v6 = v11;
  }

  else
  {
    if (!CFDictionaryContainsKey(self->_protocolOptionalInstanceMethodSignaturesBySelector, selector))
    {
      [(SVXAnnouncer *)self doesNotRecognizeSelector:selector];
      goto LABEL_6;
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__SVXAnnouncer_forwardInvocation___block_invoke_15;
    v7[3] = &unk_279C66928;
    v9 = selector;
    v8 = invocationCopy;
    [(SVXAnnouncer *)self _accessListenersUsingBlock:v7];
    v6 = v8;
  }

LABEL_6:
}

void __34__SVXAnnouncer_forwardInvocation___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = v4;
    v7 = NSStringFromSelector(v5);
    *buf = 136315650;
    v20 = "[SVXAnnouncer forwardInvocation:]_block_invoke";
    v21 = 2112;
    v22 = v7;
    v23 = 2048;
    v24 = [v3 count];
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_DEFAULT, "%s Announcing %@ to %tu listeners.", buf, 0x20u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(a1 + 32) invokeWithTarget:{*(*(&v14 + 1) + 8 * v12++), v14}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __34__SVXAnnouncer_forwardInvocation___block_invoke_15(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = v4;
    v7 = NSStringFromSelector(v5);
    *buf = 136315650;
    v22 = "[SVXAnnouncer forwardInvocation:]_block_invoke";
    v23 = 2112;
    v24 = v7;
    v25 = 2048;
    v26 = [v3 count];
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_DEFAULT, "%s Announcing %@ to %tu listeners.", buf, 0x20u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = *(a1 + 40);
        if (objc_opt_respondsToSelector())
        {
          [*(a1 + 32) invokeWithTarget:{v13, v16}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v5 = CFDictionaryGetValue(self->_protocolRequiredInstanceMethodSignaturesBySelector, selector);
  if (!v5)
  {
    v5 = CFDictionaryGetValue(self->_protocolOptionalInstanceMethodSignaturesBySelector, selector);
    if (!v5)
    {
      v7.receiver = self;
      v7.super_class = SVXAnnouncer;
      v5 = [(SVXAnnouncer *)&v7 methodSignatureForSelector:selector];
    }
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (CFDictionaryContainsKey(self->_protocolRequiredInstanceMethodSignaturesBySelector, selector) || CFDictionaryContainsKey(self->_protocolOptionalInstanceMethodSignaturesBySelector, selector))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SVXAnnouncer;
  return [(SVXAnnouncer *)&v6 respondsToSelector:selector];
}

- (void)removeAllListeners
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[SVXAnnouncer removeAllListeners]";
    _os_log_debug_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEBUG, "%s ", &v5, 0xCu);
  }

  [(NSHashTable *)self->_listeners removeAllObjects];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)removeListener:(id)listener
{
  v11 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  v5 = *MEMORY[0x277CEF098];
  if (listenerCopy)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[SVXAnnouncer removeListener:]";
      v9 = 2112;
      v10 = listenerCopy;
      _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s %@", &v7, 0x16u);
    }

    [(NSHashTable *)self->_listeners removeObject:listenerCopy];
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXAnnouncer removeListener:]";
    v9 = 2112;
    v10 = 0;
    _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s listener %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addListener:(id)listener
{
  v17 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  protocol = [objc_opt_class() protocol];
  v6 = [listenerCopy conformsToProtocol:protocol];
  v7 = *MEMORY[0x277CEF098];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315394;
      v12 = "[SVXAnnouncer addListener:]";
      v13 = 2112;
      v14 = listenerCopy;
      _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s %@", &v11, 0x16u);
    }

    [(NSHashTable *)self->_listeners addObject:listenerCopy];
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v9 = v7;
    v10 = NSStringFromProtocol(protocol);
    v11 = 136315650;
    v12 = "[SVXAnnouncer addListener:]";
    v13 = 2112;
    v14 = listenerCopy;
    v15 = 2112;
    v16 = v10;
    _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, "%s listener %@ does NOT conform to protocol %@", &v11, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  CFRelease(self->_protocolRequiredInstanceMethodSignaturesBySelector);
  self->_protocolRequiredInstanceMethodSignaturesBySelector = 0;
  CFRelease(self->_protocolOptionalInstanceMethodSignaturesBySelector);
  self->_protocolOptionalInstanceMethodSignaturesBySelector = 0;
  v3.receiver = self;
  v3.super_class = SVXAnnouncer;
  [(SVXAnnouncer *)&v3 dealloc];
}

- (SVXAnnouncer)init
{
  v15.receiver = self;
  v15.super_class = SVXAnnouncer;
  v3 = [(SVXAnnouncer *)&v15 init];
  if (v3)
  {
    protocol = [objc_opt_class() protocol];
    if (!protocol)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [currentHandler handleFailureInMethod:a2 object:v3 file:@"SVXAnnouncer.m" lineNumber:32 description:{@"Announcer class %@ is expected to override +[SVXAnnouncer protocol] method and return a non null protocol.", v10}];
    }

    if (([(SVXAnnouncer *)v3 conformsToProtocol:protocol]& 1) == 0)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromProtocol(protocol);
      [currentHandler2 handleFailureInMethod:a2 object:v3 file:@"SVXAnnouncer.m" lineNumber:33 description:{@"Announcer class %@ is expected to conform to protocol %@.", v13, v14}];
    }

    v3->_protocolRequiredInstanceMethodSignaturesBySelector = _SVXAnnouncerCreateInstanceMethodSignatureMap(protocol, 1);
    v3->_protocolOptionalInstanceMethodSignaturesBySelector = _SVXAnnouncerCreateInstanceMethodSignatureMap(protocol, 0);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    listeners = v3->_listeners;
    v3->_listeners = weakObjectsHashTable;
  }

  return v3;
}

+ (id)protocol
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE648];
  v4 = NSStringFromClass(self);
  [v2 raise:v3 format:{@"Subclass Responsibility: Announcer class %@ is expected to override +[SVXAnnouncer protocol] method and return a non null protocol.", v4}];

  return 0;
}

@end