@interface SBChainableModifier
+ (BOOL)modifierUnderTest:(id)a3 containsChildModifierKindOfClass:(Class)a4;
+ (Class)makeDynamicSubclassWithDescriptor:(id)a3 implementation:(id)a4 forSelector:(SEL)a5 ofProtocol:(id)a6;
+ (id)baseClassForQueryProtocol;
+ (id)contextProtocol;
+ (id)contextSelectors;
+ (id)eventSelectors;
+ (id)newCacheWithSelectorList:(id)a3 subsequentMethodCacheFunc:(void *)a4 cachingDictionary:(id)a5;
+ (id)newContextCache;
+ (id)newEventCache;
+ (id)newQueryCache;
+ (id)queryProtocol;
+ (id)querySelectors;
+ (void)_initalizeIMPCaching;
+ (void)verifyModifierImplements:(BOOL)a3 methodsOfProtocol:(id)a4;
- (BOOL)_anyDescendentImplementsAnyContextMethod;
- (BOOL)_anyDescendentImplementsAnyEventMethod;
- (BOOL)_anyDescendentImplementsAnyQueryMethod;
- (BOOL)containsChildModifier:(id)a3;
- (SBChainableModifier)init;
- (SBChainableModifierDelegate)delegate;
- (id)_forwardEvent:(id)a3 toChildModifier:(id)a4;
- (id)_lastDeepChildModifier;
- (id)childModifierByKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugPotentialChildModifiers;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)handleEvent:(id)a3;
- (id)succinctDescription;
- (unint64_t)childModifierCount;
- (void)_addChildModifier:(id)a3 atLevel:(int64_t)a4 key:(id)a5 queryResponse:(unint64_t)a6 contextResponse:(unint64_t)a7 eventResponse:(unint64_t)a8;
- (void)_insertModifier:(id)a3 afterModifier:(id)a4 queryResponse:(unint64_t)a5 contextResponse:(unint64_t)a6 eventResponse:(unint64_t)a7;
- (void)_notifyChildrenDidMoveToParentIfNeeded;
- (void)_removeChildModifier:(id)a3 queryResponse:(unint64_t)a4 contextResponse:(unint64_t)a5 eventResponse:(unint64_t)a6;
- (void)addChildModifier:(id)a3 atLevel:(int64_t)a4 key:(id)a5;
- (void)dealloc;
- (void)didMoveToParentModifier:(id)a3;
- (void)enumerateChildModifiersWithBlock:(id)a3;
- (void)init;
- (void)performTransactionWithTemporaryChildModifier:(id)a3 usingBlock:(id)a4;
- (void)provideNextQueryImplementation:(id)a3 forSelector:(SEL)a4;
- (void)providePreviousContextImplementation:(id)a3 forSelector:(SEL)a4;
- (void)recomputeQueryCache;
- (void)removeChildModifier:(id)a3;
- (void)setContextCacheCoordinator:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setEventCacheCoordinator:(id)a3;
- (void)setQueryCacheCoordinator:(id)a3;
- (void)verifyInternalIntegrityAfterHandlingEvent:(id)a3;
@end

@implementation SBChainableModifier

- (SBChainableModifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)newContextCache
{
  v3 = [a1 contextSelectors];
  v4 = [a1 newCacheWithSelectorList:v3 subsequentMethodCacheFunc:PreviousContextMethodCacheForMethodCache cachingDictionary:staticPrototypeContextCacheForClass];

  return v4;
}

- (BOOL)_anyDescendentImplementsAnyQueryMethod
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = [(SBChainableModifierMethodCache *)self->_queryCache hasNonTrampolineIMPs];
  if (v7[3])
  {
    v3 = 1;
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __61__SBChainableModifier__anyDescendentImplementsAnyQueryMethod__block_invoke;
    v5[3] = &unk_2783C1748;
    v5[4] = &v6;
    [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v5];
    v3 = *(v7 + 24);
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

- (SBChainableModifier)init
{
  v3 = objc_opt_class();
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    [SBChainableModifier init];
  }

  v12.receiver = self;
  v12.super_class = SBChainableModifier;
  v4 = [(SBChainableModifier *)&v12 init];
  if (v4)
  {
    v5 = [objc_opt_class() newQueryCache];
    queryCache = v4->_queryCache;
    v4->_queryCache = v5;

    [(SBChainableModifierMethodCache *)v4->_queryCache setModifier:v4];
    v7 = [objc_opt_class() newContextCache];
    contextCache = v4->_contextCache;
    v4->_contextCache = v7;

    [(SBChainableModifierMethodCache *)v4->_contextCache setModifier:v4];
    v9 = [objc_opt_class() newEventCache];
    eventCache = v4->_eventCache;
    v4->_eventCache = v9;

    [(SBChainableModifierMethodCache *)v4->_eventCache setModifier:v4];
    v4->_state = 0;
  }

  return v4;
}

