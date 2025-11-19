@interface SBSpuriousScreenUndimmingAssertion
+ (BOOL)isAnyActive;
+ (id)debugDescription;
+ (void)_accessListWithBlock:(id)a3;
- (SBSpuriousScreenUndimmingAssertion)initWithIdentifier:(id)a3;
- (id)description;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBSpuriousScreenUndimmingAssertion

+ (void)_accessListWithBlock:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (_accessListWithBlock__onceToken != -1)
    {
      +[SBSpuriousScreenUndimmingAssertion _accessListWithBlock:];
    }

    v4 = _accessListWithBlock__queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__SBSpuriousScreenUndimmingAssertion__accessListWithBlock___block_invoke_2;
    block[3] = &unk_2783A9348;
    v6 = v3;
    dispatch_sync(v4, block);
  }
}

void __59__SBSpuriousScreenUndimmingAssertion__accessListWithBlock___block_invoke()
{
  v0 = BSDispatchQueueCreateWithQualityOfService();
  v1 = _accessListWithBlock__queue;
  _accessListWithBlock__queue = v0;

  v2 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0x10000 capacity:2];
  v3 = _accessListWithBlock__weakPointerToIdentifierMap;
  _accessListWithBlock__weakPointerToIdentifierMap = v2;
}

+ (BOOL)isAnyActive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__SBSpuriousScreenUndimmingAssertion_isAnyActive__block_invoke;
  v4[3] = &unk_2783C2BC0;
  v4[4] = &v5;
  [SBSpuriousScreenUndimmingAssertion _accessListWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __49__SBSpuriousScreenUndimmingAssertion_isAnyActive__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

+ (id)debugDescription
{
  v2 = [MEMORY[0x277CCAB68] string];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __54__SBSpuriousScreenUndimmingAssertion_debugDescription__block_invoke;
  v9 = &unk_2783C2BE8;
  v10 = v2;
  v3 = v2;
  [SBSpuriousScreenUndimmingAssertion _accessListWithBlock:&v6];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]", v3, v6, v7, v8, v9];

  return v4;
}

void __54__SBSpuriousScreenUndimmingAssertion_debugDescription__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [v3 objectForKey:v8];
        if ([*(a1 + 32) length])
        {
          [*(a1 + 32) appendString:{@", "}];
        }

        [*(a1 + 32) appendFormat:@"<%p:%@>", v8, v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (SBSpuriousScreenUndimmingAssertion)initWithIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBSpuriousScreenUndimmingAssertion;
  v5 = [(SBSpuriousScreenUndimmingAssertion *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__SBSpuriousScreenUndimmingAssertion_initWithIdentifier___block_invoke;
    v9[3] = &unk_2783C2BE8;
    v10 = v5;
    [SBSpuriousScreenUndimmingAssertion _accessListWithBlock:v9];
  }

  return v5;
}

void __57__SBSpuriousScreenUndimmingAssertion_initWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    v7 = 134218242;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Adding spurious screen undimming assertion <%p:%{public}@>", &v7, 0x16u);
  }

  [v3 setObject:*(*(a1 + 32) + 8) forKey:?];
}

- (void)dealloc
{
  [(SBSpuriousScreenUndimmingAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBSpuriousScreenUndimmingAssertion;
  [(SBSpuriousScreenUndimmingAssertion *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, self->_identifier];

  return v6;
}

- (void)invalidate
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__SBSpuriousScreenUndimmingAssertion_invalidate__block_invoke;
  v2[3] = &unk_2783C2BE8;
  v2[4] = self;
  [SBSpuriousScreenUndimmingAssertion _accessListWithBlock:v2];
}

void __48__SBSpuriousScreenUndimmingAssertion_invalidate__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    v7 = 134218242;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Removing spurious screen undimming assertion <%p:%{public}@>", &v7, 0x16u);
  }

  [v3 removeObjectForKey:*(a1 + 32)];
}

@end