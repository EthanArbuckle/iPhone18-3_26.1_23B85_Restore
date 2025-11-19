@interface SBSystemActionSuppressionStatus
- (BOOL)isEqual:(id)a3;
- (id)initWithState:(void *)a3 metrics:;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation SBSystemActionSuppressionStatus

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_state == v5->_state)
  {
    v6 = BSEqualDictionaries();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SBSystemActionSuppressionStatus_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

id __64__SBSystemActionSuppressionStatus_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromSBSystemActionSuppressionState(*(*(a1 + 40) + 8));
  v4 = [v2 appendObject:v3 withName:@"state"];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"metrics"];
}

- (id)initWithState:(void *)a3 metrics:
{
  v6 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = SBSystemActionSuppressionStatus;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v7;
    if (v7)
    {
      v7[1] = a2;
      objc_storeStrong(v7 + 2, a3);
    }
  }

  return a1;
}

@end