+ (id)contextSelectors
{
  v2 = staticContextSelectorsForBaseClass;
  v3 = [a1 baseClassForQueryProtocol];
  v4 = [v2 objectForKey:v3];

  return v4;
}

- (BOOL)_anyDescendentImplementsAnyContextMethod
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = [(SBChainableModifierMethodCache *)self->_contextCache hasNonTrampolineIMPs];
  if (v7[3])
  {
    v3 = 1;
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__SBChainableModifier__anyDescendentImplementsAnyContextMethod__block_invoke;
    v5[3] = &unk_2783C1748;
    v5[4] = &v6;
    [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v5];
    v3 = *(v7 + 24);
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

+ (id)newQueryCache
{
  v3 = [a1 querySelectors];
  v4 = [a1 newCacheWithSelectorList:v3 subsequentMethodCacheFunc:NextQueryMethodCacheForMethodCache cachingDictionary:staticPrototypeQueryCacheForClass];

  return v4;
}

+ (id)querySelectors
{
  v2 = staticQuerySelectorsForBaseClass;
  v3 = [a1 baseClassForQueryProtocol];
  v4 = [v2 objectForKey:v3];

  return v4;
}

+ (id)baseClassForQueryProtocol
{
  v2 = a1;
  if (objc_opt_class() == v2)
  {
    v5 = 0;
  }

  else
  {
    while (1)
    {
      v3 = [v2 methodForSelector:sel_queryProtocol];
      if (v3 != [objc_msgSend(v2 "superclass")])
      {
        break;
      }

      v4 = [v2 superclass];

      v2 = v4;
      if (v4 == objc_opt_class())
      {
        v5 = 0;
        v2 = v4;
        goto LABEL_7;
      }
    }

    v2 = v2;
    v5 = v2;
  }

LABEL_7:

  return v5;
}

+ (id)eventSelectors
{
  v2 = staticEventSelectorsForBaseClass;
  v3 = [a1 baseClassForQueryProtocol];
  v4 = [v2 objectForKey:v3];

  return v4;
}

+ (id)newEventCache
{
  v3 = [a1 eventSelectors];
  v4 = [a1 newCacheWithSelectorList:v3 subsequentMethodCacheFunc:NextEventMethodCacheForMethodCache cachingDictionary:staticPrototypeEventCacheForClass];

  return v4;
}

- (id)_lastDeepChildModifier
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__124;
  v12 = __Block_byref_object_dispose__124;
  v2 = self;
  v13 = v2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SBChainableModifier__lastDeepChildModifier__block_invoke;
  v7[3] = &unk_2783C1748;
  v7[4] = &v8;
  [(SBChainableModifier *)v2 enumerateChildModifiersWithBlock:v7];
  v3 = v9[5];
  if (v3 == v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [(SBChainableModifier *)v3 _lastDeepChildModifier];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)_notifyChildrenDidMoveToParentIfNeeded
{
  if (!self->_hasNotifiedChildrenDidMoveToParent)
  {
    self->_hasNotifiedChildrenDidMoveToParent = 1;
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __61__SBChainableModifier__notifyChildrenDidMoveToParentIfNeeded__block_invoke;
    v2[3] = &unk_2783C16D0;
    v2[4] = self;
    [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v2];
  }
}

- (void)dealloc
{
  [(SBChainableModifier *)self enumerateChildModifiersWithBlock:&__block_literal_global_391];
  v3 = [(SBChainableModifier *)self nextQueryModifier];
  [v3 setPreviousContextModifier:0];

  v4.receiver = self;
  v4.super_class = SBChainableModifier;
  [(SBChainableModifier *)&v4 dealloc];
}

- (BOOL)_anyDescendentImplementsAnyEventMethod
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = [(SBChainableModifierMethodCache *)self->_eventCache hasNonTrampolineIMPs];
  if (v7[3])
  {
    v3 = 1;
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __61__SBChainableModifier__anyDescendentImplementsAnyEventMethod__block_invoke;
    v5[3] = &unk_2783C1748;
    v5[4] = &v6;
    [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v5];
    v3 = *(v7 + 24);
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

uint64_t __61__SBChainableModifier__anyDescendentImplementsAnyEventMethod__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 _anyDescendentImplementsAnyEventMethod];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

+ (void)_initalizeIMPCaching
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0_3();
  [v4 handleFailureInMethod:v0 object:v3 file:? lineNumber:? description:?];
}

