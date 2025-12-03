@interface SBAutoUnlockComposableRule
- (BOOL)shouldAutoUnlockForSource:(int)source;
- (SBAutoUnlockComposableRule)init;
@end

@implementation SBAutoUnlockComposableRule

- (SBAutoUnlockComposableRule)init
{
  v6.receiver = self;
  v6.super_class = SBAutoUnlockComposableRule;
  v2 = [(SBAutoUnlockComposableRule *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    rules = v2->_rules;
    v2->_rules = v3;
  }

  return v2;
}

- (BOOL)shouldAutoUnlockForSource:(int)source
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  rules = self->_rules;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SBAutoUnlockComposableRule_shouldAutoUnlockForSource___block_invoke;
  v6[3] = &unk_2783B58E8;
  sourceCopy = source;
  v6[4] = &v8;
  [(NSMutableSet *)rules enumerateObjectsUsingBlock:v6];
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __56__SBAutoUnlockComposableRule_shouldAutoUnlockForSource___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 shouldAutoUnlockForSource:*(a1 + 40)];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

@end