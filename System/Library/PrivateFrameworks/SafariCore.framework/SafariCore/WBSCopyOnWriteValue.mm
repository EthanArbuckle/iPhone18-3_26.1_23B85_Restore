@interface WBSCopyOnWriteValue
- (NSCopying)value;
- (WBSCopyOnWriteValue)initWithValue:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initAsCopy:(id)a3;
- (void)dealloc;
- (void)willModify;
@end

@implementation WBSCopyOnWriteValue

- (NSCopying)value
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_value;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)willModify
{
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__WBSCopyOnWriteValue_willModify__block_invoke;
  v6[3] = &unk_1E7CF16E0;
  v6[4] = self;
  v4 = [(WBSCopyOnWriteState *)state forkIfNeededWithHandler:v6];
  v5 = self->_state;
  self->_state = v4;

  os_unfair_lock_unlock(&self->_lock);
}

void __33__WBSCopyOnWriteValue_willModify__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  [(WBSCopyOnWriteState *)self->_state decrementCount];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = WBSCopyOnWriteValue;
  [(WBSCopyOnWriteValue *)&v3 dealloc];
}

- (WBSCopyOnWriteValue)initWithValue:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = WBSCopyOnWriteValue;
  v6 = [(WBSCopyOnWriteValue *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(WBSCopyOnWriteState);
    state = v7->_state;
    v7->_state = v8;

    objc_storeStrong(&v7->_value, a3);
    v10 = v7;
  }

  return v7;
}

- (id)initAsCopy:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WBSCopyOnWriteValue;
  v5 = [(WBSCopyOnWriteValue *)&v9 init];
  p_isa = &v5->super.isa;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v5->_state, v4[2]);
    objc_storeStrong(p_isa + 3, v4[3]);
    [p_isa[2] incrementCount];
    v7 = p_isa;
  }

  return p_isa;
}

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initAsCopy:", self}];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

@end