- (void)provideNextQueryImplementation:(id)a3 forSelector:(SEL)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v7 queryProtocol];
  v9 = [v7 makeDynamicSubclassWithDescriptor:@"NextQuery" implementation:v6 forSelector:a4 ofProtocol:v8];

  v10 = objc_alloc_init(v9);
  [(SBChainableModifier *)self _insertModifier:v10 afterModifier:self queryResponse:0 contextResponse:0 eventResponse:0];
}

- (void)providePreviousContextImplementation:(id)a3 forSelector:(SEL)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v7 contextProtocol];
  v9 = [v7 makeDynamicSubclassWithDescriptor:@"PreviousContext" implementation:v6 forSelector:a4 ofProtocol:v8];

  v11 = objc_alloc_init(v9);
  v10 = [(SBChainableModifier *)self previousContextModifier];
  [(SBChainableModifier *)self _insertModifier:v11 afterModifier:v10 queryResponse:0 contextResponse:0 eventResponse:0];
}

+ (Class)makeDynamicSubclassWithDescriptor:(id)a3 implementation:(id)a4 forSelector:(SEL)a5 ofProtocol:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  MethodDescription = protocol_getMethodDescription(v10, a5, 1, 1);
  if (!MethodDescription.name)
  {
    +[SBChainableModifier(RuntimeProviding) makeDynamicSubclassWithDescriptor:implementation:forSelector:ofProtocol:];
  }

  v14 = [a1 baseClassForQueryProtocol];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [MEMORY[0x277CCAD78] UUID];
  v19 = [v18 UUIDString];
  v20 = [v15 stringWithFormat:@"%@-%@-%@", v17, v12, v19];

  ClassPair = objc_allocateClassPair(v14, [v20 UTF8String], 0);
  objc_registerClassPair(ClassPair);
  v22 = imp_implementationWithBlock(v11);
  LOBYTE(v18) = class_addMethod(ClassPair, a5, v22, MethodDescription.types);

  if ((v18 & 1) == 0)
  {
    +[SBChainableModifier(RuntimeProviding) makeDynamicSubclassWithDescriptor:implementation:forSelector:ofProtocol:];
  }

  v23 = ClassPair;

  return ClassPair;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
    if (obj)
    {
      [(SBChainableModifier *)self _notifyChildrenDidMoveToParentIfNeeded];
      v5 = obj;
    }
  }
}

