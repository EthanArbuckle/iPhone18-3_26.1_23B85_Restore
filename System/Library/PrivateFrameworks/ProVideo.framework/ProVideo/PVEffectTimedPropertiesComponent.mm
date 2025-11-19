@interface PVEffectTimedPropertiesComponent
- (BOOL)addTimedPropertiesToDict:(id)a3 time:(id *)a4;
- (BOOL)applyTimedPropertiesForTime:(id *)a3;
- (BOOL)hasTimedPropertiesDelegate:(id)a3;
- (BOOL)hasTimedPropertiesDelegates;
- (PVEffectTimedPropertiesComponent)initWithEffect:(id)a3;
- (id)delegateWrappers;
- (id)timedPropertiesDelegates;
- (id)userContextForTimedPropertiesDelegate:(id)a3;
- (void)addTimedPropertiesDelegate:(id)a3 userContext:(id)a4;
- (void)addTimedPropertiesDelegateWrapper:(id)a3;
- (void)effectDidLoad:(id)a3 isReady:(BOOL)a4;
- (void)effectDidUnload:(id)a3;
- (void)removeAllTimedPropertiesDelegates;
- (void)removeTimedPropertiesDelegate:(id)a3;
@end

@implementation PVEffectTimedPropertiesComponent

- (PVEffectTimedPropertiesComponent)initWithEffect:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PVEffectTimedPropertiesComponent;
  if ([(PVEffectComponent *)&v6 initWithEffect:v4])
  {
    operator new();
  }

  return 0;
}

- (void)addTimedPropertiesDelegateWrapper:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    ptr = self->_delegateCollectionLock.__ptr_;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = *"";
    v7[2] = __70__PVEffectTimedPropertiesComponent_addTimedPropertiesDelegateWrapper___block_invoke;
    v7[3] = &unk_279AA4E00;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(*ptr, v7);
  }
}

- (BOOL)applyTimedPropertiesForTime:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(PVEffectComponent *)self effect];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v7[2] = __64__PVEffectTimedPropertiesComponent_applyTimedPropertiesForTime___block_invoke;
  v7[3] = &unk_279AA7CD8;
  v7[4] = self;
  v7[5] = &v9;
  v8 = *a3;
  [v5 runWithInspectableProperties:v7];

  LOBYTE(v5) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __64__PVEffectTimedPropertiesComponent_applyTimedPropertiesForTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  *(*(*(a1 + 40) + 8) + 24) = [v4 addTimedPropertiesToDict:v3 time:&v5];
}

- (void)addTimedPropertiesDelegate:(id)a3 userContext:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [PVEffectTimedPropertiesDelegateWrapper alloc];
  v8 = [(PVEffectComponent *)self effect];
  v9 = [v11 supportedTimedPropertyGroupsForEffect:v8];
  v10 = [(PVEffectTimedPropertiesDelegateWrapper *)v7 initWithTimedPropertiesDelegate:v11 supportedTimedPropertyGroups:v9 userContext:v6];

  [(PVEffectTimedPropertiesComponent *)self addTimedPropertiesDelegateWrapper:v10];
}

- (void)removeTimedPropertiesDelegate:(id)a3
{
  v4 = a3;
  ptr = self->_delegateCollectionLock.__ptr_;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __66__PVEffectTimedPropertiesComponent_removeTimedPropertiesDelegate___block_invoke;
  v8[3] = &unk_279AA4E00;
  v8[4] = self;
  v9 = v4;
  v6 = *ptr;
  v7 = v4;
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

- (BOOL)hasTimedPropertiesDelegate:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  ptr = self->_delegateCollectionLock.__ptr_;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __63__PVEffectTimedPropertiesComponent_hasTimedPropertiesDelegate___block_invoke;
  block[3] = &unk_279AA7B68;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = *ptr;
  v7 = v4;
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

- (id)userContextForTimedPropertiesDelegate:(id)a3
{
  v4 = a3;
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
  v11 = v4;
  v12 = &v13;
  block[4] = self;
  v6 = *ptr;
  v7 = v4;
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

- (BOOL)addTimedPropertiesToDict:(id)a3 time:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v7 = [(PVEffectComponent *)self effect];
  v8 = [(PVEffectTimedPropertiesComponent *)self delegateWrappers];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = *"";
  v12[2] = __66__PVEffectTimedPropertiesComponent_addTimedPropertiesToDict_time___block_invoke;
  v12[3] = &unk_279AA7D78;
  v9 = v7;
  v16 = *a4;
  v13 = v9;
  v15 = &v17;
  v10 = v6;
  v14 = v10;
  [v8 enumerateObjectsUsingBlock:v12];

  LOBYTE(v6) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v6;
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

- (void)effectDidLoad:(id)a3 isReady:(BOOL)a4
{
  v5 = a3;
  v6 = [(PVEffectTimedPropertiesComponent *)self delegateWrappers];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __58__PVEffectTimedPropertiesComponent_effectDidLoad_isReady___block_invoke;
  v8[3] = &unk_279AA7D00;
  v7 = v5;
  v9 = v7;
  [v6 enumerateObjectsUsingBlock:v8];
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

- (void)effectDidUnload:(id)a3
{
  v4 = a3;
  v5 = [(PVEffectTimedPropertiesComponent *)self delegateWrappers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v7[2] = __52__PVEffectTimedPropertiesComponent_effectDidUnload___block_invoke;
  v7[3] = &unk_279AA7D00;
  v6 = v4;
  v8 = v6;
  [v5 enumerateObjectsUsingBlock:v7];
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