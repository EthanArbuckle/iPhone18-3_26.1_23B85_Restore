@interface PVEffectTimedPropertiesComponent
- (BOOL)addTimedPropertiesToDict:(id)dict time:(id *)time;
- (BOOL)applyTimedPropertiesForTime:(id *)time;
- (BOOL)hasTimedPropertiesDelegate:(id)delegate;
- (BOOL)hasTimedPropertiesDelegates;
- (PVEffectTimedPropertiesComponent)initWithEffect:(id)effect;
- (id)delegateWrappers;
- (id)timedPropertiesDelegates;
- (id)userContextForTimedPropertiesDelegate:(id)delegate;
- (void)addTimedPropertiesDelegate:(id)delegate userContext:(id)context;
- (void)addTimedPropertiesDelegateWrapper:(id)wrapper;
- (void)effectDidLoad:(id)load isReady:(BOOL)ready;
- (void)effectDidUnload:(id)unload;
- (void)removeAllTimedPropertiesDelegates;
- (void)removeTimedPropertiesDelegate:(id)delegate;
@end

@implementation PVEffectTimedPropertiesComponent

- (PVEffectTimedPropertiesComponent)initWithEffect:(id)effect
{
  effectCopy = effect;
  v6.receiver = self;
  v6.super_class = PVEffectTimedPropertiesComponent;
  if ([(PVEffectComponent *)&v6 initWithEffect:effectCopy])
  {
    operator new();
  }

  return 0;
}

- (void)addTimedPropertiesDelegateWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v5 = wrapperCopy;
  if (wrapperCopy)
  {
    ptr = self->_delegateCollectionLock.__ptr_;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = *"";
    v7[2] = __70__PVEffectTimedPropertiesComponent_addTimedPropertiesDelegateWrapper___block_invoke;
    v7[3] = &unk_279AA4E00;
    v7[4] = self;
    v8 = wrapperCopy;
    dispatch_sync(*ptr, v7);
  }
}

- (BOOL)applyTimedPropertiesForTime:(id *)time
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  effect = [(PVEffectComponent *)self effect];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v7[2] = __64__PVEffectTimedPropertiesComponent_applyTimedPropertiesForTime___block_invoke;
  v7[3] = &unk_279AA7CD8;
  v7[4] = self;
  v7[5] = &v9;
  v8 = *time;
  [effect runWithInspectableProperties:v7];

  LOBYTE(effect) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return effect;
}

void __64__PVEffectTimedPropertiesComponent_applyTimedPropertiesForTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  *(*(*(a1 + 40) + 8) + 24) = [v4 addTimedPropertiesToDict:v3 time:&v5];
}

- (void)addTimedPropertiesDelegate:(id)delegate userContext:(id)context
{
  delegateCopy = delegate;
  contextCopy = context;
  v7 = [PVEffectTimedPropertiesDelegateWrapper alloc];
  effect = [(PVEffectComponent *)self effect];
  v9 = [delegateCopy supportedTimedPropertyGroupsForEffect:effect];
  v10 = [(PVEffectTimedPropertiesDelegateWrapper *)v7 initWithTimedPropertiesDelegate:delegateCopy supportedTimedPropertyGroups:v9 userContext:contextCopy];

  [(PVEffectTimedPropertiesComponent *)self addTimedPropertiesDelegateWrapper:v10];
}

- (void)removeTimedPropertiesDelegate:(id)delegate
{
  delegateCopy = delegate;
  ptr = self->_delegateCollectionLock.__ptr_;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __66__PVEffectTimedPropertiesComponent_removeTimedPropertiesDelegate___block_invoke;
  v8[3] = &unk_279AA4E00;
  v8[4] = self;
  v9 = delegateCopy;
  v6 = *ptr;
  v7 = delegateCopy;
  dispatch_sync(v6, v8);
}

- (void)removeAllTimedPropertiesDelegates
{
  ptr = self->_delegateCollectionLock.__ptr_;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __69__PVEffectTimedPropertiesComponent_removeAllTimedPropertiesDelegates__block_invoke;
  block[3] = &unk_279AA4DD8;
  block[4] = self;
  dispatch_sync(*ptr, block);
}

- (id)delegateWrappers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  ptr = self->_delegateCollectionLock.__ptr_;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __52__PVEffectTimedPropertiesComponent_delegateWrappers__block_invoke;
  v5[3] = &unk_279AA57A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(*ptr, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__PVEffectTimedPropertiesComponent_delegateWrappers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)timedPropertiesDelegates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  ptr = self->_delegateCollectionLock.__ptr_;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __60__PVEffectTimedPropertiesComponent_timedPropertiesDelegates__block_invoke;
  v5[3] = &unk_279AA5C78;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(*ptr, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __60__PVEffectTimedPropertiesComponent_timedPropertiesDelegates__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) anyObject];

  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v4 = *(*(a1 + 32) + 16);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = *"";
    v9[2] = __60__PVEffectTimedPropertiesComponent_timedPropertiesDelegates__block_invoke_2;
    v9[3] = &unk_279AA7D00;
    v5 = v3;
    v10 = v5;
    [v4 enumerateObjectsUsingBlock:v9];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
    v8 = v5;
  }
}

void __60__PVEffectTimedPropertiesComponent_timedPropertiesDelegates__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [a2 timedPropertiesDelegate];
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  objc_autoreleasePoolPop(v4);
}