- (id)handleEvent:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__124;
  v66 = __Block_byref_object_dispose__124;
  v67 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v61 = 0;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __35__SBChainableModifier_handleEvent___block_invoke;
  v59[3] = &unk_2783C16A8;
  v59[5] = &v62;
  v59[6] = v60;
  v59[4] = self;
  v5 = MEMORY[0x223D6F7F0](v59);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __35__SBChainableModifier_handleEvent___block_invoke_2;
  v57[3] = &unk_2783C16D0;
  v7 = v6;
  v58 = v7;
  [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v57];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __35__SBChainableModifier_handleEvent___block_invoke_3;
  v54[3] = &unk_2783C16F8;
  v54[4] = self;
  v33 = v4;
  v55 = v33;
  v32 = v5;
  v56 = v32;
  [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v54];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __35__SBChainableModifier_handleEvent___block_invoke_4;
  v52[3] = &unk_2783C16D0;
  v9 = v8;
  v53 = v9;
  [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v52];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v48 objects:v73 count:16];
  if (v10)
  {
    v11 = *v49;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v48 + 1) + 8 * i);
        v14 = [(SBChainableModifier *)self loggingCategory];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = [v13 succinctDescription];
          *buf = 138412546;
          v70 = v16;
          v71 = 2112;
          v72 = v17;
          _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "[%@] Removing child modifier %@ because its state is Completed.", buf, 0x16u);
        }

        [(SBChainableModifier *)self removeChildModifier:v13];
        [v7 removeObject:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v48 objects:v73 count:16];
    }

    while (v10);
  }

  v35 = [(SBChainableModifier *)self _handleEvent:v33];
  if (v35)
  {
    (*(v32 + 2))(v32, v35, 0);
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __35__SBChainableModifier_handleEvent___block_invoke_17;
  v43[3] = &unk_2783C1720;
  v31 = v7;
  v44 = v31;
  v45 = self;
  v30 = v33;
  v46 = v30;
  v34 = v32;
  v47 = v34;
  [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v43];
  [obj removeAllObjects];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __35__SBChainableModifier_handleEvent___block_invoke_2_18;
  v41[3] = &unk_2783C16D0;
  v18 = obj;
  v42 = v18;
  [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v41];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v37 objects:v68 count:16];
  if (v20)
  {
    v21 = *v38;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v37 + 1) + 8 * j);
        v24 = [(SBChainableModifier *)self loggingCategory:v30];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = [v23 succinctDescription];
          *buf = 138412546;
          v70 = v26;
          v71 = 2112;
          v72 = v27;
          _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_INFO, "[%@] Removing child modifier %@ because its state is Completed.", buf, 0x16u);
        }

        [(SBChainableModifier *)self removeChildModifier:v23];
      }

      v20 = [v19 countByEnumeratingWithState:&v37 objects:v68 count:16];
    }

    while (v20);
  }

  if ([(SBChainableModifier *)self completesWhenChildrenComplete]&& ![(SBChainableModifier *)self childModifierCount])
  {
    [(SBChainableModifier *)self setState:1];
  }

  v28 = v63[5];

  _Block_object_dispose(v60, 8);
  _Block_object_dispose(&v62, 8);

  return v28;
}

void __35__SBChainableModifier_handleEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = *(*(a1 + 40) + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  v14 = v6;
  if (v9)
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v10 = [objc_opt_class() newEventResponse];
      [v10 addChildResponse:*(*(*(a1 + 40) + 8) + 40)];
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v6 = v14;
    }

    v13 = *(*(*(a1 + 40) + 8) + 40);
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v13 addChildResponse:v6];
    }

    else
    {
      [v13 insertChildResponse:v6 atIndex:a3];
    }
  }

  else
  {
    objc_storeStrong(v8, a2);
  }
}

void __35__SBChainableModifier_handleEvent___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _forwardEvent:*(a1 + 40) toChildModifier:a2];
  if (v3)
  {
    v4 = v3;
    (*(*(a1 + 48) + 16))();
    v3 = v4;
  }
}

void __35__SBChainableModifier_handleEvent___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t __35__SBChainableModifier_handleEvent___block_invoke_17(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v3 = [*(a1 + 40) _forwardEvent:*(a1 + 48) toChildModifier:v5];
    if (v3)
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  return MEMORY[0x2821F97C8]();
}

void __35__SBChainableModifier_handleEvent___block_invoke_2_18(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (unint64_t)childModifierCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__SBChainableModifier_childModifierCount__block_invoke;
  v4[3] = &unk_2783C1748;
  v4[4] = &v5;
  [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)containsChildModifier:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SBChainableModifier_containsChildModifier___block_invoke;
  v7[3] = &unk_2783C1770;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __45__SBChainableModifier_containsChildModifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqual:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)enumerateChildModifiersWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBChainableModifier *)self nextQueryModifier];
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      v8 = [v6 parentModifier];

      if (v8 == self)
      {
        v4[2](v4, v6, v7++, &v10);
      }

      v9 = [v6 nextQueryModifier];

      if (!v9)
      {
        break;
      }

      v6 = v9;
    }

    while ((v10 & 1) == 0);
  }
}

- (id)debugPotentialChildModifiers
{
  v3 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SBChainableModifier_debugPotentialChildModifiers__block_invoke;
  v6[3] = &unk_2783C16D0;
  v4 = v3;
  v7 = v4;
  [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v6];

  return v4;
}

- (void)addChildModifier:(id)a3 atLevel:(int64_t)a4 key:(id)a5
{
  v8 = a5;
  v12 = a3;
  if ([v12 _anyDescendentImplementsAnyQueryMethod])
  {
    v9 = 0;
  }

  else
  {
    v9 = 3;
  }

  if ([v12 _anyDescendentImplementsAnyContextMethod])
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  if ([v12 _anyDescendentImplementsAnyEventMethod])
  {
    v11 = 0;
  }

  else
  {
    v11 = 3;
  }

  [(SBChainableModifier *)self _addChildModifier:v12 atLevel:a4 key:v8 queryResponse:v9 contextResponse:v10 eventResponse:v11];
}

