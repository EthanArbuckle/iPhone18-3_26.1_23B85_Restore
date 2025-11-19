@interface SVXAnnouncer
+ (id)protocol;
- (BOOL)respondsToSelector:(SEL)a3;
- (SVXAnnouncer)init;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_accessListenersUsingBlock:(id)a3;
- (void)addListener:(id)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)removeAllListeners;
- (void)removeListener:(id)a3;
@end

@implementation SVXAnnouncer

- (void)_accessListenersUsingBlock:(id)a3
{
  if (a3)
  {
    listeners = self->_listeners;
    v5 = a3;
    v6 = [(NSHashTable *)listeners setRepresentation];
    (*(a3 + 2))(v5, v6);
  }
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = [v4 selector];
  if (CFDictionaryContainsKey(self->_protocolRequiredInstanceMethodSignaturesBySelector, v5))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__SVXAnnouncer_forwardInvocation___block_invoke;
    v10[3] = &unk_279C66928;
    v12 = v5;
    v11 = v4;
    [(SVXAnnouncer *)self _accessListenersUsingBlock:v10];
    v6 = v11;
  }

  else
  {
    if (!CFDictionaryContainsKey(self->_protocolOptionalInstanceMethodSignaturesBySelector, v5))
    {
      [(SVXAnnouncer *)self doesNotRecognizeSelector:v5];
      goto LABEL_6;
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__SVXAnnouncer_forwardInvocation___block_invoke_15;
    v7[3] = &unk_279C66928;
    v9 = v5;
    v8 = v4;
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

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = CFDictionaryGetValue(self->_protocolRequiredInstanceMethodSignaturesBySelector, a3);
  if (!v5)
  {
    v5 = CFDictionaryGetValue(self->_protocolOptionalInstanceMethodSignaturesBySelector, a3);
    if (!v5)
    {
      v7.receiver = self;
      v7.super_class = SVXAnnouncer;
      v5 = [(SVXAnnouncer *)&v7 methodSignatureForSelector:a3];
    }
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (CFDictionaryContainsKey(self->_protocolRequiredInstanceMethodSignaturesBySelector, a3) || CFDictionaryContainsKey(self->_protocolOptionalInstanceMethodSignaturesBySelector, a3))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SVXAnnouncer;
  return [(SVXAnnouncer *)&v6 respondsToSelector:a3];
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

- (void)removeListener:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (v4)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[SVXAnnouncer removeListener:]";
      v9 = 2112;
      v10 = v4;
      _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s %@", &v7, 0x16u);
    }

    [(NSHashTable *)self->_listeners removeObject:v4];
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

- (void)addListener:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() protocol];
  v6 = [v4 conformsToProtocol:v5];
  v7 = *MEMORY[0x277CEF098];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315394;
      v12 = "[SVXAnnouncer addListener:]";
      v13 = 2112;
      v14 = v4;
      _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s %@", &v11, 0x16u);
    }

    [(NSHashTable *)self->_listeners addObject:v4];
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v9 = v7;
    v10 = NSStringFromProtocol(v5);
    v11 = 136315650;
    v12 = "[SVXAnnouncer addListener:]";
    v13 = 2112;
    v14 = v4;
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
    v4 = [objc_opt_class() protocol];
    if (!v4)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [v8 handleFailureInMethod:a2 object:v3 file:@"SVXAnnouncer.m" lineNumber:32 description:{@"Announcer class %@ is expected to override +[SVXAnnouncer protocol] method and return a non null protocol.", v10}];
    }

    if (([(SVXAnnouncer *)v3 conformsToProtocol:v4]& 1) == 0)
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromProtocol(v4);
      [v11 handleFailureInMethod:a2 object:v3 file:@"SVXAnnouncer.m" lineNumber:33 description:{@"Announcer class %@ is expected to conform to protocol %@.", v13, v14}];
    }

    v3->_protocolRequiredInstanceMethodSignaturesBySelector = _SVXAnnouncerCreateInstanceMethodSignatureMap(v4, 1);
    v3->_protocolOptionalInstanceMethodSignaturesBySelector = _SVXAnnouncerCreateInstanceMethodSignatureMap(v4, 0);
    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    listeners = v3->_listeners;
    v3->_listeners = v5;
  }

  return v3;
}

+ (id)protocol
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE648];
  v4 = NSStringFromClass(a1);
  [v2 raise:v3 format:{@"Subclass Responsibility: Announcer class %@ is expected to override +[SVXAnnouncer protocol] method and return a non null protocol.", v4}];

  return 0;
}

@end