- (BOOL)hasTimedPropertiesDelegates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  ptr = self->_delegateCollectionLock.__ptr_;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __63__PVEffectTimedPropertiesComponent_hasTimedPropertiesDelegates__block_invoke;
  v5[3] = &unk_279AA5C78;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(*ptr, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __63__PVEffectTimedPropertiesComponent_hasTimedPropertiesDelegates__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = *"";
  v3[2] = __63__PVEffectTimedPropertiesComponent_hasTimedPropertiesDelegates__block_invoke_2;
  v3[3] = &unk_279AA7D28;
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void __63__PVEffectTimedPropertiesComponent_hasTimedPropertiesDelegates__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 timedPropertiesDelegate];

  if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (BOOL)hasTimedPropertiesDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  ptr = self->_delegateCollectionLock.__ptr_;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __63__PVEffectTimedPropertiesComponent_hasTimedPropertiesDelegate___block_invoke;
  block[3] = &unk_279AA7B68;
  v10 = delegateCopy;
  v11 = &v12;
  block[4] = self;
  v6 = *ptr;
  v7 = delegateCopy;
  dispatch_sync(v6, block);
  LOBYTE(v6) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

uint64_t __63__PVEffectTimedPropertiesComponent_hasTimedPropertiesDelegate___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (id)userContextForTimedPropertiesDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__11;
  v18 = 0;
  ptr = self->_delegateCollectionLock.__ptr_;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __74__PVEffectTimedPropertiesComponent_userContextForTimedPropertiesDelegate___block_invoke;
  block[3] = &unk_279AA7B68;
  v11 = delegateCopy;
  v12 = &v13;
  block[4] = self;
  v6 = *ptr;
  v7 = delegateCopy;
  dispatch_sync(v6, block);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __74__PVEffectTimedPropertiesComponent_userContextForTimedPropertiesDelegate___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 16) member:a1[5]];
  v2 = [v5 userContext];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)addTimedPropertiesToDict:(id)dict time:(id *)time
{
  dictCopy = dict;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  effect = [(PVEffectComponent *)self effect];
  delegateWrappers = [(PVEffectTimedPropertiesComponent *)self delegateWrappers];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = *"";
  v12[2] = __66__PVEffectTimedPropertiesComponent_addTimedPropertiesToDict_time___block_invoke;
  v12[3] = &unk_279AA7D78;
  v9 = effect;
  v16 = *time;
  v13 = v9;
  v15 = &v17;
  v10 = dictCopy;
  v14 = v10;
  [delegateWrappers enumerateObjectsUsingBlock:v12];

  LOBYTE(dictCopy) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return dictCopy;
}

void __66__PVEffectTimedPropertiesComponent_addTimedPropertiesToDict_time___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 timedPropertiesDelegate];
  if (v5)
  {
    v6 = [v3 supportedTimedPropertyGroups];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = *"";
    v9[2] = __66__PVEffectTimedPropertiesComponent_addTimedPropertiesToDict_time___block_invoke_2;
    v9[3] = &unk_279AA7D50;
    v10 = v5;
    v11 = *(a1 + 32);
    v14 = *(a1 + 56);
    v15 = *(a1 + 72);
    v12 = v3;
    v8 = *(a1 + 40);
    v7 = v8;
    v13 = v8;
    [v6 enumerateObjectsUsingBlock:v9];
  }

  objc_autoreleasePoolPop(v4);
}

void __66__PVEffectTimedPropertiesComponent_addTimedPropertiesToDict_time___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) userContext];
  v8 = [v5 effect:v6 timedPropertiesForGroup:v3 time:&v9 userContext:v7];

  if ([v8 count])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    [*(a1 + 56) addEntriesFromDictionary:v8];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)effectDidLoad:(id)load isReady:(BOOL)ready
{
  loadCopy = load;
  delegateWrappers = [(PVEffectTimedPropertiesComponent *)self delegateWrappers];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __58__PVEffectTimedPropertiesComponent_effectDidLoad_isReady___block_invoke;
  v8[3] = &unk_279AA7D00;
  v7 = loadCopy;
  v9 = v7;
  [delegateWrappers enumerateObjectsUsingBlock:v8];
}

void __58__PVEffectTimedPropertiesComponent_effectDidLoad_isReady___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v7 timedPropertiesDelegate];
  if (v4 && [v7 wantsStartStopNotifications])
  {
    v5 = *(a1 + 32);
    v6 = [v7 userContext];
    [v4 effect:v5 willStartRequestingTimedProperties:v6];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)effectDidUnload:(id)unload
{
  unloadCopy = unload;
  delegateWrappers = [(PVEffectTimedPropertiesComponent *)self delegateWrappers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v7[2] = __52__PVEffectTimedPropertiesComponent_effectDidUnload___block_invoke;
  v7[3] = &unk_279AA7D00;
  v6 = unloadCopy;
  v8 = v6;
  [delegateWrappers enumerateObjectsUsingBlock:v7];
}

void __52__PVEffectTimedPropertiesComponent_effectDidUnload___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v7 timedPropertiesDelegate];
  if (v4 && [v7 wantsStartStopNotifications])
  {
    v5 = *(a1 + 32);
    v6 = [v7 userContext];
    [v4 effect:v5 didStopRequestingTimedProperties:v6];
  }

  objc_autoreleasePoolPop(v3);
}

@end