- (void)_addChildModifier:(id)a3 atLevel:(int64_t)a4 key:(id)a5 queryResponse:(unint64_t)a6 contextResponse:(unint64_t)a7 eventResponse:(unint64_t)a8
{
  v15 = a3;
  v16 = a5;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__124;
  v39 = __Block_byref_object_dispose__124;
  v17 = self;
  v40 = v17;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __97__SBChainableModifier__addChildModifier_atLevel_key_queryResponse_contextResponse_eventResponse___block_invoke;
  v27 = &unk_2783C1798;
  v18 = v16;
  v33 = a2;
  v28 = v18;
  v29 = v17;
  v19 = v15;
  v30 = v19;
  v31 = v41;
  v34 = a4;
  v32 = &v35;
  [(SBChainableModifier *)v17 enumerateChildModifiersWithBlock:&v24];
  [v19 setKey:{v18, v24, v25, v26, v27}];
  [v19 setParentModifier:v17];
  [v19 setModifierLevel:a4];
  v20 = v36[5];
  if (v20 == v17)
  {
    v21 = v20;
  }

  else
  {
    v21 = [(SBChainableModifier *)v20 _lastDeepChildModifier];
  }

  v22 = v21;
  [(SBChainableModifier *)v17 _insertModifier:v19 afterModifier:v21 queryResponse:a6 contextResponse:a7 eventResponse:a8];
  if (v17->_parentModifier || (WeakRetained = objc_loadWeakRetained(&v17->_delegate), WeakRetained, WeakRetained))
  {
    [v19 didMoveToParentModifier:v17];
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v41, 8);
}

void __97__SBChainableModifier__addChildModifier_atLevel_key_queryResponse_contextResponse_eventResponse___block_invoke(void *a1, void *a2)
{
  v9 = a2;
  v4 = [v9 key];
  v5 = v4;
  if (v4 && [v4 isEqualToString:a1[4]])
  {
    __97__SBChainableModifier__addChildModifier_atLevel_key_queryResponse_contextResponse_eventResponse___block_invoke_cold_1();
  }

  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    v6 = a1[10];
    v7 = [v9 modifierLevel];
    v8 = *(a1[7] + 8);
    if (v6 <= v7)
    {
      *(v8 + 24) = 1;
    }

    else if ((*(v8 + 24) & 1) == 0)
    {
      objc_storeStrong((*(a1[8] + 8) + 40), a2);
    }
  }
}

- (void)removeChildModifier:(id)a3
{
  v7 = a3;
  if ([v7 _anyDescendentImplementsAnyQueryMethod])
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  if ([v7 _anyDescendentImplementsAnyContextMethod])
  {
    v5 = 0;
  }

  else
  {
    v5 = 3;
  }

  if ([v7 _anyDescendentImplementsAnyEventMethod])
  {
    v6 = 0;
  }

  else
  {
    v6 = 3;
  }

  [(SBChainableModifier *)self _removeChildModifier:v7 queryResponse:v4 contextResponse:v5 eventResponse:v6];
}

- (void)_removeChildModifier:(id)a3 queryResponse:(unint64_t)a4 contextResponse:(unint64_t)a5 eventResponse:(unint64_t)a6
{
  v17 = a3;
  [v17 setState:1];
  v10 = [v17 _lastDeepChildModifier];
  v11 = [v17 previousContextModifier];
  v12 = [v10 nextQueryModifier];
  [v11 setNextQueryModifier:v12];
  [v12 setPreviousContextModifier:v11];
  [v17 setPreviousContextModifier:0];
  [v10 setNextQueryModifier:0];
  v13 = [(SBChainableModifier *)self queryCacheCoordinator];
  [v13 performResponse:a4];

  v14 = [(SBChainableModifier *)self contextCacheCoordinator];
  [v14 performResponse:a5];

  v15 = [(SBChainableModifier *)self eventCacheCoordinator];
  [v15 performResponse:a6];

  v16 = [v17 parentModifier];

  if (v16 == self)
  {
    [v17 setParentModifier:0];
    [v17 didMoveToParentModifier:0];
  }
}

- (id)childModifierByKey:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__124;
  v15 = __Block_byref_object_dispose__124;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__SBChainableModifier_childModifierByKey___block_invoke;
  v8[3] = &unk_2783C1770;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __42__SBChainableModifier_childModifierByKey___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 key];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)performTransactionWithTemporaryChildModifier:(id)a3 usingBlock:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v16 _anyDescendentImplementsAnyQueryMethod];
  v8 = [v16 _anyDescendentImplementsAnyContextMethod];
  v9 = [v16 parentModifier];

  if (v9 == self)
  {
    v6[2](v6);
  }

  else
  {
    v10 = v8 == 0;
    if (v8)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    if (v10)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    v13 = v7 == 0;
    if (v7)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    if (v13)
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    [(SBChainableModifier *)self _addChildModifier:v16 atLevel:0 key:0 queryResponse:v15 contextResponse:v12 eventResponse:v12];
    [v16 willPerformAsTemporaryChildModifier];
    v6[2](v6);
    [(SBChainableModifier *)self _removeChildModifier:v16 queryResponse:v14 contextResponse:v11 eventResponse:v11];
  }
}

+ (void)verifyModifierImplements:(BOOL)a3 methodsOfProtocol:(id)a4
{
  v6 = a4;
  *outCount = 0;
  v7 = 1;
  v8 = protocol_copyMethodDescriptionList(v6, 1, 1, &outCount[1]);
  v21 = a1;
  v9 = objc_opt_class();
  v10 = class_copyMethodList(v9, outCount);
  v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (!outCount[1])
  {
    v20 = 0;
    goto LABEL_17;
  }

  v12 = 0;
  v13 = 0;
  do
  {
    name = v8[v12].name;
    if (!outCount[0])
    {
LABEL_7:
      if (!a3)
      {
        goto LABEL_9;
      }

LABEL_8:
      ++v13;
      v17 = NSStringFromSelector(name);
      [v11 appendFormat:@"%@, ", v17];

      goto LABEL_9;
    }

    v15 = 0;
    while (1)
    {
      Description = method_getDescription(v10[v15]);
      if (sel_isEqual(Description->name, name))
      {
        break;
      }

      if (++v15 >= outCount[0])
      {
        goto LABEL_7;
      }
    }

    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_9:
    ++v12;
  }

  while (v12 < outCount[1]);
  if (v13)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [v11 substringWithRange:{0, objc_msgSend(v11, "length") - 2}];
    v20 = [v18 stringWithFormat:@"Invalid %ld method(s): %@", v13, v19, v21];

    v7 = 0;
  }

  else
  {
    v20 = 0;
    v7 = 1;
  }

LABEL_17:
  free(v8);
  free(v10);
  if ((v7 & 1) == 0)
  {
    [(SBChainableModifier *)v21 verifyModifierImplements:a3 methodsOfProtocol:v6, v20];
  }
}

- (void)recomputeQueryCache
{
  v5 = [(SBChainableModifierMethodCache *)self->_queryCache cacheCoordinator];
  v3 = [objc_opt_class() newQueryCache];
  queryCache = self->_queryCache;
  self->_queryCache = v3;

  [(SBChainableModifierMethodCache *)self->_queryCache setModifier:self];
  [(SBChainableModifierMethodCache *)self->_queryCache setCacheCoordinator:v5];
}

+ (id)contextProtocol
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"*** +[SBChainableModier %@]: method only defined for abstract class.  Define +[%@ %@]!", v6, v7, v8];
  v10 = [v3 exceptionWithName:v4 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

+ (id)queryProtocol
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"*** +[SBChainableModier %@]: method only defined for abstract class.  Define +[%@ %@]!", v6, v7, v8];
  v10 = [v3 exceptionWithName:v4 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)verifyInternalIntegrityAfterHandlingEvent:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__SBChainableModifier_verifyInternalIntegrityAfterHandlingEvent___block_invoke;
  v3[3] = &unk_2783C17C0;
  v3[4] = self;
  v3[5] = a2;
  [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v3];
}

void __65__SBChainableModifier_verifyInternalIntegrityAfterHandlingEvent___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 state] == 1)
  {
    __65__SBChainableModifier_verifyInternalIntegrityAfterHandlingEvent___block_invoke_cold_1(a1);
  }
}

- (void)didMoveToParentModifier:(id)a3
{
  if (a3)
  {
    [(SBChainableModifier *)self _notifyChildrenDidMoveToParentIfNeeded];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (id)_forwardEvent:(id)a3 toChildModifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 handleEvent:v6];
  if (v8)
  {
    v9 = v8;
    v10 = [(SBChainableModifier *)self responseForProposedChildResponse:v8 childModifier:v7 event:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_insertModifier:(id)a3 afterModifier:(id)a4 queryResponse:(unint64_t)a5 contextResponse:(unint64_t)a6 eventResponse:(unint64_t)a7
{
  v21 = a3;
  v12 = a4;
  if (v21)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBChainableModifier _insertModifier:afterModifier:queryResponse:contextResponse:eventResponse:];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [SBChainableModifier _insertModifier:afterModifier:queryResponse:contextResponse:eventResponse:];
LABEL_3:
  v13 = [(SBChainableModifier *)self queryCacheCoordinator];
  [v21 setQueryCacheCoordinator:v13];

  v14 = [(SBChainableModifier *)self contextCacheCoordinator];
  [v21 setContextCacheCoordinator:v14];

  v15 = [(SBChainableModifier *)self eventCacheCoordinator];
  [v21 setEventCacheCoordinator:v15];

  v16 = [v12 nextQueryModifier];
  v17 = [v21 _lastDeepChildModifier];
  [v12 setNextQueryModifier:v21];
  [v21 setPreviousContextModifier:v12];
  [v17 setNextQueryModifier:v16];
  [v16 setPreviousContextModifier:v17];
  v18 = [(SBChainableModifier *)self queryCacheCoordinator];
  [v18 performResponse:a5];

  v19 = [(SBChainableModifier *)self contextCacheCoordinator];
  [v19 performResponse:a6];

  v20 = [(SBChainableModifier *)self eventCacheCoordinator];
  [v20 performResponse:a7];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBChainableModifier *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v6 = [v5 appendObject:self->_key withName:@"key"];
  if (self->_state)
  {
    v7 = @"Complete";
  }

  else
  {
    v7 = @"Active";
  }

  v8 = [v5 appendObject:v7 withName:@"state"];
  v9 = [(SBChainableModifier *)self debugPotentialChildModifiers];
  if (-[SBChainableModifier childModifierCount](self, "childModifierCount") || [v9 count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__SBChainableModifier_descriptionBuilderWithMultilinePrefix___block_invoke;
    v11[3] = &unk_2783A9BD8;
    v12 = v4;
    v13 = self;
    v14 = v5;
    v15 = v9;
    [v14 appendBodySectionWithName:@"children" multilinePrefix:v12 block:v11];
  }

  return v5;
}

void __61__SBChainableModifier_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 stringByAppendingString:@"\t"];
  }

  else
  {
    v3 = @"\t";
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__124;
  v27 = __Block_byref_object_dispose__124;
  v28 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__SBChainableModifier_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v19[3] = &unk_2783C17E8;
  v22 = &v23;
  v4 = *(a1 + 40);
  v20 = *(a1 + 48);
  v5 = v3;
  v21 = v5;
  [v4 enumerateChildModifiersWithBlock:v19];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(a1 + 56);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v29 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = v24[5];
        if (!v11 || ([v11 containsObject:{*(*(&v15 + 1) + 8 * v9), v15}] & 1) == 0)
        {
          v12 = *(a1 + 48);
          v13 = [v10 descriptionWithMultilinePrefix:{v5, v15}];
          v14 = [v12 appendObject:v13 withName:&stru_283094718];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v29 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v23, 8);
}

void __61__SBChainableModifier_descriptionBuilderWithMultilinePrefix___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1[6] + 8) + 40);
  v11 = v3;
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v11;
    v4 = *(*(a1[6] + 8) + 40);
  }

  [v4 addObject:v3];
  v8 = a1[4];
  v9 = [v11 descriptionWithMultilinePrefix:a1[5]];
  v10 = [v8 appendObject:v9 withName:&stru_283094718];
}

- (id)succinctDescription
{
  v2 = [(SBChainableModifier *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

+ (BOOL)modifierUnderTest:(id)a3 containsChildModifierKindOfClass:(Class)a4
{
  v5 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SBChainableModifier_modifierUnderTest_containsChildModifierKindOfClass___block_invoke;
  v7[3] = &unk_2783C1810;
  v7[4] = &v8;
  v7[5] = a4;
  [v5 enumerateChildModifiersWithBlock:v7];
  LOBYTE(a4) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return a4;
}

uint64_t __74__SBChainableModifier_modifierUnderTest_containsChildModifierKindOfClass___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

+ (id)newCacheWithSelectorList:(id)a3 subsequentMethodCacheFunc:(void *)a4 cachingDictionary:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v9 objectForKey:a1];
  if (!v10)
  {
    v11 = [objc_opt_class() baseClassForQueryProtocol];
    v12 = malloc_type_calloc(v8[1], 8uLL, 0x80040B8603338uLL);
    if (v8[1] >= 1)
    {
      v19 = a4;
      v13 = 0;
      v14 = 1;
LABEL_4:
      v20 = v14;
      do
      {
        v15 = *(v8[2] + 8 * v13);
        v16 = [a1 instanceMethodForSelector:{v15, v19}];
        if (v16 != [v11 instanceMethodForSelector:v15])
        {
          v14 = 0;
          v12[v13++] = v16;
          if (v13 < v8[1])
          {
            goto LABEL_4;
          }

          a4 = v19;
          goto LABEL_12;
        }

        ++v13;
      }

      while (v13 < v8[1]);
      a4 = v19;
      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    free(v12);
    v12 = 0;
LABEL_12:
    v10 = [[SBChainableModifierMethodCache alloc] initWithIMPs:v12 selectorList:v8 subsequentMethodCacheFunc:a4];
    [v9 setObject:v10 forKey:a1];
  }

  v17 = [(SBChainableModifierMethodCache *)v10 copy];

  return v17;
}

- (void)setQueryCacheCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(SBChainableModifierMethodCache *)self->_queryCache cacheCoordinator];

  if (v5 != v4)
  {
    [(SBChainableModifierMethodCache *)self->_queryCache setCacheCoordinator:v4];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__SBChainableModifier_setQueryCacheCoordinator___block_invoke;
    v6[3] = &unk_2783C16D0;
    v7 = v4;
    [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v6];
  }
}

- (void)setEventCacheCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(SBChainableModifierMethodCache *)self->_eventCache cacheCoordinator];

  if (v5 != v4)
  {
    [(SBChainableModifierMethodCache *)self->_eventCache setCacheCoordinator:v4];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__SBChainableModifier_setEventCacheCoordinator___block_invoke;
    v6[3] = &unk_2783C16D0;
    v7 = v4;
    [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v6];
  }
}

- (void)setContextCacheCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(SBChainableModifierMethodCache *)self->_contextCache cacheCoordinator];

  if (v5 != v4)
  {
    [(SBChainableModifierMethodCache *)self->_contextCache setCacheCoordinator:v4];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__SBChainableModifier_setContextCacheCoordinator___block_invoke;
    v6[3] = &unk_2783C16D0;
    v7 = v4;
    [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v6];
  }
}

uint64_t __61__SBChainableModifier__anyDescendentImplementsAnyQueryMethod__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 _anyDescendentImplementsAnyQueryMethod];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __63__SBChainableModifier__anyDescendentImplementsAnyContextMethod__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 _anyDescendentImplementsAnyContextMethod];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

- (void)init
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __97__SBChainableModifier__addChildModifier_atLevel_key_queryResponse_contextResponse_eventResponse___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2[9] object:v2[6] file:*v1 lineNumber:v2[5] description:v0];
}

+ (void)verifyModifierImplements:(Protocol *)a3 methodsOfProtocol:(uint64_t)a4 .cold.1(uint64_t a1, char a2, Protocol *a3, uint64_t a4)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SBChainableModifier verifyModifierImplements:methodsOfProtocol:]"];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  if (a2)
  {
    v11 = @"should implement all the methods";
  }

  else
  {
    v11 = @"shouldn't implement any of the methods";
  }

  v12 = NSStringFromProtocol(a3);
  [v7 handleFailureInFunction:v8 file:@"SBChainableModifier.m" lineNumber:370 description:{@"You declared %@ %@ in the %@ protocol. %@", v10, v11, v12, a4}];
}

void __65__SBChainableModifier_verifyInternalIntegrityAfterHandlingEvent___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SBChainableModifier.m" lineNumber:408 description:@"Should not have any completed modifiers"];
}

- (void)_insertModifier:afterModifier:queryResponse:contextResponse:eventResponse:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"modifierToInsert" object:? file:? lineNumber:? description:?];
}

- (void)_insertModifier:afterModifier:queryResponse:contextResponse:eventResponse:.cold.2()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"afterModifier" object:? file:? lineNumber:? description:?];
}

@end